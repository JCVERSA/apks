package defpackage;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.greenrobot.greendao.generator.Schema;

public final class iw6 implements hw6 {
    public final Map b;
    public final e74 c;

    public iw6(Map map, e74 e74Var) {
        y45.j(map, "map");
        y45.j(e74Var, Schema.DEFAULT_NAME);
        this.b = map;
        this.c = e74Var;
    }

    public Set b() {
        return i().entrySet();
    }

    public Set c() {
        return i().keySet();
    }

    @Override
    public void clear() {
        i().clear();
    }

    @Override
    public boolean containsKey(Object obj) {
        return i().containsKey(obj);
    }

    @Override
    public boolean containsValue(Object obj) {
        return i().containsValue(obj);
    }

    public int d() {
        return i().size();
    }

    public Collection e() {
        return i().values();
    }

    @Override
    public final Set entrySet() {
        return b();
    }

    @Override
    public boolean equals(Object obj) {
        return i().equals(obj);
    }

    @Override
    public Object get(Object obj) {
        return i().get(obj);
    }

    @Override
    public int hashCode() {
        return i().hashCode();
    }

    @Override
    public Map i() {
        return this.b;
    }

    @Override
    public boolean isEmpty() {
        return i().isEmpty();
    }

    @Override
    public Object j(Object obj) {
        Map mapI = i();
        Object obj2 = mapI.get(obj);
        return (obj2 != null || mapI.containsKey(obj)) ? obj2 : this.c.invoke(obj);
    }

    @Override
    public final Set keySet() {
        return c();
    }

    @Override
    public Object put(Object obj, Object obj2) {
        return i().put(obj, obj2);
    }

    @Override
    public void putAll(Map map) {
        y45.j(map, "from");
        i().putAll(map);
    }

    @Override
    public Object remove(Object obj) {
        return i().remove(obj);
    }

    @Override
    public final int size() {
        return d();
    }

    public String toString() {
        return i().toString();
    }

    @Override
    public final Collection values() {
        return e();
    }
}
