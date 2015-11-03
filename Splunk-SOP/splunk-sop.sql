DELETE FROM plugin WHERE id = "90016";
DELETE FROM plugin_sid where plugin_id = "90016";

INSERT IGNORE INTO plugin (id, type, name, description) VALUES (90016, 1, 'splunk-sop', 'Splunk SOP');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, name, priority, reliability) VALUES
(90016, 100, 'Splunk: Notable Failed Logins', 5, 5),
(90016, 9999, 'Splunk: Unknown SOP', 5, 5)