CREATE TABLE IF NOT EXISTS `vrf_lite_cisco` ( `vrf_lite_cisco_id` int(11) NOT NULL AUTO_INCREMENT, `device_id` int(11) NOT NULL, `context_name` varchar(128) CHARACTER SET utf8 collate utf8_general_ci not null  ,`intance_name` varchar(128)  DEFAULT '', `vrf_name` varchar(128) DEFAULT 'Default', PRIMARY KEY (`vrf_lite_cisco_id`)  ) ENGINE=InnoDB  DEFAULT CHARSET=utf8;
ALTER TABLE `vrf_lite_cisco` ADD INDEX `vrf` (`vrf_name` ASC), ADD INDEX `context` (`context_name` ASC), ADD INDEX `device` (`device_id` ASC), ADD INDEX `mix` (`device_id` ASC, `context_name` ASC, `vrf_name` ASC);
ALTER TABLE ipv4_addresses  ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ipv4_networks   ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ipv4_mac        ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ipv6_addresses  ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ipv6_networks   ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE bgpPeers        ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE bgpPeers_cbgp   ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ospf_areas      ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ospf_areas      DROP INDEX device_area, ADD UNIQUE KEY `device_area` (`device_id`,`ospfAreaId`,`context_name`);
ALTER TABLE ospf_instances  ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ospf_instances  DROP INDEX device_id, ADD UNIQUE KEY `device_id` (`device_id`,`ospf_instance_id`,`context_name`);
ALTER TABLE ospf_nbrs       ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ospf_nbrs       DROP INDEX device_id, ADD UNIQUE KEY `device_id` (`device_id`,`ospf_nbr_id`,`context_name`);
ALTER TABLE ospf_ports      ADD `context_name` varchar(128)  CHARACTER SET utf8 collate utf8_general_ci ;
ALTER TABLE ospf_ports DROP INDEX device_id, ADD UNIQUE KEY `device_id` (`device_id`,`ospf_port_id`,`context_name`);
ALTER TABLE `vlans` CHANGE COLUMN `vlan_name` `vlan_name` VARCHAR(64) DEFAULT NULL;

