<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
                xmlns:exsl="http://exslt.org/common"
                xmlns:tei="http://www.tei-c.org/ns/1.0"
                xmlns:tst="https://github.com/tst-project"
                xmlns:officeooo="http://openoffice.org/2009/office" 
                xmlns:text="urn:oasis:names:tc:opendocument:xmlns:text:1.0" 
                xmlns:style="urn:oasis:names:tc:opendocument:xmlns:style:1.0" 
                xmlns:fo="urn:oasis:names:tc:opendocument:xmlns:xsl-fo-compatible:1.0" 
                xmlns:office="urn:oasis:names:tc:opendocument:xmlns:office:1.0" 
                xmlns:loext="urn:org:documentfoundation:names:experimental:office:xmlns:loext:1.0" 
                exclude-result-prefixes="tei tst">

<xsl:template match="tei:TEI">
    <office:document office:version="1.3" office:mimetype="application/vnd.oasis.opendocument.text">
     <office:styles>
        <text:notes-configuration text:note-class="footnote" text:default-style-name="Footnote" text:citation-style-name="Footnote_20_Symbol" text:citation-body-style-name="Footnote_20_anchor" text:master-page-name="Footnote" style:num-format="1" text:start-value="0" text:footnotes-position="page" text:start-numbering-at="document"/>
        <!--text:notes-configuration text:note-class="critnote" text:default-style-name="Footnote" text:citation-style-name="Footnote_20_Symbol" text:citation-body-style-name="Invisible" text:master-page-name="Footnote" style:num-format="1" text:start-value="0" text:footnotes-position="page" text:start-numbering-at="document"/-->
        <text:notes-configuration text:note-class="critnote2" text:default-style-name="Footnote" text:citation-style-name="Footnote_20_Symbol" text:citation-body-style-name="Footnote_20_anchor" text:master-page-name="Footnote" style:num-format="i" text:start-value="0" text:footnotes-position="page" text:start-numbering-at="page"/>
      <!--style:style style:name="Invisible" style:display-name="Invisible" style:family="text">
       <style:text-properties style:use-window-font-color="true" fo:color="#ffffff" loext:opacity="100%" style:text-position="super 58%" style:text-underline-style="none" style:text-emphasize="none"/>
      </style:style-->
      <style:style style:name="Footnote" style:family="paragraph" style:parent-style-name="Standard" style:class="extra">
       <style:paragraph-properties fo:margin-left="0.2362in" fo:margin-right="0in" fo:text-indent="-0.2362in" style:auto-text-indent="false" text:number-lines="false" text:line-number="0"/>
       <style:text-properties fo:font-size="10pt" style:font-size-asian="10pt" style:font-size-complex="10pt" fo:font-variant="normal"/>
      </style:style>
      <style:style style:name="Footnote_20_Symbol" style:display-name="Footnote Symbol" style:family="text">
       <style:text-properties fo:font-size="8pt" fo:font-variant="normal"/>
      </style:style>
      <style:style style:name="Footnote_20_anchor" style:display-name="Footnote anchor" style:family="text">
   <style:text-properties style:text-position="super 58%" fo:font-variant="normal"/>
  </style:style>
     </office:styles>
     <office:automatic-styles>
      <style:style style:name="P1" style:family="paragraph" style:parent-style-name="Footnote">
       <style:text-properties officeooo:rsid="00090680" fo:language="sa" officeooo:paragraph-rsid="00090680"/>
      </style:style>
      <style:style style:name="P2" style:family="paragraph" style:parent-style-name="Standard">
       <style:text-properties officeooo:rsid="00090680" fo:language="sa" officeooo:paragraph-rsid="00090680"/>
      </style:style>
      <style:style style:name="T1" style:family="text">
       <style:text-properties fo:font-weight="bold" style:font-weight-asian="bold" style:font-weight-complex="bold"/>
      </style:style>
      <style:style style:name="T2" style:family="text">
       <style:text-properties fo:font-style="italic" style:font-style-asian="italic" style:font-style-complex="italic"/>
      </style:style>
      <style:style style:name="T3" style:family="text">
       <style:text-properties style:text-position="super 58%"/>
      </style:style>
      <style:style style:name="T4" style:family="text">
       <style:text-properties style:text-position="sub 58%"/>
      </style:style>
      <style:style style:name="T5" style:family="text">
       <style:text-properties fo:language="en"/> 
      </style:style>
      <style:style style:name="T6" style:family="text">
       <style:text-properties fo:color="#ffffff" loext:opacity="100%" fo:font-variant="normal"/>
      </style:style>
      <style:style style:name="T7" style:family="text">
       <style:text-properties fo:font-variant="small-caps" />
      </style:style>
      <style:page-layout style:name="pm1">
       <style:page-layout-properties fo:page-width="8.5in" fo:page-height="11in" style:num-format="1" style:print-orientation="portrait" fo:margin-top="0.7874in" fo:margin-bottom="0.7874in" fo:margin-left="0.7874in" fo:margin-right="0.7874in" style:writing-mode="lr-tb" style:footnote-max-height="0in" loext:margin-gutter="0in">
        <style:footnote-sep style:width="0.0071in" style:distance-before-sep="0.0398in" style:distance-after-sep="0.0398in" style:line-style="solid" style:adjustment="left" style:rel-width="25%" style:color="#000000"/>
       </style:page-layout-properties>
      </style:page-layout>
     </office:automatic-styles>
     <office:master-styles>
      <style:master-page style:name="Standard" style:page-layout-name="pm1"/>
     </office:master-styles>
     <office:body>
      <office:text>
       <xsl:apply-templates select="tei:text"/>
      </office:text>
     </office:body>
    </office:document>
</xsl:template>

<xsl:template match="tei:text">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="tei:p">
    <text:p text:style-name="P2"/>
    <text:p text:style-name="P2">
        <xsl:apply-templates/>
        <xsl:if test=".//tei:lem or .//tei:note[@place='apparatus']">
            <xsl:call-template name="apparatus"/>
        </xsl:if>
    </text:p>
</xsl:template>

<xsl:template match="tei:lg">
    <text:p text:style-name="P2"/>
    <xsl:for-each select="tei:l">
        <text:p text:style-name="P2">
            <xsl:apply-templates/>
            <xsl:if test=".//tei:app">
                <xsl:choose>
                    <xsl:when test="@n">
                        <text:span text:style-name="T6">
                            <xsl:call-template name="apparatus">
                                <xsl:with-param name="notename"><xsl:value-of select="@n"/></xsl:with-param>
                            </xsl:call-template>
                        </text:span>
                    </xsl:when>
                    <xsl:otherwise>
                        <xsl:call-template name="apparatus"/>
                    </xsl:otherwise>
                </xsl:choose>
            </xsl:if>
        </text:p>
    </xsl:for-each>
</xsl:template>

<xsl:template match="tei:l/text()[last()]">
    <xsl:variable name="this" select="."/>
    <xsl:call-template name="TrimRight">
        <xsl:with-param name="input" select="$this"/>
    </xsl:call-template>
</xsl:template>

<xsl:template match="tei:title">
    <text:span text:style-name="T2"><xsl:apply-templates/></text:span>
</xsl:template>

<xsl:template name="splitwit">
    <xsl:param name="mss" select="@wit"/>
        <xsl:if test="string-length($mss)">
            <xsl:if test="not($mss=@wit)"><xsl:text> </xsl:text></xsl:if>
             <xsl:variable name="msstring" select="substring-before(
                                        concat($mss,' '),
                                      ' ')"/>
             <xsl:variable name="cleanstr" select="substring-after($msstring,'#')"/>
             <text:span text:style-name="T7">
                 <xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listWit/tei:witness[@xml:id=$cleanstr]/tei:abbr/node()"/>
            </text:span>
            <xsl:call-template name="splitwit">
                <xsl:with-param name="mss" select=
                    "substring-after($mss, ' ')"/>
            </xsl:call-template>
        </xsl:if>
</xsl:template>

<xsl:template match="tei:sup">
    <text:span text:style-name="T3"><xsl:apply-templates/></text:span>
</xsl:template>
<xsl:template match="tei:sub">
    <text:span text:style-name="T4"><xsl:apply-templates/></text:span>
</xsl:template>


<xsl:template match="tei:lem">
    <xsl:apply-templates/>
</xsl:template>

<xsl:template match="tei:app">
        <xsl:apply-templates/>
</xsl:template>

<xsl:template match="tei:rdg"/>

<xsl:template match="tei:app//tei:note"/>

<xsl:template match="tei:abbr[@corresp]">
    <xsl:variable name="cleanstr" select="substring-after(@corresp,'#')"/>
    <text:span text:style-name="T7">
        <xsl:apply-templates select="/tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:listWit/tei:witness[@xml:id=$cleanstr]/tei:abbr/node()"/>
    </text:span>
</xsl:template>

<xsl:template name="apparatus">
    <xsl:param name="notename"/>
    <text:note>
        <xsl:choose>
            <xsl:when test="$notename">
              <xsl:attribute name="text:note-class">footnote</xsl:attribute>
              <text:note-citation>
                <xsl:attribute name="text:label"><xsl:value-of select="$notename"/></xsl:attribute>
                <xsl:value-of select="$notename"/>
              </text:note-citation>
            </xsl:when>
            <xsl:otherwise>
                <xsl:attribute name="text:note-class">critnote2</xsl:attribute>
            </xsl:otherwise>
        </xsl:choose>
        <text:note-body><text:p text:style-name="P1">
        <xsl:for-each select=".//tei:app">
            <xsl:call-template name="lemma"/>
            <xsl:for-each select="tei:rdg">
                <xsl:call-template name="reading"/>
                <xsl:choose>
                    <xsl:when test="position() != last()">
                        <xsl:text>; </xsl:text>
                    </xsl:when>
                    <xsl:otherwise><xsl:text>. </xsl:text></xsl:otherwise>
                </xsl:choose>
            </xsl:for-each>
            <xsl:for-each select="tei:note">
                <text:span text:style-name="T5">
                    <xsl:apply-templates select="./node()"/>
                    <xsl:text> </xsl:text>
                </text:span>
            </xsl:for-each>
        </xsl:for-each>
    </text:p></text:note-body></text:note>
</xsl:template>

<xsl:template name="lemma">
    <xsl:if test="tei:lem">
        <text:span text:style-name="T1">
            <xsl:apply-templates select="tei:lem/node()"/>
            <xsl:text>] </xsl:text>
        </text:span>
    </xsl:if>
    <xsl:if test="tei:lem/@wit">
        <xsl:call-template name="splitwit">
            <xsl:with-param name="mss" select="tei:lem/@wit"/>
        </xsl:call-template>
        <xsl:text>; </xsl:text>
    </xsl:if>
</xsl:template>

<xsl:template name="reading">
        <xsl:apply-templates select="./node()"/>
        <xsl:text> </xsl:text>
        <xsl:call-template name="splitwit"/>
</xsl:template>

<xsl:template match="tei:q">
    <xsl:text>‘</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>’</xsl:text>
</xsl:template>

<xsl:variable name="whitespaceCharacters" select="'&#09;&#10;&#13; '" />
<xsl:template name="TrimRight">
    <xsl:param name="input" />
    <xsl:param name="trim" select="$whitespaceCharacters" />

    <xsl:variable name="length" select="string-length($input)" />
    <xsl:if test="string-length($input) &gt; 0">
        <xsl:choose>
            <xsl:when test="contains($trim, substring($input, $length, 1))">
                <xsl:call-template name="TrimRight">
                    <xsl:with-param name="input" select="substring($input, 1, $length - 1)" />
                    <xsl:with-param name="trim" select="$trim" />
                </xsl:call-template>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="$input" />
            </xsl:otherwise>
        </xsl:choose>
    </xsl:if>
</xsl:template>
</xsl:stylesheet>
