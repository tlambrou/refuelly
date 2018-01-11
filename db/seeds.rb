# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cafe.connection.execute("insert into cafes (name, latitude, longitude, created_at, updated_at) (
    select 'Cafe ' || i as name, 39 + x.lat as latitude, -76 - x.lon as longitude, x.date as created_at, x.update as updated_at
    from (
      select i, random() * 10 as lat, random() * 10 as lon, CURRENT_TIMESTAMP as date, CURRENT_TIMESTAMP as update
      from generate_series(1,1000000) as i
    )
    as x );")
