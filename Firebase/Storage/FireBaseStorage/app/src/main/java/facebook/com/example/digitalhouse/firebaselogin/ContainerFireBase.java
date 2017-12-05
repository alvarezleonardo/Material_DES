package facebook.com.example.digitalhouse.firebaselogin;

import java.util.List;

/**
 * Created by andres on 15/11/16.
 */
public class ContainerFireBase {
    private String comida;
    private String pelicula;
    private List<User> timeline;

    public String getPelicula() {
        return pelicula;
    }

    public void setPelicula(String pelicula) {
        this.pelicula = pelicula;
    }

    @Override
    public String toString() {
        return "ContainerFireBase{" +
                "comida='" + comida + '\'' +
                ", pelicula='" + pelicula + '\'' +
                ", timeline=" + timeline +
                '}';
    }

    public String getComida() {
        return comida;
    }

    public void setComida(String comida) {
        this.comida = comida;
    }

    public List<User> getTimeline() {
        return timeline;
    }

    public void setTimeline(List<User> timeline) {
        this.timeline = timeline;
    }
}
