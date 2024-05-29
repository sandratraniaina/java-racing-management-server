package filter;

public class CorsFilter implements HttpFilter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse httpResponse = (HttpServletResponse) response;
        httpResponse.setHeader("Access-Control-Allow-Origin", "http://127.0.0.1:5500"); // Replace with allowed origin(s)
        httpResponse.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE, OPTIONS"); // Allowed methods
        httpResponse.setHeader("Access-Control-Max-Age", "3600"); // Cache preflight request for 1 hour
        httpResponse.setHeader("Access-Control-Allow-Headers", "Content-Type, Authorization"); // Allowed headers
        chain.doFilter(request, response);
    }
}
