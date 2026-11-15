package u;

import java.util.Iterator;
import java.util.Set;
import kotlin.collections.AbstractMutableSet;
import kotlin.jvm.internal.markers.KMutableSet;

public final class j extends AbstractMutableSet implements Set, KMutableSet {

    private final f f72913a;

    public j(f fVar) {
        this.f72913a = fVar;
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override
    public void clear() {
        this.f72913a.clear();
    }

    @Override
    public boolean contains(Object obj) {
        return this.f72913a.containsKey(obj);
    }

    @Override
    public int getSize() {
        return this.f72913a.size();
    }

    @Override
    public Iterator iterator() {
        return new k(this.f72913a);
    }

    @Override
    public boolean remove(Object obj) {
        if (!this.f72913a.containsKey(obj)) {
            return false;
        }
        this.f72913a.remove(obj);
        return true;
    }
}
