-- [NAME]
-- plugin_id: [PLUGIN ID]
-- Author: VICTOR OBANDO
-- www.alienvault.com
-- Last Modified:


--FOR WEB UI PLUGIN ACCESS
DELETE FROM software_cpe where plugin = 'VENDOR:PLUGINID';

--CLEANUP EXISTING PLUGIN DATA
DELETE FROM plugin WHERE id = "PLUGIN ID";
DELETE FROM plugin_sid where plugin_id = "PLUGIN ID";


-- INSERT NEW CPE : PLUGIN DATA FOR ASSET/PLUGIN WEB UI
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:VENDOR:DEVICE:-', 'DEVICE','VERSION OR DEVICE_MODEL','FULL VERDOR DEVICE NAME','VENDOR', 'VENDOR:PLUGINID');

--PLUGIN CONTENT - PLUGIN ID AND DESCRIPTION
INSERT IGNORE INTO plugin (id, type, name, description) VALUES 
([PLUGIN ID], 1, 'PLUGIN NAME', 'PLUGIN DESCRIPTION');

--PLUGIN SID CONTENT - MULTIPLE TRANSLATIONS.
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, class_id, name, priority, reliability) VALUES 
(, , NULL, NULL, 'EVENT NAME', , ),

;
