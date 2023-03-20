package modul2.Latihan;

import java.util.ArrayList;
import java.util.List;

public class latihan1 {
    public static void main(String[] args) {

        ArrayList<String> hewan = new ArrayList<>();
        System.out.print("Hewan : ");
        hewan.addAll(List.of("Sapi ", "Kelinci ", "Kambing ", "Unta ", "Domba "));
        System.out.println(hewan);

        System.out.println("");


        ArrayList<String> toRemove = new ArrayList<>();

        toRemove.addAll(List.of("Kelinci ", "Kambing ", "Unta "));
        System.out.println("Hewan yang dihapus : \n" + toRemove);


        System.out.println("\nOutput hewan :");
        hewan.removeAll(List.of("Kelinci ", "Kambing ", "Unta "));
        System.out.println(hewan);

    }
}
