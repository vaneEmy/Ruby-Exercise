class Libro
    attr_accessor :nombre, :autor, :seccion

    def initialize(nombre, autor, seccion)
        @nombre = nombre
        @autor = autor
        @seccion = seccion
    end
end