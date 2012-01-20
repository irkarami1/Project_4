<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="newCascadeStyleSheet.css" />
       
        <title>Project 4</title>
    </head>
    <body>

        <div align="center" style="background-color: c; height: 100%; padding: 25px">
                <h1>Shopping cart</h1>
            <html:form action="/login">
    <table border="0">
        <tbody>
                        <tr>
                <td colspan="2">
                    <bean:write name="LoginForm" property="error" filter="false"/>
                    &nbsp;</td>
            </tr>

            <tr>
                <td>Enter username:</td>
                <td><html:text property="name" /></td>
                <td>(try: name)</td>
            </tr>
            <tr>
                <td>Enter password:</td>
                <td><html:password property="password" /></td>
                <td>(try: password)</td>
            </tr>
            <tr>
                <td></td>
                <td><html:submit value="Login" /></td>
            </tr>
        </tbody>
    </table>
</html:form>
             <img src="http://icons.iconarchive.com/icons/deleket/soft-scraps/256/Lock-Unlock-icon.png"/>
        </div> 
    </body>
</html>
