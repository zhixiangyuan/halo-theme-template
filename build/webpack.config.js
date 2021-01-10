'use strict'
const path = require('path');
const VueLoaderPlugin = require('vue-loader/lib/plugin')

module.exports = {
		entry: './src/main.js',
		output: {
				filename: 'main.js',
				path: path.resolve(__dirname, '../dist'),
		},
		module: {
				// 用于对文件进行预处理
				rules: [
						// 经过 vue-loader 来识别以 vue 结尾的文件
						{
								test: /\.vue$/,
								use: 'vue-loader'
						},
						// 它会应用到普通的 `.js` 文件
						// 以及 `.vue` 文件中的 `<script>` 块
						{
								test: /\.js$/,
								loader: 'babel-loader'
						},
						{
								test: /\.css$/,
								use: [
										// 用于处理 .vue 文件内的 style 标签
										'style-loader',
										// 用于处理由外部倒入的 css
										'css-loader'
								]
						},
						//处理图片文件
						{
								test: /\.(gif|jpg|jpeg|png|svg)$/ ,
								use: [
										{
												loader: 'url-loader',
												options: {
														// 将全部小于 1kb 的图片都转为 base64 形式
														limit: 1024 * 20,
														name: '[name].[ext]'
												}
										},
								]
						}
				]
		},
		plugins: [
				// 这个插件的职责是将你定义过的其它规则复制并应用到 .vue 文件里相应语言的块
				new VueLoaderPlugin()
		],


};