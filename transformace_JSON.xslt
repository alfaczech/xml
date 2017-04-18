<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="text"/>

    <xsl:template match="@* | node()">
        {
          <xsl:for-each select="settings">
            "settings":{
              <xsl:for-each select="game">
                "game":{
                  "-version":<xsl:value-of select="@version"/>,
                  "-console":<xsl:value-of select="@console"/>,
                  "userName":<xsl:value-of select="userName"/>,
                  "accountGUIDEncrypted":<xsl:value-of select="accountGUIDEncrypted"/>,
                  "lastPlayed":<xsl:value-of select="lastPlayed"/>,
                  "autoUpdate":<xsl:value-of select="autoUpdate/@enabled"/>,
                  "tutorial":<xsl:value-of select="tutorial/@enabled"/>,
                  "autosave":<xsl:value-of select="autosave/@enabled"/>,
                  "touchScreen":<xsl:value-of select="touchScreen/@enabled"/>,
                  <xsl:for-each select="GEOLoc">
                  "GEOLoc":{
                    "GPS":{
                      "-available":<xsl:value-of select="GPS/@available"/>,
                      "-enabled":<xsl:value-of select="GPS/@enabled"/>
                    },
                    "lastGPSPosition":{
                      "long":<xsl:value-of select="lastGPSPosition/long/@value"/>,
                      "lat":<xsl:value-of select="lastGPSPosition/lat/@value"/>
                      }
                    },
                    "GEOradar":{
                      "radius":<xsl:value-of select="GEOradar/radius/@value"/>,
                      "sensitivity":<xsl:value-of select="GEOradar/sensitivity/@value"/>,
                      "radarLevel":<xsl:value-of select="GEOradar/radarLevel"/>,
                      "proximityDetectorLevel":<xsl:value-of select="GEOradar/proximityDetectorLevel"/>
                    }
                  }</xsl:for-each>,
                  "lastDevice":<xsl:value-of select="lastDevice"/>
                }
              </xsl:for-each>,
              <xsl:for-each select="servers">
                "servers":{
                  <xsl:for-each select="name">
                    "name":
                    {
                    "-type": <xsl:value-of select="name/@type"/>,
                    "-connectivity": <xsl:value-of select="name/@connectivity"/>,
                    "-visible": <xsl:value-of select="name/@visible"/>,
                    "#text": <xsl:value-of select="name"/>
                    }
                  </xsl:for-each>,
                  "port": <xsl:value-of select="port"/>,
                  "maxping": <xsl:value-of select="maxping"/>
                }
              </xsl:for-each>,
              <xsl:for-each select="graphics">
                "graphics": {
                  "display": {
                    "resolution": <xsl:value-of select="display/resolution"/>,
                    "gamma":<xsl:value-of select="display/gamma/@value"/>,
                    "brightness":<xsl:value-of select="display/brightness/@value"/>,
                    "colorblind_mode":<xsl:value-of select="display/colorblind_mode/@enabled"/>
                  },
                "animations": <xsl:value-of select="animations"/>
                }
              </xsl:for-each>,
              <xsl:for-each select="sound">
                "sound": {
                  "volumeLevels": {
                    "ingame": <xsl:value-of select="ingame"/>,
                    "messanger": <xsl:value-of select="messanger"/>,
                    "radar": <xsl:value-of select="radar"/>
                  }
                }
              </xsl:for-each>,
              <xsl:for-each select="community">
                "community": {
                  "profile": {
                    "-validated": <xsl:value-of select="profile/@validated"/>,
                    "level": <xsl:value-of select="profile/level"/>,
                    "totalHours":<xsl:value-of select="profile/totalHours"/>,
                    "win": <xsl:value-of select="profile/win"/>,
                    "loss":<xsl:value-of select="profile/loss"/>,
                  },
                  "cardDeck": {
                    "maxCardCount":<xsl:value-of select="cardDeck/maxCardCount/@value"/>,
                    "trading": {
                      "-enabled": <xsl:value-of select="cardDeck/trading/@enabled"/>,
                      "-lastTrade": <xsl:value-of select="cardDeck/trading/@lastTrade"/>,
                    }
                  }
                }
              </xsl:for-each>,
            }
          </xsl:for-each>
        }
    </xsl:template>
</xsl:stylesheet>