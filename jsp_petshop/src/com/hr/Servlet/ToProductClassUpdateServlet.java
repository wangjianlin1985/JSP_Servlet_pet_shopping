// 
// Decompiled by Procyon v0.5.29
// 

package com.hr.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import java.util.ArrayList;
import com.hr.entity.EASYBUY_PRODUCT_CATEGORY;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import com.hr.dao.EASYBUY_PRODUCT_CATEGORYDao;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class ToProductClassUpdateServlet extends HttpServlet
{
    protected void service(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
        final int id = Integer.parseInt(req.getParameter("id"));
        final EASYBUY_PRODUCT_CATEGORY epc = EASYBUY_PRODUCT_CATEGORYDao.selectById(id);
        req.setAttribute("epc", (Object)epc);
        final ArrayList<EASYBUY_PRODUCT_CATEGORY> epclist = EASYBUY_PRODUCT_CATEGORYDao.selectAll();
        req.setAttribute("epclist", (Object)epclist);
        req.getRequestDispatcher("productClass-modify.jsp").forward((ServletRequest)req, (ServletResponse)resp);
    }
}
