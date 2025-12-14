package com.example.profile;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {

        ProfileBean p = new ProfileBean();
        p.setName(req.getParameter("name"));
        p.setStudentId(req.getParameter("studentId"));
        p.setProgram(req.getParameter("program"));
        p.setEmail(req.getParameter("email"));
        p.setHobbies(req.getParameter("hobbies"));
        p.setIntroduction(req.getParameter("intro"));

        new ProfileDAO().insertProfile(p);

        req.setAttribute("profile", p);
        req.getRequestDispatcher("profile.jsp").forward(req, res);
    }
}
