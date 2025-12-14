package com.example.profile;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/ViewProfilesServlet")
public class ViewProfilesServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ProfileDAO dao = new ProfileDAO();
        String search = req.getParameter("search");

        List<ProfileBean> profiles =
                (search == null || search.trim().isEmpty())
                        ? dao.getAllProfiles()
                        : dao.searchProfiles(search);

        req.setAttribute("profiles", profiles);
        req.getRequestDispatcher("viewProfiles.jsp").forward(req, res);
    }
}
