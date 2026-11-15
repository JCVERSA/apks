package o4;

import android.graphics.Path;
import java.util.ArrayList;
import java.util.List;

public class b {

    private final List f67473a = new ArrayList();

    void a(u uVar) {
        this.f67473a.add(uVar);
    }

    public void b(Path path) {
        for (int size = this.f67473a.size() - 1; size >= 0; size--) {
            x4.l.b(path, (u) this.f67473a.get(size));
        }
    }
}
