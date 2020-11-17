#Test Komentar dalam ruby


# ================ String =================
# vartext = "Hallo \n Ruby"
# varkutip = 'Hallo Sekolah \'  Ruby'
# puts vartext
# puts vartext + varkutip


# ================== Number =================
# a = 10.3
# b = 30
# c = "Bisa kan"
# puts "Hasilnya adalah #{a + b - 3} #{c}"


# ================ PUTS & PRINT ==============
# text = "Hallo"
# tuxt = "HeyHey"


# puts text
# puts tuxt

# print text
# print tuxt


# ================== Input || getChomp ================
# print "Nama anda siapa? \n"
# nama = gets.chomp

# print "Umur anda berapa? \n"
# umur = gets.chomp

# print "Nama anda adalah #{nama}, dan umur anda adalah #{umur} \n"

# print "Masukan Angka pertama \n"
# a = gets.chomp.to_i

# print "Masukan Angka kedua \n"
# b = gets.chomp.to_i

# print "Hasil penjumlahannya adalah #{a+b}"


# ================== FUNGSI DAN PARAMETER ================
# def penambahan(a,b)
#     print "Hasil dari penjumlahan #{a + b}"
# end

# print "Masukan Angka pertama \n"
# a = gets.chomp.to_i

# print "Masukan Angka kedua \n"
# b = gets.chomp.to_i
# penambahan(a,b)


# ================= RETURN FUNGSI =====================
# def penambahan(a,b)
#     num = a+b
#     puts "Loading . . ."
#     return num
# end

# hasil = penambahan(20,50)

# puts hasil -10


# =================== IF & ELSE ===================
# puts "Masukan angka kurang dari 30 dan bilangan genap"
# a = gets.chomp.to_i

# if a <= 30 && a.even?
#     puts "Hasilnya Benar"
# else
#     puts "Hasilnya Salah"
# end

# =================Latihan 1========================
# puts "Bayang utang lo! Utang lo 10000"
# bayar = gets.chomp.to_i

# def sisahutang(bayar)
#     kurangnya = 10000 - bayar
#     return kurangnya
# end

# def lebihbayar(bayar)
#     lebihnya = bayar - 10000
#     return lebihnya
# end

# if bayar < 10000
#     puts "Kurang woy bayar utang lo! Kurangnya #{sisahutang(bayar)}"
# elsif bayar == 10000
#     puts "Yaaah Paslah Makaseh!"
# else 
#     puts "Kelebian #{lebihbayar(bayar)} bos! Tapi gpp lah buat gua"
# end


# =======================Unless || Times =====================
# 3.times do

#     puts "Masukan angka selain 10:"
#     angka = gets.chomp.to_i

#     unless angka == 10
#         puts "di dalam unless"
#     else 
#         puts "diluar unless"
#     end
# end

# =======================Switch Case=========================
# puts "Masukan Angka 1-3"
# angka = gets.chomp.to_i

# case angka
# when 1
#     puts "Angka anda 1"
# when 2
#     puts "Angka adna 2"
# when 3
#     puts "Angka anda 3"
# else
#     puts "Angka diluar jangkauan"
# end


# ================array=========================================
# arr = [1, 2, 3, 4, 5, 6]

# puts arr[2]    #=> 3
# puts arr[0]
# puts arr[100]  #=> nil
# puts arr[-3]   #=> 4
# print arr[2, 3] #=> [3, 4, 5]
# print "\n"
# print arr[1..4] #=> [2, 3, 4, 5]
# print "\n"
# print arr[1..-3] #=> [2, 3, 4]
# print "\n"

# puts "index pertama #{arr.first}"
# puts "index terakhir #{arr.last}"
# puts "jumlah array #{arr.count}"
# puts "panjang array #{arr.length}"
# puts "================================= \n"
# print arr
# print "\n"

# arr.push(99)
# print arr
# print "\n"

# arr.unshift(0)
# print arr
# print "\n"

# arr.insert(2,"88")
# print arr
# print "\n"

# arr.pop #Hapus index akhir
# print arr
# print "\n"

# arr.shift #Hapus index pertama
# print arr
# print "\n"


# ================= LOOPS ======================
# puts "Masukan Angka yang akan di print"
# angka = gets.chomp.to_i
# puts "Masukan Jumlah perulangan"
# ulang = gets.chomp.to_i
# i=0
# y=0

# while i < ulang
#     puts angka
#     i += 1
# end

# until ulang < y
#     puts "ini pakai until"
#     y += 1
# end

# tech = ["html", "css", "js"]


# for idx in tech
#     puts "isi index #{idx}"
# end

# puts "======================"

# tech.each do |e|
#     puts "isi index #{e}"
# end

# puts "======================"

# tech.each { |b| puts "Disini juga : #{b}"}

# puts "======================"

# (0..3).each do |a|
#     puts "nilai i : #{a}"
# end


# ============================= Hashes =======================

# profile = {
#     "nama" => "Yusal",
#     "umur" => 23,
#     "alamat" => "Cileungsi"
# }

# puts profile
# puts "Nama saya : #{profile["nama"]}"

# profile.each do | key, value |
#     puts "Cara akses Key: #{key}"
#     puts "Cara akses Value: #{value}"
# end