<html>
<body>
<h2>Hello World! Welcome to Jenkins Training v2 Code Pipeline...</h2>
<h2>Hello World! Welcome to Jenkins Training v2 Code Pipeline...</h2>.
 
import java.io.*;
import java.net.InetSocketAddress;
import com.sun.net.httpserver.*;

public class SO {    
    public static void main(String[] args) throws Exception {
        int port = 9000;
        HttpServer server = HttpServer.create(new InetSocketAddress(port), 0);
        System.out.println("server started at " + port);
        server.createContext("/", new RootHandler());
        server.setExecutor(null);
        server.start();
    }

    public static class RootHandler implements HttpHandler {

        @Override
        public void handle(HttpExchange he) throws IOException {
            String response = "<h1>Static Response</h1>";
            he.sendResponseHeaders(200, response.length());
            OutputStream os = he.getResponseBody();
            os.write(response.getBytes());
            os.close();
        }
    }
}
  
</body>
</html>
