package facebook.com.example.digitalhouse.firebaselogin;

/**
 * Created by andres on 15/11/16.
 */
public class User {
    private String nombre;
    private String apellido;
    private String lastTweet;

    public String getLastTweet() {
        return lastTweet;
    }

    public void setLastTweet(String lastTweet) {
        this.lastTweet = lastTweet;
    }

    public String getNombre() {

        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }
}
