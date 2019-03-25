package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * @auther VingtDylan
 * @date 2019/3/21 16:42
 * Keep it simple and stupid!
 */

@WebServlet("/Servlet/Login")
public class Login extends HttpServlet {
    @Override
    public void init() throws ServletException {
        //TODO
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //TODO
//        resp.setContentType("text/html;charset=utf-8");
//        String value1 = " ",value2 = " ";
//        Cookie cookie = null;
//        Cookie[ ]cookies = req.getCookies();
//        if(cookies!=null){
//            for(int i=0;i<cookies.length;i++){
//                cookie=cookies[i];
//                if(cookie.getName().equals("username"))
//                    value1 = cookie.getValue();
//                if(cookie.getName().equals("password"))
//                    value2 = cookie.getValue();
//            }
//            if(value1.equals("VingtDylan")&&value2.equals("ABClaohu512")){
//                req.getSession().setAttribute("loggedIn",true);
//                resp.sendRedirect("Welcome");
//            }else{
//                resp.sendRedirect("index.jsp");
//            }
//        }else{
//            resp.sendRedirect("index.jsp");
//        }
    }

    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String username = req.getParameter("username").trim();
        String password = req.getParameter("password").trim();
        if(!"VingtDylan".equals(username)||!"ABClaohu512".equals(password)){
            req.getSession().setAttribute("loggedIn",false);
            resp.sendRedirect("index.jsp");
        }else{
            if((req.getParameter("check")!=null)&&("None".equals(req.getParameter("check")))){
                Cookie nameCookie = new Cookie("username",username);
                Cookie pswdCookie = new Cookie("password",password);
                nameCookie.setMaxAge(60*60*24*7);
                pswdCookie.setMaxAge(60*60*24*7);
                resp.addCookie(nameCookie);
                resp.addCookie(pswdCookie);
//                PrintWriter out=resp.getWriter();
//                out.println("<html><title>aaa</title>");
//                out.println("<body><h1>aaaaa</h1>");
//                out.println("</body></html>");
            }
            if("VingtDylan".equals(username)&&"ABClaohu512".equals(password)){
                HttpSession session = req.getSession(true);
                session.setAttribute("loggedIn",true);
                resp.sendRedirect("Welcome");
                return;
            }else{
                RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
                dispatcher.forward(req,resp);

            }
            req.getSession().setAttribute("loggedIn",true);
            resp.sendRedirect("Welcome");
        }
    }

    @Override
    public void destroy() {
        super.destroy();
    }
}