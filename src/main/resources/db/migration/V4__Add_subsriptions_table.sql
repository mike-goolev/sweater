create table user_subscriptions (
    channel_id int8 nit null references usr,
    subscriber_id int8 nit null references usr,
    primary key(channel_id, subscriber_id)
)