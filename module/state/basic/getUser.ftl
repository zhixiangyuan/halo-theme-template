// 获取博主信息
{
    // 主键
    id: "${(user.id)!''}",
    // 用户名，用于在页面上显示
    username: "${((user.username)!'')?replace('\"','\\\"' )}",
    // 昵称
    nickname: "${((user.nickname)!'')?replace('\"','\\\"' )}",
    // 邮箱地址
    email: "${((user.email)!'')?replace('\"','\\\"' )}",
    // 用户头像（地址)
    avatar: "${((user.avatar)!'')?replace('\"','\\\"' )}",
    // 个性签名
    description: "${((user.description)!'')?replace('\"','\\\"' )}",
    // 用户登录 token 过期时间
    expireTime: "${(user.expireTime)?string('YYYY-MM-dd HH:mm:ss')}",
    // 创建时间
    createTime: "${(user.createTime)?string('YYYY-MM-dd HH:mm:ss')}",
    // 更新时间
    updateTime: "${(user.updateTime)?string('YYYY-MM-dd HH:mm:ss')}",
}