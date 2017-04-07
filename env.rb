#Plik do łączenia abzy danych - zadanie 1
#DIr.glob - polaczenie modeli w kolejnym kroku dopisane
require 'active_record'
  Dir.glob('/models/*.rb').each do |file|
    require file
  end

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql'
  database: 'chat_db'
)
