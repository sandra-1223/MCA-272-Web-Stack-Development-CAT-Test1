<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<html> 
<body>
	<center>
	<h2>Employee Management System</h2>
	<table border="1" width="75%" cellpadding="15px">
		<tr bgcolor="orange>
			<th style="text-align:center">ID</th>
			<th style="text-align:center">NAME</th>
			<th style="text-align:center">AGE</th>
			<th style="text-align:center">SALARY</th>
			<th style="text-align:center">EMAIL</th>
			<th style="text-align:center">MobNum</th>
			<th style="text-align:center">Designation</th>
			<th style="text-align:center">Promotion</th>
	       </tr>
	
                   

	<xsl:for-each select="company/employee">
		<tr><td><xsl:value-of select="eid"/></td>
		    <td><xsl:value-of select="empname"/></td>
                    <td><xsl:value-of select="empage"/></td>
                    <td><xsl:value-of select="empsalary"/></td>
                    <td><xsl:value-of select="empemailid"/></td>
                    <td><xsl:value-of select="empphonenum"/></td>
                    <td><xsl:value-of select="empdesignation"/></td>
	      </tr>
	</xsl:for-each>
 <xsl:choose>
									<xsl:when test="empage >= 50">
									<td>Associate Project Manager</td>
									</xsl:when>
									<xsl:when test="empage >= 40">
									<td>Team Leader</td>
									</xsl:when>
									<xsl:otherwise>
									<td>Developer</td>
									</xsl:otherwise>
	  </xsl:choose>
        </table>
        </center>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
         



