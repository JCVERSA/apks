package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

public abstract class l3 extends AbstractMap implements Map, ue5 {
    public abstract Set b();

    public Set c() {
        return super.keySet();
    }

    public int d() {
        return super.size();
    }

    public Collection e() {
        return super.values();
    }

    @Override
    public final Set entrySet() {
        return b();
    }

    @Override
    public final Set keySet() {
        return c();
    }

    @Override
    public final int size() {
        return d();
    }

    @Override
    public final Collection values() {
        return e();
    }
}
