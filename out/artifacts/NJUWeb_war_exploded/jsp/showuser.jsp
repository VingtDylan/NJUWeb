<%--
  User: ASUS
  Date: 2019/6/6
  Time: 2:33
  Keep it simple and stupid.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page errorPage="error.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="Java.UserInfoList" %>
<%@ page import="Java.UserInfoTrace" %>
<%
    UserInfoList list=UserInfoList.getInstance();
    UserInfoTrace ut=new UserInfoTrace();
    request.setCharacterEncoding("UTF-8");
    String name=request.getParameter("username");
    ut.setUser(name);
    session.setAttribute("list",ut);
    list.addUserInfo(ut.getUser());
    session.setMaxInactiveInterval(10);
%>
<html>
<head>
    <title>UserOnline</title>
</head>
<body>
    <section>
        <div>
            <textarea rows="10" cols="34">
                <%
                    Vector vector=list.getList();
                    if(vector!=null && vector.size()>0){
                        for(int i=0;i<vector.size();i++){
                            out.println(vector.elementAt(i));
                        }
                    }
                %>
            </textarea>
        </div>
    </section>
</body>
</html>
