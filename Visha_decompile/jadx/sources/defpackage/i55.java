package defpackage;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

public final class i55 {
    public final Class a;
    public final Object b;
    public final Method c;
    public final List d;

    public i55(Class cls, Object obj, Method method, List list) {
        this.a = cls;
        this.b = obj;
        this.c = method;
        this.d = Collections.unmodifiableList(list);
    }

    public Method a() {
        return this.c;
    }

    public Class b() {
        return this.a;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.a.getName(), this.c.getName(), this.d);
    }
}
