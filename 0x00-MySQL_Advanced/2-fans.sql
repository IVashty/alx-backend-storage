-- rank country origins of band ordered by the number of non-iunique fans
SELECT origin, SUM(fans) AS nb_fans FROM metal_bands group by origin order by nb_fans DESC;
