#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <boost/beast/version.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <iostream>
#include <string>

namespace beast = boost::beast;             // Alias for Boost.Beast namespace
namespace http = beast::http;              // Alias for HTTP namespace in Beast
namespace net = boost::asio;               // Alias for Boost.Asio namespace
using tcp = net::ip::tcp;                  // TCP socket type from Asio

int main() {
    // Step 1: Define the target API and host details
    std::string host = "'https://jsonplaceholder.typicode.com/posts/1'";  // Example API host
    std::string port = "80";                           // HTTP port
    std::string target = "/posts/1";                  // Endpoint for the GET request
    int version = 11;                                   // HTTP 1.1

    try {
        // Step 2: Set up Boost.Asio I/O context
        net::io_context ioc;

        // Step 3: Create a resolver to resolve the host and port
        tcp::resolver resolver(ioc);
        auto const results = resolver.resolve(host, port);

        // Step 4: Create a socket and connect to the resolved endpoint
        beast::tcp_stream stream(ioc);
        stream.connect(results);

        // Step 5: Create an HTTP GET request
        http::request<http::string_body> req{http::verb::get, target, version};
        req.set(http::field::host, host);
        req.set(http::field::user_agent, BOOST_BEAST_VERSION_STRING);

        // Step 6: Send the HTTP request to the server
        http::write(stream, req);

        // Step 7: Read the HTTP response
        beast::flat_buffer buffer; // Buffer for reading
        http::response<http::dynamic_body> res;
        http::read(stream, buffer, res);

        // Step 8: Output the response
        std::cout << res << std::endl;

        // Step 9: Gracefully close the connection
        beast::error_code ec;
        stream.socket().shutdown(tcp::socket::shutdown_both, ec);

        // Not connected is not an error
        if (ec && ec != beast::errc::not_connected)
            throw beast::system_error{ec};

    } catch (const std::exception& e) {
        // Handle errors
        std::cerr << "Error: " << e.what() << std::endl;
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
