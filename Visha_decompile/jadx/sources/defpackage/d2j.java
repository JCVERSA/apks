package defpackage;

import java.util.Map;
import java.util.Objects;

public final class d2j implements Map.Entry, Comparable {
    public Object b;
    public final o2j c;

    public d2j(o2j o2jVar, xbi xbiVar, Object obj) {
        Objects.requireNonNull(o2jVar);
        this.c = o2jVar;
        this.b = obj;
    }

    public static final boolean b(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public final xbi a() {
        return null;
    }

    @Override
    public final int compareTo(Object obj) {
        ((d2j) obj).getClass();
        throw null;
    }

    @Override
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        return b(null, entry.getKey()) && b(this.b, entry.getValue());
    }

    @Override
    public final Object getKey() {
        return null;
    }

    @Override
    public final Object getValue() {
        return this.b;
    }

    @Override
    public final int hashCode() {
        Object obj = this.b;
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    @Override
    public final Object setValue(Object obj) {
        this.c.q();
        Object obj2 = this.b;
        this.b = obj;
        return obj2;
    }

    public final String toString() {
        return "null=" + String.valueOf(this.b);
    }
}
