<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleTesteHellWbProxyid" scope="session" class="br.com.testewb.TesteHellWbProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleTesteHellWbProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleTesteHellWbProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleTesteHellWbProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        br.com.testewb.TesteHellWb getTesteHellWb10mtemp = sampleTesteHellWbProxyid.getTesteHellWb();
if(getTesteHellWb10mtemp == null){
%>
<%=getTesteHellWb10mtemp %>
<%
}else{
        if(getTesteHellWb10mtemp!= null){
        String tempreturnp11 = getTesteHellWb10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String n1_1id=  request.getParameter("n116");
        int n1_1idTemp  = Integer.parseInt(n1_1id);
        String n2_2id=  request.getParameter("n218");
        int n2_2idTemp  = Integer.parseInt(n2_2id);
        int soma13mtemp = sampleTesteHellWbProxyid.soma(n1_1idTemp,n2_2idTemp);
        String tempResultreturnp14 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(soma13mtemp));
        %>
        <%= tempResultreturnp14 %>
        <%
break;
case 20:
        gotMethod = true;
        String n1_3id=  request.getParameter("n123");
        int n1_3idTemp  = Integer.parseInt(n1_3id);
        String n2_4id=  request.getParameter("n225");
        int n2_4idTemp  = Integer.parseInt(n2_4id);
        int subtracao20mtemp = sampleTesteHellWbProxyid.subtracao(n1_3idTemp,n2_4idTemp);
        String tempResultreturnp21 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(subtracao20mtemp));
        %>
        <%= tempResultreturnp21 %>
        <%
break;
case 27:
        gotMethod = true;
        String n1_5id=  request.getParameter("n130");
        int n1_5idTemp  = Integer.parseInt(n1_5id);
        String n2_6id=  request.getParameter("n232");
        int n2_6idTemp  = Integer.parseInt(n2_6id);
        int divisao27mtemp = sampleTesteHellWbProxyid.divisao(n1_5idTemp,n2_6idTemp);
        String tempResultreturnp28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(divisao27mtemp));
        %>
        <%= tempResultreturnp28 %>
        <%
break;
case 34:
        gotMethod = true;
        String n1_7id=  request.getParameter("n137");
        int n1_7idTemp  = Integer.parseInt(n1_7id);
        String n2_8id=  request.getParameter("n239");
        int n2_8idTemp  = Integer.parseInt(n2_8id);
        int multiplicacao34mtemp = sampleTesteHellWbProxyid.multiplicacao(n1_7idTemp,n2_8idTemp);
        String tempResultreturnp35 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(multiplicacao34mtemp));
        %>
        <%= tempResultreturnp35 %>
        <%
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>