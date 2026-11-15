package u;

import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class h extends a {

    private final f f72911a;

    public h(f fVar) {
        this.f72911a = fVar;
    }

    @Override
    public boolean c(Map.Entry entry) {
        Object obj = this.f72911a.get(entry.getKey());
        if (obj != null) {
            return Intrinsics.c(obj, entry.getValue());
        }
        return entry.getValue() == null && this.f72911a.containsKey(entry.getKey());
    }

    @Override
    public void clear() {
        this.f72911a.clear();
    }

    @Override
    public boolean f(Map.Entry entry) {
        return this.f72911a.remove(entry.getKey(), entry.getValue());
    }

    @Override
    public int getSize() {
        return this.f72911a.size();
    }

    @Override
    public boolean add(Map.Entry entry) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Iterator iterator() {
        return new i(this.f72911a);
    }
}
