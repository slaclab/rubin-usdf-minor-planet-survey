-- other tables sub
CREATE SUBSCRIPTION sbn146_rubin_usdf_other_tables_sub CONNECTION 'host=sbn-am-aurora16-db.cluster-c1t4y1fwdvea.us-east-2.rds.amazonaws.com port=5432 dbname=mpc_sbn user=sbnmastrubin password=<update>' PUBLICATION sbn146_other_tables_pub;

-- obs table sub
CREATE SUBSCRIPTION sbn146_rubin_usdf_obs_table_sub CONNECTION 'host=sbn-am-aurora16-db.cluster-c1t4y1fwdvea.us-east-2.rds.amazonaws.com port=5432 dbname=mpc_sbn user=sbnmastrubin password=<update>' PUBLICATION sbn146_obs_table_pub;