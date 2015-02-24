-- sophos
-- plugin_id: 100001

DELETE FROM plugin WHERE id = "100001";
DELETE FROM plugin_sid where plugin_id = "100001";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (100001, 1, 'sophos-utm', 'Sophos UTM');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (100001, 1001, NULL, NULL, 'Sophos-utm: HTTP access');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (100001, 1002, NULL, NULL, 'Sophos-utm: Packet dropped');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (100001, 1003, NULL, NULL, 'Sophos-utm: Named event');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (100001, 99, NULL, NULL, 'Sophos-utm: Event collected');
