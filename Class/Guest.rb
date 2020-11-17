require_relative "User.rb"
    
class Guest < User
    def ambilfnprotected
        fnprotected
    end

end

guest = Guest.new
guest.setUmur(25)
guest.setNama("Yusal")
guest.setAlamat("Jauh di Cileungsi")
puts "Nama anda : #{guest.getNama()}"
puts "Umur anda : #{guest.getUmur()}"
puts "Alamat anda : #{guest.getAlamat()}"
guest.ambilfnprotected()