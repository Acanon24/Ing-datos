package pe.softweb.app;

import java.util.List;
import pe.softweb.models.Cliente;

public class App {

    public static void main(String[] args) {
        Cliente a = new Cliente();
        List <Cliente> lista = a.listar();
        for (int i = 0; i < lista.size(); i++){
            //System.out.println(lista.get(i));
        }
        
        //Animal a2 = new Animal("koki", "chihuagua nerviositus", 2.01, 2);
        //a2.crear();
        //System.out.println(a2);
        //Animal a3 = new Animal(132, "Koki", "chihuagua nerviositus", 2.01, 3);
        //a3.editar();
        
        Cliente a3 = new Cliente();
        a3.setDNI(132);
        a3.eliminar();
    } 
}
