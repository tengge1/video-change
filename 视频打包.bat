@echo off

::视频文件名处理
set path=%1
set disk=%~d1
set dir=%~p1
set name=%~n1
set ext=%~x1
set new_path=%disk%%dir%%name%_%ext%

::要打包的txt文件
set txt_disk=%~d0
set txt_dir=%~p0
set txt_path=%txt_disk%%txt_dir%使用说明.txt

::将视频文件与txt文件打包
copy /b %path%+%txt_path% %new_path%
