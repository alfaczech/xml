<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="@* | node()">
      <html>
        <head>
          <title>Transformace XML do HTML</title>
          <meta charset="UTF-8" />
	      </head>
        <body>
          <p>
            <b>Version: </b>
            <xsl:value-of select="settings/game/@version"/>
          </p>
          <p>
            <b>Console: </b>
            <xsl:choose>
              <xsl:when test="settings/game/@console = 'true'">On</xsl:when>
              <xsl:otherwise>Off</xsl:otherwise>
            </xsl:choose>
          </p>
          <h2>Game settings</h2>
          <table>
            <tr>
              <td>
                userName
              </td>
              <td>
                <xsl:value-of select="settings/game/userName"/>
              </td>
            </tr>
            <tr>
              <td>
                accountGUIDEncrypted
              </td>
              <td>
                <xsl:value-of select="settings/game/accountGUIDEncrypted"/>
              </td>
            </tr>
            <td>
              lastPlayed
            </td>
            <td>
              <xsl:value-of select="settings/game/lastPlayed"/>
            </td>
            <tr>
              <td>autoUpdate</td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/game/autoUpdate/@enabled = 'true'">On</xsl:when>
                  <xsl:otherwise>Off</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>tutorial</td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/game/tutorial/@enabled = 'true'">On</xsl:when>
                  <xsl:otherwise>Off</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>autosave</td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/game/autosave/@enabled = 'true'">On</xsl:when>
                  <xsl:otherwise>Off</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>touchScreen</td>
              <td>
                  <xsl:value-of select="settings/game/touchScreen/@enabled" />
              </td>
            </tr>
          </table>
          <h3>GEOLoc</h3>
          <table>
            <tr>
              <td>
                GPS @enabled
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/game/GEOLoc/GPS/@enabled = 'true'">On</xsl:when>
                  <xsl:otherwise>Off</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>
                GPS @available
              </td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/game/GEOLoc/GPS/@available = 'true'">On</xsl:when>
                  <xsl:otherwise>Off</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>
                lastGPSPosition longitude
              </td>
              <td>               
                <xsl:value-of select="settings/game/GEOLoc/lastGPSPosition/long/@value"/>
              </td>
            </tr>
            <tr>
              <td>
                lastGPSPosition latitude
              </td>
              <td>
                <xsl:value-of select="settings/game/GEOLoc/lastGPSPosition/lat/@value"/>
              </td>
            </tr>
            <tr>
              <td>
                GEOradar radius
              </td>
              <td>
                <xsl:value-of select="settings/game/GEOLoc/GEOradar/radius/@value"/>
              </td>
            </tr>
            <tr>
              <td>
                GEOradar sensitivity
              </td>
              <td>
                <xsl:value-of select="settings/game/GEOLoc/GEOradar/sensitivity/@value"/>
              </td>
            </tr>
            <tr>
              <td>
                GEOradar radarLevel
              </td>
              <td>
                <xsl:value-of select="settings/game/GEOLoc/GEOradar/radarLevel"/>
              </td>
            </tr>
            <tr>
              <td>
                GEOradar proximityDetectorLevel
              </td>
              <td>
                <xsl:value-of select="settings/game/GEOLoc/GEOradar/proximityDetectorLevel"/>
              </td>
            </tr>
            <tr>
              <td>
                lastDevice
              </td>
              <td>
                <xsl:value-of select="settings/game/lastDevice"/>
              </td>
            </tr>
          </table>
          <h2>servers</h2>
          <table>
            <tr>
              <td>port</td>
              <td>
                <xsl:value-of select="settings/servers/port"/>
            </td>
            </tr>
            <tr>
              <td>maxping</td>
              <td>
                <xsl:value-of select="settings/servers/maxping"/>
              </td>
            </tr>
          </table>
          <h2>graphics</h2>
          <table>
            <tr>
              <td>display resolution</td>
              <td>
                <xsl:value-of select="settings/graphics/resolution"/>
              </td>
            </tr>
            <tr>
              <td>display gamma</td>
              <td>
                <xsl:value-of select="settings/graphics/gamma/@value"/>
              </td>
            </tr>
            <tr>
              <td>display brightness</td>
              <td>
                <xsl:value-of select="settings/graphics/brightness/@value"/>
              </td>
            </tr>
            <tr>
              <td>display colorblind_mode</td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/graphics/colorblind_mode/@enabled = 'true'">On</xsl:when>
                  <xsl:otherwise>Off</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>animations</td>
              <td>
                <xsl:value-of select="settings/graphics/animations"/>
              </td>
            </tr>
          </table>
          <h2>sound</h2>
          <table>
            <tr>
              <td>ingame volume</td>
              <td>
                <xsl:value-of select="settings/sound/ingame"/>
              </td>
            </tr>
            <tr>
              <td>messanger volume</td>
              <td>
                <xsl:value-of select="settings/sound/messanger"/>
              </td>
            </tr>
            <tr>
              <td>radar volume</td>
              <td>
                <xsl:value-of select="settings/sound/radar"/>
              </td>
            </tr>
          </table>
          <h2>community</h2>
          <h3>Profile</h3>
          <b>validated: </b>
          <xsl:choose>
            <xsl:when test="settings/community/profile/@validated = 'true'">Yes</xsl:when>
            <xsl:otherwise>No</xsl:otherwise>
          </xsl:choose>
          <table>
            <tr>
              <td>level</td>
              <td>
                <xsl:value-of select="settings/community/profile/level"/>
              </td>
            </tr>
            <tr>
              <td>totalHours</td>
              <td>
                <xsl:value-of select="settings/community/profile/totalHours"/>
              </td>
            </tr>
            <tr>
              <td>win</td>
              <td>
                <xsl:value-of select="settings/community/profile/win"/>
              </td>
            </tr>
            <tr>
              <td>loss</td>
              <td>
                <xsl:value-of select="settings/community/profile/loss"/>
              </td>
            </tr>
          </table>
          <h3>cardDeck</h3>
          <table>
            <tr>
              <td>maxCardCount</td>
              <td>
                <xsl:value-of select="settings/community/cardDeck/maxCardCount"/>
              </td>
            </tr>
            <tr>
              <td>trading</td>
              <td>
                <xsl:choose>
                  <xsl:when test="settings/community/cardDeck/trading/@enabled = 'true'">On</xsl:when>
                  <xsl:otherwise>OFF</xsl:otherwise>
                </xsl:choose>
              </td>
            </tr>
            <tr>
              <td>last trade</td>
              <td>
                <xsl:value-of select="settings/community/cardDeck/trading/@lastTrade"/>
              </td>
            </tr>
          </table>
        </body>
      </html>
    </xsl:template>
</xsl:stylesheet>
