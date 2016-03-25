<%@ page import="java.util.*" %>

<%@ include file="db.jsp" %>

    <section id="about" class="home-section text-center">
	     <div class="container">

                <div class="row">
                    <%
                    //Date date = new Date();
                    String leave_from           = request.getParameter("leave_from");
                    String from_to              = request.getParameter("from_to");
                    String unplanned_activity              = request.getParameter("unplanned_activity");
                    String reason_of_leave              = request.getParameter("reason_of_leave");
                    String leave_type           = request.getParameter("leave_type");
                    String hod_recommend        = request.getParameter("hod_recommend");
                    String remarks              = request.getParameter("remarks");
                    String authority_recommend     = request.getParameter("authority_recommend");
                    

                    
                    /*
                    out.println(leave_from);
                    out.println(from_to);
                    out.println(unplanned_activity);
                    out.println(reason_of_leave);
                    out.println(leave_type);
                    out.println(hod_recommend);
                    out.println(remarks);
                    out.println(authority_recommend);
                    */
                   // out.println(date_of_application);
                    Statement st = con.createStatement();
                    ResultSet rs;
                    int i = st.executeUpdate("insert into planned_leave(leave_form, from_to, unplanned_activity, reason_of_leave, leave_type, hod_recommend, remarks,authority_recommend) values ('" + leave_from + "','" + from_to + "','" + unplanned_activity + "','" + reason_of_leave + "', '" + leave_type + "','" + hod_recommend + "','" + remarks + "','" + authority_recommend + "')");
                   
                   if (i > 0) {
                       
                        response.sendRedirect("user_home.jsp");
                   }
                    
                    %>
                </div>
             </div>
    </section>

