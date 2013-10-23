<?xml version="1.0" encoding="UTF-8"?><!--(c) 2002, 2012 LANSA--><!--XHTML Standard WAM Layout--><!--$Workfile:: std_layout.xsl $--><!--$UTCDate:: 2013-01-02 03:32:27Z $--><!--$Revision:: 13 $--><xsl:transform version="1.0" exclude-result-prefixes="lxml wd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lxml="http://www.lansa.com/2002/XML/Runtime-Data" xmlns:wd="http://www.lansa.com/2002/XSL/Weblet-Design" xmlns="http://www.w3.org/1999/xhtml"><xsl:import href="std_variables.xsl"></xsl:import><xsl:import href="std_style.xsl"></xsl:import><xsl:import href="std_script.xsl"></xsl:import><xsl:import href="std_hidden.xsl"></xsl:import><xsl:import href="std_messages.xsl"></xsl:import><xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"></xsl:output><xsl:template name="layout" wd:role="std:layout"><xsl:param name="company_logo_image" select="$lweb_company_logo"></xsl:param><xsl:param name="company_logo_image_right" select="$lweb_company_logo_right"></xsl:param><xsl:param name="body_class"></xsl:param><xsl:param name="form_class"></xsl:param><xsl:param name="show_title" select="true()"></xsl:param><xsl:param name="title_text" select="$lweb_context/lxml:webroutine-title"></xsl:param><xsl:param name="show_messages" select="true()"></xsl:param><xsl:param name="relative_css_link_filename" select="''"></xsl:param><xsl:param name="output_charset" select="/lxml:data/lxml:server-instructions/lxml:client-charset"></xsl:param><html><head><title><xsl:value-of select="$title_text"></xsl:value-of><xsl:text>&#32;</xsl:text></title><meta http-equiv="content-type" content="text/html; charset={$output_charset}" /><xsl:call-template name="style"><xsl:with-param name="company_logo_image_right" select="$company_logo_image_right"></xsl:with-param><xsl:with-param name="company_logo_image" select="$company_logo_image"></xsl:with-param><xsl:with-param name="relative_css_link_filename" select="$relative_css_link_filename"></xsl:with-param></xsl:call-template><xsl:call-template name="script"></xsl:call-template></head><body onload="SetFocus()"><xsl:if test="$body_class!=''"><xsl:attribute name="class"><xsl:value-of select="$body_class"></xsl:value-of></xsl:attribute></xsl:if><table cellspacing="0" cellpadding="0" width="100%" border="0"><tbody><tr><td class="std_headerl"><span style="width:100%"><xsl:comment></xsl:comment><xsl:comment /></span></td><td class="std_headerr"><span style="width:100%"><xsl:comment></xsl:comment><xsl:comment /></span></td></tr></tbody></table><br /><br /><xsl:if test="$show_title"><h1 class="title"><xsl:value-of select="$title_text"></xsl:value-of><xsl:comment /></h1></xsl:if><xsl:if test="$show_messages"><div align="center"><xsl:call-template name="messages"></xsl:call-template><xsl:comment /></div></xsl:if><form name="LANSA" onsubmit="return _HandleDefaultSubmit(this)" action="{$lweb_context/lxml:action-request}?" method="post"><xsl:if test="$form_class!=''"><xsl:attribute name="class"><xsl:value-of select="$form_class"></xsl:value-of></xsl:attribute></xsl:if><xsl:call-template name="hidden_fields"></xsl:call-template><br clear="all" /><br /><xsl:apply-templates select="*"></xsl:apply-templates><br /><br /><br /><br /><p class="std_footer" align="center">For support contact <a href="mailto:helpdesk@yourcorp.com?subject=Personnel System Assistance">helpdesk@yourcorp.com</a></p><br /></form></body></html></xsl:template></xsl:transform>