select museums_locations.legal_name, museums_locations.museum_type, museums_locations.street_address, 
	museums_locations.city, museums_locations.state, museums_locations.zip_code,
	museums_fy2013.region_code, museums_fy2013.revenue_2013, museums_fy2015.revenue_2015, 
	museums_fy2015.weburl, museums_fy2015.long, museums_fy2015.lat, museums_fy2015.phone
from museums_locations
join museums_fy2013 on museums_locations.legal_name = museums_fy2013.legal_name
join museums_fy2015 on museums_locations.legal_name = museums_fy2015.legal_name
