-- MySql Server
-- plugin_id: 9201
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 4/14/2015

DELETE FROM plugin WHERE id = '9201';
DELETE FROM plugin_sid where plugin_id = '9201';


INSERT IGNORE INTO plugin (id, type, name, description, vendor) VALUES (9201, 1, 'MySql', 'MySql Database', 'Oracle');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9201, 100, NULL, NULL, 'MySql Server: UPDATE Command Executed');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9201, 101, NULL, NULL, 'MySql Server: INSERT Command Executed');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9201, 102, NULL, NULL, 'MySql Server: DELETE Command Executed');
