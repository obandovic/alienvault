-- [Linux IPTables]
-- plugin_id: [9205]
-- Author:Victor Obando
-- www.alienvault.com
-- Last Modified:


DELETE FROM software_cpe where plugin = 'linux_iptables:9205';
DELETE FROM plugin WHERE id = "9205";
DELETE FROM plugin_sid where plugin_id = "9205";

INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:IPTables:IPTables:-', 'Linux IP tables','-','IPTables Firewall logs','IPTables', 'linux_iptables:9205');
INSERT IGNORE INTO plugin (id, type, name, description, product_type, vendor) VALUES (9205, 411, 'IPTables', 'IPTables Firewall logs', 10, 'IPTables');


-- PLUGIN SID CONTENT - MULTIPLE TRANSLATIONS.
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9205, 1, 3, NULL, 'IPTable FIREWALL Accept', 1, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9205, 2, 3, NULL, 'IPTable FIREWALL Drop', 2, 1);
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES (9205, 3, 3, NULL, 'IPTable FIREWALL Reject', 2, 1);

