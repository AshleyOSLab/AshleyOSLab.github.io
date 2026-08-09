<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <xsl:template match="/sitemap:urlset">
    <html>
      <head>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Site Map · Compound Life OS</title>
        <style>
          * { margin: 0; padding: 0; box-sizing: border-box; }
          body { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif; background: #fafafa; color: #222; max-width: 720px; margin: 0 auto; padding: 40px 24px; }
          h1 { font-size: 1.4rem; margin-bottom: 24px; }
          table { width: 100%; border-collapse: collapse; background: #fff; border-radius: 8px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.06); }
          th { text-align: left; padding: 14px 20px; background: #f5f5f5; font-size: 0.85rem; color: #666; }
          td { padding: 12px 20px; border-top: 1px solid #f0f0f0; font-size: 0.9rem; }
          td a { color: #222; text-decoration: none; }
          td a:hover { text-decoration: underline; }
          td.date { color: #999; font-size: 0.85rem; white-space: nowrap; }
          .footer { margin-top: 32px; color: #999; font-size: 0.85rem; }
        </style>
      </head>
      <body>
        <h1>Site Map</h1>
        <table>
          <tr><th>URL</th><th>Last Modified</th></tr>
          <xsl:for-each select="sitemap:url">
            <tr>
              <td><a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a></td>
              <td class="date"><xsl:value-of select="substring(sitemap:lastmod, 0, 11)"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <div class="footer">
          <p>This sitemap is for search engines. Humans, visit the <a href="/">homepage</a>.</p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
