The JSTL function provides a number of standard functions, most of these functions are common string manipulation functions.
The syntax used for including JSTL function library in your JSP is:

<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

#1.JSTL fn:contains() Function
The fn:contains() is used for testing if the string containing the specified substring.
If the specified substring is found in the string, it returns true otherwise false.
<c:set var="String" value="Welcome to javatpoint"/>

<c:if test="${fn:contains(String, 'javatpoint')}">
    <p>Found javatpoint string<p>
</c:if>

<c:if test="${fn:contains(String, 'JAVATPOINT')}">
    <p>Found JAVATPOINT string<p>
</c:if>

#2.JSTL fn:containsIgnoreCase() Function
The fn:containsIgnoreCase() function is used to test if an input string contains
the specified substring as a case insensitive way. During searching the specified substring it ignores the case

<c:set var="String" value="Welcome to javatpoint"/>

<c:if test="${fn:containsIgnoreCase(String, 'javatpoint')}">
    <p>Found javatpoint string<p>
</c:if>

<c:if test="${fn:containsIgnoreCase(String, 'JAVATPOINT')}">
    <p>Found JAVATPOINT string<p>
</c:if>

#3.JSTL fn:endsWith() Function
The fn:endsWith() function is used for testing if an input
string ends with the specified suffix. If the string ends with a specified suffix, it returns true otherwise false.


<c:set var="String" value="Welcome to JSP programming"/>

<c:if test="${fn:endsWith(String, 'programming')}">
    <p>String ends with programming<p>
</c:if>

<c:if test="${fn:endsWith(String, 'JSP')}">
    <p>String ends with JSP<p>
</c:if>

#4.JSTL fn:escapeXml() Function
The fn:escapeXml() function escapes the characters that would
be interpreted as XML markup. It is used for escaping the character in XML markup language.

<c:set var="string1" value="It is first String."/>
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>

<p>With escapeXml() Function:</p>
<p>string-1 : ${fn:escapeXml(string1)}</p>
<p>string-2 : ${fn:escapeXml(string2)}</p>

<p>Without escapeXml() Function:</p>
<p>string-1 : ${string1}</p>
<p>string-2 : ${string2}</p>

#5.JSTL fn:indexOf() Function
The fn:indexOf() function return an index of string. It is used for determining the index of string specified in substring.

<c:set var="string1" value="It is first String."/>
<c:set var="string2" value="It is <xyz>second String.</xyz>"/>

<p>Index-1 : ${fn:indexOf(string1, "first")}</p>
<p>Index-2 : ${fn:indexOf(string2, "second")}</p>

#6.JSTL fn:trim() Function
The fn:trim() function removes the blank spaces from both the ends of a string.
It mainly used for ignoring the blank spaces from both the ends of string.

<c:set var="str1" value="Welcome to JSP        programming         "/>
<p>String-1 Length is : ${fn:length(str1)}</p>

<c:set var="str2" value="${fn:trim(str1)}" />
<p>String-2 Length is : ${fn:length(str2)}</p>
<p>Final value of string is : ${str2}</p>