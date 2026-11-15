package v;

import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import kotlin.jvm.internal.markers.KMappedMarker;

public class c implements Iterator, KMappedMarker {

    private Object f73412a;

    private final Map f73413b;

    private int f73414c;

    public c(Object obj, Map map) {
        this.f73412a = obj;
        this.f73413b = map;
    }

    private final void a() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
    }

    @Override
    public boolean hasNext() {
        return this.f73414c < this.f73413b.size();
    }

    @Override
    public Object next() {
        a();
        Object obj = this.f73412a;
        this.f73414c++;
        Object obj2 = this.f73413b.get(obj);
        if (obj2 != null) {
            this.f73412a = ((a) obj2).c();
            return obj;
        }
        throw new ConcurrentModificationException("Hash code of an element (" + obj + ") has changed after it was added to the persistent set.");
    }

    @Override
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
