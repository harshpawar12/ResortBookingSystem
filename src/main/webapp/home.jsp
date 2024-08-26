<%@page import="org.apache.catalina.valves.rewrite.Substitution.StaticElement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.project.dao.getConnection"%>
<%@page import="com.project.dao.SqlQueries"%>
<%@page import="com.project.beans.booking"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="header.jsp" %>

<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" name="text/css" href="css/home.css">
 <% Connection con=getConnection.isSuccesfully();
 PreparedStatement ps=con.prepareStatement("select * from booking");
 ResultSet rs=ps.executeQuery();
 int x=0;
 int sum=0;
 while(rs.next()){
	 x++;
	 sum+=Integer.parseInt(rs.getString(8));
 }
 int num=100;
 int available=num-x;
 %>
<%
Connection conn=getConnection.isSuccesfully();
PreparedStatement p=conn.prepareStatement("select * from contact");

ResultSet rs1=p.executeQuery();
int y=0;

while(rs1.next())
{
	y++;
	int sum1=Integer.parseInt(rs1.getString(1));

}

%>
</head>
<style>
button[type="submit"] {
    width: 100%;
    padding: 12px 20px;
    background-color: red;
    color: #ffffff;
    border: none;
   
    border-radius: 3px;
    font-size: 10px;
    font-weight: bold;
    text-transform: uppercase;
    cursor: pointer;
    
    box-shadow: 0 4px 6px rgba(0, 123, 255, 0.3);
}

button[type="submit"]:hover {
     box-shadow: 0 6px 12px rgba(0, 123, 255, 0.5);
}

button[type="submit"]:active {
   
    box-shadow: 0 3px 8px rgba(0, 123, 255, 0.5);
    transform: translateY(2px);
}
.navbar {
    background-color: #004080;
    color: #fff;
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 20px;
    position: relative;
}

.navbar-brand {
    font-size: 24px;
    font-weight: bold;
}

.navbar-links {
    list-style: none;
    display: flex;
}

.navbar-links li {
    margin-left: 20px;
}

/* Search Bar Styles */
#searchInput {
    width: 100%;
    max-width: 400px;
    padding: 10px;
    margin-bottom: 20px;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 16px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: border-color 0.3s, box-shadow 0.3s;
}

#searchInput:focus {
    border-color: #004080;
    box-shadow: 0 2px 8px rgba(0, 64, 128, 0.3);
    outline: none;
}

#searchInput::placeholder {
    color: #888;
}


.navbar-links a {
    color: #fff;
    text-decoration: none;
    font-size: 18px;
    transition: color 0.3s ease;
}

.navbar-links a:hover {
    color: #ffcc00;
}

.navbar-toggle {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.bar {
    height: 3px;
    width: 25px;
    background-color: #fff;
    margin: 4px 0;
    transition: all 0.3s ease;
}

</style>
<body>

<nav class="navbar">
 <a href="gallery.jsp?room=<%=available%>"></a>
</nav>

    
     <div class="dashboard-container">
        <!-- Sidebar -->
     

        <!-- Main Content -->
        <div class="main-content">
            <div class="header">
                <h1>Dashboard Overview</h1>
                <p>Welcome to the resort management dashboard.</p>
            </div>

            <div class="cards">
                <div class="card">
                    <h3>Total Bookings</h3>
                    <p><%=x %></p>
                </div>
                <div class="card">
                    <h3>Available Rooms</h3>
                    <p><%=available %></p>
                </div>
               
                <div class="card">
                    <h3>Revenue</h3>
                    <p>RS<%=sum %></p>
                </div>
                
                 <div class="card">
                    <h3>Messages</h3>
                    <p><%=y %></p>
                </div>
            </div>
       
 <%
 List<booking>al=SqlQueries.isShowed();
 %>


            <div class="table-section">
                <h2>Recent Bookings</h2>
               <div>
    <!-- Search Bar -->
    <input type="text" id="searchInput" placeholder="Search by Guest Name..." onkeyup="searchTable()">
    
    <!-- Table Structure -->
    <table>
        <thead>
            <tr>
                <th>Booking ID</th>
                <th>Guest Name</th>
                <th>Check-in Date</th>
                <th>Check-out Date</th>
                <th>Our Rooms</th>
                <th>Status</th>
                <th>Payments</th>
                <th>Total</th>
                <th>Delete</th>
                <th>Update</th>
                <th>Bill</th>
            </tr>
            <%
                for(booking b:al) {
            %>
            <tr>
                <td><%=b.getId() %></td>
                <td><%=b.getName() %></td>
                <td><%=b.getCdate() %></td>
                <td><%=b.getOddate() %></td>
                <td><%=b.getRoom() %></td>
                <td><%=b.getStatus() %></td>
                <td><%=b.getPayment() %></td>
                <td><%=b.getTotal() %></td>
                <td>
                    <form action="PersonController" method="post">
                        <input type="hidden" name="person" value="delete">
                        <input type="hidden" name="id" value="<%=b.getId() %>">
                        <button type="submit">Delete</button>
                    </form>
                </td>
                <td>
                    <form action="update.jsp" method="post">
                        <input type="hidden" name="id" value="<%=b.getId() %>">
                        <input type="hidden" name="name" value="<%=b.getName() %>">
                        <input type="hidden" name="cdate" value="<%=b.getCdate() %>">
                        <input type="hidden" name="odate" value="<%=b.getOddate() %>">
                        <input type="hidden" name="room" value="<%=b.getRoom() %>">
                        <input type="hidden" name="status" value="<%=b.getStatus() %>">
                        <input type="hidden" name="payment" value="<%=b.getPayment() %>">
                        <input type="hidden" name="total" value="<%=b.getTotal() %>">
                        <button type="submit">Update</button>
                    </form>
                </td>
                <td>
                    <form action="print.jsp" method="post">
                        <input type="hidden" name="id" value="<%=b.getId() %>">
                        <input type="hidden" name="name" value="<%=b.getName() %>">
                        <input type="hidden" name="cdate" value="<%=b.getCdate() %>">
                        <input type="hidden" name="odate" value="<%=b.getOddate() %>">
                        <input type="hidden" name="room" value="<%=b.getRoom() %>">
                        <input type="hidden" name="status" value="<%=b.getStatus() %>">
                        <input type="hidden" name="payment" value="<%=b.getPayment() %>">
                        <input type="hidden" name="total" value="<%=b.getTotal() %>">
                        <button type="submit">Print</button>
                    </form>
                </td>
            </tr>
            <%
                }
            %>
        </thead>
        <tbody>
            <!-- Rows will be filtered based on search -->
        </tbody>
    </table>
</div>

            </div>
        </div>
    </div>
    <footer class="resort-footer">
    <div class="footer-content">
        <p>&copy; 2024 Serenity Resort & Spa. All rights reserved.</p>
        <p>
            <a href="#">Privacy Policy</a> | 
            <a href="#">Terms & Conditions</a> | 
            <a href="#">Contact Us</a> | 
            <a href="#">FAQs</a>
        </p>
        <p>
            Follow us:
            <a href="#">Facebook</a> |
            <a href="#">Instagram</a> |
            <a href="#">Twitter</a>
        </p>
    </div>
    <script>
function searchTable() {
    // Get the value from the search input
    const input = document.getElementById('searchInput');
    const filter = input.value.toUpperCase();
    
    // Get the table and the rows
    const table = document.querySelector('table');
    const tr = table.getElementsByTagName('tr');
    
    // Loop through the table rows
    for (let i = 1; i < tr.length; i++) {
        // Get the second column (Guest Name)
        const td = tr[i].getElementsByTagName('td')[1];
        
        if (td) {
            // If the cell's content matches the search query, display the row, otherwise hide it
            const txtValue = td.textContent || td.innerText;
            tr[i].style.display = txtValue.toUpperCase().indexOf(filter) > -1 ? '' : 'none';
        }
    }
}
</script>
    
</body>
</html>