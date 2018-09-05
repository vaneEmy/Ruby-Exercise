require_relative 'administrador_libro'

def app
    loop do
        puts "****** BIENVENIDO A LA BIBLIOTECA *****"
        puts "1) Agregar nuevo libro" 
        puts "2) Buscar un libro" 
        puts "3) Elimiar un libro" 
        puts "4) Consultar todos los libros" 
        puts "5) Salir" 

        print "Elige la acción a realizar: "   
        action = gets.chomp.to_i

        @administrador_libro = AdministradorLibro.new

        case action 
        when  1
            print "Nombre del Libro: "
            nombre_libro = gets.chomp
            print "\nAutor del libro: "
            autor_libro = gets.chomp
            print "\nSección del libro: "
            seccion_libro = gets.chomp
            @administrador_libro.create_book(nombre_libro, autor_libro, seccion_libro)
            puts "¡Libro creado satisfactoriamente!"
        when 2
            print "Ingresa el libro a buscar por autor: "
            autor = gets.chomp
            print "Ingresa el titulo: "
            title = gets.chomp
            book_exist = @administrador_libro.look_up_book(autor, title)
            if book_exist
                puts "Si existe el libro que buscas :D"
            else
                puts "No existe el libro que buscas :C"
            end
        when 3
            print "\nIngresa el libro a buscar por autor: "
            autor = gets.chomp
            print "\nIngresa el titulo: "
            title = gets.chomp
            book_exist = @administrador_libro.look_up_book(autor, title)
            if book_exist
               @administrador_libro.delete_book(autor, title) 
               puts "Libro eliminado!"
            else
                puts "No xiste el libro a eliminar"
            end
        when 4
            books = @administrador_libro.show_all_books
            for book in books
                puts "*****************" 
                print "Nombre: ", book.nombre
                print "\nAutor: ", book.autor
                print "\nSeccion: ", book.seccion
                puts "\n************" 
            end
        when 5
            break
        else
            puts "Elige una opción válida"
       end
    end
end

app