-- Cyberoam UTM
-- plugin_id: 10091
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified: 3/18/2015


DELETE FROM software_cpe where plugin = 'cyberoam:10091';

DELETE FROM plugin WHERE id = "10091";
DELETE FROM plugin_sid where plugin_id = "10091";


INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:CYBEROAM:FIREWALL:-', 'UTM','UTM','CYBEROAM UTM','CYBEROAM', 'cyberoam:10091');

INSERT IGNORE INTO plugin (id, type, name, description) VALUES 
(10091, 1, 'Cyberoam UTM', 'Cyberoam UTM');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES 
(1001, 10091, NULL, NULL, 'Cyberoam Content Filtering', , ),
(1002, 10091, NULL, NULL, 'Cyberoam Firewall Event', , ),
(1003, 10091, NULL, NULL, 'Cyberoam IDP Event, , ),
(1004, 10091, NULL, NULL, 'Cyberoam Generic Event', , ),
;
