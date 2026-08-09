<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:atom="http://www.w3.org/2005/Atom">
  <xsl:template match="/rss/channel">
    <html>
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title><xsl:value-of select="title"/> · RSS</title>
        <style>
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; background: #fafafa; color: #222; max-width: 720px; margin: 0 auto; padding: 40px 24px; }
          h1 { font-size: 1.6rem; margin-bottom: 4px; }
          .desc { color: #666; margin-bottom: 32px; font-size: 0.95rem; }
          .item { background: #fff; border-radius: 8px; padding: 24px; margin-bottom: 16px; box-shadow: 0 1px 3px rgba(0,0,0,0.06); }
          .item h2 { font-size: 1.15rem; margin-bottom: 8px; }
          .item h2 a { color: #222; text-decoration: none; }
          .item h2 a:hover { text-decoration: underline; }
          .item .date { color: #999; font-size: 0.85rem; margin-bottom: 8px; }
          .item .desc { color: #444; font-size: 0.95rem; line-height: 1.6; margin-bottom: 12px; }
          .item .tags { display: flex; flex-wrap: wrap; gap: 6px; }
          .item .tag { background: #f0f0f0; color: #666; font-size: 0.8rem; padding: 2px 10px; border-radius: 12px; }
          .footer { margin-top: 40px; padding-top: 20px; border-top: 1px solid #e0e0e0; color: #999; font-size: 0.85rem; }
          .footer a { color: #666; }
        </style>
      </head>
      <body>
        <h1><xsl:value-of select="title"/></h1>
        <p class="desc"><xsl:value-of select="description"/></p>
        <xsl:for-each select="item">
          <div class="item">
            <h2><a href="{link}"><xsl:value-of select="title"/></a></h2>
            <p class="date"><xsl:value-of select="substring(pubDate, 0, 17)"/></p>
            <p class="desc"><xsl:value-of select="description"/></p>
            <div class="tags">
              <xsl:for-each select="category">
                <span class="tag"><xsl:value-of select="."/></span>
              </xsl:for-each>
            </div>
          </div>
        </xsl:for-each>
        <div class="footer">
          <p>This is an <a href="{link}">RSS feed</a>. Subscribe with your favorite RSS reader.</p>
          <p>Updated: <xsl:value-of select="lastBuildDate"/></p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
