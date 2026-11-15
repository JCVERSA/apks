package defpackage;

import com.yanzhenjie.recyclerview.SwipeMenuLayout;
import java.util.ArrayList;
import java.util.List;

public class o7a {
    public SwipeMenuLayout a;
    public int b = 0;
    public List c = new ArrayList(2);

    public o7a(SwipeMenuLayout swipeMenuLayout) {
        this.a = swipeMenuLayout;
    }

    public void a(t7a t7aVar) {
        this.c.add(t7aVar);
    }

    public List b() {
        return this.c;
    }

    public int c() {
        return this.b;
    }

    public boolean d() {
        return !this.c.isEmpty();
    }
}
