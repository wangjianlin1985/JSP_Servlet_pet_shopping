// 
// Decompiled by Procyon v0.5.29
// 

package com.hr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import com.hr.entity.EASYBUY_Ddan;
import java.util.ArrayList;
import java.io.PrintWriter;
import com.hr.entity.EASYBUY_USER;
import com.hr.dao.EASYBUY_DdanDao;
import com.hr.util.EncodeUtil;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class DeleteDingdanServlet extends HttpServlet
{
    protected void service(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
        EncodeUtil.encode(req);
        resp.setContentType("text/html;charset=utf-8");
        final String id = req.getParameter("id");
        final PrintWriter out = resp.getWriter();
        final int count = EASYBUY_DdanDao.deleteDingdanById(id);
        if (count > 0) {
            final EASYBUY_USER user = (EASYBUY_USER)req.getSession().getAttribute("commom_user");
            final ArrayList<EASYBUY_Ddan> dan = EASYBUY_DdanDao.selectById(user.getEU_USER_ID());
            req.setAttribute("dan", (Object)dan);
            resp.sendRedirect("Dan.jsp");
        }
        else {
            out.write("<script>");
            out.write("alert('\u5220\u9664\u5931\u8d25');");
            out.write("location.href='Dan.jsp'");
            out.write("</script>");
            out.close();
        }
    }
}
