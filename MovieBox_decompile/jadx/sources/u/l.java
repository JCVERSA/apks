package u;

import java.util.Collection;
import java.util.Iterator;
import kotlin.collections.AbstractMutableCollection;
import kotlin.jvm.internal.markers.KMutableCollection;

public final class l extends AbstractMutableCollection implements Collection, KMutableCollection {

    private final f f72914a;

    public l(f fVar) {
        this.f72914a = fVar;
    }

    @Override
    public int a() {
        return this.f72914a.size();
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        this.f72914a.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f72914a.containsValue(obj);
    }

    @Override
    public Iterator iterator() {
        return new m(this.f72914a);
    }
}
