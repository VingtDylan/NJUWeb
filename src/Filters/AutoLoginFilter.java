package Filters;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @auther VingtDylan
 * @date 2019/3/22 3:09
 * Keep it simple and stupid!
 */

public class AutoLoginFilter implements Filter {

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        Boolean userSession= (Boolean) req.getSession().getAttribute("loggedIn");
        if(userSession==null){
            resp.setContentType("text/html;charset=utf-8");
            String value1 = " ",value2 = " ";
            Cookie cookie = null;
            Cookie[ ]cookies = req.getCookies();
            if(cookies!=null){
                for(int i=0;i<cookies.length;i++){
                    cookie=cookies[i];
                    if(cookie.getName().equals("username")) {
                        value1 = cookie.getValue();
                    }
                    if(cookie.getName().equals("password")) {
                        value2 = cookie.getValue();
                    }
                }
                if(value1.equals("VingtDylan")&&value2.equals("ABClaohu512")){
                    req.getSession().setAttribute("loggedIn",true);
                    chain.doFilter(request,response);
                }else{
                    resp.sendRedirect("/jsp/error.jsp");
                }
            }else{
                resp.sendRedirect("/jsp/error.jsp");
            }
        }else{
            chain.doFilter(request,response);
        }
    }

    @Override
    public void init(FilterConfig filterConfig) {

    }

}