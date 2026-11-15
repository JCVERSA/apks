package androidx.compose.runtime.snapshots;

import java.util.Set;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.markers.KMutableSet;

abstract class p implements Set, KMutableSet {

    private final t f3708a;

    public p(t tVar) {
        this.f3708a = tVar;
    }

    public final t a() {
        return this.f3708a;
    }

    public int c() {
        return this.f3708a.size();
    }

    @Override
    public void clear() {
        this.f3708a.clear();
    }

    @Override
    public boolean isEmpty() {
        return this.f3708a.isEmpty();
    }

    @Override
    public final int size() {
        return c();
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }
}
