<%@ page import ="java.sql.*" %>

<%@ page import ="javax.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String pwd = request.getParameter("pass");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/oems",  "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from saff where uname='" + userid + "' and pass='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", rs.getString(8));
        session.setAttribute("mid", rs.getString(1));
       // response.sendRedirect("admin_page.jsp");
       String dbuserid = (String)session.getAttribute("userid");
            if(dbuserid.equals("admin"))
            {
                response.sendRedirect("admin_home.jsp");
            }
            else
            {
                response.sendRedirect("user_home.jsp");
            }
            
        
    } else {
        out.println("Invalid password <a href='index.jsp'>try again</a>");
    }
%>