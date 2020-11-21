#Расчет комиссии сервиса
def res_def(deal_value, commisionSC)
return  deal_value.to_f / 100 * commisionSC
end
#Массив партнеров
partners = {
  1 => "SberBank",
  2 => "SovCom",
  3 => "Qiwi"
  }
puts ("Выберите партнера 1. Сбербанк 2. СовкомБанк 3. Qiwi")
partner_sel = gets.to_i
#Выбор партнера с указанием комиссии и разделений, проверкой поля.
if partner_sel == 1
  puts ("Выбран партнер " + partners[1])
  commisionSC = 2
  comission_split = 2
elsif partner_sel == 2
  puts ("Выбран партнер " + partners[2])
  commisionSC = 4
  comission_split = 2
elsif partner_sel == 3
  puts ("Выбран партнер " + partners[3])
  commisionSC = 5
  comission_split = 2
else
  puts("Неверное значение")
end
puts "Введите сумму сделки:"
deal_value = gets.chomp()
puts ("Сумма сделки:  " + deal_value + " RUB")
res1 = res_def(deal_value, commisionSC)
res4 = res1 / 100 * 50
puts ("Комиссия сервиса, " + res1.to_s + " RUB")
puts 'Разделение комиссии 50/50'
res2 = deal_value.to_i + res1 / comission_split
puts ("Сумма к оплате покупателем: " + res2.to_s)
res3 = deal_value.to_i - (res1 / 2)
puts ("Сумма к зачислению продавцу: " + res3.to_s)
comision = 50
res4 = res1 / 100 * 50
puts ("Партнерская комиссия, " + res4.to_s + " RUB")
