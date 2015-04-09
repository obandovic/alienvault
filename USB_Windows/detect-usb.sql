-- WMI USB Device Detection
-- plugin_id: 9205
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 3/31/2015

DELETE FROM plugin WHERE id = '9205';
DELETE FROM plugin_sid WHERE plugin_id = '9205';

INSERT IGNORE INTO plugin (id, type, name, description, vendor) VALUES (9201, 1, 'USB Device Detected', 'USM Device Detected', 'Microsoft');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (9205, 1, NULL, NULL, 'New USB Device Detected');