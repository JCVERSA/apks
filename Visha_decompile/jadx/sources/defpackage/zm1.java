package defpackage;

import freemarker.core.BugException;
import freemarker.core.Configurable;
import freemarker.core.Environment;

public class zm1 {
    public final Object a = new Object();
    public final int b;

    public zm1(int i) {
        if (i != 0 && i != 1 && i != 2) {
            throw new IllegalArgumentException();
        }
        this.b = i;
    }

    public Object a() {
        return null;
    }

    public final Object b() {
        return d(c()).k(this.a, this);
    }

    public final Environment c() {
        Environment environmentY0 = Environment.y0();
        if (environmentY0 != null) {
            return environmentY0;
        }
        throw new IllegalStateException("No current environment");
    }

    public final Configurable d(Environment environment) {
        int i = this.b;
        if (i == 0) {
            return environment;
        }
        if (i == 1) {
            return environment.w();
        }
        if (i == 2) {
            return environment.w().w();
        }
        throw new BugException();
    }
}
