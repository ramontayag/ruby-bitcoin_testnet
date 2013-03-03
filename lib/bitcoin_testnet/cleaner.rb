module BitcoinTestnet
  class Cleaner

    def self.clean(*args)
      self.new(*args).clean
    end

    def clean
      commands = ["cd #{BitcoinTestnet.dir}", "make clean > /dev/null"]
      system commands.join(' && ')
    end

  end
end
