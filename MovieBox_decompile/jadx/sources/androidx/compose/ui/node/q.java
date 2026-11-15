package androidx.compose.ui.node;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.function.UnaryOperator;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public final class q implements List, KMappedMarker {

    private int f5115d;

    private Object[] f5112a = new Object[16];

    private long[] f5113b = new long[16];

    private int f5114c = -1;

    private boolean f5116e = true;

    private final class b implements List, KMappedMarker {

        private final int f5121a;

        private final int f5122b;

        public b(int i10, int i11) {
            this.f5121a = i10;
            this.f5122b = i11;
        }

        public boolean a(androidx.compose.ui.f.c cVar) {
            return indexOf(cVar) != -1;
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
        public androidx.compose.ui.f.c get(int i10) {
            Object obj = q.this.f5112a[i10 + this.f5121a];
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
            return (androidx.compose.ui.f.c) obj;
        }

        @Override
        public void clear() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public final boolean contains(Object obj) {
            if (obj instanceof androidx.compose.ui.f.c) {
                return a((androidx.compose.ui.f.c) obj);
            }
            return false;
        }

        @Override
        public boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains((androidx.compose.ui.f.c) it.next())) {
                    return false;
                }
            }
            return true;
        }

        public int e() {
            return this.f5122b - this.f5121a;
        }

        public int f(androidx.compose.ui.f.c cVar) {
            int i10 = this.f5121a;
            int i11 = this.f5122b;
            if (i10 > i11) {
                return -1;
            }
            while (!Intrinsics.c(q.this.f5112a[i10], cVar)) {
                if (i10 == i11) {
                    return -1;
                }
                i10++;
            }
            return i10 - this.f5121a;
        }

        public int i(androidx.compose.ui.f.c cVar) {
            int i10 = this.f5122b;
            int i11 = this.f5121a;
            if (i11 > i10) {
                return -1;
            }
            while (!Intrinsics.c(q.this.f5112a[i10], cVar)) {
                if (i10 == i11) {
                    return -1;
                }
                i10--;
            }
            return i10 - this.f5121a;
        }

        @Override
        public final int indexOf(Object obj) {
            if (obj instanceof androidx.compose.ui.f.c) {
                return f((androidx.compose.ui.f.c) obj);
            }
            return -1;
        }

        @Override
        public boolean isEmpty() {
            return size() == 0;
        }

        @Override
        public Iterator iterator() {
            q qVar = q.this;
            int i10 = this.f5121a;
            return qVar.new a(i10, i10, this.f5122b);
        }

        @Override
        public final int lastIndexOf(Object obj) {
            if (obj instanceof androidx.compose.ui.f.c) {
                return i((androidx.compose.ui.f.c) obj);
            }
            return -1;
        }

        @Override
        public ListIterator listIterator() {
            q qVar = q.this;
            int i10 = this.f5121a;
            return qVar.new a(i10, i10, this.f5122b);
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
            q qVar = q.this;
            int i12 = this.f5121a;
            return qVar.new b(i10 + i12, i12 + i11);
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
            q qVar = q.this;
            int i11 = this.f5121a;
            return qVar.new a(i10 + i11, i11, this.f5122b);
        }

        @Override
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }
    }

    private final void j() {
        int i10 = this.f5114c;
        Object[] objArr = this.f5112a;
        if (i10 >= objArr.length) {
            int length = objArr.length + 16;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f5112a = objArrCopyOf;
            long[] jArrCopyOf = Arrays.copyOf(this.f5113b, length);
            Intrinsics.g(jArrCopyOf, "copyOf(this, newSize)");
            this.f5113b = jArrCopyOf;
        }
    }

    private final long l() {
        long jA = r.a(Float.POSITIVE_INFINITY, false);
        int i10 = this.f5114c + 1;
        int iN = CollectionsKt.n(this);
        if (i10 <= iN) {
            while (true) {
                long jB = l.b(this.f5113b[i10]);
                if (l.a(jB, jA) < 0) {
                    jA = jB;
                }
                if (l.c(jA) < 0.0f && l.d(jA)) {
                    return jA;
                }
                if (i10 != iN) {
                    i10++;
                }
            }
        }
        return jA;
    }

    private final void v() {
        int i10 = this.f5114c + 1;
        int iN = CollectionsKt.n(this);
        if (i10 <= iN) {
            while (true) {
                this.f5112a[i10] = null;
                if (i10 == iN) {
                    break;
                } else {
                    i10++;
                }
            }
        }
        this.f5115d = this.f5114c + 1;
    }

    public final void a() {
        this.f5114c = size() - 1;
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
    public final void clear() {
        this.f5114c = -1;
        v();
        this.f5116e = true;
    }

    @Override
    public final boolean contains(Object obj) {
        if (obj instanceof androidx.compose.ui.f.c) {
            return i((androidx.compose.ui.f.c) obj);
        }
        return false;
    }

    @Override
    public boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains((androidx.compose.ui.f.c) it.next())) {
                return false;
            }
        }
        return true;
    }

    public boolean i(androidx.compose.ui.f.c cVar) {
        return indexOf(cVar) != -1;
    }

    @Override
    public final int indexOf(Object obj) {
        if (obj instanceof androidx.compose.ui.f.c) {
            return s((androidx.compose.ui.f.c) obj);
        }
        return -1;
    }

    @Override
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override
    public Iterator iterator() {
        return new a(this, 0, 0, 0, 7, null);
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (obj instanceof androidx.compose.ui.f.c) {
            return u((androidx.compose.ui.f.c) obj);
        }
        return -1;
    }

    @Override
    public ListIterator listIterator() {
        return new a(this, 0, 0, 0, 7, null);
    }

    @Override
    public androidx.compose.ui.f.c get(int i10) {
        Object obj = this.f5112a[i10];
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
        return (androidx.compose.ui.f.c) obj;
    }

    public final boolean n() {
        return this.f5116e;
    }

    public int o() {
        return this.f5115d;
    }

    public final boolean p() {
        long jL = l();
        return l.c(jL) < 0.0f && l.d(jL);
    }

    public final void q(androidx.compose.ui.f.c cVar, boolean z10, Function0 function0) {
        r(cVar, -1.0f, z10, function0);
        NodeCoordinator nodeCoordinatorB1 = cVar.b1();
        if (nodeCoordinatorB1 == null || nodeCoordinatorB1.E2()) {
            return;
        }
        this.f5116e = false;
    }

    public final void r(androidx.compose.ui.f.c cVar, float f10, boolean z10, Function0 function0) {
        int i10 = this.f5114c;
        this.f5114c = i10 + 1;
        j();
        Object[] objArr = this.f5112a;
        int i11 = this.f5114c;
        objArr[i11] = cVar;
        this.f5113b[i11] = r.a(f10, z10);
        v();
        function0.invoke();
        this.f5114c = i10;
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

    public int s(androidx.compose.ui.f.c cVar) {
        int iN = CollectionsKt.n(this);
        if (iN < 0) {
            return -1;
        }
        int i10 = 0;
        while (!Intrinsics.c(this.f5112a[i10], cVar)) {
            if (i10 == iN) {
                return -1;
            }
            i10++;
        }
        return i10;
    }

    @Override
    public Object set(int i10, Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public final int size() {
        return o();
    }

    @Override
    public void sort(Comparator comparator) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public List subList(int i10, int i11) {
        return new b(i10, i11);
    }

    public final boolean t(float f10, boolean z10) {
        if (this.f5114c == CollectionsKt.n(this)) {
            return true;
        }
        return l.a(l(), r.a(f10, z10)) > 0;
    }

    @Override
    public Object[] toArray() {
        return CollectionToArray.a(this);
    }

    public int u(androidx.compose.ui.f.c cVar) {
        for (int iN = CollectionsKt.n(this); -1 < iN; iN--) {
            if (Intrinsics.c(this.f5112a[iN], cVar)) {
                return iN;
            }
        }
        return -1;
    }

    public final void w(androidx.compose.ui.f.c cVar, float f10, boolean z10, Function0 function0) {
        if (this.f5114c == CollectionsKt.n(this)) {
            r(cVar, f10, z10, function0);
            if (this.f5114c + 1 == CollectionsKt.n(this)) {
                v();
                return;
            }
            return;
        }
        long jL = l();
        int i10 = this.f5114c;
        this.f5114c = CollectionsKt.n(this);
        r(cVar, f10, z10, function0);
        if (this.f5114c + 1 < CollectionsKt.n(this) && l.a(jL, l()) > 0) {
            int i11 = this.f5114c + 1;
            int i12 = i10 + 1;
            Object[] objArr = this.f5112a;
            ArraysKt.l(objArr, objArr, i12, i11, size());
            long[] jArr = this.f5113b;
            ArraysKt.k(jArr, jArr, i12, i11, size());
            this.f5114c = ((size() + i10) - this.f5114c) - 1;
        }
        v();
        this.f5114c = i10;
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
        return new a(this, i10, 0, 0, 6, null);
    }

    @Override
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override
    public Object[] toArray(Object[] objArr) {
        return CollectionToArray.b(this, objArr);
    }

    private final class a implements ListIterator, KMappedMarker {

        private int f5117a;

        private final int f5118b;

        private final int f5119c;

        public a(int i10, int i11, int i12) {
            this.f5117a = i10;
            this.f5118b = i11;
            this.f5119c = i12;
        }

        @Override
        public androidx.compose.ui.f.c next() {
            Object[] objArr = q.this.f5112a;
            int i10 = this.f5117a;
            this.f5117a = i10 + 1;
            Object obj = objArr[i10];
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
            return (androidx.compose.ui.f.c) obj;
        }

        @Override
        public void add(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public androidx.compose.ui.f.c previous() {
            Object[] objArr = q.this.f5112a;
            int i10 = this.f5117a - 1;
            this.f5117a = i10;
            Object obj = objArr[i10];
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.ui.Modifier.Node");
            return (androidx.compose.ui.f.c) obj;
        }

        @Override
        public boolean hasNext() {
            return this.f5117a < this.f5119c;
        }

        @Override
        public boolean hasPrevious() {
            return this.f5117a > this.f5118b;
        }

        @Override
        public int nextIndex() {
            return this.f5117a - this.f5118b;
        }

        @Override
        public int previousIndex() {
            return (this.f5117a - this.f5118b) - 1;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override
        public void set(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public a(q qVar, int i10, int i11, int i12, int i13, DefaultConstructorMarker defaultConstructorMarker) {
            this((i13 & 1) != 0 ? 0 : i10, (i13 & 2) != 0 ? 0 : i11, (i13 & 4) != 0 ? qVar.size() : i12);
        }
    }
}
