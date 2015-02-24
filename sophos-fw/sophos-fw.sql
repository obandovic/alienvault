-- plugin_id:  9100
-- type: ;; type: detector
-- description: 

DELETE FROM plugin where id = 9100;
DELETE FROM plugin_sid where plugin_id = 9100;

INSERT IGNORE INTO plugin(id, type, name, description) VALUES
  (9100, 1, 'Sophos Firewall', 'Sophos Firewall');

INSERT IGNORE INTO plugin_sid (plugin_id, sid, name, priority, reliability)
  VALUES
    (9100, 0001, 'Sophos: HTTP Proxy pass', 2, 2),
    (9100, 0002, 'Sophos: HTTP Proxy deny', 2, 2),
    (9100, 2000, 'Sophos: Teardown/Log', 2, 2),
    (9100, 2001, 'Sophos: Drop', 2, 2),
    (9100, 2002, 'Sophos: Accept', 2, 2),
    (9100, 2005, 'Sophos: IP Spoofing drop', 2, 2),
    (9100, 2101, 'Sophos: IPS drop', 2, 2),
    (9100, 2102, 'Sophos: IPS Portscan detected', 2, 2),
    (9100, 2103, 'Sophos: IPS SYN Flood detected', 2, 2),
    (9100, 2105, 'Sophos: IPS UDP Flood detected', 2, 2),
    (9100, 3004, 'Sophos: Authentication successful', 2, 2),
    (9100, 3005, 'Sophos: Authentication failed', 2, 2),
    (9100, 3006, 'Sophos: Authentication debug message', 2, 2),
    (9100, 31010, 'Sophos: Config change', 2, 2),
    (9100, 31011, 'Sophos: Config change', 2, 2),
    (9100, 31012, 'Sophos: Config change', 2, 2),
    (9100, 31013, 'Sophos: Config change', 2, 2)
;
