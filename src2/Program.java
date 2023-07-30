package src2;

import src2.Controller.PetController;
import src2.Model.Pet;
import src2.Servises.IRepository;
import src2.Servises.PetRepository;
import src2.UserInterface.ConsoleMenu;

public class Program {
    public static void main(String[] args) throws Exception {

        IRepository <Pet> myFarm = new PetRepository();
        PetController controller = new PetController(myFarm);
        new ConsoleMenu (controller).start();
    }
} 
