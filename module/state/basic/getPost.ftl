// 获取单篇文章信息
{
    // 文章主键
    id: "${(post.id)!''}",
    // 文章标题
    title: "${((post.title)!'')?replace('\"','\\\"' )}",
    // 文章状态
    status: "${(post.status)!''}",
    // 文章路径，todo 不知道为什么，这里获取到的 url 是空的
    url: "${((post.url)!'')?replace('\"','\\\"' )}",
    // markdown 格式内容，这里注意，需要四个斜杠
    originalContent: "${((post.originalContent)!'')?html?replace('\n', '\\\\n', 'r')}",
    // html 格式内容
    formatContent: "",
    // 文章摘要
    summary: "${((post.summary)!'')?replace('\"','\\\"' )}",
    // 缩略图
    thumbnail: "${((post.thumbnail)!'')?replace('\"','\\\"' )}",
    // 是否禁止评论
    disallowComment: "${((post.disallowComment)!false)?string('true', 'false')}" === "true",
    // 自定义模版
    template: "",
    // 排序
    topPriority: "${(post.topPriority)!'0'}",
    // 访问次数
    visits: "${((post.visits)!'')?replace('\"','\\\"' )}",
    // 评论数
    commentCount: "${((post.commentCount)!'')?replace('\"','\\\"' )}",
    // 文章字数
    wordCount: "${(post.wordCount)!'0'}",
    // 点赞数
    likes: "${(post.likes)!'0'}",
    // 文章所属目录
    categories: <#include "./getPostCategories.ftl">,
    // 文章所属标签
    tags: [],
    // 创建时间
    createTime: "${((post.createTime)!.now)?string('YYYY-MM-dd HH:mm:ss')}",
    // 更新时间
    updateTime: "${((post.updateTime)!.now)?string('YYYY-MM-dd HH:mm:ss')}",
    // 最后编辑时间
    editTime: "${((post.editTime)!.now)?string('YYYY-MM-dd HH:mm:ss')}",
}