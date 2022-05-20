DROP TABLE IF EXISTS `file_info`;
CREATE TABLE `file_info` (
                        `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件id',
                        `filename` varchar(512) DEFAULT NULL COMMENT '文件名称',
                        `total_size`  bigint(20) DEFAULT NULL COMMENT '文件大小',
                        `identifier` varchar(32) DEFAULT NULL COMMENT 'md5标识',
                        `type` varchar(128) DEFAULT NULL COMMENT '类型',
                        `location` varchar(128) DEFAULT NULL COMMENT '文件url',
                        PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;



DROP TABLE IF EXISTS `chunk`;
CREATE TABLE `chunk` (
                             `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '分片id',
                             `chunk_number` int DEFAULT NULL COMMENT '当前文件块，从1开始',
                             `chunk_size`  bigint(20) DEFAULT NULL COMMENT '分块大小',
                             `current_chunk_size` bigint(20) DEFAULT NULL COMMENT '当前分块大小',
                             `total_size`  bigint(20) DEFAULT NULL COMMENT '总大小',
                             `identifier` varchar(32) DEFAULT NULL COMMENT 'md5标识',
                             `filename` varchar(512) DEFAULT NULL COMMENT '文件名称',
                             `relative_path` varchar(512) DEFAULT NULL COMMENT '相对路径',
                             `total_chunks`  bigint(20) DEFAULT NULL COMMENT '总块数',
                             `type` varchar(128) DEFAULT NULL COMMENT '类型',
                             PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;