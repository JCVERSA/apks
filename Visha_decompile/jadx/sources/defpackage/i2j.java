package defpackage;

import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;

public final class i2j extends AbstractSet {
    public final o2j b;

    public i2j(o2j o2jVar, l2j l2jVar) {
        Objects.requireNonNull(o2jVar);
        this.b = o2jVar;
    }

    @Override
    public final boolean add(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (contains(entry)) {
            return false;
        }
        o2j o2jVar = this.b;
        ubc.a(entry.getKey());
        o2jVar.f(null, entry.getValue());
        return true;
    }

    @Override
    public final void clear() {
        this.b.clear();
    }

    @Override
    public final boolean contains(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        Object obj2 = this.b.get(entry.getKey());
        Object value = entry.getValue();
        if (obj2 != value) {
            return obj2 != null && obj2.equals(value);
        }
        return true;
    }

    @Override
    public final Iterator iterator() {
        return new g2j(this.b, null);
    }

    @Override
    public final boolean remove(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        if (!contains(entry)) {
            return false;
        }
        this.b.remove(entry.getKey());
        return true;
    }

    @Override
    public final int size() {
        return this.b.size();
    }
}
