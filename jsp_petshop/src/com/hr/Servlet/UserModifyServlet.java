// 
// Decompiled by Procyon v0.5.29
// 

package com.hr.Servlet;

import java.io.PrintWriter;
import com.hr.dao.EASYBUY_USERDao;
import com.hr.entity.EASYBUY_USER;
import com.hr.util.EncodeUtil;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class UserModifyServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;
    
    protected void doGet(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
    }
    
    protected void doPost(final HttpServletRequest request, final HttpServletResponse response) throws ServletException, IOException {
        EncodeUtil.encode(request);
        response.setContentType("text/html;charset=utf-8");
        final EASYBUY_USER user = (EASYBUY_USER)request.getSession().getAttribute("commom_user");
        response.setContentType("text/html;charset=utf-8");
        final String username = request.getParameter("userName");
        final String name = request.getParameter("name");
        final String pwd = request.getParameter("passWord");
        final String sex = request.getParameter("sex");
        final String birthday = request.getParameter("birthday");
        final String email = request.getParameter("email");
        final String mobile = request.getParameter("mobile");
        final String address = request.getParameter("address");
        final String courty = request.getParameter("courty");
        final String like = request.getParameter("like");
        final EASYBUY_USER updateuser = new EASYBUY_USER(username, name, pwd, sex, birthday, null, email, mobile, address, courty, like, user.getEU_STATUS());
        final int count = EASYBUY_USERDao.update(updateuser);
        if (count > 0) {
            request.getSession().setAttribute("commom_user", (Object)updateuser);
            response.sendRedirect("myindex.jsp");
        }
        else {
            final PrintWriter out = response.getWriter();
            out.print("<script>");
            out.print("alert('\u4fee\u6539\u5931\u8d25');");
            out.print("location.href='" + request.getContextPath() + "'");
            out.print("</script>");
            out.close();
        }
    }
}
