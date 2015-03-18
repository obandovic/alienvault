-- Cyberoam UTM
-- plugin_id: 10091
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 3/18/2015


DELETE FROM software_cpe where plugin = 'cyberoam:10091';

DELETE FROM plugin WHERE id = "10091";
DELETE FROM plugin_sid where plugin_id = "10091";


INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:Cyberoam:Firewall:-', 'Cyberoam UTM','-','Cyberoam UTM','Cyberoam', 'cyberoam:10091');

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (10091, 1, 'Cyberoam UTM', 'Cyberoam UTM');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (10091, 1001, 3, NULL, 'Cyberoam Content Filtering');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (10091, 1002, 3, NULL, 'Cyberoam Firewall Event');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (10091, 1003, 3, NULL, 'Cyberoam IDP Event');
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name) VALUES (10091, 1004, 3, NULL, 'Cyberoam Generic Event');

