<script>
		window.data = {

				blogTitle: "${blog_title?replace('\"','\\\"' )}",
				blogUrl: "${blog_url?replace('\"','\\\"' )}",
				rssUrl: "${rss_url?replace('\"','\\\"' )}",

				sitMapXmlUrl: "${sitemap_xml_url?replace('\"','\\\"' )}",
				siteMapHtmlUrl: "${sitemap_html_url?replace('\"','\\\"' )}",

				journalsUrl: "${journals_url?replace('\"','\\\"' )}",
				tagsUrl: "${tags_url?replace('\"','\\\"' )}",
				archivesUrl: "${archives_url?replace('\"','\\\"' )}",
				linksUrl: "${links_url?replace('\"','\\\"' )}",

				seoDescription: "${seo_description?replace('\"','\\\"' )}",
				seoKeywords: "${seo_keywords?replace('\"','\\\"' )}",
				version: "${version?replace('\"','\\\"' )}",

				themeBasePath: "${theme_base!}",

				menus: <#include "./basic/getMenus.ftl">,
				user: <#include "./basic/getUser.ftl">,

				// 主题信息
				theme: {
						// 主题名称
						name: "${(theme.name!'')?replace('\"','\\\"' )}",
				},

				settings: {
						navbar: "${((settings.navbar)!'')?replace('\"','\\\"' )}",
						// 备案号
						icp: "${(settings.icp!'')?replace('\"','\\\"' )}",
				}
		}
</script>





