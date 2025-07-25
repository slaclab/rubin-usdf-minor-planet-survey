--rubin
GRANT SELECT ON public.current_identifications TO rubin;
GRANT SELECT ON public.mpc_orbits  TO rubin;
GRANT SELECT ON public.neocp_els TO rubin;
GRANT SELECT ON public.neocp_events TO rubin;
GRANT SELECT ON public.neocp_obs TO rubin;
GRANT SELECT ON public.neocp_obs_archive TO rubin;
GRANT SELECT ON public.neocp_prev_des TO rubin;
GRANT SELECT ON public.neocp_var TO rubin;
GRANT SELECT ON public.numbered_identifications TO rubin;
GRANT SELECT ON public.obs_alterations_corrections TO rubin;
GRANT SELECT ON public.obs_alterations_deletions TO rubin;
GRANT SELECT ON public.obs_alterations_redesignations TO rubin;
GRANT SELECT ON public.obs_alterations_unassociations TO rubin;
GRANT SELECT ON public.obs_sbn TO rubin;
GRANT SELECT ON public.primary_objects TO rubin;

--rubin_rw
GRANT SELECT, UPDATE, DELETE, INSERT ON public.current_identifications TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.mpc_orbits TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.neocp_els TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.neocp_events TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.neocp_obs TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.neocp_obs_archive TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.neocp_prev_des TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.neocp_var TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.numbered_identifications TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.obs_alterations_corrections TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.obs_alterations_deletions TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.obs_alterations_redesignations TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.obs_alterations_unassociations TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.obs_sbn TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.primary_objects TO rubin_rw;
GRANT SELECT, UPDATE, DELETE, INSERT ON public.minor_planet_names TO rubin_rw;
