Function Get-HTMLCSS {
<#
	.SYNOPSIS
		Get's HTML Cascading Style Sheet
    .PARAMETER CSSName
		Name of the CSS 
#>
[CmdletBinding()]
param (
	[validateset("nologo","logo","default")][String] $CSSName = "default"
)

$CSS = Switch ($CSSName) {
	"logo" {
@"
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
<title>$($TitleText)</title>
<style type="text/css">
* {    
    margin: 0px;
    font-family: sans-serif;
    font-size: 8pt;
}

body {
    margin: 8px 5px 8px 5px; 
}

hr {
    height: 4px; 
    background-color: #337e94; 
    border: 0px;
}

table {
    table-layout: auto; 
    width: 100%;
    border-collapse: collapse;   
}

th {
    vertical-align: top; 
    text-align: left;
    padding: 2px 5px 2px 5px;
}

td {
    vertical-align: top; 
    padding: 2px 5px 2px 5px;
    border-top: 1px solid #bbbbbb;  
}

div.section {
    padding-bottom: 12px;
} 

div.header {
    border: 1px solid #bbbbbb; 
    padding: 4px 5em 0px 5px; 
    margin: 0px 0px -1px 0px;
    height: 2em; 
    width: 95%; 
    font-weight: bold ;
    color: #ffffff;
    background-color: #337e94;
}

div.content { 
    border: 1px solid #bbbbbb; 
    padding: 4px 0px 5px 11px; 
    margin: 0px 0px -1px 0px;
    width: 95%; 
    color: #000000; 
    background-color: #f9f9f9;
}

div.reportname {
    font-size: 12pt; 
    font-weight: bold;
}

div.footer {
    padding-right: 5em;
    text-align: right; 
}

table.fixed {
    table-layout: fixed; 
}

table.vertical {
	table-layout: fixed; width 100px; 
}

td.clientlogo {
    border: 0px;
	padding-left: 0px;
    vertical-align: middle;	
}

td.MainLogo {
    border: 0px; 
    padding-right: 5em;
    text-align: right; 
    vertical-align: middle;	
}

th.content { 
    border-top: 1px solid #bbbbbb; 
	width: 25%;
}

td.content { 
	width: 75%;
}

td.groupby {
	border-top: 3px double #bbbbbb;
}

.green {
	background-color: #a1cda4;
}

.yellow {
	background-color: #fffab1;
}

.red {
	background-color: #f5a085;
}

.odd {
	background-color: #D5D8DC;
}

.even {
	background-color: #F7F9F9;
}

.header {
	background-color: #616A6B; color: #F7F9F9;
}

div.column { width: 100%; float: left; }
div.first{ border-right: 1px  grey solid; width: 49% }
div.second{ margin-left: 10px;width: 49% }


a.alink:link {color:#007BFF;text-decoration:none;font-size:120%}
a.alink:visited {color:#FF8400;text-decoration:none;font-size:120%}
a.alink:hover {text-decoration:underline;font-size:130%}


</style>

<script type="text/javascript"> 
function show(obj) {
  document.getElementById(obj).style.display='block'; 
  document.getElementById("hide_" + obj).style.display=''; 
  document.getElementById("show_" + obj).style.display='none'; 
} 
function hide(obj) { 
  document.getElementById(obj).style.display='none'; 
  document.getElementById("hide_" + obj).style.display='none'; 
  document.getElementById("show_" + obj).style.display=''; 
} 
</script> 

</head>

<body onload="hide();">

<table><tbody>
<tr>
    <td class="clientlogo"><img src="data:image/gif;base64,$clientlogo" /></td>
    <td class="MainLogo"><img src="data:image/gif;base64,$mainlogo" /></td>
</tr>
</tbody></table>

<div class="section">
    <div class="reportname">$($TitleText)</div>
    <hr />
    <div>Report created on $($CurrentDate)</div>
</div>
"@
	}
	"nologo"  {
@"
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
<title>$($TitleText)</title>
<style type="text/css">
* {    
    margin: 0px;
    font-family: sans-serif;
    font-size: 8pt;
}

body {
    margin: 8px 5px 8px 5px; 
}

hr {
    height: 4px; 
    background-color: #337e94; 
    border: 0px;
}

table {
    table-layout: auto; 
    width: 100%;
    border-collapse: collapse;   
}

th {
    vertical-align: top; 
    text-align: left;
    padding: 2px 5px 2px 5px;
}

td {
    vertical-align: top; 
    padding: 2px 5px 2px 5px;
    border-top: 1px solid #bbbbbb;  
}

div.section {
    padding-bottom: 12px;
} 

div.header {
    border: 1px solid #bbbbbb; 
    padding: 4px 5em 0px 5px; 
    margin: 0px 0px -1px 0px;
    height: 2em; 
    width: 95%; 
    font-weight: bold ;
    color: #ffffff;
    background-color: #337e94;
}

div.content { 
    border: 1px solid #bbbbbb; 
    padding: 4px 0px 5px 11px; 
    margin: 0px 0px -1px 0px;
    width: 95%; 
    color: #000000; 
    background-color: #f9f9f9;
}

div.reportname {
    font-size: 12pt; 
    font-weight: bold;
}

div.footer {
    padding-right: 5em;
    text-align: right; 
}

table.fixed {
    table-layout: fixed; 
}

table.vertical {
	table-layout: fixed; width 100px; 
}

td.clientlogo {
    border: 0px;
	padding-left: 0px;
    vertical-align: middle;	
}

td.MainLogo {
    border: 0px; 
    padding-right: 5em;
    text-align: right; 
    vertical-align: middle;	
}

th.content { 
    border-top: 1px solid #bbbbbb; 
	width: 25%;
}

td.content { 
	width: 75%;
}

td.groupby {
	border-top: 3px double #bbbbbb;
}

.green {
	background-color: #a1cda4;
}

.yellow {
	background-color: #fffab1;
}

.red {
	background-color: #f5a085;
}

.odd {
	background-color: #D5D8DC;
}

.even {
	background-color: #F7F9F9;
}

.header {
	background-color: #616A6B; color: #F7F9F9;
}

div.column { width: 100%; float: left; }
div.first{ border-right: 1px  grey solid; width: 49% }
div.second{ margin-left: 10px;width: 49% }


a.alink:link {color:#007BFF;text-decoration:none;font-size:120%}
a.alink:visited {color:#FF8400;text-decoration:none;font-size:120%}
a.alink:hover {text-decoration:underline;font-size:130%}


</style>

<script type="text/javascript"> 
function show(obj) {
  document.getElementById(obj).style.display='block'; 
  document.getElementById("hide_" + obj).style.display=''; 
  document.getElementById("show_" + obj).style.display='none'; 
} 
function hide(obj) { 
  document.getElementById(obj).style.display='none'; 
  document.getElementById("hide_" + obj).style.display='none'; 
  document.getElementById("show_" + obj).style.display=''; 
} 
</script> 

</head>

<body onload="hide();">

<div class="section">
    <div class="reportname">$($TitleText)</div>
    <hr />
    <div>Report created on $($CurrentDate)</div>
</div>
"@
	}
	#Standard
	Default {
@"
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
<title>$($TitleText)</title>
<style type="text/css">
* {    
    margin: 0px;
    font-family: sans-serif;
    font-size: 8pt;
}

body {
    margin: 8px 5px 8px 5px; 
}

hr {
    height: 4px; 
    background-color: #337e94; 
    border: 0px;
}

table {
    table-layout: auto; 
    width: 100%;
    border-collapse: collapse;   
}

th {
    vertical-align: top; 
    text-align: left;
    padding: 2px 5px 2px 5px;
}

td {
    vertical-align: top; 
    padding: 2px 5px 2px 5px;
    border-top: 1px solid #bbbbbb;  
}

div.section {
    padding-bottom: 12px;
} 

div.header {
    border: 1px solid #bbbbbb; 
    padding: 4px 5em 0px 5px; 
    margin: 0px 0px -1px 0px;
    height: 2em; 
    width: 95%; 
    font-weight: bold ;
    color: #ffffff;
    background-color: #337e94;
}

div.content { 
    border: 1px solid #bbbbbb; 
    padding: 4px 0px 5px 11px; 
    margin: 0px 0px -1px 0px;
    width: 95%; 
    color: #000000; 
    background-color: #f9f9f9;
}

div.reportname {
    font-size: 12pt; 
    font-weight: bold;
}

div.footer {
    padding-right: 5em;
    text-align: right; 
}

table.fixed {
    table-layout: fixed; 
}

table.vertical {
	table-layout: fixed; width 100px; 
}

td.clientlogo {
    border: 0px;
	padding-left: 0px;
    vertical-align: middle;	
}

td.MainLogo {
    border: 0px; 
    padding-right: 5em;
    text-align: right; 
    vertical-align: middle;	
}

th.content { 
    border-top: 1px solid #bbbbbb; 
	width: 25%;
}

td.content { 
	width: 75%;
}

td.groupby {
	border-top: 3px double #bbbbbb;
}

.green {
	background-color: #a1cda4;
}

.yellow {
	background-color: #fffab1;
}

.red {
	background-color: #f5a085;
}

.odd {
	background-color: #D5D8DC;
}

.even {
	background-color: #F7F9F9;
}

.header {
	background-color: #616A6B; color: #F7F9F9;
}

div.column { width: 100%; float: left; }
div.first{ border-right: 1px  grey solid; width: 49% }
div.second{ margin-left: 10px;width: 49% }


a.alink:link {color:#007BFF;text-decoration:none;font-size:120%}
a.alink:visited {color:#FF8400;text-decoration:none;font-size:120%}
a.alink:hover {text-decoration:underline;font-size:130%}


</style>

<script type="text/javascript"> 
function show(obj) {
  document.getElementById(obj).style.display='block'; 
  document.getElementById("hide_" + obj).style.display=''; 
  document.getElementById("show_" + obj).style.display='none'; 
} 
function hide(obj) { 
  document.getElementById(obj).style.display='none'; 
  document.getElementById("hide_" + obj).style.display='none'; 
  document.getElementById("show_" + obj).style.display=''; 
} 
</script> 

</head>

<body onload="hide();">

<table><tbody>
<tr>
    <td class="clientlogo"><img src="data:image/gif;base64,$clientlogo" /></td>
    <td class="MainLogo"><img src="data:image/gif;base64,$mainlogo" /></td>
</tr>
</tbody></table>

<div class="section">
    <div class="reportname">$($TitleText)</div>
    <hr />
    <div>Report created on $($CurrentDate)</div>
</div>
"@
	}

}
	
Write-Output $CSS

}

Function New-HTMLCSSFile {
<#
	.SYNOPSIS
		creates builtin CSS in the specified directory 
    .PARAMETER CSSLocaiton 
		Directory to create CSS Files
#>
[CmdletBinding()]
param (
	[String] $CSSLocation =""
)
	if ($CSSLocation -ne $null) {
		if (Test-Path $CSSLocation) {
			get-htmlcss -cssname compact | Set-Content -Path (Join-Path $CSSLocation compact.css) 
			get-htmlcss -cssname logo | Set-Content -Path (Join-Path $CSSLocation logo.css) 
			get-htmlcss -cssname default | Set-Content -Path (Join-Path $CSSLocation default.css) 
		} else {
			Write-Warning "parameter CSSLocation using $CSSLocation directory is invalid"
		}
	}

}

Function Get-HtmlOpen {
<#
	.SYNOPSIS
		Get's HTML for the header of the HTML report
    .PARAMETER TitleText
		The title of the report
	.PARAMETER CSSLocation 
		Directory containing CSS files. used in conjuction with CSSName
	.PARAMETER CSSName
		If only used with CSSLocation path will search for CSS file with CSSName, otherwise the CSSName can refernce one of the three built in templates.  This function will Append .css extension 
#>
[CmdletBinding()]
param (
	[String] $TitleText,
	[String] $CSSLocation,
	[String] $CSSName = "default"
)
	$CurrentDate = Get-Date -format "MMM d, yyyy hh:mm tt"
	
	if ($CSSLocation -ne '') {
		if (test-path $CSSLocation) {
			if ($CSSName -like "*.css") {
				$CSSName =  ($CSSName.Split('.'))[0]
			}
			$CSSFile = Get-childitem $CSSLocation -File ($CSSName + ".css")
			IF ($CSSFile -ne $null) {
				$Report = Get-Content $CSSFile.FullName
			} else {
				Write-Warning "Parameter CSSLocation using $CSSLocation is Valid.  CSS File name $CSSName is invalid, using defaults"	
				$Report = Get-HTMLCSS
			}
		} else {
			Write-Warning "Parameter CSSLocation using $CSSLocation is invalid.  Using defaults"
			$Report = Get-HTMLCSS
		}
			
	} else {
		$Report = Get-HTMLCSS -cssname $CSSName
	}
	
	Write-Output $Report
	
}

Function Get-HtmlClose{
<#
	.SYNOPSIS
		Get's the closing segment for the HTML
	    .PARAMETER ClientLogoType
			The type of logo
		.PARAMETER AdditionalContent
		     Some additional pish
#>	
[CmdletBinding()]
param( 
	[string] $MainLogoFile,
	[string] $ClientLogoFile,
	[string] $ClientLogoType = "ClientLogo1",
	[string] $AdditionalContent,
	$ClientLogoBase64,
	$MainLogoBase64
)

if ($ClientLogoFile -ne '') {
	$ClientLogo = [Convert]::ToBase64String((Get-Content $ClientLogoFile -Encoding Byte))
} elseif ($ClientLogoBase64 -ne $null) {
 $ClientLogo = $ClientLogoBase64
} else {
	switch ($ClientLogoType) {

	ClientLogo1 { $ClientLogo = @"
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
"@	}
		
	ClientLogo2 { $ClientLogo = @"
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
"@	}
		
	ClientLogo3 { $ClientLogo = @"
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
"@	}
		
	ClientLogo4 { $ClientLogo = @"
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
"@	}
		
	ClientLogo5 { $ClientLogo = @"
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
"@	}

	}
}

if ($MainLogoFile -ne '') {
		$MainLogo = [Convert]::ToBase64String((Get-Content $MainLogoFile -Encoding Byte))
} elseif ($MainLogoBase64 -ne $null) {
	$MainLogo = $MainLogoBase64
} else {
	$MainLogo = @"
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
"@

}

	$Report = @"
<div class="section">
    <hr />
    <div class="footer">Copyright &#169; 2016 Azure Cloud Enablement. All Rights Reserved.</div>
</div>
    
</body>
</html>
--PART
Content-Type: image/gif
Content-ID: <MainLogo>
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="MainLogo.gif"

$MainLogo

--PART
Content-Type: image/gif
Content-ID: <clientlogo>
Content-Transfer-Encoding: base64
Content-Disposition: inline; filename="clientlogo.gif"

$ClientLogo

$AdditionalContent

--PART-- 
"@
	Write-Output $Report
}

Function Get-HtmlOpenPage {
<#
	.SYNOPSIS
		Get's HTML for the header of the HTML report
    .PARAMETER TitleText
		The title of the report
	.PARAMETER CSSLocation 
		Directory containing CSS files. used in conjuction with CSSName
	.PARAMETER CSSName
		If only used with CSSLocation path will search for CSS file with CSSName, otherwise the CSSName can refernce one of the three built in templates.  This function will Append .css extension 
	.PARAMETER $MainLogoFile
	.PARAMETER $ClientLogoFile
	.PARAMETER $ClientLogoType
	.PARAMETER $ClientLogoBase64
	.PARAMETER $MainLogoBase64
#>
[CmdletBinding()]
param (
	[String] $TitleText,
	[String] $CSSLocation,
	[String] $CSSName = "default",
	[string] $MainLogoFile,
	[string] $ClientLogoFile,
	[string] $ClientLogoType = "ClientLogo1",
	$ClientLogoBase64,
	$MainLogoBase64
)
	$CurrentDate = Get-Date -format "MMM d, yyyy hh:mm tt"
	
	
if ($ClientLogoFile -ne '') {
	$ClientLogo = [Convert]::ToBase64String((Get-Content $ClientLogoFile -Encoding Byte))
} elseif ($ClientLogoBase64 -ne $null) {
 $ClientLogo = $ClientLogoBase64
} else {
	switch ($ClientLogoType) {

	ClientLogo1 { $ClientLogo = @"
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
"@	}
		
	ClientLogo2 { $ClientLogo = @"
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
"@	}
		
	ClientLogo3 { $ClientLogo = @"
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
"@	}
		
	ClientLogo4 { $ClientLogo = @"
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
"@	}
		
	ClientLogo5 { $ClientLogo = @"
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
"@	}

	}
}

if ($MainLogoFile -ne '') {
		$MainLogo = [Convert]::ToBase64String((Get-Content $MainLogoFile -Encoding Byte))
} elseif ($MainLogoBase64 -ne $null) {
	$MainLogo = $MainLogoBase64
} else {
	$MainLogo = @"
/9j/4AAQSkZJRgABAQEAZABkAAD/7AARRHVja3kAAQAEAAAAPAAA/9sAQwAFBAQEBAMFBAQEBgUFBggNCAgHBwgQCwwJDRMQFBMSEBISFBcdGRQWHBYSEhojGhweHyEhIRQZJCckICYdICEg/9sAQwEFBgYIBwgPCAgPIBUSFSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg/8IAEQgATgDIAwEiAAIRAQMRAf/EABwAAQACAgMBAAAAAAAAAAAAAAAEBQIGAQcIA//EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/aAAwDAQACEAMQAAAB7lMTJ5e7jN+AAAAAAAAAAA0jd/PxnD7p6JR6XpJNjfPV1vVdvlXGcD6YddvTXGnxOyVcmv0wnSJ+lLTLiXqNst3HD7AAAEPy33DWo1ym9O1R132r5l7q25edy06T1efOzl6nXTeNPkRrZ3WOXGXRZ6Pv2mXzsefj97U2Aef7QAAHDnqww7G8h7Oeo+ca62dlzUy7UmYQ5FbfVCTE5RT7Un8RMaaSPpUZ3ytlfzXSerPsTVdmTlYi1n1P2wrp5Qtu49uM4VktnV52K1KfO1IqpMxFqv6z0xWRrxNahbihnWAg11+iaWfLJr1gpp//xAAnEAABBAEDAwQDAQAAAAAAAAAEAQIDBQAGFDQREhMQFSAhIjBAI//aAAgBAQABBQL+pyo1ptwcSfpawcbU/wA2pzdpSafqN9V6WM2l3hRyjze7LiWyq4khRxxpvPBgp25lJn28C2bUHDLkIeSZGMnuZGCmxk/p1cbuLamD2NNfDOr9QAFNNr8LJQaGuGVVs+DXcDKrlWXAq4E8a9EQXsJM80OTdkFp8yiGCiRQmWth7LqjLCpuB4dGG94z3tjZG11iYn0lpwa3gLlVyrLgVnBlTrCCNESvtI+JVQIvz1iYsddosPo3LEVDa2kJfXXlkSskkNgyCL3fJ49wIOVIC5xkpmVSdCbLgVnByeGYIpLePoOXOST8+ielvqtop4Zg5wvRPT6T1VrXYiImfXx7I1X6/Tqy3kEiymtpqo1HI5vbuJSImRCOlXybj8HydjvM9VD4btvu3SpHjJVcqTP8kL3piyJLKs7sWf8A0Ql7kWfqik9sfmd5IJJnS5qmjKNnmqThlH01bTFsYkcX5wSzK+YZe6Ih0cj2Kr5Zo1fCgzXMG6vjJVHPnkZL5Ej6zRrJFjIntVIWsxsaoVG1yZ4FRjokUeZqq6PuZP6Wmn47UqFjo4f5f//EACwRAAEEAAQEAwkAAAAAAAAAAAIAAQMRBBITIRQxQfAQIFEiMDJEYYLB0fH/2gAIAQMBAT8B9/KJENAVIuIaVohkv12bZNKXFad7Up5SGaMW5Pamkm4nRjfopZJIRGJisn6o5JcO7E55m6+fFYhoI8yw2Jw8Q2Re0/PmpjaHFNKfwu1KScZsRFk5br577fysfG2YJSa2bmh4EnZga385lWzLUp6JZwdNIzllZDMz3ffRagpphrbvdawJpgdawIDY2tvEhzLS3zXv/f2tH693aGLK/NaXS+7tPAzva0G9UMAjyRQCTJoWZCOVqX//xAAnEQACAgIBAgQHAAAAAAAAAAABAgADERITIUEEECAxFCIwRFGBof/aAAgBAgEBPwH66EA/MMwcWhcp/ZoOHfvmVoCjk9pWlfFu35iKthL46CKqW5AXB9dNRtbEuptc4A6CIvJTovuDFrKVPt7z7f8Ac8M3RkBwTD8SBlj6wMzTpkTUwqcZMNc1MKHM0M0aaGMupx5g4m/ackL5m8FhE5IbCYLCJuYTmf/EADwQAAIBAgMEBQgIBwEAAAAAAAECAwARBBIxEyFBcRAiMlFhFDAzgZGhscEgIzRAQ3LR8AVCUmKCkpTh/9oACAEBAAY/AvvRZjYCp54sXOkbNdVVyABwrJK5eWFspLG5I4fd5FU2ef6sfP3V/EZWG9l2UfPX9KEL7lnGzPPh0bPY59173r7MfbWUYbf3Zq2uS/helly5b8Ohk2eXL40Zcua3ClkyddtFvTq8eS1dbrN/SKzeTdT11YdVxw8yMMp6mHFv8jr8qw+HIs+XM3M1KY+qGO2j/fOoMUv4i36M38x7IryqbezafrR5io/X8eiXl86f1UZ23m9h4UWPCnnxDC2tia9Kn+1K8JGU2O7zEuJk7MaljTbFdpPIS532r8b/AKP/AGvKcejFB1czSZrVNgWO+M515H9++i7GwFGR/RLw+XQeYpPX0S/l+dP6qXmacf2mnWQkEd1dp6vnfzEeDTtTm7flFYjHMuv1a/E/Lonwp/EWw58KhkcFVzbOTka2C9ldfE0I0wx3eNfZz7aZNMwpopYzbu7q2OGjK31Y8Kk/L86f1UvM9G3hF0/e6utE1/A0LRZIRr5qODBgSrG31x7/AAFLiMO+dG91afR6wB51uFq3fRvkX2eaXAYdsskou7DgvQHUkwt6RO8UGBuDvqTP6NDlC1JkW17fGtnGmdhvO+1qYlSGUgFajW3bNqOzizKpte9R8qm8obutc1FHGhbMOranVkyuvC970qyRZM+m+9SiOLNaRuNqwrjiW+FMyRFkXjf4UEjTOSuYb6bLAbp2hek2a5y4uB4VIzoQ0eopVeLKH0N6kDpuDd+m7ojxuDTaMFyMnHnUAxEOxM7ZUDH999CF8K0K36ztoKWNdFFhTsELxub9XUGnCxMNLX4075C6vbs8KmfLZmtZT4VCREyqrXOblRi2TNvOUjQ0iuLMBUp2LsGtYrUMmQgWN78KmaPUxgA+O+omSBlsesW10qQGFjdyRasPcbwWZvC9FHw7ObmxHGgQtk2eX31NcasSKgZ4i+VMrKNRUmygKE2141FYaPc+ypQUNmOYNw06VmmxcqZRZVW1hSI0hkKi2Y6n7t//xAApEAEAAgEDAgYDAAMBAAAAAAABABEhMUFREGFxgZGh0fAwscEgQOHx/9oACAEBAAE/If8AaGAK1diNAToOeA8VGj/WwMpfU8v9fNivLdXu9Zuwt7fmSyzHDtr92PPoOCwUU/k+p+IGQto5PSWFbYPenLh1Xv02j13leam4wNVbzUpUHg63DR0ia/2HjJyfTExV8b5VAUHIX+z8OR62DxPZSYqDQ95/deUv7JQ2tv2DNAM2cO563KjXBxcjE12VePsuZ9ju6q95+0aBuvZHowLZWlGFIXY8phr2kTvpQ7C8JD/NHPPqjSGbjancts+4xZ/JQZtN2bD6/W94A0O1hdp7bb5QAAUE+m5iHso94qLY7SHvP2n1HMY/VD2hsZEwn/tnxA4wt6nx+CxLQn0y16RUoUXnQbuynGpetTCPgTTA+jT5RJePJW46ne86T6/+ZuSvOzqS/Mt7FdoLVMdslR4pHuP2n0HMYuereCwvVdppq4hUbUA21vGM/gs1CYNJ2G2Hm39584C/1S4TZnaeko4jRbQSjjoZXgi4PRDghbNHwmGFbddcDzSYIacfhfVvdaFHjno60g2+bxNpUSFE3IC9WmGhayvOsOquQvGiHdUbBwzMbuttLSs8ZmRDq+ML/Jm5eKy01o3mS/WY6wFFam0y4Nk48Y9cI0wHSmAXDB1yq6Zu0QvNtArQwHUbWRYuyOJa1pvFVgbYFXEpiIxKeDmDbstK8TxMWKVt66IwNUyqjnWk2lbypdXSx0wYLboFQc6zHeOQrjLwYTFOinVunPlNOS+EFSrpqmxU43Ijz0KjkTDe8hajGkHt62Zp3nxjzYKKTKWUg1Khby7azWMAQ0vfBseMAwVbVao0GvGEio6vXyd4qHt6t278R+sojRB+Yfn8PBW+cSpDEcDshuL44KIB8WxwZ7wGSe5R8Yn3eUFppLWDgP51KPVf3PncEsxGHda3611qV0qV0qV/jUrr/9oADAMBAAIAAwAAABDjzzzzzzzzzzzzAPTxU7cTLTzzw+Oe7UVIHFzzzwyiyxNrHN7HfH2iwmFKIFHEFKHL/8QAJxEBAAICAgEDBAIDAAAAAAAAAREhADFBUWFxgaEgkbHBENEw4fD/2gAIAQMBAT8Q/wA9uHuB+HHN83Sh828GSb5cVuYnG3hZeYCMUIAz0MXb5qgmJclmNsQBtU8cYC90BAJPJH4+tE7dB2/9vHE+1Rt1rRlKVl0zN4xWDbhY0en7x0w2I4Hh59sj1RKB+70HP1rEJXX5y6cIGpdrRUup1+Mi7qvlg+SPHOHtMLzwhVXvjJRABimXexFS63lQzTWncxdVdXGRKLUr1A3FxOeT4b9Kv2wCR+H0qruq5rLAn4eWLqrEvIhO0sjX81kYTTjKRaXXHT3H+8jNLidXC6drORDJAQKor+sIClEzxv8Asw8nmeO5qq89mAQKY1rsf0e2RvSIo47YlwAPHp2P6wJDmOjSvHlyYDNr92c//8QAJxEAAgEBBwQCAwAAAAAAAAAAAREAITFBUWGBodFxkbHBIPAQMPH/2gAIAQIBAT8Q/e3IYNQTVhYKqmFNLjRQXVQCgBjZHdSyHmiqDHDWBUsGCz2L+YCNl/SAKdIBjm+GPfBZJQf0EBTX3B9+kPZII5i7WPiABiR864koCVAXHKxZ5xJs+gPxAjxhu+IYIBsh2IWO1yuRhmOuukaAmgfgnRqZe43w1hEURuJTa8YPWkIx+a6jBgQUU5XEa8D+heBFSFaWeteYWLVUtlAiWWyhItBO3sR7j939YQJF/ChNvuAPUfc//8QAJxABAQACAgEEAgEFAQAAAAAAAREAITFBUWFxgZEQofAgMECx4fH/2gAIAQEAAT8Q/F/yFYKegBVfjBdYlQgQB2eV9caecCheVeaP+P0/NN2Cv1B7jCMW8HEEnwPlx7K2mg1TzDmNMJlNoiqTl4/ef+8yM5xNlcEwC66xHluPGIx8AIjn4xZif8wfEMYjWO1Qcx847m2WQhUcX03ilqaQoqcYtAOptPK9MU9ddU+jAzpXqnk7P7DxjKNmKMPmPkDmkEdoeLfZwEwJ1PC+y/GRwCR458QHxj2zses+x9Dl/wC5UpHt75Xq8Hp74YWb9vA5+zx/F+OFNVKLDlPCq/WczBTuG3LIzJIPEuwHHtnhOSf9cVSVHQ4Wt7Z65wn9cgABZFI9Vge+F1em5W4ABdb8H4R382r000wL8V9c3aFU7pCegRw8NrujFooFcHIPV5/8YIQEAIBgVjp3AoNWPe8BkgCq4ADRox/F+Ofy/lgw0x7qMEDvsUaPI9z7/DKooQO0bgs3/Wo7hisUYzy/djagKDCKX1R8OawWSvnAn0CsSQEhKN2AOncAOjr2P2+2SuLaa3K8nEgvAXjjhARX0P2TEArbegVOkcYb06NeeNGvW+DGcGQKSwZaAK9ftwISI9+BTHLCFA8CfR9uzFHQdoV7sf1jEAYtOxAc9H9hZVe5cA4APAZV1fQka8sVU9A2bAfPSa7nWOz/AGI4rat9GbeF9sTIjtIZfp9ZCTIQp0H+2Gy3pA+jJ6A99sTkKe2AcJ+EO8FAKxCN95lqROhZfb+u4498aEeobpZTyB66ytxaciIOiqvjhcLsPwyFH6zczioYZ/QAdEXAtOQJo4BdfGNiBVA2ww7Y6DgyFsyBURA0oDfRwlUoAyix/jnLdcVFkDHB1yVIYgAg3snbHMfRDOcBO8QDJESASvSPPpj/AASQAa0Wom5sxNIIdQoA0oPFNY2paINalDX6PXNFYJgiQ8iJ8YZjxGlLDQiclRmTriVfG1NddPOQQaQPasjkeiJvNFnkCQKjw2HbWYrEErQiByNerpMbpR7YEC5IPbxMooM9oQgb5t9fTHGSFkiAFQ5RDehLuUzobwlCrbYzvBYknCvYHrwVde+E0gou4B+jJcQkMLYSkHWxusTD0D2EwrIHcwBFQgH6NCiTZd3HGB2aACNCr3rWFwOAhIhWlefUmNLbKQxs2NGnVLmmLHja4zwCQnC2jvCAWgBBAgu9PFxBFogoRDwxN+phrK6aYTaUrt44mHayWGhsnydTBpp11Bl7LGWUmaWgrItxp1d5qTlGiT9TBBtsdxD9jgSZ7A7ABNERL3g2bQesWxUDfOKpIoeBv2mFeRgGNBbpq1PwlMDsMDG1ClVsvoHRjIqmCEkArud/iGR4Mh4yHgyPBkeDJkeDI8GQyDgPrI8GQyHjIeDJkeDI8GTIeDP/2Q==
"@

}
	
	if ($CSSLocation -ne '') {
		if (test-path $CSSLocation) {
			if ($CSSName -like "*.css") {
				$CSSName =  ($CSSName.Split('.'))[0]
			}
			$CSSFile = Get-childitem $CSSLocation -File ($CSSName + ".css")
			IF ($CSSFile -ne $null) {
				$Report = Get-Content $CSSFile.FullName
			} else {
				Write-Warning "Parameter CSSLocation using $CSSLocation is Valid.  CSS File name $CSSName is invalid, using defaults"	
				$Report = Get-HTMLCSS
			}
		} else {
			Write-Warning "Parameter CSSLocation using $CSSLocation is invalid.  Using defaults"
			$Report = Get-HTMLCSS
		}
			
	} else {
		$Report = Get-HTMLCSS -cssname $CSSName
	}
	
	Write-Output $Report
	
}

Function Get-HtmlClosePage {
<#
	.SYNOPSIS
		Get's the closing segment for the HTML
	    .PARAMETER ClientLogoType
			The type of logo
		.PARAMETER AdditionalContent
		     Some additional pish
#>	

	$Report = @"
<div class="section">
    <hr />
    <div class="footer">Copyright &#169; 2016 Azure Cloud Enablement. All Rights Reserved.</div>
</div>
    
</body>
</html>

"@
	Write-Output $Report
}

Function Get-HtmlContentOpen {
<#
	.SYNOPSIS
		Creates a section in HTML
	    .PARAMETER HeaderText
			The heading for the section
		.PARAMETER IsHidden
		    Switch parameter to define if the section can collapse
		.PARAMETER BackgroundShade
		    An int for 1 to 6 that defines background shading
#>	
Param(
	[string]$HeaderText, 
	[switch]$IsHidden, 
	[string]$Anchor,
	[validateset(1,2,3,4,5,6)][int]$BackgroundShade
)

switch ($BackgroundShade)
{
    1 { $bgColorCode = "#F8F8F8" }
	2 { $bgColorCode = "#D0D0D0" }
    3 { $bgColorCode = "#A8A8A8" }
    4 { $bgColorCode = "#888888" }
    5 { $bgColorCode = "#585858" }
    6 { $bgColorCode = "#282828" }
    default { $bgColorCode = "#ffffff" }
}

if ($Anchor -ne $null -or $Anchor -eq '') {
	$InsertAnchor = 'name="' + $Anchor +'"'
}

if ($IsHidden) {
	$RandomNumber = Get-Random
	$Report = @"
<div class="section">
    <div class="header">
        <a name="$($HeaderText)">$($HeaderText)</a> (<a id="show_$RandomNumber" href="#" onclick="show('$RandomNumber');" style="color: #ffffff;">Show</a><a id="hide_$RandomNumber" href="#" onclick="hide('$RandomNumber');" style="color: #ffffff; display:none;">Hide</a>)
    </div>
    <div class="content" id="$RandomNumber" style="display:none;background-color:$($bgColorCode);"> 
"@	
}
else {
	$Report = @"
<div class="section">
    <div class="header">
        <a name="$($HeaderText)">$($HeaderText)</a>
    </div>
    <div class="content" style="background-color:$($bgColorCode);"> 
"@
}
	Return $Report
}

Function Get-HtmlContentClose {
<#
	.SYNOPSIS
		Closes an HTML section
#>	
	$Report = @"
</div>
</div>
"@
	Return $Report
}

Function Get-HtmlContentTable {
<#
	.SYNOPSIS
		Creates an HTML table from an array of objects
	    .PARAMETER ArrayOfObjects
			An array of objects
		.PARAMETER Fixed
		    fixes the html column width by the number of columns
		.PARAMETER GroupBy
		    The column to group the data.  make sure this is first in the array
#>	
param(
	[Array]$ArrayOfObjects, 
	[Switch]$Fixed, 
	[String]$GroupBy
)
	if ($GroupBy -eq '') {
		$Report = $ArrayOfObjects | ConvertTo-Html -Fragment
		$Report = $Report -replace '<col/>', "" -replace '<colgroup>', "" -replace '</colgroup>', ""
		$Report = $Report -replace "<tr>(.*)<td>Green</td></tr>","<tr class=`"green`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>Yellow</td></tr>","<tr class=`"yellow`">`$+</tr>"
    	$Report = $Report -replace "<tr>(.*)<td>Red</td></tr>","<tr class=`"red`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>Odd</td></tr>","<tr class=`"odd`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>Even</td></tr>","<tr class=`"even`">`$+</tr>"
		$Report = $Report -replace "<tr>(.*)<td>None</td></tr>","<tr>`$+</tr>"
		$Report = $Report -replace '<th>RowColor</th>', ''

		if ($Fixed.IsPresent) {	$Report = $Report -replace '<table>', '<table class="fixed">' }
	}
	else {
		$NumberOfColumns = ($ArrayOfObjects | Get-Member -MemberType NoteProperty  | select Name).Count
		$Groupings = @()
		$ArrayOfObjects | select $GroupBy -Unique  | sort $GroupBy | foreach { $Groupings += [String]$_.$GroupBy}
		if ($Fixed.IsPresent) {	$Report = '<table class="fixed">' }
		else { $Report = "<table>" }
		$GroupHeader = $ArrayOfObjects | ConvertTo-Html -Fragment 
		$GroupHeader = $GroupHeader -replace '<col/>', "" -replace '<colgroup>', "" -replace '</colgroup>', "" -replace '<table>', "" -replace '</table>', "" -replace "<td>.+?</td>" -replace "<tr></tr>", ""
		$GroupHeader = $GroupHeader -replace '<th>RowColor</th>', ''
		$Report += $GroupHeader
		foreach ($Group in $Groupings) {
			$Report += "<tr><td colspan=`"$NumberOfColumns`" class=`"groupby`">$Group</td></tr>"
			$GroupBody = $ArrayOfObjects | where { [String]$($_.$GroupBy) -eq $Group } | select * -ExcludeProperty $GroupBy | ConvertTo-Html -Fragment
			$GroupBody = $GroupBody -replace '<col/>', "" -replace '<colgroup>', "" -replace '</colgroup>', "" -replace '<table>', "" -replace '</table>', "" -replace "<th>.+?</th>" -replace "<tr></tr>", "" -replace '<tr><td>', "<tr><td></td><td>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Green</td></tr>","<tr class=`"green`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Yellow</td></tr>","<tr class=`"yellow`">`$+</tr>"
    		$GroupBody = $GroupBody -replace "<tr>(.*)<td>Red</td></tr>","<tr class=`"red`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Odd</td></tr>","<tr class=`"odd`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>Even</td></tr>","<tr class=`"even`">`$+</tr>"
			$GroupBody = $GroupBody -replace "<tr>(.*)<td>None</td></tr>","<tr>`$+</tr>"
			$Report += $GroupBody
		}
		$Report += "</table>" 
	}
	$Report = $Report -replace 'URL01', '<a href="'
	$Report = $Report -replace 'URL02', '">'
	$Report = $Report -replace 'URL03', '</a>'
	
	if ($Report -like "*<tr>*" -and $report -like "*odd*" -and $report -like "*even*") {
			$Report = $Report -replace "<tr>",'<tr class="header">'
	}
	
	return $Report
}

Function Get-HtmlContentText {
<#
	.SYNOPSIS
		Creates an HTML entry with heading and detail
	    .PARAMETER Heading
			The type of logo
		.PARAMETER Detail
		     Some additional pish
#>	
param(
	$Heading,
	$Detail
)

$Report = @"
<table><tbody>
	<tr>
	<th class="content">$Heading</th>
	<td class="content">$($Detail)</td>
	</tr>
</tbody></table>
"@
$Report = $Report -replace 'URL01', '<a href="'
$Report = $Report -replace 'URL02', '">'
$Report = $Report -replace 'URL03', '</a>'
Return $Report
}

Function Set-TableRowColor {
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER ArrayOfObjects
			The type of logo
		.PARAMETER Green
		     Some additional pish
		.PARAMETER Yellow
		     Some additional pish
		.PARAMETER Red
		    use $this and an expression to measure the value
		.PARAMETER Alertnating
			a switch the will define Odd and Even Rows in the rowcolor column 
#>	
Param (
	$ArrayOfObjects, 
	[string]$Green = '$this -eq $false', 
	[string]$Yellow = '$this -eq $false', 
	[string]$Red = '$this -eq $false',
	[switch]$Alternating 
)
	if ($Alternating) {
		$ColoredArray = $ArrayOfObjects | Add-Member -MemberType ScriptProperty -Name RowColor -Value {
		if ((([array]::indexOf($ArrayOfObjects,$this)) % 2) -eq 0) {'Odd'}
		if ((([array]::indexOf($ArrayOfObjects,$this)) % 2) -eq 1) {'Even'}
		} -PassThru -Force | Select-Object *
	} else {
		$ColoredArray = $ArrayOfObjects | Add-Member -MemberType ScriptProperty -Name RowColor -Value {
			if (Invoke-Expression $Green) {'Green'} 
			elseif (Invoke-Expression $Red) {'Red'} 
			elseif (Invoke-Expression $Yellow) {'Yellow'} 
			else {'None'}
			} -PassThru -Force | Select-Object *
	}
	
	return $ColoredArray
}

Function New-HTMLBarChartObject {
<#
	.SYNOPSIS
		create a Bar chart object for use with Create-HTMLPieChart
#>	
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")

	
	$ChartSize = New-Object PSObject -Property @{`
		Width = 500
		Height = 400
		Left = 40
		Top = 30
	}
	
	$DataDefinition = New-Object PSObject -Property @{`
		AxisXTitle = "AxisXTitle"
		AxisYTitle = "AxisYTitle"
		DataNameColumnName = "name"
		DataValueColumnName = "count"
		
	}
	
	$ChartStyle = New-Object PSObject -Property @{`
		BackColor = [System.Drawing.Color]::Transparent
		DrawingStyle = "Cylinder"
		ExplodeMaxValue = $false
		Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right -bor	[System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left
	}
	
	$ChartObject = New-Object PSObject -Property @{`
		Type = "Column"
		Title = "Chart Title"
		Size = $ChartSize
		DataDefinition = $DataDefinition
		ChartStyle = $ChartStyle
	}
	
	return $ChartObject
}

Function New-HTMLBarChart {
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER BarChartObject
			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
		.PARAMETER BarChartData
			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
		.PARAMETER $TestChart
			Switch will generate a Form with the chart for easier development
#>
	param (
		$ChartObject,
		$ChartData,
		[switch]$TestChart
		
	)
	
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")
	
	#Create our chart object 
	$Chart = New-object System.Windows.Forms.DataVisualization.Charting.Chart
	$Chart.Width = $ChartObject.Size.Width
	$Chart.Height = $ChartObject.Size.Height
	$Chart.Left = $ChartObject.Size.Left
	$Chart.Top = $ChartObject.Size.Top
	
	#Create a chartarea to draw on and add this to the chart 
	$ChartArea = New-Object System.Windows.Forms.DataVisualization.Charting.ChartArea
	$Chart.ChartAreas.Add($ChartArea)
	[void]$Chart.Series.Add("Data")
	
	#Add a datapoint for each value specified in the arguments (args) 
	foreach ($value in $ChartData)
	{
		$datapoint = new-object System.Windows.Forms.DataVisualization.Charting.DataPoint(0, $value.($ChartObject.DataDefinition.DataValueColumnName))
		$datapoint.AxisLabel = [string]$value.($ChartObject.DataDefinition.DataNameColumnName)
		$Chart.Series["Data"].Points.Add($datapoint)
	}
	
	#Set the title of the Chart to the current date and time 
	$Title = new-object System.Windows.Forms.DataVisualization.Charting.Title
	[Void]$Chart.Titles.Add($Title)
	$Chart.Titles[0].Text = $ChartObject.Title
	$Chart.BackColor = $ChartObject.ChartStyle.BackColor
	
	# Axixs Labels 
	if ($ChartObject.DataDefinition.AxisXTitle -ne 'AxisXTitle') {	
		$Chartarea.AxisX.Title = $ChartObject.DataDefinition.AxisXTitle
	} else {
		$Chartarea.AxisX.Title = $ChartObject.DataDefinition.DataNameColumnName
	}
	
	if ($ChartObject.DataDefinition.AxisYTitle -ne 'AxisYTitle') {	
		$Chartarea.AxisY.Title = $ChartObject.DataDefinition.AxisYTitle
	} else {
		$Chartarea.AxisY.Title = $ChartObject.DataDefinition.DataValueColumnName
	}
	
	# Style and Background
	$Chart.Series["Data"]["DrawingStyle"] = $ChartObject.ChartStyle.DrawingStyle
	$Chart.BackColor = $ChartObject.ChartStyle.BackColor
	
	#Final output test form or HTML
	if ($TestChart) 
	{
		# display the chart on a form 
		$Chart.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right -bor 
		                [System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left 
		$Form = New-Object Windows.Forms.Form 
		$Form.Text = $ChartObject.Title
		$Form.Width = $Chart.Width + 100 
		$Form.Height = $Chart.Height + 100 
		$Form.controls.add($Chart) 
		$Form.Add_Shown({$Form.Activate()}) 
		[Void]$Form.ShowDialog()
	} 
	else
	{	
		# Save the chart to a file
		$tempfile = (Join-Path $env:TEMP $ChartObject.Title.replace(' ', '')) + ".png"
		if ((test-path $tempfile)) { Remove-Item $tempfile -Force }
		$Chart.SaveImage($tempfile, "png")
		$Base64Chart = [Convert]::ToBase64String((Get-Content $tempfile -Encoding Byte))
		$HTMLCode = '<IMG SRC="data:image/gif;base64,' + $Base64Chart + '" ALT="' + $ChartObject.Title + '">'
		# Invoke-Item $tempfile
		return $HTMLCode
	}	
}

Function New-HTMLPieChartObject {
<#
	.SYNOPSIS
		create a Pie chart object for use with Create-HTMLPieChart
#>	
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")

	
	$ChartSize = New-Object PSObject -Property @{`
		Width = 350
		Height = 350 
		Left = 1
		Top = 1
	}
	
	$DataDefinition = New-Object PSObject -Property @{`
		DataNameColumnName = "name"
		DataValueColumnName = "count"
	}
	
	$ChartStyle = New-Object PSObject -Property @{`
		PieLabelStyle = "Outside"
		PieLineColor = "Black"
		PieDrawingStyle = "Concave"
		ExplodeMaxValue = $false
	}
	
	$PieChartObject = New-Object PSObject -Property @{`
		Type = "Pie"
		Title = "Chart Title"
		Size = $ChartSize
		DataDefinition = $DataDefinition
		ChartStyle = $ChartStyle
	}
	
	return $PieChartObject
}

Function New-HTMLPieChart {
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER PieChartObject
			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
		.PARAMETER PieChartData
			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
		    
#>
	param(
		$PieChartObject,
		$PieChartData,
		[switch]$TestChart
		)
	      
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
	[void][Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms.DataVisualization")

	#Create our chart object 
	$Chart = New-object System.Windows.Forms.DataVisualization.Charting.Chart 
	$Chart.Width = $PieChartObject.Size.Width
	$Chart.Height = $PieChartObject.Size.Height
	$Chart.Left = $PieChartObject.Size.Left
	$Chart.Top = $PieChartObject.Size.Top

	#Create a chartarea to draw on and add this to the chart 
	$ChartArea = New-Object System.Windows.Forms.DataVisualization.Charting.ChartArea
	$Chart.ChartAreas.Add($ChartArea) 
	[void]$Chart.Series.Add("Data") 

	#Add a datapoint for each value specified in the arguments (args) 
	foreach ($value in $PieChartData) {
		$datapoint = new-object System.Windows.Forms.DataVisualization.Charting.DataPoint(0, $value.Count)
		$datapoint.AxisLabel = [string]$value.Name
		$Chart.Series["Data"].Points.Add($datapoint)
	}
	
	$Chart.Series["Data"].ChartType = [System.Windows.Forms.DataVisualization.Charting.SeriesChartType]::Pie
	$Chart.Series["Data"]["PieLabelStyle"] = $PieChartObject.ChartStyle.PieLabelStyle
	$Chart.Series["Data"]["PieLineColor"] = $PieChartObject.ChartStyle.PieLineColor 
	$Chart.Series["Data"]["PieDrawingStyle"] = $PieChartObject.ChartStyle.PieDrawingStyle
	($Chart.Series["Data"].points.FindMaxByValue())["Exploded"] = $PieChartObject.ChartStyle.ExplodeMaxValue

	#Set the title of the Chart to the current date and time 
	$Title = new-object System.Windows.Forms.DataVisualization.Charting.Title 
	[Void]$Chart.Titles.Add($Title) 
	$Chart.Titles[0].Text = $PieChartObject.Title
	

	if ($TestChart) 
	{
		# display the chart on a form 
		$Chart.Anchor = [System.Windows.Forms.AnchorStyles]::Bottom -bor [System.Windows.Forms.AnchorStyles]::Right -bor 
		                [System.Windows.Forms.AnchorStyles]::Top -bor [System.Windows.Forms.AnchorStyles]::Left 
		$Form = New-Object Windows.Forms.Form 
		$Form.Text = $PieChartObject.Title
		$Form.Width = $Chart.Width + 100 
		$Form.Height = $Chart.Height + 100 
		$Form.controls.add($Chart) 
		$Form.Add_Shown({$Form.Activate()}) 
		[Void]$Form.ShowDialog()
	} 
	else
	{	
		# Save the chart to a file	
		$tempfile = (Join-Path $env:TEMP $PieChartObject.Title.replace(' ', '')) + ".png"
		if ((test-path $tempfile)) { Remove-Item $tempfile -Force }
		$Chart.SaveImage($tempfile, "png")
		$Base64Chart = [Convert]::ToBase64String((Get-Content $tempfile -Encoding Byte))
		$HTMLCode = '<IMG SRC="data:image/gif;base64,' + $Base64Chart + '" ALT="' + $PieChartObject.Title + '">'
		# Invoke-Item $tempfile
		return $HTMLCode
	}		
}

Function Get-HTMLColumn1of2 {
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER PieChartObject
			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
		.PARAMETER PieChartData
			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
		    
#>

	$report = '<div class="first column">'
	return $report
}

Function Get-HTMLColumn2of2 {
<#
	.SYNOPSIS
		adds a row colour field to the array of object for processing with htmltable
	    .PARAMETER PieChartObject
			This is a custom object with Pie chart properties, Create-HTMLPieChartObject
		.PARAMETER PieChartData
			Required an array with the headings Name and Count.  Using Powershell Group-object on an array
		    
#>
	$report = '<div class="second column">'
	return $report
}

Function Get-HTMLColumnClose {
<#
	.SYNOPSIS
		Closing Div Tag
#>

	$report = '</div>'
	return $report
}

Function get-HTMLAnchorLink {
<#
	.SYNOPSIS
		creates Hyperlink for an Anchor
		.PARAMETER AnchorName
			The Actual name of the Anchor (Hidden)
		.PARAMETER AnchorText
			The HyperLink text.  Will default to $AnchorNname if not specified
#>

	Param (
		$AnchorName,
		$AnchorText
	)
	if ($AnchorText -eq $null -or $AnchorText -eq '') {$AnchorText=$AnchorName}
	$report = '<a class="alink" href="#' + $AnchorName + '">' +  $AnchorText +'</a>'

	Write-Output $report
}

function get-HTMLAnchor {
<#
	.SYNOPSIS
		creates an Anchor
		.PARAMETER AnchorName
			The Actual Anchor 
#>

Param (
	$AnchorName
)
	$report = '<a name="' + $AnchorName + '"></a>'
	Write-Output $report
}

Export-ModuleMember -Function Get-HTMLCSS,
					New-HTMLCSSFile,
					Get-HtmlOpenPage,
					Get-HtmlClosePage,
					Get-HtmlOpen,
					Get-HtmlClose,
					Get-HtmlContentOpen,
					Get-HtmlContentClose,
					Get-HtmlContentTable,
					Get-HtmlContentText,
					Set-TableRowColor,
					Get-HTMLColumn1of2,
					Get-HTMLColumn2of2,
					Get-HTMLColumnClose,
					Get-HTMLAnchorLink,
					Get-HTMLAnchor,
					New-HTMLPieChartObject,
					New-HTMLPieChart,
					New-HTMLBarChartObject,
					New-HTMLBarChart
