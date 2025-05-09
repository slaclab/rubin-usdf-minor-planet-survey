ALTER SUBSCRIPTION usdf_mpc_obs_ingest_sub DISABLE;
ALTER SUBSCRIPTION usdf_mpc_obs_ingest_sub SET (slot_name=NONE);
DROP SUBSCRIPTION usdf_mpc_obs_ingest_sub;

ALTER SUBSCRIPTION usdf_mpc_orbits_sub DISABLE;
ALTER SUBSCRIPTION usdf_mpc_orbits_sub SET (slot_name=NONE);
DROP SUBSCRIPTION usdf_mpc_orbits_sub;

ALTER SUBSCRIPTION usdf_mpc_obs_sbn_sub DISABLE;
ALTER SUBSCRIPTION usdf_mpc_obs_sbn_sub SET (slot_name=NONE);
DROP SUBSCRIPTION usdf_mpc_obs_sbn_sub;
