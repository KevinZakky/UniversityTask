package modul1;

public class IntegerHasil extends Segitiga<Integer> {

    public Integer getResultAsInt(){
        return (int) (0.5 * getAlas() * getTinggi());
    }
}
