-- juniper-srx
-- plugin_id: 1626

DELETE FROM plugin WHERE id = "1626";
DELETE FROM plugin_sid where plugin_id = "1626";
DELETE FROM software_cpe where plugin = 'JuniperSRX:1626';


INSERT IGNORE INTO `plugin` (`id` , `type` , `name` , `description` , `vendor`) VALUES (
'1626', '1', 'juniper-srx', 'Juniper-SRX Router/Firewall/IDS/IPS', 'Juniper'
);
INSERT IGNORE INTO software_cpe (cpe, name, version, line, vendor, plugin) VALUES ('cpe:/o:Juniper:Juniper-SRX:-', 'Juniper SRX','-','Juniper SRX','Juniper', 'JuniperSRX:1626');


INSERT IGNORE INTO `plugin_sid` (`plugin_id`, `sid`, `reliability`, `priority`, `name`) VALUES
(1626, 10, 1, 2, 'Juniper-SRX: RT_FLOW: A security session was not permitted by policy'),
(1626, 11, 1, 1, 'Juniper-SRX: RT_FLOW: A security session was created'),
(1626, 12, 1, 1, 'Juniper-SRX: RT_FLOW: A security session was closed'),
(1626, 13, 1, 1, 'Juniper-SRX: FLOW: A log was generated when the reassemble succeeded'),
(1626, 14, 1, 1, 'Juniper-SRX: FLOW: A log was generated when an FCB age out occurred before all fragments arrived'),
(1626, 15, 2, 2, 'Juniper-SRX: RT_FLOW: Apptrack volume update'),
(1626, 20, 1, 1, 'Juniper-SRX: KMD: PM P2 POLICY LOOKUP FAILURE'),
(1626, 30, 1, 1, 'Juniper-SRX: KERNEL: MAC ADDRESS CHANGE'),
(1626, 40, 1, 3, 'Juniper-SRX: RT_IDS: RT SCREEN TCP'),
(1626, 41, 1, 3, 'Juniper-SRX: RT_IDS: IP attack category'),
(1626, 42, 1, 3, 'Juniper-SRX: RT_IDP: Attack log event'),
(1626, 51, 1, 1, 'Juniper-SRX: MGD: UI AUTH EVENT'),
(1626, 52, 1, 1, 'Juniper-SRX: MGD: UI LOGIN EVENT'),
(1626, 53, 1, 1, 'Juniper-SRX: MGD: UI CMDLINE READ LINE'),
(1626, 60, 1, 1, 'Juniper-SRX: RT_IPSEC: BAD SPI'),
(1626, 71, 1, 1, 'Juniper-SRX: RT_UTM: A web request is permitted'),
(1626, 72, 1, 1, 'Juniper-SRX: RT_UTM: A web request is blocked'),
(1626, 80, 1, 1, 'Juniper-SRX: PERF_MON: PFE cpu usage okay'),
(1626, 81, 1, 1, 'Juniper-SRX: PERF_MON: PFE cpu threshold exceeded'),
(1626, 82, 1, 1, 'Juniper-SRX: Close - AGE OUT'),
(1626, 83, 1, 1, 'Juniper-SRX: Close - TCP FIN'),
(1626, 90, 1, 1, 'Juniper-SRX: GENERIC_MESSAGE: Watchdog strobe');