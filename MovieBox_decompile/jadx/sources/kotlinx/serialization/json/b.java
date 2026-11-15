package kotlinx.serialization.json;

import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class b extends h implements List, KMappedMarker {

    public static final a f65266c = new a(null);

    private final List f65267b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(List content) {
        super(null);
        Intrinsics.h(content, "content");
        this.f65267b = content;
    }

    public boolean a(h element) {
        Intrinsics.h(element, "element");
        return this.f65267b.contains(element);
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
    public h get(int i10) {
        return (h) this.f65267b.get(i10);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof h) {
            return a((h) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        return this.f65267b.containsAll(elements);
    }

    public int e() {
        return this.f65267b.size();
    }

    @Override
    public boolean equals(Object obj) {
        return Intrinsics.c(this.f65267b, obj);
    }

    public int f(h element) {
        Intrinsics.h(element, "element");
        return this.f65267b.indexOf(element);
    }

    @Override
    public int hashCode() {
        return this.f65267b.hashCode();
    }

    public int i(h element) {
        Intrinsics.h(element, "element");
        return this.f65267b.lastIndexOf(element);
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof h) {
            return f((h) obj);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return this.f65267b.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.f65267b.iterator();
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof h) {
            return i((h) obj);
        }
        return -1;
    }

    @Override
    public ListIterator listIterator() {
        return this.f65267b.listIterator();
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
        return this.f65267b.subList(i10, i11);
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public String toString() {
        return CollectionsKt.s0(this.f65267b, ",", "[", "]", 0, null, null, 56, null);
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
        return this.f65267b.listIterator(i10);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        return CollectionToArray.b(this, array);
    }
}
