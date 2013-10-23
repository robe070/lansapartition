<?xml version="1.0" encoding="UTF-8"?><!--(c) 2009, 2012 LANSA--><!--XHTML Layout--><!--$Workfile:: std_crud_layout2.xsl--><!--$Revision:: 4--><xsl:transform version="1.0" exclude-result-prefixes="lxml wd" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:lxml="http://www.lansa.com/2002/XML/Runtime-Data" xmlns:wd="http://www.lansa.com/2002/XSL/Weblet-Design" xmlns="http://www.w3.org/1999/xhtml"><xsl:import href="std_variables.xsl"></xsl:import><xsl:import href="std_types.xsl"></xsl:import><xsl:import href="std_style_v2.xsl"></xsl:import><xsl:import href="std_script.xsl"></xsl:import><xsl:import href="std_hidden.xsl"></xsl:import><xsl:import href="std_messages.xsl"></xsl:import><xsl:output method="xml" omit-xml-declaration="yes" encoding="UTF-8" indent="yes"></xsl:output><xsl:template name="std_crud_layout2" wd:role="std:layout"><xsl:param name="show_top_menu"></xsl:param><xsl:param name="show_footer_menu"></xsl:param><xsl:param name="show_footer_links"></xsl:param><xsl:param name="body_class"></xsl:param><xsl:param name="form_class"></xsl:param><xsl:param name="has_form" select="true()"></xsl:param><xsl:param name="show_title" select="true()"></xsl:param><xsl:param name="title_text" select="$lweb_context/lxml:webroutine-title"></xsl:param><xsl:param name="show_messages" select="true()"></xsl:param><xsl:param name="onload_script" select="'SetFocus()'"></xsl:param><xsl:param name="onunload_script" select="''"></xsl:param><xsl:param name="javascript_files" select="''"></xsl:param><xsl:param name="theme_css_filename" select="''"></xsl:param><xsl:param name="css_files" select="''"></xsl:param><xsl:param name="extra_files_charset" select="$lweb_extrafiles_charset"></xsl:param><xsl:param name="output_charset" select="/lxml:data/lxml:server-instructions/lxml:client-charset"></xsl:param><xsl:param name="trap_script_errors" select="true()"></xsl:param><xsl:param name="jQueryNoConflict" select="false()"></xsl:param><html><head><title><xsl:value-of select="$title_text"></xsl:value-of><xsl:text>&#32;</xsl:text></title><meta http-equiv="Content-Type" content="text/html; charset={$output_charset}" /><xsl:call-template name="style"><xsl:with-param name="theme_css_filename" select="$theme_css_filename"></xsl:with-param><xsl:with-param name="css_files" select="$css_files"></xsl:with-param><xsl:with-param name="css_files_charset" select="$extra_files_charset"></xsl:with-param></xsl:call-template><xsl:if test="$theme_css_filename = '' or not(contains($theme_css_filename, 'std_style_crud_') and contains($theme_css_filename, '_fluid.css'))"><link href="{$lweb_style_path}/std_style_crud_fluid.min.css" type="text/css" rel="stylesheet" charset="utf-8" /></xsl:if><script src="{$lweb_scripts_path}/std_crud_jpn.min.js" type="text/javascript" charset="utf-8"><xsl:comment></xsl:comment><xsl:text>&#32;</xsl:text></script><xsl:call-template name="script"><xsl:with-param name="javascript_files" select="$javascript_files"></xsl:with-param><xsl:with-param name="javascript_files_charset" select="$extra_files_charset"></xsl:with-param><xsl:with-param name="trap_script_errors" select="$trap_script_errors"></xsl:with-param><xsl:with-param name="jQueryNoConflict" select="$jQueryNoConflict"></xsl:with-param></xsl:call-template></head><body onload="SetFocus()"><xsl:if test="boolean($onload_script)"><xsl:attribute name="onload"><xsl:value-of select="$onload_script"></xsl:value-of></xsl:attribute></xsl:if><xsl:if test="boolean($onunload_script)"><xsl:attribute name="onunload"><xsl:value-of select="$onunload_script"></xsl:value-of></xsl:attribute></xsl:if><xsl:if test="$body_class!=''"><xsl:attribute name="class"><xsl:value-of select="$body_class"></xsl:value-of></xsl:attribute></xsl:if><form name="LANSA" onsubmit="return _HandleDefaultSubmit(this)" action="{$lweb_context/lxml:action-request}?" method="post"><xsl:if test="$form_class!=''"><xsl:attribute name="class"><xsl:value-of select="$form_class"></xsl:value-of></xsl:attribute></xsl:if><div align="center"><table style="width:90%;" cellspacing="0" cellpadding="0" width="90%" border="0"><tbody><tr><td class="crud_linesep" width="100%"><img style="height:2px;" height="2" alt="" src="/images/crud/crud_spacer.gif" border="0" /></td></tr><tr><td class="crud_header_bg"><table style="width:100%" cellspacing="0" cellpadding="0" width="100%" border="0"><tbody><tr><td class="crud_wam_header_left" width="372"><img style="width:675px;height:86px;" height="86" alt="" src="/images/crud/crud_spacer.gif" width="675" border="0" /></td><td class="crud_wam_header_date" align="right"><xsl:value-of select="key('field-value','XXMONTHDS')"></xsl:value-of><xsl:comment /></td></tr></tbody></table></td></tr><tr><td class="crud_linesep" width="100%"><img style="height:2px;" height="2" alt="" src="/images/crud/crud_spacer.gif" border="0" /></td></tr><tr><td><img style="height:5px;" height="5" alt="" src="/images/crud/crud_spacer.gif" border="0" /></td></tr><tr><td class="crud_linesep" width="100%"><img style="height:1px;" height="1" alt="" src="/images/crud/crud_spacer.gif" border="0" /></td></tr><xsl:if test="$show_top_menu"><tr><td class="crud_menu_bg" width="100%"><div id="crud_menu_container"><div id="crud_menu_header"><ul><li><a href="http://www.lansa.jp"><span>ホーム</span></a></li><xsl:call-template name="layout-header-menu.override"></xsl:call-template><li><a href="javascript:void(0);"><span>メニュー項目</span></a></li><li><a href="javascript:void(0);"><span>メニュー項目</span></a></li></ul></div></div></td></tr></xsl:if><tr><td class="crud_content_bg" id="crud_content" align="left"><xsl:if test="$show_title"><h1 class="crud_title"><xsl:value-of select="$title_text"></xsl:value-of><xsl:comment /></h1></xsl:if><xsl:if test="$show_messages"><xsl:call-template name="messages"></xsl:call-template></xsl:if><xsl:call-template name="hidden_fields"></xsl:call-template><xsl:apply-templates select="*"></xsl:apply-templates><xsl:comment /></td></tr><xsl:if test="$show_footer_links"><xsl:call-template name="layout-footer-links.override"></xsl:call-template></xsl:if><xsl:if test="$show_footer_menu"><tr><td class="crud_footer_content_bg" style="width:100%;height:41px" width="100%"><table style="height:46px" cellspacing="0" cellpadding="0" width="100%" border="0"><tbody><tr><td align="left" width="21"><img height="46" alt="" src="/images/crud/crud_spacer.gif" width="21" /></td><td class="crud_footer_content_bg" bgcolor="#ffffff"><table style="height:25px;" height="25" cellspacing="0" cellpadding="0" border="0"><tbody><tr><td class="crud_footer_menu_text">Copyright <xsl:value-of select="key('variable', 'YYYYC')"></xsl:value-of> LANSA</td><td class="crud_footer_menu_text">|</td><td class="crud_footer_menu_text"><a href="">会社概要</a></td><td class="crud_footer_menu_text">|</td><td class="crud_footer_menu_text"><a href="">お問い合わせ</a></td></tr></tbody></table></td><td class="crud_footer_menu_right" align="right" width="275"><img height="46" alt="" src="/images/crud/crud_spacer.gif" width="275" /></td></tr></tbody></table></td></tr></xsl:if></tbody></table></div></form></body></html></xsl:template><xsl:template name="layout-header-menu.override"><li><a href="javascript:void(0)"><span>メニューアイテム</span></a></li><li><a href="javascript:void(0);"><span>メニューアイテム</span></a></li></xsl:template><xsl:template name="layout-footer-menu.override"><td class="crud_footer_menu_text">Copyright <xsl:value-of select="key('variable', 'YYYYC')"></xsl:value-of> LANSA</td><td class="crud_footer_menu_text">|</td><td class="crud_footer_menu_text"><a href="">会社概要</a></td><td class="crud_footer_menu_text">|</td><td class="crud_footer_menu_text"><a href="">お問い合わせ</a></td></xsl:template><xsl:template name="layout-footer-links.override"><tr><td style="height:25px" width="100%"><table style="width:100%;" cellspacing="0" cellpadding="0" width="100%" border="0"><tbody><tr><td class="crud_footer_left_bg"><img height="1" alt="" src="/images/crud/crud_spacer.gif" width="1" /></td><td class="crud_footer_bgcolor" width="100%"><div id="crud_footer"><div class="crud_footer_div"><table cellspacing="0" cellpadding="0"><tbody><tr valign="top"><td class="crud_related" width="155">関連リンク</td><td class="crud_links"><ul class="crud_leftnavlist" style="margin-top:-2px;"><li> <a href="http://www.lansa.jp/support/index.htm">技術情報</a><br /></li></ul></td><td class="crud_links"><ul class="crud_leftnavlist" style="margin-top:-2px;"><li> <a href="http://www.lansa.jp/products/index.htm">製品情報</a><br /></li></ul></td><td class="crud_links"><ul class="crud_leftnavlist" style="margin-top:-2px;"><li> <a href="http://www.lansa.jp/education/index.htm">LANSA 研修</a><br /></li></ul></td></tr></tbody></table></div></div></td><td class="crud_footer_right_bg"><img height="1" alt="" src="/images/crud/crud_spacer.gif" width="1" /></td></tr></tbody></table></td></tr></xsl:template></xsl:transform>