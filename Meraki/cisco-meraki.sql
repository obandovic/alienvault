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
(1695, 1, 8, 188, NULL, 'Cisco-Meraki: Flow Event'),
(1695, 2, 22, 115, NULL, 'Cisco-Meraki: Web Filter Event'),
(1695, 3, 13, 171, NULL, 'Cisco-Meraki: IDS Alert'),
(1695, 4, 10, 71,  NULL, 'Cisco-Meraki: Generic Evet'),
(1695, 5, 27, 186,  NULL, 'Cisco-Meraki: Stablished VPN Event'),
(1695, 6, 27, 186,  NULL, 'Cisco-Meraki: VPN User Event'),
(1695, 7, 27, 186,  NULL, 'Cisco-Meraki: Generic VPN Event');