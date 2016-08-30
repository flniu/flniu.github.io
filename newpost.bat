@echo off
if .%1==. (
    echo %0 post_file_name
    goto :EOF
)
set post_file_name=_posts\%DATE:~0,4%-%DATE:~5,2%-%DATE:~8,2%-%1.md
echo newpost: %post_file_name%
gvim.bat -c "0r $TEMPLATE/jekyll-post.md" %post_file_name%
