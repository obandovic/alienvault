-- MySql Server
-- plugin_id: 9201
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 3/27/2015


DELETE FROM plugin WHERE id = '9201';
DELETE FROM plugin_sid WHERE plugin_id = '9201';

INSERT IGNORE INTO plugin (id, type, name, description, vendor) VALUES (9201, 1, ‘MySQLServer', 'MySQL Server', 'Oracle');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9201, 1, NULL, NULL, 'MySQL Server Event');