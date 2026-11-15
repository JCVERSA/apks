package kotlin.collections;

import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

final class c implements Collection, KMappedMarker {

    private final Object[] f64202a;

    private final boolean f64203b;

    public c(Object[] values, boolean z10) {
        Intrinsics.h(values, "values");
        this.f64202a = values;
        this.f64203b = z10;
    }

    public int a() {
        return this.f64202a.length;
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean contains(Object obj) {
        return ArraysKt.L(this.f64202a, obj);
    }

    @Override
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        Collection collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean isEmpty() {
        return this.f64202a.length == 0;
    }

    @Override
    public Iterator iterator() {
        return ArrayIteratorKt.a(this.f64202a);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return a();
    }

    @Override
    public Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        return CollectionToArray.b(this, array);
    }

    @Override
    public final Object[] toArray() {
        return i.b(this.f64202a, this.f64203b);
    }
}
