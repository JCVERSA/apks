package defpackage;

import java.util.List;
import java.util.Map;
import java.util.Set;

public final class lli extends g4i {
    public final Map b;

    public lli(Map map) {
        this.b = map;
    }

    @Override
    public final Object a() {
        return this.b;
    }

    @Override
    public final boolean containsKey(Object obj) {
        return obj != null && super.containsKey(obj);
    }

    @Override
    public final boolean containsValue(Object obj) {
        return super.f(obj);
    }

    @Override
    public final Map d() {
        return this.b;
    }

    @Override
    public final Set entrySet() {
        return s5i.c(this.b.entrySet(), new w2i() {
            @Override
            public final boolean zza(Object obj) {
                return ((Map.Entry) obj).getKey() != null;
            }
        });
    }

    @Override
    public final boolean equals(Object obj) {
        return obj != null && super.g(obj);
    }

    @Override
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.b.get(obj);
    }

    @Override
    public final int hashCode() {
        return super.e();
    }

    @Override
    public final boolean isEmpty() {
        if (this.b.isEmpty()) {
            return true;
        }
        return super.size() == 1 && super.containsKey(null);
    }

    @Override
    public final Set keySet() {
        return s5i.c(this.b.keySet(), new w2i() {
            @Override
            public final boolean zza(Object obj) {
                return ((String) obj) != null;
            }
        });
    }

    @Override
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }
}
