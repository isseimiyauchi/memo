require "csv"


puts "1(新規でメモを作成) 2(既存のメモ編集する)"
memo_type = gets.to_i


if memo_type == 1
 puts "拡張子を除いたファイル名を入力してください"
 file_name = gets


 puts "メモを入力"
 puts "入力後、Ctrl + D で保存"
 memo = gets


 CSV.open("#{file_name}.csv","w") do |csv|
 csv << ["#{memo}"]
 end
 
elsif memo_type == 2
 puts "拡張子を除いたファイル名を入力してください"
 file_name = gets


 puts "追記したい内容を入力してください"
 memo = gets
 CSV.open("#{file_name}.csv","a") do |csv|
 csv << ["#{memo}"]
 end
 
else
 puts "1 or 2(半角)で入力してください。"
 memo_type = gets.to_i  
 # redoを入れたらエラー
end