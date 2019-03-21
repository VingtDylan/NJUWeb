package Servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * @auther VingtDylan
 * @date 2019/3/21 16:42
 * Keep it simple and stupid!
 */

@WebServlet("/Servlet/Login")
public class Login extends HttpServlet {
    private String message;

    @Override
    public void init() throws ServletException {
        message = "test for doGet";
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
        String value1 = " ",value2 = " ";
        Cookie cookie = null;
        Cookie[ ]cookies = req.getCookies();
        if(cookies!=null){
            for(int i=0;i<cookies.length;i++){
                cookie=cookies[i];
                if(cookie.getName().equals("username"))
                    value1 = cookie.getValue();
                if(cookie.getName().equals("password"))
                    value2 = cookie.getValue();
            }
            if(value1.equals("VingtDylan")&&value2.equals("ABClaohu512")){
                message = "欢迎您"+value1+"再次登录";
                req.getSession().setAttribute("messsge",message);
                resp.sendRedirect("Welcome");
            }else{
                resp.sendRedirect("index.jsp");
            }
        }else{
            resp.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=utf-8");
//        String username = req.getParameter("username");
//        String password = req.getParameter("password");
//        if(username!=null&&username.equals("VingtDylan")&&password!=null&&password.equals("ABClaohu512")){
//            HttpSession session = req.getSession(true);
//            ((HttpSession) session).setAttribute("loggedIn",true);
//            resp.sendRedirect("Welcome");
//            return;
//        }else{
//            RequestDispatcher dispatcher = req.getRequestDispatcher("/index.jsp");
//            dispatcher.forward(req,resp);
//
//        }
        String username = req.getParameter("username").trim();
        String password = req.getParameter("password").trim();
        if(!username.equals("VingtDylan")||!password.equals("ABClaohu512")){
            message = "请重试";
            req.getSession().setAttribute("messsge",message);
            resp.sendRedirect("index.jsp");
        }else{
            if((req.getParameter("check")!=null)&&(req.getParameter("check").equals("None"))){
                Cookie nameCookie = new Cookie("username",username);
                Cookie pswdCookie = new Cookie("password",password);
                nameCookie.setMaxAge(1000);
                pswdCookie.setMaxAge(1000);
                resp.addCookie(nameCookie);
                resp.addCookie(pswdCookie);
//                PrintWriter out=resp.getWriter();
//                out.println("<html><title>aaa</title>");
//                out.println("<body><h1>aaaaa</h1>");
//                out.println("</body></html>");
            }
            message = "您已成功登录";
            req.getSession().setAttribute("messsge",message);
            resp.sendRedirect("Welcome");
        }
    }


    @Override
    public void destroy() {
        super.destroy();
    }
}