package digitalhouse.android.logueame;

/**
 * Created by joe on 11/15/16.
 */
public class User {
    private String nombre;
    private String apellido;
    private String lastTweet;

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

    public String getLastTweet() {
        return lastTweet;
    }

    public void setLastTweet(String lastTweet) {
        this.lastTweet = lastTweet;
    }
}
