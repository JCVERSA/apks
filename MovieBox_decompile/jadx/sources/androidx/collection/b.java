package androidx.collection;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMutableCollection;
import kotlin.jvm.internal.markers.KMutableSet;

public final class b implements Collection, Set, KMutableCollection, KMutableSet {

    private int[] f1954a;

    private Object[] f1955b;

    private int f1956c;

    private final class a extends k {
        public a() {
            super(b.this.i());
        }

        @Override
        protected Object a(int i10) {
            return b.this.o(i10);
        }

        @Override
        protected void c(int i10) {
            b.this.j(i10);
        }
    }

    @JvmOverloads
    public b() {
        this(0, 1, null);
    }

    public final void a(int i10) {
        int i11 = i();
        if (e().length < i10) {
            int[] iArrE = e();
            Object[] objArrC = c();
            d.a(this, i10);
            if (i() > 0) {
                ArraysKt.o(iArrE, e(), 0, 0, i(), 6, null);
                ArraysKt.p(objArrC, c(), 0, 0, i(), 6, null);
            }
        }
        if (i() != i11) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public boolean add(Object obj) {
        int i10;
        int iC;
        int i11 = i();
        if (obj == null) {
            iC = d.d(this);
            i10 = 0;
        } else {
            int iHashCode = obj.hashCode();
            i10 = iHashCode;
            iC = d.c(this, obj, iHashCode);
        }
        if (iC >= 0) {
            return false;
        }
        int i12 = ~iC;
        if (i11 >= e().length) {
            int i13 = 8;
            if (i11 >= 8) {
                i13 = (i11 >> 1) + i11;
            } else if (i11 < 4) {
                i13 = 4;
            }
            int[] iArrE = e();
            Object[] objArrC = c();
            d.a(this, i13);
            if (i11 != i()) {
                throw new ConcurrentModificationException();
            }
            if (!(e().length == 0)) {
                ArraysKt.o(iArrE, e(), 0, 0, iArrE.length, 6, null);
                ArraysKt.p(objArrC, c(), 0, 0, objArrC.length, 6, null);
            }
        }
        if (i12 < i11) {
            int i14 = i12 + 1;
            ArraysKt.j(e(), e(), i14, i12, i11);
            ArraysKt.l(c(), c(), i14, i12, i11);
        }
        if (i11 != i() || i12 >= e().length) {
            throw new ConcurrentModificationException();
        }
        e()[i12] = i10;
        c()[i12] = obj;
        n(i() + 1);
        return true;
    }

    @Override
    public boolean addAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        a(i() + elements.size());
        Iterator it = elements.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final Object[] c() {
        return this.f1955b;
    }

    @Override
    public void clear() {
        if (i() != 0) {
            m(n.a.f66842a);
            l(n.a.f66844c);
            n(0);
        }
        if (i() != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override
    public boolean containsAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        Iterator it = elements.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int[] e() {
        return this.f1954a;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Set) && size() == ((Set) obj).size()) {
            try {
                int i10 = i();
                for (int i11 = 0; i11 < i10; i11++) {
                    if (((Set) obj).contains(o(i11))) {
                    }
                }
                return true;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public int f() {
        return this.f1956c;
    }

    @Override
    public int hashCode() {
        int[] iArrE = e();
        int i10 = i();
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArrE[i12];
        }
        return i11;
    }

    public final int i() {
        return this.f1956c;
    }

    public final int indexOf(Object obj) {
        return obj == null ? d.d(this) : d.c(this, obj, obj.hashCode());
    }

    @Override
    public boolean isEmpty() {
        return i() <= 0;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    public final Object j(int i10) {
        int i11 = i();
        Object obj = c()[i10];
        if (i11 <= 1) {
            clear();
        } else {
            int i12 = i11 - 1;
            if (e().length <= 8 || i() >= e().length / 3) {
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    ArraysKt.j(e(), e(), i10, i13, i11);
                    ArraysKt.l(c(), c(), i10, i13, i11);
                }
                c()[i12] = null;
            } else {
                int i14 = i() > 8 ? i() + (i() >> 1) : 8;
                int[] iArrE = e();
                Object[] objArrC = c();
                d.a(this, i14);
                if (i10 > 0) {
                    ArraysKt.o(iArrE, e(), 0, 0, i10, 6, null);
                    ArraysKt.p(objArrC, c(), 0, 0, i10, 6, null);
                }
                if (i10 < i12) {
                    int i15 = i10 + 1;
                    ArraysKt.j(iArrE, e(), i10, i15, i11);
                    ArraysKt.l(objArrC, c(), i10, i15, i11);
                }
            }
            if (i11 != i()) {
                throw new ConcurrentModificationException();
            }
            n(i12);
        }
        return obj;
    }

    public final void l(Object[] objArr) {
        Intrinsics.h(objArr, "<set-?>");
        this.f1955b = objArr;
    }

    public final void m(int[] iArr) {
        Intrinsics.h(iArr, "<set-?>");
        this.f1954a = iArr;
    }

    public final void n(int i10) {
        this.f1956c = i10;
    }

    public final Object o(int i10) {
        return c()[i10];
    }

    @Override
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        j(iIndexOf);
        return true;
    }

    @Override
    public boolean removeAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        Iterator it = elements.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override
    public boolean retainAll(Collection elements) {
        Intrinsics.h(elements, "elements");
        boolean z10 = false;
        for (int i10 = i() - 1; -1 < i10; i10--) {
            if (!CollectionsKt.b0(elements, c()[i10])) {
                j(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override
    public final int size() {
        return f();
    }

    @Override
    public final Object[] toArray() {
        return ArraysKt.r(this.f1955b, 0, this.f1956c);
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb2 = new StringBuilder(i() * 14);
        sb2.append('{');
        int i10 = i();
        for (int i11 = 0; i11 < i10; i11++) {
            if (i11 > 0) {
                sb2.append(", ");
            }
            Object objO = o(i11);
            if (objO != this) {
                sb2.append(objO);
            } else {
                sb2.append("(this Set)");
            }
        }
        sb2.append('}');
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public b(int i10) {
        this.f1954a = n.a.f66842a;
        this.f1955b = n.a.f66844c;
        if (i10 > 0) {
            d.a(this, i10);
        }
    }

    @Override
    public final Object[] toArray(Object[] array) {
        Intrinsics.h(array, "array");
        Object[] result = c.a(array, this.f1956c);
        ArraysKt.l(this.f1955b, result, 0, 0, this.f1956c);
        Intrinsics.g(result, "result");
        return result;
    }

    public b(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? 0 : i10);
    }
}
