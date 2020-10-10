package servlets;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;

@WebServlet(name = "AreaCheckServlet")
public class AreaCheckServlet extends HttpServlet {
    ArrayList historyList;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        long currentDate = System.nanoTime();

        Float x = Float.parseFloat(request.getParameter("X"));
        Float y = Float.parseFloat(request.getParameter("y"));
        Float r = Float.parseFloat(request.getParameter("R"));

        HashMap<String, Object> results = new HashMap();

        results.put("x", x);
        results.put("y", y);
        results.put("r", r);
        results.put("currentDate", LocalDateTime.now());
        results.put("result", this.check(x, y, r));

        String runTime = String.valueOf((System.nanoTime() - currentDate) / 1000 + " mcs");
        results.put("runTime", runTime);

        if (context.getAttribute("table") == null) {
            historyList = new ArrayList();
        } else {
            historyList = (ArrayList) context.getAttribute("table");
        }

        historyList.add(results);

        context.setAttribute("table", historyList);

        getServletContext().getRequestDispatcher("/response.jsp").forward(request, response);

      /*  ServletContext context = getServletContext();
        if (context.getAttribute("rows") == null)
            context.setAttribute("rows", new RowsOfData());
        request.setAttribute("path", request.getRequestURI());

        RowData newRow = new RowData(String.valueOf(System.nanoTime()), new Point(x, y, r));
        request.setAttribute("row", newRow);
        RowsOfData rows = (RowsOfData) context.getAttribute("rows");
        rows.addRow(newRow);
        getServletContext().getRequestDispatcher("/response.jsp").forward(request, response);*/
    }


    public boolean check(double x, double y, double r) {
        if ((x * x + y * y <= r * r && x >= 0 && y >= 0) || (x > -r / 2 && x < 0 && y < 0 && y > -r)
                || (x > 0 && y <= x + r && x < r))
            return true;
        else return false;
    }
}


