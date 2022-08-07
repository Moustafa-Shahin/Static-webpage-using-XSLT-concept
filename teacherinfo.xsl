<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version = "1.0" 
xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"> 
<xsl:template match = "/"> 
<html>
<body bgcolor="#00FFFF">
<h1><center>TEACHER'S LIST</center></h1>
<table border="12" align="center">
<tr bgcolor="#B2FFFF">
<th>TEACHER ID</th>
<th>NAME</th>
<th>EXPERIENCE</th>
<th>SUBJECT</th>
<th>CONTACT</th>
</tr>
<xsl:for-each select="teacherinfo/personalinfo">
<xsl:sort select = "name"/> <!-- Sorting according to name-->
<tr>
<td>
<xsl:value-of select="@did"/>
</td>
<td><xsl:value-of select="name"/></td>
<td><xsl:value-of select="exp"/></td>
<td><xsl:value-of select="subject"/></td>
<td><xsl:value-of select="cno"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
