package retrofit2;

import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

public final class v {

    private final Class f71154a;

    private final Object f71155b;

    private final Method f71156c;

    private final List f71157d;

    v(Class cls, Object obj, Method method, List list) {
        this.f71154a = cls;
        this.f71155b = obj;
        this.f71156c = method;
        this.f71157d = Collections.unmodifiableList(list);
    }

    public Method a() {
        return this.f71156c;
    }

    public Class b() {
        return this.f71154a;
    }

    public String toString() {
        return String.format("%s.%s() %s", this.f71154a.getName(), this.f71156c.getName(), this.f71157d);
    }
}
