// 获取分类信息
[
    <#if (post.categories)?? && post.categories?size gt 0>
        <#list post.categories as category>
            {
                // 分类主键
                id: ${(category.id)!''},
                // 分类名称
                name: "${(category.name)!''?replace('\"','\\\"' )}",
                // 分类描述
                description: "${(category.description)!''?replace('\"','\\\"' )}",
                // 分类全路径
                fullPath: "${(category.fullPath)!''?replace('\"','\\\"' )}"<#sep>,</#sep>
            }<#sep>,</#sep>
        </#list>
    </#if>
]
