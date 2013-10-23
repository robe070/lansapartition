<?xml version="1.0" encoding="UTF-8"?><!--(c) 2002, 2012 LANSA--><!--PPC XHTML Standard WAM Layout--><!--$Workfile:: std_layout_v2.xsl $--><!--$UTCDate:: 2013-01-02 04:17:09Z $--><!--$Revision:: 7 $--><xsl:transform version="1.0" exclude-result-prefixes="lxml wd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lxml="http://www.lansa.com/2002/XML/Runtime-Data" xmlns:wd="http://www.lansa.com/2002/XSL/Weblet-Design" xmlns="http://www.w3.org/1999/xhtml"><xsl:import href="std_variables.xsl"></xsl:import><xsl:import href="std_style_v2.xsl"></xsl:import><xsl:import href="std_script.xsl"></xsl:import><xsl:import href="std_hidden.xsl"></xsl:import><xsl:import href="std_messages.xsl"></xsl:import><xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"></xsl:output><xsl:template name="layout" wd:role="std:layout"><xsl:param name="body_class"></xsl:param><xsl:param name="form_class"></xsl:param><xsl:param name="show_title" select="true()"></xsl:param><xsl:param name="title_text" select="$lweb_context/lxml:webroutine-title"></xsl:param><xsl:param name="show_messages" select="true()"></xsl:param><xsl:param name="javascript_files" select="''"></xsl:param><xsl:param name="theme_css_filename" select="''"></xsl:param><xsl:param name="css_files" select="''"></xsl:param><xsl:param name="extra_files_charset" select="$lweb_extrafiles_charset"></xsl:param><xsl:param name="output_charset" select="/lxml:data/lxml:server-instructions/lxml:client-charset"></xsl:param><xsl:param name="trap_script_errors" select="true()"></xsl:param><html><head><title><xsl:value-of select="$title_text"></xsl:value-of><xsl:text>&#32;</xsl:text></title><meta http-equiv="content-type" content="text/html; charset={$output_charset}" /><xsl:call-template name="style"><xsl:with-param name="theme_css_filename" select="$theme_css_filename"></xsl:with-param><xsl:with-param name="css_files" select="$css_files"></xsl:with-param><xsl:with-param name="css_files_charset" select="$extra_files_charset"></xsl:with-param></xsl:call-template><xsl:call-template name="script"><xsl:with-param name="javascript_files" select="$javascript_files"></xsl:with-param><xsl:with-param name="javascript_files_charset" select="$extra_files_charset"></xsl:with-param><xsl:with-param name="trap_script_errors" select="$trap_script_errors"></xsl:with-param></xsl:call-template></head><body onload="SetFocus()"><xsl:if test="$body_class!=''"><xsl:attribute name="class"><xsl:value-of select="$body_class"></xsl:value-of></xsl:attribute></xsl:if><img alt="Logo" src="{$lweb_images_path}/{$lweb_company_logo}" /><xsl:if test="$show_title"><h1 class="title"><xsl:value-of select="$title_text"></xsl:value-of><xsl:comment /></h1><br /></xsl:if><xsl:if test="$show_messages"><xsl:call-template name="messages"></xsl:call-template></xsl:if><form name="LANSA" onsubmit="return _HandleDefaultSubmit(this)" action="{$lweb_context/lxml:action-request}?" method="post"><xsl:if test="$form_class!=''"><xsl:attribute name="class"><xsl:value-of select="$form_class"></xsl:value-of></xsl:attribute></xsl:if><xsl:call-template name="hidden_fields"></xsl:call-template><br clear="all" /><br /><xsl:apply-templates select="*"></xsl:apply-templates><br /><br /><p align="center"><img alt="" src="{$lweb_images_path}/{$lweb_stdfooter_border}" /></p><br /><h4 align="center">Powered by <a href="http://www.lansa.com/"><img alt="LANSA" src="{$lweb_images_path}/{$lweb_lansa_logo}" align="middle" border="0" /></a></h4></form></body></html></xsl:template></xsl:transform>