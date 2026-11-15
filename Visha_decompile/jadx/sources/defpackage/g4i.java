package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;

public abstract class g4i extends h4i implements Map {
    @Override
    public final void clear() {
        d().clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return d().containsKey(obj);
    }

    public abstract Map d();

    public final int e() {
        return s5i.a(entrySet());
    }

    @Override
    public abstract Set entrySet();

    public final boolean f(Object obj) {
        v4i v4iVar = new v4i(entrySet().iterator());
        if (obj == null) {
            while (v4iVar.hasNext()) {
                if (v4iVar.next() == null) {
                }
            }
            return false;
        }
        while (v4iVar.hasNext()) {
            if (obj.equals(v4iVar.next())) {
            }
        }
        return false;
        return true;
    }

    public final boolean g(Object obj) {
        return a5i.b(this, obj);
    }

    @Override
    public final Object put(Object obj, Object obj2) {
        return d().put(obj, obj2);
    }

    @Override
    public final void putAll(Map map) {
        d().putAll(map);
    }

    @Override
    public final Object remove(Object obj) {
        return d().remove(obj);
    }

    @Override
    public int size() {
        return d().size();
    }

    @Override
    public final Collection values() {
        return d().values();
    }
}
