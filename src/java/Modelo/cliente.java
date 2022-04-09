package Modelo;

public class cliente {

    private String usuario;
    private String mail;
    private String password;

    public cliente() {
    }

    public cliente(String usuario, String mail, String password) {
        this.usuario = usuario;
        this.mail = mail;
        this.password = password;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
