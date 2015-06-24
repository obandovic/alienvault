-- Juniper-SRX
-- plugin_id: 9510

DELETE FROM plugin WHERE id = "9510";
DELETE FROM plugin_sid where plugin_id = "9510";
DELETE FROM software_cpe where plugin = 'JuniperSRX:9510';


INSERT IGNORE INTO `plugin` (`id` , `type` , `name` , `description` , `vendor`) VALUES (
'9510', '1', 'Juniper-SRX', 'Juniper-SRX Router/Firewall/IDS/IPS', 'Juniper'
);
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:Juniper:Juniper-SRX:-', 'Juniper SRX','-','Juniper SRX FW','Juniper', 'JuniperSRX:9510');


INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `reliability`, `priority`, `name`) VALUES
(9510, 10, 1, 2, 'Juniper-SRX: RT_FLOW: A security session was not permitted by policy'),
(9510, 11, 1, 1, 'Juniper-SRX: RT_FLOW: A security session was created'),
(9510, 12, 1, 1, 'Juniper-SRX: RT_FLOW: A security session was closed'),
(9510, 13, 1, 1, 'Juniper-SRX: FLOW: A log was generated when the reassemble succeeded'),
(9510, 14, 1, 1, 'Juniper-SRX: FLOW: A log was generated when an FCB age out occurred before all fragments arrived'),
(9510, 15, 2, 2, 'Juniper-SRX: RT_FLOW: Apptrack volume update'),
(9510, 20, 1, 1, 'Juniper-SRX: KMD: PM P2 POLICY LOOKUP FAILURE'),
(9510, 30, 1, 1, 'Juniper-SRX: KERNEL: MAC ADDRESS CHANGE'),
(9510, 40, 1, 3, 'Juniper-SRX: RT_IDS: RT SCREEN TCP'),
(9510, 41, 1, 3, 'Juniper-SRX: RT_IDS: IP attack category'),
(9510, 42, 1, 3, 'Juniper-SRX: RT_IDP: Attack log event'),
(9510, 51, 1, 1, 'Juniper-SRX: MGD: UI AUTH EVENT'),
(9510, 52, 1, 1, 'Juniper-SRX: MGD: UI LOGIN EVENT'),
(9510, 53, 1, 1, 'Juniper-SRX: MGD: UI CMDLINE READ LINE'),
(9510, 60, 1, 1, 'Juniper-SRX: RT_IPSEC: BAD SPI'),
(9510, 71, 1, 1, 'Juniper-SRX: RT_UTM: A web request is permitted'),
(9510, 72, 1, 1, 'Juniper-SRX: RT_UTM: A web request is blocked'),
(9510, 80, 1, 1, 'Juniper-SRX: PERF_MON: PFE cpu usage okay'),
(9510, 81, 1, 1, 'Juniper-SRX: PERF_MON: PFE cpu threshold exceeded'),
(9510, 90, 1, 1, 'Juniper-SRX: GENERIC_MESSAGE: Watchdog strobe');