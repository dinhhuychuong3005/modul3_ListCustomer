<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.Serializable" %><%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 30/06/2021
  Time: 8:36 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    class Customer {
        public String name;
        public String birth_day;
        public String address;
        public String image;
        Customer(String name, String birth_day, String address, String image){
            this.name = name;
            this.birth_day = birth_day;
            this.address = address;
            this.image = image;
        }
    }
    List<Customer> listCustomer = new ArrayList<Customer>();
    listCustomer.add(new Customer("Hưng béo", "20-02-1995", "NĐ", "https://scontent.fhan3-2.fna.fbcdn.net/v/t1.15752-9/206107788_260592859157208_7925405403617722088_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=ae9488&_nc_ohc=_JPQXsT_SrwAX9GQ-NJ&_nc_ht=scontent.fhan3-2.fna&oh=48d750287f68770e459c561d7ab69379&oe=60E05789"));
    listCustomer.add(new Customer("Tiến bịp", "6-8-1994", "Hải Phòng", "https://scontent.fhan4-1.fna.fbcdn.net/v/t1.15752-9/208073402_512532543180828_6652936660281947312_n.jpg?_nc_cat=104&ccb=1-3&_nc_sid=ae9488&_nc_ohc=io0vi74YzR4AX_XLjdN&_nc_ht=scontent.fhan4-1.fna&oh=856913b52c51b3f9746b82ba6be67f1a&oe=60E0CD69"));
    listCustomer.add(new Customer("CHUONG EXCITER", "6-8-1994", "Hải Phòng", "http://yamahaanphu.com/upload/images/yamaha-exciter-155-vva-2021-phien-ban-cao-cap.png"));
    request.setAttribute("listCustomer", listCustomer);
%>
<html>
<head>
    <title>$Title$</title>
</head>
<body>


<div class="container">
    <h3 class="title white" style="margin-left: 30px">Danh sách khách hàng</h3>
    <table class="white" border="1px" >
        <th>
        <tr>
            <th>Họ và Tên</th>
            <th>Ngày sinh</th>
            <th>Địa chỉ</th>
            <th>Ảnh</th>
        </tr>
        </th>
        <tbody>
        <%
            int count = listCustomer.size();
        %>

        <%
            for (int i = 0; i<count; i++) {
                Customer customer = listCustomer.get(i);
        %>

        <tr>
            <td><%=customer.name%></td>
            <td><%=customer.birth_day%></td>
            <td><%=customer.address%></td>
            <td><img width="100px" height="100px" src="<%=customer.image%>" alt="<%=customer.name%>" /></td>
        </tr>

        <%
            }
        %>
        </tbody>
    </table>
</div>
</body>
</html>
