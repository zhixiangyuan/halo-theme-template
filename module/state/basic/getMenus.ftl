// 获取菜单信息
[
    <@menuTag method="list">
        <#list menus?sort_by('priority') as menu>
            {
            icon: "${menu.icon?replace('\"','\\\"' )}",
            url: "${menu.url?replace('\"','\\\"' )}",
            target: "${menu.target?replace('\"','\\\"' )}",
            name: "${menu.name?replace('\"','\\\"' )}",
            }<#sep>,</#sep>
        </#list>
    </@menuTag>
]