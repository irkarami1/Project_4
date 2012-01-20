<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@ page import="java.util.*" %>



<html>
	<head>
          
	<title>Project 4</title>
	</head>
	<body  bgcolor="DBC9A7">
                <p>
        <% String qucof;
        String qusug;
        String quwat;

       
        
        String prcof,prsug,prwat, totcof,totsug,totwat;;
        double qucofd,qusugd,quwatd, totcofd,totsugd,totwatd,total; 
        

      /*
prcof="18.50";
        prsug="6.95";
        prwat="1.29";
*/
 
       
        //prices
        
        
        prcof=getInitParameter("prcafe");
        if(prcof==null){prcof="18.50";}
        prsug=getInitParameter("prsugar");
        if(prsug==null){prsug="6.95";}
        prwat=getInitParameter("prwater");
        if(prwat==null){prwat="1.29";}
        
        
        double prcofd = Double.parseDouble(prcof);
        double prsugd = Double.parseDouble(prsug);
        double prwatd = Double.parseDouble(prwat);
        

            
 
        qucof=request.getParameter("cafe");
        qusug=request.getParameter("sugar");
        quwat=request.getParameter("water");

       // <c:if test="${(qucof==null)&&(quwat==null)&&(quwat==null)}">
        if((qucof==null)&&(quwat==null)&&(quwat==null)){
           Cookie[] cookies = request.getCookies(); 
               
           int i;
           if (cookies != null) {
                for (i=0; i<cookies.length; i++) {
                       if (cookies[i].getName().equals("cafeq")) {
                           qucof = cookies[i].getValue();
                           if((qucof==null)||qucof.equals("")){
                               qucof="0";
                           }
                      }
                       if (cookies[i].getName().equals("sugarq")) {
                           qusug = cookies[i].getValue();
                           if((qusug==null)||qusug.equals("")){
                               qusug="0";
                           }
                      }

                    
                        if (cookies[i].getName().equals("waterq")) {
                           quwat = cookies[i].getValue();
                           if((quwat==null)||quwat.equals("")){
                               quwat="0";
                           }
                      }

             }
        }else{     qucof="0";
       qusug="0";
       quwat="0";}
                     }
        %>

        <%
       if((qucof==null)||(qucof.equals(""))){qucof="0";}
        
        if((qusug==null)||(qusug.equals(""))){qusug="0";}
        if((quwat==null)||(quwat.equals(""))){quwat="0";}
                                 
       qucofd = Double.parseDouble(qucof);
       qusugd = Double.parseDouble(qusug);
       quwatd = Double.parseDouble(quwat);
       

        
       totcofd=prcofd*qucofd;
       totsugd=prsugd*qusugd;
       totwatd=prwatd*quwatd;
        
       total=totcofd+totsugd+totwatd;
        

        
       Cookie cookie1 = new Cookie ("cafeq",qucof);
       cookie1.setMaxAge(365 * 24 * 60 * 60);
       response.addCookie(cookie1);
       
       Cookie cookie2 = new Cookie ("sugarq",qusug);
       cookie2.setMaxAge(365 * 24 * 60 * 60);
       response.addCookie(cookie2);
       
       Cookie cookie3 = new Cookie ("waterq",quwat);
       cookie3.setMaxAge(365 * 24 * 60 * 60);
       response.addCookie(cookie3);


 
        
        
        %>
		<h1 align="center">Shopping Cart</h1>
		<br><br>
		<form name="myForm"  method="POST" action="index.jsp" >
		     <table align="center" border=1>

			<tr>
				<td><b>ITEM<b></td>
				<td><b>PRICE<b></td>
				<td><b>QUANTITY<b></td>
				<td><b>TOTAL<b></td>
			</tr>

			<tr>
				<td>Cafe</td>
				<td> <%out.print(prcof); %>  </td>
				<td><input type=text name="cafe" value= <%=qucof%>></td>
				<td><%out.print(totcofd); %></td>
			</tr>

			<tr>
				<td>Sugar</td>
				<td><%out.print(prsug); %> </td>
				<td><input type=text name="sugar" value= <%=qusug%>></td>
				<td><%out.print(totsugd); %></td>
			</tr>

			<tr>
				<td>Water</td>
				<td><%out.print(prwat); %> </td>
				<td><input type=text name="water" value= <%=quwat%>></td>
				<td><%out.print(totwatd); %></td>
			</tr>
                        
                        <tr>
				<td>Total</td>
				<td></td>
				<td></td>
				<td><%out.print(total); %></td>
			</tr>

		     </table>
		<br>
                        <center>
			<input type="submit" value="submit" />
                        </center>
		</form>
                <center>
		<br><br>

			<button type="button" title="Get info" onClick="parent.location='http://irkarami.wordpress.com/2012/01/20/4η-εργασία/'">?</button> 
			<button type="button" title="Download the code" onClick="parent.location='https://github.com/irkarami1/Project4'"> !</button> 
		</center>
        
            <img src="http://4sqatl.com/wp-content/uploads/2011/01/coffee-lovers-fresh-brew-foursquare-badge.png" align="right" />
	</body>
</html>