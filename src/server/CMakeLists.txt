# 定义了SRC_LIST变量，包含了目录下所有文件
aux_source_directory(. SRC_LIST)
aux_source_directory(./db DB_LIST)
aux_source_directory(./model MODEL_LIST)
aux_source_directory(./redis REDIS_LIST)

# 指定库目录
link_directories(/usr/lib64/mysql/)

# 指定生成可执行文件
add_executable(ChatServer ${SRC_LIST} ${DB_LIST} ${MODEL_LIST} ${REDIS_LIST})

# 指定链接的库
target_link_libraries(ChatServer muduo_net muduo_base mysqlclient hiredis pthread)