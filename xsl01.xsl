<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3c.org/1999/XSL/Transform">
    <xsl:output method="html"/>
    <xsl:templete match="/languageGroup">
        <html>
            <body>
              <h2>프로그래밍 언어 학습</h2>
              <table border="1" cellspacing="0" cellpadding="10">
                  <tr>
                      <th>이름</th><th>종류</th><th>개발자</th>
                      <th>숙련도</th>
                  </tr>
                <xsl:for-each select="languageGroup/language"> 
                  <tr>
                      <td>
                          <xsl:value-of select="name"/>
                      </td>
                      <td>
                          <xsl:value-of select="category"/>
                      </td>
                      <td>
                          <xsl:value-of select="developer"/>
                      </td>
                      <td>
                          <xsl:value-of select="rank"/>
                      </td>    
                  </tr>
                </xsl:for-each>  
              </table>  
            </body>
        </html>
    </xsl:templete>
</xsl:stylesheet>