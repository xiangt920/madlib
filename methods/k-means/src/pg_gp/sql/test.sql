---------------------------------------------------------------
-- K-means unit test: main
---------------------------------------------------------------
set client_min_messages=warning;

-- Create test table
select madlib_kmeans_test.create_test_table( 'madlib_kmeans_test.table123', 10000, 100, 20, 0.1);

-- Run k-means clustering
select madlib.kmeans_run( 'madlib_kmeans_test.table123', 20, 1, 'test123', 'madlib_kmeans_test');