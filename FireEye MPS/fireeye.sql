-- fireeye
-- plugin_id: 9254
--
DELETE IGNORE FROM plugin WHERE id = "9254";
DELETE IGNORE FROM plugin_sid where plugin_id = "9254";
DELETE IGNORE FROM software_cpe WHERE plugin LIKE '%:9254';

INSERT IGNORE INTO plugin (id, type, product_type, name, description) VALUES (9254, 1, 25, 'fireeye', 'FireEye MPS');
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/a:custom:fireeye:-', 'FireEye MPS', '-', 'Custom FireEye MPS -', 'Custom', 'fireeye:9254');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 1, 12, 97, NULL, 3, 1, 'fireeye: binary-analysis');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 2, 7, 57, NULL, 3, 1, 'fireeye: domain-match');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 3, 4, 96, NULL, 3, 1, 'fireeye: infection-match');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 4, 12, 97, NULL, 3, 2, 'fireeye: mw-analysis-done');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 5, 4, 41, NULL, 5, 4, 'fireeye: malware-callback');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 6, 4, 96, NULL, 5, 2, 'fireeye: malware-object');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 7, 7, 53, NULL, 5, 2, 'fireeye: web-infection');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, reliability, priority, name) VALUES (9254, 2000000000, 4, 40, NULL, 3, 2, 'fireeye: Generic event');
