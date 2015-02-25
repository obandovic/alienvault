-- [NAME]
-- plugin_id: [PLUGIN ID]
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified:

DELETE FROM plugin WHERE id = "PLUGIN ID";
DELETE FROM plugin_sid where plugin_id = "PLUGIN ID";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES 
([PLUGIN ID], 1, 'PLUGIN NAME', 'PLUGIN DESCRIPTION');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES 
(, , NULL, NULL, 'EVENT NAME', , ),

;
