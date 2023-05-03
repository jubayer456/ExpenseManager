package Web;

import Dao.UserDao;
import model.PersonDetails;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/viewAll")
public class ViewAllServlet extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        UserDao dbOperations=new UserDao();
        try {
            dbOperations.doConnectDb();
            List<PersonDetails> list=dbOperations.fetchData();
            req.setAttribute("list",list);
            req.getRequestDispatcher("ShowDetails.jsp").forward(req, res);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
