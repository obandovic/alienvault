-- Cisco-Meraki
-- Cisco-Meraki Syslog Format for Cisco Meraki
-- plugin_id: 1695
--
-- Please, check Cisco Meraki Syslog Format documentation:
--   https://kb.meraki.com/knowledge_base/syslog-server-overview-and-configuration

DELETE FROM plugin WHERE id = "1695";
DELETE FROM plugin_sid where plugin_id = "1695";
DELETE FROM software_cpe where plugin = 'cisco-meraki:1695';

INSERT INTO plugin (id, type, name, description, product_type) VALUES (1695, 1, 'cisco-meraki', 'Cisco Meraki', 30);
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:Cisco:Meraki:-', 'Cisco Meraki','-','Cisco Meraki','Cisco', 'cisco-meraki:1695');


INSERT INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, name) VALUES
(1695, 1, 8, 188, NULL, 'Cisco-Meraki: flow log message'),
(1695, 2, 8, 188, NULL, 'Cisco-Meraki: url log message'),
(1695, 3, 15, 171, NULL, 'Cisco-Meraki: ids alert'),
(1695, 4, 10, 71,  NULL, 'Cisco-Meraki: event log');