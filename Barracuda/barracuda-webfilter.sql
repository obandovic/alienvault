-- barracuda-webfilter
-- Plugin Barracuda Web Filter id:9005
-- Author: Yann Chalençon
-- Company: Wizlynx Group AG - www.wizlynxgroup.com
-- Last modification: 2013-08-30

DELETE FROM plugin WHERE id = "9005";
DELETE FROM plugin_sid where plugin_id = "9005";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (9005, 1, 'barracuda-webfilter', 'Cuda-WebFilter');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 10, NULL, NULL, "Cuda WebFilter: Allowed", 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 11, NULL, NULL, "Cuda WebFilter: Blocked by Policy", 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 12, NULL, NULL, "Cuda WebFilter: Virus", 3, 4);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 13, NULL, NULL, "Cuda WebFilter: Spyware", 3, 4);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9005, 14, NULL, NULL, "Cuda WebFilter: Detected", 1, 1);
