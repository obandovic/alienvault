-- USB DEVICE DETECTION
-- plugin_id: 9271
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 11/19/15


DELETE FROM plugin WHERE id = "9271";
DELETE FROM plugin_sid where plugin_id = "9271";


INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9271, 1, 'USB DEVICES', 'USB STORAGE DEVICE ACTIVITY', 20, 'ALIENVAULT');


INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, name, priority, reliability) VALUES (9271, 100051, 11, 138, 'USB STORAGE DEVICE ACTIVITY', 5, 5);