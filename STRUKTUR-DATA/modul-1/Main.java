package modul1;

import java.util.Scanner;

public class Main {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int choose;

        System.out.println("=== HITUNG LUAS SEGITIGA ===");

        System.out.println("Mau menampilkan hasil luas dalam bentuk? : ");
        System.out.println("1. Hasil to Integer");
        System.out.println("2. Hasil to Double");

        System.out.println("Masukkan pilihan 1 / 2");
        choose = sc.nextInt();

        switch (choose) {
            case 1 -> {
                IntegerHasil Int = new IntegerHasil();
                System.out.println("Inputkan alas dan tinggi secara berurutan ");
                Int.setSegitiga(sc.nextInt(), sc.nextInt());
                System.out.println("Luas Segitiga Dalam Integer : " + Int.getResultAsInt());
            }
            case 2 -> {
                DoubleHasil db = new DoubleHasil();
                System.out.println("Inputkan alas dan tinggi secara berurutan ");
                db.setSegitiga(sc.nextDouble(), sc.nextDouble());
                System.out.println("Luas Segitiga Dalam Integer : " + db.getResultAsDouble());
            }
        }
    }
}
