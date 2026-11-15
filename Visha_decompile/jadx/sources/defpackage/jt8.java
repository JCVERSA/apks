package defpackage;

import com.cloud.hisavana.protocol.okhttptransport.a;
import java.util.concurrent.Executors;
import org.chromium.net.CronetEngine;

public abstract class jt8 {
    public final CronetEngine a;
    public int b = 4;
    public kp8 c = null;
    public final jt8 d;

    public jt8(CronetEngine cronetEngine, Class cls) {
        this.a = (CronetEngine) xd8.o(cronetEngine);
        xd8.d(getClass().equals(cls));
        this.d = this;
    }

    public Object a() {
        if (this.c == null) {
            this.c = kp8.a();
        }
        return b(new it8(this.a, Executors.newFixedThreadPool(this.b), a.b(Executors.newCachedThreadPool()), new iu8(), this.c));
    }

    public abstract Object b(it8 it8Var);
}
