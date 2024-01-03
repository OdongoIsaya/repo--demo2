function calculateGCcontent()
    validChar = Set(['A', 'T', 'C', 'G', "QUIT"])  # Fixed 'G' and added quotes around "QUIT"

    while true
        println("Enter DNA seq (type 'QUIT' to exit):")
        DNAseq = uppercase(strip(readline()))

        function validDNA(c)
            if all(c_ -> c_ in validChar, DNAseq)  # Fixed c_ to c_
                sleep(3)
                return true
            elseif any(c -> c =="QUIT", DNAseq)
                println("Finished calculating GC content.")
                return true
            else
                println("Enter valid DNA. Know your molecular biology, friend.")
                return false
            end
        end

        if validDNA(DNAseq)
            function GCbases_count(l)
                l == 'C' || l == 'G'
            end

            function complimentaryDNA(n)
                if n == 'T'
                    return 'A'
                elseif n == 'A'
                    return 'T'
                elseif n == 'C'
                    return 'G'
                elseif n == 'G'
                    return 'C'
                else
                    return n
                end
            end

            GCcount = count(GCbases_count, DNAseq)
            DNAtotalcount = length(DNAseq)
            complementaryDNA = join(complimentaryDNA.(collect(DNAseq)))
            DNAentered = DNAseq
            GCcontentpercent = round(GCcount / DNAtotalcount * 100, digits=2)

            println("DNA seq: $DNAentered")
            sleep(2)
            println("Complementary DNA: $complementaryDNA")
            sleep(1)
            println("GC content percent: $GCcontentpercent")
            sleep(1)
            println("GC count: $GCcount")
            sleep(2)
            println("Total DNA length: $DNAtotalcount")
        end
    end
end

calculateGCcontent()
