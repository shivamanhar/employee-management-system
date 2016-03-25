<%@ page import="java.util.*" %>
<%@ include file="header.jsp" %>
<%@ include file="db.jsp" %>

    <!-- Section: about -->
    <section id="about" class="home-section text-center">
          <div class="container">

	    <div class="row">
		<div class="heading-about">
                    <h2> Planned Leave </h2>
                    <table class="table table-bordered">
                        <tr><td>From </td><td>To</td><td>Leave Type</td><td>Staff Name</td><td>Approval</td></tr>
                    <%
                    Statement st = con.createStatement();
                ResultSet rs;
                
                rs = st.executeQuery("select * from unplanned_leave join saff on saff.id=unplanned_leave.saff_id");
                if (rs.next()) {
                  
                  out.println("<tr><td>" +rs.getString(2) +"</td>"+"<td>" +rs.getString(3) +"</td>"+"<td>" +rs.getString(7) +"</td>"+"<td>" +rs.getString(16) +"</td>"+"<td><a href='' class='btn btn-primary'> Approved </a></td></tr>");
                        
                    
                } else {
                    out.println("Invalid password <a href='index.jsp'>try again</a>");
                }
                %>
                    </table>
                    <h2> Unplanned Leave </h2>
                    <table class="table table-bordered">
                        <tr><td>From </td><td>To</td><td>Leave Type</td><td>Staff Name</td><td>Approval</td></tr>
                    <%
                    Statement s1 = con.createStatement();
                ResultSet ms;
                
                ms = s1.executeQuery("select * from planned_leave join saff on saff.id=planned_leave.saff_id");
                if (ms.next()) {
                  
                  out.println("<tr><td>" +rs.getString(2) +"</td>"+"<td>" +rs.getString(3) +"</td>"+"<td>" +rs.getString(7) +"</td>"+"<td>" +rs.getString(16) +"</td>"+"<td><a href='' class='btn btn-primary'> Approved </a></td></tr>");
                        
                    
                } else {
                    out.println("Invalid password <a href='index.jsp'>try again</a>");
                }
                %>
                    </table>
                </div>
            </div>
          </div>
    </section>
<%@ include file="footer.jsp" %>