<%@ page language="java" contentType="text/html; charset=euc-kr" %>

<HTML>
<HEAD>
<TITLE> �������� </TITLE>

<META http-equiv="Content-Type" content="text/html; charset=euc-kr">
<style type='text/css'>
<!--
	a:link		{font-family:"";color:black;text-decoration:none;}
	a:visited	{font-family:"";color:black;text-decoration:none;}
	a:hover		{font-family:"";color:black;text-decoration:underline;}
-->
</style>

</HEAD>

<BODY>

<%
String year = request.getParameter("year");
String month = request.getParameter("month");
String day = request.getParameter("day");
%>

<center><font size='5'><b>���� ���</b></font></p>

<TABLE border='0' width='800' cellpadding='0' cellspacing='0'>
	<TR>
		<TD><hr size='1' noshade>
		</TD>
 	</TR>
</TABLE> 
<br>

<FORM Name='calendar1' Method='post' Action='write_ok.jsp?&year=<%=year%>&month=<%=month%>&day=<%=day%>'>

<TABLE border='1' cellpadding='0' cellspacing='0' width='800'>

	<TR>
        	<TD align='center' width='100' height='30' bgcolor='cccccc'>
		<input type='hidden' name='cp_type' value='input'>            
		<font size='2'><b>�� ��</b></font></TD>
        	<TD bgcolor='ededed'>
        	<input type='text' name='title' maxlength='20' size='38'></TD>
      	</TR>
    	<TR>
        	<TD bgcolor='cccccc' width='100' height='30'><p align='center'>
        	<font size='2'><b>�� ��</b></font></TD >
        	<TD bgcolor='ededed'>
        	<input type='text' name='position' maxlength='40' size='38'></TD>
    	</TR>
    	<TR>
        	<TD bgcolor='cccccc' width='100' height='30'><p align='center'>
        	<font size='2'><b>�� ��</b></font></TD>
        	<TD bgcolor='ededed'>
        	<font size='2'>
         	<b><%=year %>�� <%=month%>�� <%=day %>��</b></font></TD>
    	</TR>
    	<TR>
        	<TD height='35' bgcolor='cccccc'><p align="center">
        	<font size='2'><b>�� ��</b></font></TD>
        	<TD bgcolor='ededed'>
        	<select name='s_hour'>
            		<option value='0'>0��</option>
            		<option value='1'>1��</option>
           		<option value='2'>2��</option>
            		<option value='3'>3��</option>
            		<option value='4'>4��</option>
            		<option value='5'>5��</option>
            		<option value='6'>6��</option>
            		<option value='7'>7��</option>
            		<option value='8'>8��</option>
            		<option value='9'>9��</option>
           		<option value='10'>10��</option>
        		<option value='11'>11��</option>
    		        <option value='12'>12��</option>
   		        <option value='13'>13��</option>
   		        <option value='14'>14��</option>
  		        <option value='15'>15��</option>
   		        <option value='16'>16��</option>
   		        <option value='17'>17��</option>
            		<option value='18'>18��</option>
           		<option value='19'>19��</option>
         		<option value='20'>20��</option>
     		        <option value='21'>21��</option>
     		        <option value='22'>22��</option>
     		        <option value='23'>23��</option></select> 
            
            	<select name='s_minute'>
          		<option selected value='00'>00</option>
        		<option value='05'>05</option>
            		<option value='10'>10</option>
            		<option value='15'>15</option>
            		<option value='20'>20</option>
           	 	<option value='25'>25</option>
            		<option value='30'>30</option>
            		<option value='35'>35</option>
            		<option value='40'>40</option>
            		<option value='45'>45</option>
            		<option value='50'>50</option>
            		<option value='55'>55</option></select> ��
            
            	<select name='s_hour1'>
             		<option value='0'>0��</option>
            		<option value='1'>1��</option>
           		<option value='2'>2��</option>
            		<option value='3'>3��</option>
            		<option value='4'>4��</option>
            		<option value='5'>5��</option>
            		<option value='6'>6��</option>
            		<option value='7'>7��</option>
            		<option value='8'>8��</option>
            		<option value='9'>9��</option>
           		<option value='10'>10��</option>
        		<option value='11'>11��</option>
    		        <option value='12'>12��</option>
   		        <option value='13'>13��</option>
   		        <option value='14'>14��</option>
  		        <option value='15'>15��</option>
   		        <option value='16'>16��</option>
   		        <option value='17'>17��</option>
            		<option value='18'>18��</option>
           		<option value='19'>19��</option>
         		<option value='20'>20��</option>
     		        <option value='21'>21��</option>
     		        <option value='22'>22��</option>
     		        <option value='23'>23��</option></select> 
            
            	<select name='s_minute1'>
           		<option selected value='00'>00</option>
        		<option value='05'>05</option>
            		<option value='10'>10</option>
            		<option value='15'>15</option>
            		<option value='20'>20</option>
           	 	<option value='25'>25</option>
            		<option value='30'>30</option>
            		<option value='35'>35</option>
            		<option value='40'>40</option>
            		<option value='45'>45</option>
            		<option value='50'>50</option>
            		<option value='55'>55</option></select></TD>
    	</TR>
    	<TR>
        	<TD height='118' bgcolor='cccccc'><p align='center'>
        	<font size='2'><b>�� ��</b></font></TD>
        	<TD height='118' bgcolor='ededed'>
        	<textarea name='content' rows='5' cols='70'></textarea></TD>
    	</TR>
</TABLE>
<br>	
<TABLE border='0' cellpadding='0' cellspacing='0' width='800'>   	
	<TR>
        	<TD height='40' colspan='2'><p align='center'>
            	<input type='button' value='���� ���' onclick='send(this.form)'> 
            	<input type='reset' value='���'>
         	</TD>
    	</TR>
</TABLE>
</FORM>

<script language="javascript">
<!--
 function send(form)
 {
 form.submit();
 }
-->
</script>

</BODY>
</HTML> 