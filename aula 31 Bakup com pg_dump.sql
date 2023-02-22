REVOKE CONNECT ON DATABASE estudos_tree FROM public;

SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'estudos_tree';

DROP database estudos_tree; 