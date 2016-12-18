#!/bin/bash

if [ ! -n "$1" ]; then
  echo $0 post_file_name
  exit
fi

post_file_name=$*
post_file_name=${post_file_name// /-}
post_file_name=_posts/$(date +"%Y-%m-%d")-$post_file_name.md
echo newpost: $post_file_name
gvim -c "0r _templates/post.md" -c "%s/date: \zs/\=strftime('%Y-%m-%d %H:%M:%S')/" $post_file_name
