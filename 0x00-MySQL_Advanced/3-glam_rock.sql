-- list all bands with glam rock as main style ranked by their longevity.
SELECT band_name,split AS lifespan FROM metal_bands WHERE style LIKE '%Glam rock%' ORDER BY lifespan DESC;
