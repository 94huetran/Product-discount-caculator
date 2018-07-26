import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet", urlPatterns = "/display-discount")
public class DiscountServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product = request.getParameter("Product Description");
        double price = Double.parseDouble(request.getParameter("List price"));
        double percent = Double.parseDouble(request.getParameter("Discount Percent"));
        PrintWriter pw = response.getWriter();
        pw.print("<html>");
        if ("T-shirt".equals(product)) {
            pw.println("<p>The " + product + " have price: " + price+".\t</p>");
            double discountAmount = price * percent * 0.01;
            pw.println("<p>Discount amount: " + discountAmount+".\t</p>");
            price = price - discountAmount;
            pw.println("Price after discount: " + price+".\t");
        }
        pw.print("</html>");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
