// 
// Decompiled by Procyon v0.5.29
// 

package com.hr.manage;

import java.io.IOException;
import javax.servlet.ServletException;
import com.hr.entity.EASYBUY_COMMENT;
import java.util.ArrayList;
import javax.servlet.ServletResponse;
import javax.servlet.ServletRequest;
import com.hr.dao.EASYBUY_COMMENTDao;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServlet;

public class SelManage extends HttpServlet
{
    protected void service(final HttpServletRequest req, final HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        int page = 1;
        final int pagesize = 6;
        final String spage = req.getParameter("page");
        if (spage != null) {
            page = Integer.parseInt(spage);
        }
        final ArrayList<EASYBUY_COMMENT> list = EASYBUY_COMMENTDao.selPage(page, pagesize);
        final int max_page = EASYBUY_COMMENTDao.getMax(pagesize);
        if (list.size() > 0 && max_page > 0) {
            req.setAttribute("list", (Object)list);
            req.setAttribute("max_page", (Object)max_page);
            req.setAttribute("page", (Object)page);
            req.getRequestDispatcher("guestbook.jsp").forward((ServletRequest)req, (ServletResponse)resp);
        }
        else {
            resp.getWriter().print("\u8fd8\u6ca1\u6709\u7559\u8a00\u4fe1\u606f\u54e6\uff01");
        }
    }
}
