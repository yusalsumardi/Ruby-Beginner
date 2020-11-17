# require_relative "Guest.rb"

class User
    def initialize
        @nama
        @umur
        @alamat
    end

    def setNama(nama)
        @nama = nama
    end
    def getNama
        return @nama 
    end

    def setUmur(umur)
        @umur = umur.to_i
    end
    def getUmur
        return @umur 
    end

    def setAlamat(alamat)
        @alamat = alamat
    end
    def getAlamat
        return @alamat 
    end

    def fnprivate
        puts "Ini private cuma bisa di akses di class tersebut"
    end

    def ambilfnprivate
        fnprivate
    end
    def fnprotected
        puts "Ini protect bisa di akses ke interhitence nya"
    end

    private :fnprivate
    protected :fnprotected
end

# newuser = User.new
# newuser.setUmur(25)
# newuser.setNama("Yusal")
# newuser.setAlamat("Jauh di Cileungsi")
# puts "Nama anda : #{newuser.getNama()}"
# puts "Umur anda : #{newuser.getUmur()}"
# puts "Alamat anda : #{newuser.getAlamat()}"
# newuser.ambilfnprivate
