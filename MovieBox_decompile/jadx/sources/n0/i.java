package n0;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class i implements Collection, KMappedMarker {

    public static final a f66852c = new a(null);

    private static final i f66853d = new i(CollectionsKt.l());

    private final List f66854a;

    private final int f66855b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final i a() {
            return k.a().d();
        }

        public final i b() {
            return i.f66853d;
        }

        private a() {
        }
    }

    public i(List list) {
        this.f66854a = list;
        this.f66855b = list.size();
    }

    @Override
    public boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public boolean c(h hVar) {
        return this.f66854a.contains(hVar);
    }

    @Override
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof h) {
            return c((h) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection collection) {
        return this.f66854a.containsAll(collection);
    }

    public final h e(int i10) {
        return (h) this.f66854a.get(i10);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof i) && Intrinsics.c(this.f66854a, ((i) obj).f66854a);
    }

    public final List f() {
        return this.f66854a;
    }

    @Override
    public int hashCode() {
        return this.f66854a.hashCode();
    }

    public int i() {
        return this.f66855b;
    }

    @Override
    public boolean isEmpty() {
        return this.f66854a.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.f66854a.iterator();
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
    public boolean removeIf(Predicate predicate) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return i();
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public String toString() {
        return "LocaleList(localeList=" + this.f66854a + ')';
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }
}
