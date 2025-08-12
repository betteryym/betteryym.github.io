#!/bin/bash

echo "🚀 启动Jekyll博客本地预览服务器..."
echo ""

# 检查Python3是否可用
if command -v python3 &> /dev/null; then
    echo "✅ 使用Python3启动HTTP服务器"
    echo "🌐 预览地址: http://localhost:8000/demo.html"
    echo "📁 项目地址: http://localhost:8000/"
    echo ""
    echo "按 Ctrl+C 停止服务器"
    echo ""
    python3 -m http.server 8000
elif command -v python &> /dev/null; then
    echo "✅ 使用Python启动HTTP服务器"
    echo "🌐 预览地址: http://localhost:8000/demo.html"
    echo "📁 项目地址: http://localhost:8000/"
    echo ""
    echo "按 Ctrl+C 停止服务器"
    echo ""
    python -m http.server 8000
elif command -v node &> /dev/null; then
    echo "✅ 使用Node.js启动HTTP服务器"
    echo "🌐 预览地址: http://localhost:8000/demo.html"
    echo "📁 项目地址: http://localhost:8000/"
    echo ""
    echo "按 Ctrl+C 停止服务器"
    echo ""
    npx http-server -p 8000
elif command -v php &> /dev/null; then
    echo "✅ 使用PHP启动HTTP服务器"
    echo "🌐 预览地址: http://localhost:8000/demo.html"
    echo "📁 项目地址: http://localhost:8000/"
    echo ""
    echo "按 Ctrl+C 停止服务器"
    echo ""
    php -S localhost:8000
else
    echo "❌ 未找到可用的HTTP服务器"
    echo ""
    echo "请安装以下任一工具："
    echo "  - Python3: brew install python3"
    echo "  - Node.js: brew install node"
    echo "  - PHP: brew install php"
    echo ""
    echo "或者直接在浏览器中打开 demo.html 文件"
fi
