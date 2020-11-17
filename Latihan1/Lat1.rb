require_relative "Employ.rb"

# ============== Menu Karyawan =============

class MenuKaryawan
    username = "admin"
    password = "admin123"
    employs = [{:id=>23, :nama=>"yusal", :umur=>40, :jabatan=>1, :gajipokok=>8000000, :tunjangan=>nil, :gajitotal=>nil}, {:id=>2, :nama=>"epi", :umur=>13, :jabatan=>2, :gajipokok=>5000000, :tunjangan=>nil, :gajitotal=>nil}]

    puts "Selamat Datang di Apps Manajemen Karyawan"
    puts "==Login=="
    puts "Username  :"
    inputusername = gets.chomp
    puts "Password :"
    inputpassword = gets.chomp

    if inputusername == username && inputpassword == password
        inputmenu = 0
        while inputmenu != 99
            puts ("===================================================");
            puts ("\t\t  Pilih Menu:");
            puts ("===================================================");
            puts ("1. Input Data Karyawan Baru");
            puts ("2. Tampilkan Data Karyawan");
            puts ("3. Tampilkan Semua Data Karyawan");
            puts ("4. Edit Data Karyawan");
            puts ("99. Exit");
            puts ("Pilih Nomor Menu:");
            inputmenu = gets.chomp.to_i
            case inputmenu
            when 1
                newEmploy = Employ.new
                puts "Masukan ID :"
                newId = gets.chomp.to_i
                puts "Masukan Nama :"
                newNama = gets.chomp
                puts "Masukan Umur :"
                newUmur = gets.chomp.to_i
                newJabatan = 99
                while newJabatan > 3
                    puts "==List Jabatan=="
                    puts "1 = Manager\n2 = Operator\n3 = Admin"
                    puts "Masukan Nomor Jabatan :"
                    newJabatan = gets.chomp.to_i   
                end
                newEmploy.setId(newId)
                newEmploy.setNama(newNama)
                newEmploy.setUmur(newUmur)
                if newJabatan == 1
                    newEmploy.setJabatan(1)
                    newEmploy.setGajipokok(8000000)
                elsif newJabatan == 2
                    newEmploy.setJabatan(2)
                    newEmploy.setGajipokok(5000000)
                else
                    newEmploy.setJabatan(3)
                    newEmploy.setGajipokok(3000000)
                end
                hashEmploy = {
                    id: newEmploy.getId,
                    nama: newEmploy.getNama,
                    umur: newEmploy.getUmur,
                    jabatan: newEmploy.getJabatan,
                    gajipokok: newEmploy.getGajipokok,
                    tunjangan: newEmploy.getTunjangan,
                    gajitotal: newEmploy.getGajitotal,
                }
                employs.push(hashEmploy)
                puts "ID anda : #{newEmploy.getId}"
                puts "Nama anda : #{newEmploy.getNama}"
                puts "Umur anda : #{newEmploy.getUmur}"
                puts "Jabatan anda : #{newEmploy.getJabatan}"
                puts "Gaji Pokok anda : #{newEmploy.getGajipokok}"
                puts "#{employs}"

            when 2
                puts "Masukan ID Karyawan :"
                idFind = gets.chomp.to_i
                employFind = employs.find  { |x| x[:id] == idFind }
                # puts employFind # Disini print muncul array hashnya tapi gak berbentuk objek Employ
                puts "ID anda : #{employFind[:id]}" 
                puts "Nama lama anda : #{employFind[:nama]}" 
                puts "Umur anda : #{employFind[:umur]}" 
                puts "Jabatan anda : #{employFind[:jabatan]}" 
                puts "Gaji Pokok anda : #{employFind[:gajipokok]}"

            when 3
                puts employs

            when 4
                puts "Masukan ID Karyawan : "
                idFind = gets.chomp.to_i
                employFind = employs.find  { |x| x[:id] == idFind }
                puts ("1. Edit Nama");
                puts ("2. Edit Umur");
                puts ("3. Edit Jabatan");
                puts ("===================================================");
                puts ("\t\t  Pilih Menu Edit:");
                menuselect = gets.chomp.to_i
                case menuselect
                when 1
                    puts "Nama lama anda : #{employFind[:nama]}"
                    puts "Masukan Nama baru : "
                    newName = gets.chomp
                    employFind[:nama] = newName
                    puts "Nama anda setelah di ubah: #{employFind[:nama]}"
                when 2
                    puts "Umur anda : #{employFind[:umur]}"
                    puts "Masukan Umur baru : "
                    newUmur = gets.chomp.to_i
                    employFind[:umur] = newUmur
                    puts "Umur anda setelah di ubah : #{employFind[:umur]}"
                when 3
                    puts "==List Jabatan=="
                    puts "1 = Manager\n2 = Operator\n3 = Admin"
                    puts "============================"
                    puts "Jabatan anda sekarang: #{employFind[:jabatan]}"
                    puts "Masukan Jabatan baru : "
                    newJabatan = gets.chomp.to_i
                    if newJabatan == 1
                        employFind[:gajipokok] = 8000000
                        employFind[:jabatan] = newJabatan
                        puts "Jabatan anda sekarang: #{employFind[:jabatan]}"
                        puts "Gaji pokok anda sekarang: #{employFind[:gajipokok]}"
                    elsif newJabatan == 2
                        employFind[:gajipokok] = 5000000
                        employFind[:jabatan] = newJabatan
                        puts "Jabatan anda sekarang: #{employFind[:jabatan]}"
                        puts "Gaji pokok anda sekarang: #{employFind[:gajipokok]}"
                    elsif newJabatan == 3
                        employFind[:gajipokok] = 3000000
                        employFind[:jabatan] = newJabatan
                        puts "Jabatan anda sekarang: #{employFind[:jabatan]}"
                        puts "Gaji pokok anda sekarang: #{employFind[:gajipokok]}"
                    else
                        puts "Jabatan tidak tersedia"
                    end
                end

            end
        end
    else
        puts "Password / Username Salah!"
    end
end