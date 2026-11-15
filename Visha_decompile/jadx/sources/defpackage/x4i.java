package defpackage;

import java.util.Iterator;
import java.util.Map;

public abstract class x4i extends p5i {
    public final Map b;

    public x4i(Map map) {
        map.getClass();
        this.b = map;
    }

    @Override
    public final boolean contains(Object obj) {
        return this.b.containsKey(obj);
    }

    @Override
    public final boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public abstract Iterator iterator();

    @Override
    public final int size() {
        return this.b.size();
    }
}
