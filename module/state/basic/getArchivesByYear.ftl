// 获取归档页信息，需要注意的是，这里获取到的是全部年份的文章
[
    <@postTag method="archiveYear">
        <#list archives as archive>
            <#list archive.posts?sort_by("createTime")?reverse as post>
                {
                    year: ${archive.year?c},
                    fullPath: "${(post.fullPath!'')?replace('\"','\\\"' )}",
                    title: "${(post.title!'')?replace('\"',"\\\"")}",
                    createTime: "${post.createTime?string('YYYY-MM-dd HH:mm:ss')}"
                },
            </#list>
        </#list>
    </@postTag>
]