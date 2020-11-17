class Employ
    def initialize
        @id
        @nama
        @umur
        @jabatan
        @gajipokok
        @tunjangan
        @gajitotal
    end

    def setId(id)
        @id = id.to_i
    end
    def getId
        return @id 
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

    # List Jabatan:
    # 1 = Manager
    # 2 = Operator
    # 3 = Admin

    def setJabatan(jabatan)
        @jabatan = jabatan.to_i
    end
    def getJabatan
        return @jabatan 
    end

    def setGajipokok(gajipokok)
        @gajipokok = gajipokok.to_i
    end
    def getGajipokok
        return @gajipokok
    end

    def setTunjangan(tunjangan)
        @tunjangan = tunjangan.to_i
    end
    def getTunjangan
        return @tunjangan
    end

    def setGajitotal
        @gajitotal = @gajipokok + @tunjangan
    end
    def getGajitotal
        return @gajitotal
    end
end