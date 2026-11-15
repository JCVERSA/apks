package u;

import java.util.Iterator;
import java.util.Map;
import kotlin.collections.AbstractSet;
import kotlin.jvm.internal.Intrinsics;

public final class n extends AbstractSet implements t.e {

    private final d f72915b;

    public n(d dVar) {
        this.f72915b = dVar;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            return e((Map.Entry) obj);
        }
        return false;
    }

    public boolean e(Map.Entry entry) {
        if (!(entry instanceof Map.Entry)) {
            return false;
        }
        Object obj = this.f72915b.get(entry.getKey());
        if (obj != null) {
            return Intrinsics.c(obj, entry.getValue());
        }
        return entry.getValue() == null && this.f72915b.containsKey(entry.getKey());
    }

    @Override
    public int get_size() {
        return this.f72915b.size();
    }

    @Override
    public Iterator iterator() {
        return new o(this.f72915b.u());
    }
}
