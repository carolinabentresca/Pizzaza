package Modelo;

public class pedido {

    private int id;
    private String menú;
    private String descripción;
    private double precio;

    public pedido() {
    }

    public pedido(int id, String menú, String descripción, double precio) {
        this.id = id;
        this.menú = menú;
        this.descripción = descripción;
        this.precio = precio;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMenú() {
        return menú;
    }

    public void setMenú(String menú) {
        this.menú = menú;
    }

    public String getDescripción() {
        return descripción;
    }

    public void setDescripción(String descripción) {
        this.descripción = descripción;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

}
