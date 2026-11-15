package androidx.compose.foundation.lazy.layout;

import androidx.compose.runtime.snapshots.SnapshotStateList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class w implements List, KMappedMarker {

    private final List f2774a;

    public interface a {
        int getIndex();

        Object getKey();
    }

    private w(List list) {
        this.f2774a = list;
    }

    public boolean a(a aVar) {
        return this.f2774a.contains(aVar);
    }

    @Override
    public void add(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public a get(int i10) {
        return (a) this.f2774a.get(i10);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof a) {
            return a((a) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection collection) {
        return this.f2774a.containsAll(collection);
    }

    public int e() {
        return this.f2774a.size();
    }

    public int f(a aVar) {
        return this.f2774a.indexOf(aVar);
    }

    public int i(a aVar) {
        return this.f2774a.lastIndexOf(aVar);
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof a) {
            return f((a) obj);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.f2774a.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.f2774a.iterator();
    }

    public final void j(a aVar) {
        this.f2774a.add(aVar);
    }

    public final void l(a aVar) {
        this.f2774a.remove(aVar);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof a) {
            return i((a) obj);
        }
        return -1;
    }

    @Override
    public ListIterator listIterator() {
        return this.f2774a.listIterator();
    }

    @Override
    public Object remove(int i10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public void replaceAll(UnaryOperator unaryOperator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object set(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return e();
    }

    @Override
    public void sort(Comparator comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public List subList(int i10, int i11) {
        return this.f2774a.subList(i10, i11);
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
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
    public ListIterator listIterator(int i10) {
        return this.f2774a.listIterator(i10);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    public w() {
        this(new SnapshotStateList());
    }
}
