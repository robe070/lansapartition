<?xml version="1.0" encoding="UTF-8"?><!--(c) 2003, 2012 LANSA--><!--XHTML Standard Layout Schema #2--><!--$Workfile:: std_layout2_v2.xsl $--><!--$UTCDate:: 2013-01-02 04:17:09Z $--><!--$Revision:: 9 $--><xsl:transform version="1.0" exclude-result-prefixes="lxml wd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lxml="http://www.lansa.com/2002/XML/Runtime-Data" xmlns:wd="http://www.lansa.com/2002/XSL/Weblet-Design" xmlns="http://www.w3.org/1999/xhtml"><xsl:import href="std_variables.xsl"></xsl:import><xsl:import href="std_types.xsl"></xsl:import><xsl:import href="std_style_v2.xsl"></xsl:import><xsl:import href="std_script.xsl"></xsl:import><xsl:import href="std_hidden.xsl"></xsl:import><xsl:import href="std_messages.xsl"></xsl:import><xsl:import href="std_menu_item_v2.xsl"></xsl:import><xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="no"></xsl:output><xsl:template name="std_layout2_v2" wd:role="std:layout"><xsl:param name="show_left_menu" select="false()"></xsl:param><xsl:param name="show_top_menu" select="true()"></xsl:param><xsl:param name="show_right_menu" select="false()"></xsl:param><xsl:param name="body_class"></xsl:param><xsl:param name="form_class"></xsl:param><xsl:param name="has_form" select="true()"></xsl:param><xsl:param name="no_layout" select="false()"></xsl:param><xsl:param name="show_title" select="true()"></xsl:param><xsl:param name="title_text" select="$lweb_context/lxml:webroutine-title"></xsl:param><xsl:param name="show_messages" select="true()"></xsl:param><xsl:param name="onload_script" select="'SetFocus()'"></xsl:param><xsl:param name="onunload_script" select="''"></xsl:param><xsl:param name="javascript_files" select="''"></xsl:param><xsl:param name="theme_css_filename" select="''"></xsl:param><xsl:param name="css_files" select="''"></xsl:param><xsl:param name="extra_files_charset" select="$lweb_extrafiles_charset"></xsl:param><xsl:param name="output_charset" select="/lxml:data/lxml:server-instructions/lxml:client-charset"></xsl:param><xsl:param name="trap_script_errors" select="true()"></xsl:param><xsl:param name="jQueryNoConflict" select="false()"></xsl:param><html><head><title><xsl:value-of select="$title_text"></xsl:value-of><xsl:text>&#32;</xsl:text></title><meta http-equiv="Content-Type" content="text/html; charset={$output_charset}" /><xsl:call-template name="style"><xsl:with-param name="theme_css_filename" select="$theme_css_filename"></xsl:with-param><xsl:with-param name="css_files" select="$css_files"></xsl:with-param><xsl:with-param name="css_files_charset" select="$extra_files_charset"></xsl:with-param></xsl:call-template><xsl:call-template name="script"><xsl:with-param name="javascript_files" select="$javascript_files"></xsl:with-param><xsl:with-param name="javascript_files_charset" select="$extra_files_charset"></xsl:with-param><xsl:with-param name="trap_script_errors" select="$trap_script_errors"></xsl:with-param><xsl:with-param name="jQueryNoConflict" select="$jQueryNoConflict"></xsl:with-param></xsl:call-template></head><body bottommargin="0" rightmargin="0" marginheight="0" marginwidth="0" topmargin="0" leftmargin="0"><xsl:if test="boolean($onload_script)"><xsl:attribute name="onload"><xsl:value-of select="$onload_script"></xsl:value-of></xsl:attribute></xsl:if><xsl:if test="boolean($onunload_script)"><xsl:attribute name="onunload"><xsl:value-of select="$onunload_script"></xsl:value-of></xsl:attribute></xsl:if><xsl:if test="$body_class!=''"><xsl:attribute name="class"><xsl:value-of select="$body_class"></xsl:value-of></xsl:attribute></xsl:if><xsl:choose><xsl:when test="$no_layout"><xsl:call-template name="layout-form.private"><xsl:with-param name="show_messages" select="$show_messages"></xsl:with-param><xsl:with-param name="show_title" select="$show_title"></xsl:with-param><xsl:with-param name="title_text" select="$title_text"></xsl:with-param><xsl:with-param name="has_form" select="$has_form"></xsl:with-param><xsl:with-param name="form_class" select="$form_class"></xsl:with-param></xsl:call-template></xsl:when><xsl:otherwise><table height="100%" cellspacing="0" cellpadding="0" width="100%" border="0"><tbody><tr class="std_layout_outline"><td width="100%" colspan="3"><table cellspacing="0" cellpadding="0" width="100%" border="0"><tbody><tr><td class="std_headerl"><span style="width:100%"><xsl:comment></xsl:comment><xsl:comment /></span></td><td class="std_headerr"><span style="width:100%"><xsl:comment></xsl:comment><xsl:comment /></span></td></tr></tbody></table></td></tr><tr class="std_layout_outline"><xsl:if test="not($show_right_menu) and not(key('design_doc_name', 'std_layout2_v2.xsl'))"><td class="std_menutop_bg"><span style="width:100%"><xsl:comment></xsl:comment><xsl:comment /></span></td></xsl:if><td class="std_menutop_bg" align="center" colspan="3" height="20"><xsl:if test="not($show_right_menu) and not(key('design_doc_name', 'std_layout2_v2.xsl'))"><xsl:attribute name="align">left</xsl:attribute></xsl:if><xsl:if test="$show_top_menu or key('design_doc_name', 'std_layout2_v2.xsl')"><xsl:call-template name="layout-top-menu.override"></xsl:call-template></xsl:if><xsl:comment /></td></tr><tr><td class="std_layout_outline" valign="top" align="center"><xsl:if test="$show_left_menu or key('design_doc_name', 'std_layout2_v2.xsl')"><xsl:call-template name="layout-left-menu.override"></xsl:call-template></xsl:if><xsl:comment /></td><td class="std_layout_v2_content" valign="top" width="95%" height="100%"><xsl:call-template name="layout-form.private"><xsl:with-param name="show_messages" select="$show_messages"></xsl:with-param><xsl:with-param name="show_title" select="$show_title"></xsl:with-param><xsl:with-param name="title_text" select="$title_text"></xsl:with-param><xsl:with-param name="has_form" select="$has_form"></xsl:with-param><xsl:with-param name="form_class" select="$form_class"></xsl:with-param></xsl:call-template><xsl:comment /></td><td class="std_layout_outline" valign="top" align="right"><xsl:if test="$show_right_menu or key('design_doc_name', 'std_layout2_v2.xsl')"><xsl:call-template name="layout-right-menu.override"></xsl:call-template></xsl:if><xsl:comment /></td></tr><tr><td class="std_layout_outline"><xsl:comment /></td><td><xsl:comment /></td><td class="std_layout_outline"><xsl:comment /></td></tr><tr><td colspan="3"><p class="std_footer" align="center">For support contact <a href="mailto:helpdesk@yourcorp.com?subject=Personnel System Assistance">helpdesk@yourcorp.com</a></p></td></tr></tbody></table></xsl:otherwise></xsl:choose></body></html></xsl:template><xsl:template name="layout-left-menu.override"><table cellspacing="0" cellpadding="0" width="150"><tbody><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td></tr><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td></tr><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr></tbody></table></xsl:template><xsl:template name="layout-top-menu.override"><table cellspacing="0" cellpadding="0"><tbody><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td><td><xsl:comment /></td><td><xsl:comment /></td><td><xsl:comment /></td><td><xsl:comment /></td><td><xsl:comment /></td><td><xsl:comment /></td></tr></tbody></table></xsl:template><xsl:template name="layout-right-menu.override"><table cellspacing="0" cellpadding="0" width="150"><tbody><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td></tr><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td></tr><tr><td><xsl:call-template name="std_menu_item_v2"></xsl:call-template><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr><tr><td><xsl:comment /></td></tr></tbody></table></xsl:template><xsl:template name="layout-form.private"><xsl:param name="has_form"></xsl:param><xsl:param name="form_class"></xsl:param><xsl:param name="show_title"></xsl:param><xsl:param name="title_text"></xsl:param><xsl:param name="show_messages"></xsl:param><xsl:if test="$show_title"><h1 class="title"><xsl:value-of select="$title_text"></xsl:value-of><xsl:comment /></h1></xsl:if><xsl:if test="$show_messages"><xsl:call-template name="messages"></xsl:call-template></xsl:if><xsl:choose><xsl:when test="$has_form"><form name="LANSA" onsubmit="return _HandleDefaultSubmit(this)" action="{$lweb_context/lxml:action-request}?" method="post"><xsl:if test="$form_class!=''"><xsl:attribute name="class"><xsl:value-of select="$form_class"></xsl:value-of></xsl:attribute></xsl:if><xsl:apply-templates select="*"></xsl:apply-templates><xsl:call-template name="hidden_fields"></xsl:call-template><xsl:comment /></form></xsl:when><xsl:otherwise><xsl:apply-templates select="*"></xsl:apply-templates></xsl:otherwise></xsl:choose></xsl:template></xsl:transform>