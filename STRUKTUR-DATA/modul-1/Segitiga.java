package modul1;

public class Segitiga<T>{
    private T alas;
    private T tinggi;

    public T getAlas(){
        return alas;
    }

    public T getTinggi() {
        return tinggi;
    }

    public void setSegitiga(T alas, T tinggi){
        this.alas = alas;
        this.tinggi = tinggi;
    }
}
