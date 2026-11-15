package androidx.compose.ui.layout;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.function.Predicate;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;

public interface p0 {

    public static final class a implements Collection, KMappedMarker {

        private final Set f4887a;

        /* JADX WARN: Multi-variable type inference failed */
        public a() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @Override
        public final boolean add(Object obj) {
            return this.f4887a.add(obj);
        }

        @Override
        public boolean addAll(Collection collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public int c() {
            return this.f4887a.size();
        }

        @Override
        public final void clear() {
            this.f4887a.clear();
        }

        @Override
        public boolean contains(Object obj) {
            return this.f4887a.contains(obj);
        }

        @Override
        public boolean containsAll(Collection collection) {
            return this.f4887a.containsAll(collection);
        }

        @Override
        public boolean isEmpty() {
            return this.f4887a.isEmpty();
        }

        @Override
        public Iterator iterator() {
            return this.f4887a.iterator();
        }

        @Override
        public final boolean remove(Object obj) {
            return this.f4887a.remove(obj);
        }

        @Override
        public final boolean removeAll(Collection collection) {
            return this.f4887a.remove(collection);
        }

        @Override
        public boolean removeIf(Predicate predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public final boolean retainAll(Collection collection) {
            return this.f4887a.retainAll(collection);
        }

        @Override
        public final int size() {
            return c();
        }

        @Override
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        public a(Set set) {
            this.f4887a = set;
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }

        public a(Set set, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? new LinkedHashSet() : set);
        }
    }

    void a(a aVar);

    boolean b(Object obj, Object obj2);
}
