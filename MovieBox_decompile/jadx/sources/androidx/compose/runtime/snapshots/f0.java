package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.o1;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.KotlinNothingValueException;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.markers.KMutableList;
import kotlin.jvm.internal.markers.KMutableListIterator;
import kotlin.ranges.RangesKt;

final class f0 implements List, KMutableList {

    private final SnapshotStateList f3672a;

    private final int f3673b;

    private int f3674c;

    private int f3675d;

    public static final class a implements ListIterator, KMutableListIterator {

        final Ref.IntRef f3676a;

        final f0 f3677b;

        a(Ref.IntRef intRef, f0 f0Var) {
            this.f3676a = intRef;
            this.f3677b = f0Var;
        }

        @Override
        public Void add(Object obj) {
            s.f();
            throw new KotlinNothingValueException();
        }

        @Override
        public Void remove() {
            s.f();
            throw new KotlinNothingValueException();
        }

        @Override
        public Void set(Object obj) {
            s.f();
            throw new KotlinNothingValueException();
        }

        @Override
        public boolean hasNext() {
            return this.f3676a.element < this.f3677b.size() - 1;
        }

        @Override
        public boolean hasPrevious() {
            return this.f3676a.element >= 0;
        }

        @Override
        public Object next() {
            int i10 = this.f3676a.element + 1;
            s.g(i10, this.f3677b.size());
            this.f3676a.element = i10;
            return this.f3677b.get(i10);
        }

        @Override
        public int nextIndex() {
            return this.f3676a.element + 1;
        }

        @Override
        public Object previous() {
            int i10 = this.f3676a.element;
            s.g(i10, this.f3677b.size());
            this.f3676a.element = i10 - 1;
            return this.f3677b.get(i10);
        }

        @Override
        public int previousIndex() {
            return this.f3676a.element;
        }
    }

    public f0(SnapshotStateList snapshotStateList, int i10, int i11) {
        this.f3672a = snapshotStateList;
        this.f3673b = i10;
        this.f3674c = snapshotStateList.e();
        this.f3675d = i11 - i10;
    }

    private final void e() {
        if (this.f3672a.e() != this.f3674c) {
            throw new ConcurrentModificationException();
        }
    }

    public int a() {
        return this.f3675d;
    }

    @Override
    public boolean add(Object obj) {
        e();
        this.f3672a.add(this.f3673b + size(), obj);
        this.f3675d = size() + 1;
        this.f3674c = this.f3672a.e();
        return true;
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        e();
        boolean zAddAll = this.f3672a.addAll(i10 + this.f3673b, collection);
        if (zAddAll) {
            this.f3675d = size() + collection.size();
            this.f3674c = this.f3672a.e();
        }
        return zAddAll;
    }

    public Object c(int i10) {
        e();
        Object objRemove = this.f3672a.remove(this.f3673b + i10);
        this.f3675d = size() - 1;
        this.f3674c = this.f3672a.e();
        return objRemove;
    }

    @Override
    public void clear() {
        if (size() > 0) {
            e();
            SnapshotStateList snapshotStateList = this.f3672a;
            int i10 = this.f3673b;
            snapshotStateList.j(i10, size() + i10);
            this.f3675d = 0;
            this.f3674c = this.f3672a.e();
        }
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public boolean containsAll(Collection collection) {
        Collection collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return true;
        }
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override
    public Object get(int i10) {
        e();
        s.g(i10, size());
        return this.f3672a.get(this.f3673b + i10);
    }

    @Override
    public int indexOf(Object obj) {
        e();
        int i10 = this.f3673b;
        Iterator<Integer> it = RangesKt.s(i10, size() + i10).iterator();
        while (it.hasNext()) {
            int iA = ((IntIterator) it).a();
            if (Intrinsics.c(obj, this.f3672a.get(iA))) {
                return iA - this.f3673b;
            }
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Iterator iterator() {
        return listIterator();
    }

    @Override
    public int lastIndexOf(Object obj) {
        e();
        int size = this.f3673b + size();
        do {
            size--;
            if (size < this.f3673b) {
                return -1;
            }
        } while (!Intrinsics.c(obj, this.f3672a.get(size)));
        return size - this.f3673b;
    }

    @Override
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    public final Object remove(int i10) {
        return c(i10);
    }

    @Override
    public boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        while (true) {
            boolean z10 = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z10) {
                    z10 = true;
                }
            }
            return z10;
        }
    }

    @Override
    public boolean retainAll(Collection collection) {
        e();
        SnapshotStateList snapshotStateList = this.f3672a;
        int i10 = this.f3673b;
        int iL = snapshotStateList.l(collection, i10, size() + i10);
        if (iL > 0) {
            this.f3674c = this.f3672a.e();
            this.f3675d = size() - iL;
        }
        return iL > 0;
    }

    @Override
    public Object set(int i10, Object obj) {
        s.g(i10, size());
        e();
        Object obj2 = this.f3672a.set(i10 + this.f3673b, obj);
        this.f3674c = this.f3672a.e();
        return obj2;
    }

    @Override
    public final int size() {
        return a();
    }

    @Override
    public List subList(int i10, int i11) {
        if (!(i10 >= 0 && i10 <= i11 && i11 <= size())) {
            o1.a("fromIndex or toIndex are out of bounds");
        }
        e();
        SnapshotStateList snapshotStateList = this.f3672a;
        int i12 = this.f3673b;
        return new f0(snapshotStateList, i10 + i12, i11 + i12);
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    @Override
    public ListIterator listIterator(int i10) {
        e();
        Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10 - 1;
        return new a(intRef, this);
    }

    @Override
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    @Override
    public void add(int i10, Object obj) {
        e();
        this.f3672a.add(this.f3673b + i10, obj);
        this.f3675d = size() + 1;
        this.f3674c = this.f3672a.e();
    }

    @Override
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }
}
