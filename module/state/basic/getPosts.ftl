// 归档分页信息
{
    <#if posts?? && posts.getTotalElements() gt 0>
        // 总文章数
        total: ${posts.getTotalElements()},
        // 当前页文章内容，当前页文章数通过 contents.length 获取
        contents: [
            <#list posts.content as post>
                <#include "getPost.ftl"><#sep>,</#sep>
            </#list>
        ]
    </#if>
}


