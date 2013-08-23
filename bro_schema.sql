use syslog;

INSERT INTO fields (field, field_type, pattern_type) VALUES ("username", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("password", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("command", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("arg", "string", "QSTRING");

INSERT INTO fields (field, field_type, pattern_type) VALUES ("version_major", "int", "NUMBER");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("version_minor", "int", "NUMBER");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("direction", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("client", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("bro_syslog_facility", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("bro_syslog_severity", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("bro_syslog_message", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("common_name", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("organizational_unit", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("organization", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("email_address", "string", "QSTRING");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("gaps", "int", "NUMBER");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("acks", "int", "NUMBER");
INSERT INTO fields (field, field_type, pattern_type) VALUES ("percent_loss", "string", "QSTRING");

INSERT INTO classes (id, class, parent_id) VALUES(10021, "BRO_FTP", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="eventid"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="username"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="password"), 13);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="command"), 14);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_FTP"), (SELECT id FROM fields WHERE field="arg"), 15);

INSERT INTO classes (id, class, parent_id) VALUES(10022, "BRO_WEIRD", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_WEIRD"), (SELECT id FROM fields WHERE field="eventid"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_WEIRD"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_WEIRD"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_WEIRD"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_WEIRD"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_WEIRD"), (SELECT id FROM fields WHERE field="name"), 14);

INSERT INTO classes (id, class, parent_id) VALUES(10023, "BRO_TUNNEL", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="eventid"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="name"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_TUNNEL"), (SELECT id FROM fields WHERE field="desc"), 13);

INSERT INTO classes (id, class, parent_id) VALUES(10024, "BRO_SOFTWARE", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="type"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="name"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="version_major"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="version_minor"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SOFTWARE"), (SELECT id FROM fields WHERE field="product"), 13);

INSERT INTO classes (id, class, parent_id) VALUES(10025, "BRO_SSH", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="eventid"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="status"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="direction"), 13);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="client"), 14);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="server"), 15);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SSH"), (SELECT id FROM fields WHERE field="conn_bytes"), 9);

INSERT INTO classes (id, class, parent_id) VALUES(10026, "BRO_SYSLOG", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="eventid"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="proto"), 9);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="bro_syslog_facility"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="bro_syslog_severity"), 13);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_SYSLOG"), (SELECT id FROM fields WHERE field="bro_syslog_message"), 14);

INSERT INTO classes (id, class, parent_id) VALUES(10027, "BRO_IRC", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_IRC"), (SELECT id FROM fields WHERE field="eventid"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_IRC"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_IRC"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_IRC"), (SELECT id FROM fields WHERE field="dstip"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_IRC"), (SELECT id FROM fields WHERE field="dstport"), 8);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_IRC"), (SELECT id FROM fields WHERE field="desc"), 12);

INSERT INTO classes (id, class, parent_id) VALUES(10028, "BRO_KNOWN_CERTS", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_CERTS"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_CERTS"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_CERTS"), (SELECT id FROM fields WHERE field="common_name"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_CERTS"), (SELECT id FROM fields WHERE field="organizational_unit"), 12);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_CERTS"), (SELECT id FROM fields WHERE field="organization"), 13);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_CERTS"), (SELECT id FROM fields WHERE field="email_address"), 14);

INSERT INTO classes (id, class, parent_id) VALUES(10029, "BRO_KNOWN_HOSTS", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_HOSTS"), (SELECT id FROM fields WHERE field="srcip"), 5);

INSERT INTO classes (id, class, parent_id) VALUES(10030, "BRO_KNOWN_SERVICES", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_SERVICES"), (SELECT id FROM fields WHERE field="srcip"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_SERVICES"), (SELECT id FROM fields WHERE field="srcport"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_SERVICES"), (SELECT id FROM fields WHERE field="proto"), 7);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_KNOWN_SERVICES"), (SELECT id FROM fields WHERE field="service"), 11);

INSERT INTO classes (id, class, parent_id) VALUES(10030, "BRO_CAPTURE_LOSS", 0);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_CAPTURE_LOSS"), (SELECT id FROM fields WHERE field="interface"), 11);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_CAPTURE_LOSS"), (SELECT id FROM fields WHERE field="gaps"), 5);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_CAPTURE_LOSS"), (SELECT id FROM fields WHERE field="acks"), 6);
INSERT INTO fields_classes_map (class_id, field_id, field_order) VALUES ((SELECT id FROM classes WHERE class="BRO_CAPTURE_LOSS"), (SELECT id FROM fields WHERE field="percent_loss"), 12);