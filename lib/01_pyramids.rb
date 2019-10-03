#2.2.1 Moitié de pyramide

def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu ?"
    print ">"
    nbr_etages = gets.chomp.to_i
    while nbr_etages < 1 || nbr_etages > 25
        puts "Entre un nombre compris entre 1 et 25"
        print ">"
        nbr_etages = gets.chomp.to_i
    end
    a="#"
    b=0
    puts "Voici la pyramide:"
    nbr_etages.times do
        b=b+1
        puts a * b
    end
end

#2.2.2 Pyramide de Gizeh
def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu ?"
    print ">"
    nbr_etages = gets.chomp.to_i
    while nbr_etages < 1 || nbr_etages > 25
        puts "Entre un nombre compris entre 1 et 25"
        print ">"
        nbr_etages = gets.chomp.to_i
    end

    a="#"
    b=" "
    count=0
    puts "Voici la pyramide:"
    nbr_etages.times do
        count=count+1
        c= nbr_etages - count
        d= b*c + a*(count-1)
        e= a*(count-1) + b*c
        puts d + a + e
    end
end

#2.2.3 Alexandrie, Alexandra
def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide! Combien d'étages veux-tu ?"
    print ">"
    nbr_etages = gets.chomp.to_i
    while nbr_etages < 1 || nbr_etages > 25 || nbr_etages%2==0
        puts "Entre un nombre IMPAIR compris entre 1 et 25"
        print ">"
        nbr_etages = gets.chomp.to_i
    end
    a="#"
    b=" "
    count = 0 
    m=nbr_etages%2
    puts "Voici la pyramide :"
    n=(nbr_etages-1)/2
    o=nbr_etages-n
    nbr_etages.times do
        count=count+1
        if count <= o
            c= nbr_etages - count
            d= b*c + a*(count-1)
            e= a*(count-1) + b*c
            puts d + a + e
        else
            c=nbr_etages - count
            d=b*(count-1)+a*c
            e=a*c + b*(count-1)
            puts d + a + e
        end
    end 
end






wtf_pyramid