/*
  Copyright (c) 2020 Qualcomm Technologies, Inc.
  All Rights Reserved.
  Confidential and Proprietary - Qualcomm Technologies, Inc.
*/
BEGIN TRANSACTION;
INSERT OR REPLACE INTO qcril_properties_table (property, value) VALUES ('qcrildb_version', 21);
DELETE FROM qcril_emergency_source_mcc_mnc_table where MCC ='272';
DELETE FROM qcril_emergency_source_mcc_table where MCC = '272' AND NUMBER = '112';
INSERT INTO qcril_emergency_source_mcc_table VALUES('272','112','','');


COMMIT TRANSACTION;