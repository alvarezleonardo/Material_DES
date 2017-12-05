package digitalhouse.android.logueame;

import java.util.List;

/**
 * Created by joe on 11/15/16.
 */
public class DataBaseFire {
    private List<User>result;
    private String postre;

    public List<User> getResult() {
        return result;
    }

    public void setResult(List<User> result) {
        this.result = result;
    }

    public String getPostre() {
        return postre;
    }

    public void setPostre(String postre) {
        this.postre = postre;
    }

    @Override
    public String toString() {
        return "DataBaseFire{" +
                "result=" + result +
                ", postre='" + postre + '\'' +
                '}';
    }
}
