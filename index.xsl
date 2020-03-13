<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:strip-space elements="subtitle3" />
<xsl:preserve-space elements="code42 code44"/>
<xsl:template match="/">
	<html>
	<STYLE>
		@media screen and (min-width:800px){
		 p {
			font-size: 16ep;
		 }
		 h1 {
			font-size: 20ep;
		 }
		 h2 {
			font-size: 18ep;
		 }		 
		 .container-left {
			flex-direction:row;
			min-width:20%;
		 }
		 .container-right {
		   flex-direction:row;
			min-width:20%;
		 }
		 .container-center {
		   flex-direction:row;
		 }
		 code {
			font-size:18ep;
		 }
	  }
	  @media screen and (min-width:500px) and (max-width:799px){
		 p {
			font-size: 16ep;
		 h1 {
			font-size: 20ep;
		 }
		 h2 {
			font-size: 18ep;
		 }	
		 .container-left {
			flex-direction:row;min-width:5%;
		 }
		 .container-right {
		   flex-direction:row;min-width:5%;
		 }
		 .container-center {
		   flex-direction:row;min-width:90%;
		 }
		 code {
			font-size:18ep;
		 }
	  }
	  @media screen and (min-width:0) and (max-width:499){
		 p {
			font-size: 16ep;
		 }
		 h1 {
			font-size: 20ep;
		 }
		 h2 {
			font-size: 18ep;
		 }	
		 .container-left {
			flex-direction:row;min-width:5%;
		 }
		 .container-right {
		   flex-direction:row;min-width:5%;
		 }
		 .container-center {
		   flex-direction:row;min-width:90%;
		 }
		 code {
			font-size:18ep;
		 }
	  }
	</STYLE>
	<STYLE>
		body {margin:0;padding:0;max-width:100%;min-width:100%;min-height:100%;display:flex;align-items:stretch;}
	</STYLE>
	<body>
	<STYLE>	
		.container-left {flex-direction:row;min-width:12%;}
		.container-right {flex-direction:row;min-width:12%;}
		.container-center {flex-direction:row;}
		.container-cl {flex-direction:row;width:25%;}
		.container-desc {flex-direction:row;width:75%;}
		.container-table {display:flex;}
		.container-group {display:flex;margin:10px 0 0 0;}
		.container-col {flex-direction:col};
	</STYLE>
	<section class="container-left">
	</section>
		<section class="center">
			<STYLE>
				header {margin:0;padding:0;font-weight:bold;text-align:center;}
			</STYLE>
			<header>
				<img src="GCC.png"/>
				<h1><xsl:value-of select="article/title"/></h1>
			</header>
			<STYLE>	
				main {padding:0;margin:0;height:auto;}
			</STYLE>
			<main>
				<STYLE>
					section {margin:0;padding:0;height:auto;width:auto;}
				</STYLE>
				<STYLE>
					code {margin:0;padding:10px 0 10px 10px;height:auto;width:100%;display: inline-block;background-color:#ebf7ea;}
				</STYLE>
				<STYLE>
					p {margin:0;padding:0;}
				</STYLE>
				<section>
					<p><xsl:value-of select="article/par1"/>
					<a href="https://ubuntu.com/download/desktop"><xsl:value-of select="article/link1"/></a>
					<xsl:value-of select="article/par11"/>
					<a href="https://docs.microsoft.com/en-us/windows/wsl/about"><xsl:value-of select="article/link11"/></a>
					<xsl:value-of select="article/par12"/>
					<a href="https://code.visualstudio.com/"><xsl:value-of select="article/link12"/></a>
					<xsl:value-of select="article/par13"/></p>
				</section>
				<section>
					<h2><xsl:value-of select="article/subtitle2"/></h2>
					<p><xsl:value-of select="article/par2"/>
					<a href="https://en.wikipedia.org/wiki/GNU_toolchain"><xsl:value-of select="article/link2"/></a>
					<xsl:value-of select="article/par21"/>
					<a href="http://gcc.gnu.org/"><xsl:value-of select="article/link21"/></a>
					<xsl:value-of select="article/par22"/></p><br></br>
					<p><xsl:value-of select="article/par23"/>
					<a href="https://code.visualstudio.com/docs/cpp/config-wsl"><xsl:value-of select="article/link22"/></a>
					<xsl:value-of select="article/par24"/></p><br></br>
					<p><xsl:value-of select="article/par25"/>
					<span style="font-weight:bold"><xsl:value-of select="article/par26"/></span>
					<xsl:value-of select="article/par27"/></p><br></br>
				</section>	
				<section>
					<p><code><xsl:value-of select="article/code21"/></code></p>
					<p><code><xsl:value-of select="article/code22"/></code></p>
				</section>
				<section>
					<h2><xsl:value-of select="article/subtitle3"/></h2>
					<p><xsl:value-of select="article/par31"/>
					<a href="https://gcc.gnu.org/onlinedocs/gcc/"><xsl:value-of select="article/link3"/></a>
					<xsl:value-of select="article/par32"/>
					<a href="https://gcc.gnu.org/onlinedocs/gcc/Invoking-G_002b_002b.html#Invoking-G_002b_002b"><xsl:value-of select="article/link31"/></a>
					<xsl:value-of select="article/par33"/></p><br></br>
					<p><xsl:value-of select="article/par34"/>
					<a href="https://www.computerhope.com/unix/ucc.htm">
					<xsl:value-of select="article/link32"/></a>
					<xsl:value-of select="article/par35"/></p><br></br>
				</section>
				<section class="container-table">
					<section class="container-col">
					<xsl:for-each select="article/command">
						<section class="container-group">
							<section class="container-cl">
								<p><xsl:value-of select="cl"/></p>
							</section>
							<section class="container-desc">
								<p><xsl:value-of select="desc"/></p>
							</section>
						</section>
					</xsl:for-each>
					</section>
				</section>
				<section>
					<br></br><p><xsl:value-of select="article/par36"/>
					<a href="https://www.computerhope.com/unix/ucc.htm">
					<xsl:value-of select="article/link33"/></a>
					<xsl:value-of select="article/par37"/></p><br></br>
					<p><xsl:value-of select="article/par38"/></p><br></br>
					<p><xsl:value-of select="article/par39"/></p><br></br>
					<p><xsl:value-of select="article/par311"/></p><br></br>
					<p><xsl:value-of select="article/par312"/></p><br></br>					
					<p><code><xsl:value-of select="article/code31"/></code></p>
					<p><code><xsl:value-of select="article/code32"/></code></p><br></br>
					<p><xsl:value-of select="article/par38"/></p>
				</section>	
				<section>
					<h2><xsl:value-of select="article/subtitle4"/></h2>
					<p><xsl:value-of select="article/par41"/>
					<a href="http://gnu.org/software/make/manual/make.html#Options-Summary">
					<xsl:value-of select="article/link4"/></a></p><br></br>
					<p><code><xsl:value-of select="article/code41"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code42"/></code></p>
					<p><code><xsl:value-of select="article/code43"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code44"/></code></p>
					<p><code><xsl:value-of select="article/code45"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code46"/></code></p>
					<p><code><xsl:value-of select="article/code47"/></code></p><br></br>
					<p><code><xsl:value-of select="article/code48"/></code></p><br></br>
					<p><xsl:value-of select="article/par43"/></p>
				</section>
				<section>		
					<h2><xsl:value-of select="article/subtitle5"/></h2>
					<p><xsl:value-of select="article/par5"/>
					<a href="https://www.taniarascia.com/how-to-create-and-use-bash-scripts/"><xsl:value-of select="article/link5"/></a>
					<xsl:value-of select="article/par51"/></p><br></br>
					<p><code><xsl:value-of select="article/code51"/></code></p>
					<p><code><xsl:value-of select="article/code52"/></code></p>
					<p><code><xsl:value-of select="article/code53"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code54"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code55"/></code></p>
					<p><code><xsl:value-of select="article/code56"/></code></p>
					<p><code><xsl:value-of select="article/code57"/></code></p>
					<p><code><xsl:value-of select="article/code58"/></code></p>
					<p><code><xsl:value-of select="article/code59"/></code></p>
					<p><code><xsl:value-of select="article/code511"/></code></p>
					<p><code><xsl:value-of select="article/code512"/></code></p>
					<p><code><xsl:value-of select="article/code513"/></code></p>
					<p><code><xsl:value-of select="article/code514"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code515"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code516"/></code></p>
					<p><code><xsl:value-of select="article/code517"/></code></p>
					<p><code><xsl:value-of select="article/code518"/></code></p>
					<p><code><xsl:value-of select="article/code519"/></code></p>
					<p><code><xsl:value-of select="article/code521"/></code></p><br></br>
					<p><code><xsl:value-of select="article/code522"/></code></p><br></br>
					<p><xsl:value-of select="article/par52"/></p><br></br>
					<p><code><xsl:value-of select="article/code523"/></code></p>
					<p><code><xsl:value-of select="article/code524"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code525"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code526"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code527"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code528"/></code></p>
					<p><code class="indent" style="text-indent:5em"><xsl:value-of select="article/code529"/></code></p>
					<p><code class="indent" style="text-indent:7em"><xsl:value-of select="article/code531"/></code></p>
					<p><code class="indent" style="text-indent:7em"><xsl:value-of select="article/code532"/></code></p>
					<p><code class="indent" style="text-indent:7em"><xsl:value-of select="article/code533"/></code></p>
					<p><code class="indent" style="text-indent:7em"><xsl:value-of select="article/code534"/></code></p>
					<p><code class="indent" style="text-indent:5em"><xsl:value-of select="article/code535"/></code></p>
					<p><code class="indent" style="text-indent:3em"><xsl:value-of select="article/code536"/></code></p>
					<p><code><xsl:value-of select="article/code537"/></code></p>
				</section>
				<section>				
					<h2><xsl:value-of select="article/subtitle6"/></h2>
					<p><xsl:value-of select="article/par6"/></p>
				</section>
				<section>
					<h2><xsl:value-of select="article/subtitle7"/></h2>
					<p><a href="https://gcc.gnu.org/onlinedocs/gcc/"><xsl:value-of select="article/ref1"/></a></p>
					<p><a href="https://www.gnu.org/software/make/manual/html_node/Simple-Makefile.html"><xsl:value-of select="article/ref2"/></a></p>
					<p><a href="https://www.gnu.org/software/make/manual/make.html#Options-Summary"><xsl:value-of select="article/ref3"/></a></p>
					<p><a href="https://www.gnu.org/software/make/manual/make.html#Makefile-Arguments"><xsl:value-of select="article/ref4"/></a></p>
					<p><a href="https://devblogs.microsoft.com/cppblog/building-your-c-application-with-visual-studio-code/#GCCClang"><xsl:value-of select="article/ref5"/></a></p>
					<p><a href="https://code.visualstudio.com/docs/cpp/config-wsl"><xsl:value-of select="article/ref6"/></a></p>
					<p><a href="https://code.visualstudio.com/Docs/editor/tasks"><xsl:value-of select="article/ref7"/></a></p>
					<p><a href="https://www.computerhope.com/unix.htm"><xsl:value-of select="article/ref8"/></a></p>
					<p><a href="https://marketplace.visualstudio.com/items?itemName=ACharLuk.easy-cpp-projects"><xsl:value-of select="article/ref9"/></a><xsl:value-of select="article/par7"/></p><br></br><br></br>
				</section>
			</main>
		</section>
		<section class="container-right">
		</section>
	</body>
	</html>
</xsl:template>

</xsl:stylesheet>	
