select count(Booking_ID) as total_reservations from hotel_reservation;

select max(type_of_meal_plan) as meal from hotel_reservation;

select avg(avg_price_per_room) as avg_room_price from hotel_reservation
where no_of_children >= 1; 

select count(Booking_ID) as reservations, Year from hotel_reservation
group by Year;

select max(room_type_reserved) coomonly_booked_room , count(Booking_ID) as booking from hotel_reservation
group by room_type_reserved;

select count(Booking_ID) as weekend_nights from hotel_reservation
where no_of_weekend_nights > 0;

select max(lead_time) as highest_lead_time , min(lead_time) as lowest_lead_time from hotel_reservation;

select max(market_segment_type) as common_market_segment , count(market_segment_type) as count from hotel_reservation
group by market_segment_type  order by count desc;

select count(booking_status) as confirmed_booking from hotel_reservation
where booking_status = "Not_Canceled";

select sum(no_of_adults + no_of_children) as total_adults_and_children from hotel_reservation;

select avg(no_of_weekend_nights) from hotel_reservation
where no_of_children > 0;

select count(Booking_Id) as monthly_booking , Month from hotel_reservation
group by Month
order by Month;

select avg(no_of_week_nights + no_of_weekend_nights) as avg_no_of_nights , room_type_reserved from hotel_reservation
group by room_type_reserved
order by room_type_reserved;

select max(room_type_reserved) as room_type,avg(avg_price_per_room) as avg_price from hotel_reservation
where no_of_children >= 1
group by room_type_reserved
limit 1;

select market_segment_type , max(avg_price_per_room) as high_avg_room_price  from hotel_reservation
group by market_segment_type
limit 1;



