package defpackage;

import java.util.Map;

public abstract class h3 extends m3 {
    public final boolean b(Map.Entry entry) {
        y45.j(entry, "element");
        return c(entry);
    }

    public abstract boolean c(Map.Entry entry);

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return b((Map.Entry) obj);
        }
        return false;
    }

    public abstract boolean f(Map.Entry entry);

    @Override
    public final boolean remove(Object obj) {
        if (obj instanceof Map.Entry) {
            return f((Map.Entry) obj);
        }
        return false;
    }
}
