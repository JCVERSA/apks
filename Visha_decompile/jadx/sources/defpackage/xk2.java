package defpackage;

import java.util.Iterator;
import java.util.List;

public final class xk2 implements wk2 {
    public final l7a a;
    public final List b;

    public xk2(wk2 wk2Var) {
        y45.j(wk2Var, "providedImageLoader");
        this.a = new l7a(wk2Var);
        this.b = x71.e(new pk2());
    }

    public final String a(String str) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            str = ((zk2) it.next()).a(str);
        }
        return str;
    }

    @Override
    public jn5 loadImage(String str, rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        return this.a.loadImage(a(str), rk2Var);
    }

    @Override
    public jn5 loadImageBytes(String str, rk2 rk2Var) {
        y45.j(str, "imageUrl");
        y45.j(rk2Var, "callback");
        return this.a.loadImageBytes(a(str), rk2Var);
    }
}
