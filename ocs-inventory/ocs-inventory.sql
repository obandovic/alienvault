-- MySql server
-- plugin_id: 9205
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 8/17/2015

DELETE FROM plugin WHERE id = '9205';
DELETE FROM plugin_sid where plugin_id = '9205';


INSERT IGNORE INTO plugin (id, type, name, description, vendor) VALUES (9205, 1, 'Software Inventory', 'Sofware Inventory', 'OCS');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9205, 100, NULL, NULL, 'Alienvault - Software Inventory:');