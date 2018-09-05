require_relative 'libro'

class AdministradorLibro
    attr_accessor :name, :autor, :seccion
    
    @@libros = []
    def create_book(name, autor, seccion)
        @libro = Libro.new(name, autor, seccion)
        @@libros.push(@libro)
    end

    def show_all_books
        @@libros
    end

    def delete_book(autor, nombre)
        @@libros.delete_if do |x| 
            x.autor == autor && x.nombre = nombre
        end 
    end

    def look_up_book(autor, nombre)
        @@libros.each do |x| 
            if x.autor == autor && x.nombre = nombre
                @book_exist = true
            else
                @book_exist = false
            end
        end
        @book_exist 
    end
end