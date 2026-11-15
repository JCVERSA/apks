package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.o1;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class PersistentVectorBuilder extends AbstractMutableList implements t.f.a {

    private t.f f3386a;

    private Object[] f3387b;

    private Object[] f3388c;

    private int f3389d;

    private w.e f3390e = new w.e();

    private Object[] f3391f;

    private Object[] f3392g;

    private int f3393h;

    public PersistentVectorBuilder(t.f fVar, Object[] objArr, Object[] objArr2, int i10) {
        this.f3386a = fVar;
        this.f3387b = objArr;
        this.f3388c = objArr2;
        this.f3389d = i10;
        this.f3391f = this.f3387b;
        this.f3392g = this.f3388c;
        this.f3393h = this.f3386a.size();
    }

    private final Object[] A(Object[] objArr, Object[] objArr2, int i10) {
        int iA = j.a(size() - 1, i10);
        Object[] objArrQ = q(objArr);
        if (i10 == 5) {
            objArrQ[iA] = objArr2;
        } else {
            objArrQ[iA] = A((Object[]) objArrQ[iA], objArr2, i10 - 5);
        }
        return objArrQ;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final int B(Function1 function1, Object[] objArr, int i10, int i11, c cVar, List list, List list2) {
        if (o(objArr)) {
            list.add(objArr);
        }
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr2 = (Object[]) objA;
        Object[] objArrS = objArr2;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (!((Boolean) function1.invoke(obj)).booleanValue()) {
                if (i11 == 32) {
                    objArrS = !list.isEmpty() ? (Object[]) list.remove(list.size() - 1) : s();
                    i11 = 0;
                }
                objArrS[i11] = obj;
                i11++;
            }
        }
        cVar.b(objArrS);
        if (objArr2 != cVar.a()) {
            list2.add(objArr2);
        }
        return i11;
    }

    private final int C(Function1 function1, Object[] objArr, int i10, c cVar) {
        Object[] objArrQ = objArr;
        int i11 = i10;
        boolean z10 = false;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (((Boolean) function1.invoke(obj)).booleanValue()) {
                if (!z10) {
                    objArrQ = q(objArr);
                    z10 = true;
                    i11 = i12;
                }
            } else if (z10) {
                objArrQ[i11] = obj;
                i11++;
            }
        }
        cVar.b(objArrQ);
        return i11;
    }

    private final boolean D(Function1 function1) {
        Object[] objArrX;
        int iN = N();
        c cVar = new c(null);
        if (this.f3391f == null) {
            return E(function1, iN, cVar) != iN;
        }
        ListIterator listIteratorP = p(0);
        int iC = 32;
        while (iC == 32 && listIteratorP.hasNext()) {
            iC = C(function1, (Object[]) listIteratorP.next(), 32, cVar);
        }
        if (iC == 32) {
            w.a.a(!listIteratorP.hasNext());
            int iE = E(function1, iN, cVar);
            if (iE == 0) {
                w(this.f3391f, size(), this.f3389d);
            }
            return iE != iN;
        }
        int iPreviousIndex = listIteratorP.previousIndex() << 5;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int iB = iC;
        while (listIteratorP.hasNext()) {
            iB = B(function1, (Object[]) listIteratorP.next(), 32, iB, cVar, arrayList2, arrayList);
            iPreviousIndex = iPreviousIndex;
        }
        int i10 = iPreviousIndex;
        int iB2 = B(function1, this.f3392g, iN, iB, cVar, arrayList2, arrayList);
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) objA;
        ArraysKt.u(objArr, null, iB2, 32);
        if (arrayList.isEmpty()) {
            objArrX = this.f3391f;
            Intrinsics.e(objArrX);
        } else {
            objArrX = x(this.f3391f, i10, this.f3389d, arrayList.iterator());
        }
        int size = i10 + (arrayList.size() << 5);
        this.f3391f = I(objArrX, size);
        this.f3392g = objArr;
        this.f3393h = size + iB2;
        return true;
    }

    private final int E(Function1 function1, int i10, c cVar) {
        int iC = C(function1, this.f3392g, i10, cVar);
        if (iC == i10) {
            w.a.a(cVar.a() == this.f3392g);
            return i10;
        }
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr = (Object[]) objA;
        ArraysKt.u(objArr, null, iC, i10);
        this.f3392g = objArr;
        this.f3393h = size() - (i10 - iC);
        return iC;
    }

    private final Object[] G(Object[] objArr, int i10, int i11, c cVar) {
        int iA = j.a(i11, i10);
        if (i10 == 0) {
            Object obj = objArr[iA];
            Object[] objArrL = ArraysKt.l(objArr, q(objArr), iA, iA + 1, 32);
            objArrL[31] = cVar.a();
            cVar.b(obj);
            return objArrL;
        }
        int iA2 = objArr[31] == null ? j.a(J() - 1, i10) : 31;
        Object[] objArrQ = q(objArr);
        int i12 = i10 - 5;
        int i13 = iA + 1;
        if (i13 <= iA2) {
            while (true) {
                Object obj2 = objArrQ[iA2];
                Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                objArrQ[iA2] = G((Object[]) obj2, i12, 0, cVar);
                if (iA2 == i13) {
                    break;
                }
                iA2--;
            }
        }
        Object obj3 = objArrQ[iA];
        Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrQ[iA] = G((Object[]) obj3, i12, i11, cVar);
        return objArrQ;
    }

    private final Object H(Object[] objArr, int i10, int i11, int i12) {
        int size = size() - i10;
        w.a.a(i12 < size);
        if (size == 1) {
            Object obj = this.f3392g[0];
            w(objArr, i10, i11);
            return obj;
        }
        Object[] objArr2 = this.f3392g;
        Object obj2 = objArr2[i12];
        Object[] objArrL = ArraysKt.l(objArr2, q(objArr2), i12, i12 + 1, size);
        objArrL[size - 1] = null;
        this.f3391f = objArr;
        this.f3392g = objArrL;
        this.f3393h = (i10 + size) - 1;
        this.f3389d = i11;
        return obj2;
    }

    private final Object[] I(Object[] objArr, int i10) {
        if (!((i10 & 31) == 0)) {
            o1.a("invalid size");
        }
        if (i10 == 0) {
            this.f3389d = 0;
            return null;
        }
        int i11 = i10 - 1;
        while (true) {
            int i12 = this.f3389d;
            if ((i11 >> i12) != 0) {
                return u(objArr, i11, i12);
            }
            this.f3389d = i12 - 5;
            Object[] objArr2 = objArr[0];
            Intrinsics.f(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
    }

    private final int J() {
        if (size() <= 32) {
            return 0;
        }
        return j.d(size());
    }

    private final Object[] K(Object[] objArr, int i10, int i11, Object obj, c cVar) {
        int iA = j.a(i11, i10);
        Object[] objArrQ = q(objArr);
        if (i10 != 0) {
            Object obj2 = objArrQ[iA];
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrQ[iA] = K((Object[]) obj2, i10 - 5, i11, obj, cVar);
            return objArrQ;
        }
        if (objArrQ != objArr) {
            ((AbstractList) this).modCount++;
        }
        cVar.b(objArrQ[iA]);
        objArrQ[iA] = obj;
        return objArrQ;
    }

    private final Object[] L(int i10, int i11, Object[][] objArr, int i12, Object[] objArr2) {
        if (this.f3391f == null) {
            throw new IllegalStateException("root is null");
        }
        ListIterator listIteratorP = p(J() >> 5);
        while (listIteratorP.previousIndex() != i10) {
            Object[] objArr3 = (Object[]) listIteratorP.previous();
            ArraysKt.l(objArr3, objArr2, 0, 32 - i11, 32);
            objArr2 = r(objArr3, i11);
            i12--;
            objArr[i12] = objArr2;
        }
        return (Object[]) listIteratorP.previous();
    }

    private final void M(Collection collection, int i10, Object[] objArr, int i11, Object[][] objArr2, int i12, Object[] objArr3) {
        Object[] objArrS;
        if (!(i12 >= 1)) {
            o1.a("requires at least one nullBuffer");
        }
        Object[] objArrQ = q(objArr);
        objArr2[0] = objArrQ;
        int i13 = i10 & 31;
        int size = ((i10 + collection.size()) - 1) & 31;
        int i14 = (i11 - i13) + size;
        if (i14 < 32) {
            ArraysKt.l(objArrQ, objArr3, size + 1, i13, i11);
        } else {
            int i15 = i14 - 31;
            if (i12 == 1) {
                objArrS = objArrQ;
            } else {
                objArrS = s();
                i12--;
                objArr2[i12] = objArrS;
            }
            int i16 = i11 - i15;
            ArraysKt.l(objArrQ, objArr3, 0, i16, i11);
            ArraysKt.l(objArrQ, objArrS, size + 1, i13, i16);
            objArr3 = objArrS;
        }
        Iterator it = collection.iterator();
        c(objArrQ, i13, it);
        for (int i17 = 1; i17 < i12; i17++) {
            objArr2[i17] = c(s(), 0, it);
        }
        c(objArr3, 0, it);
    }

    private final int N() {
        return O(size());
    }

    private final int O(int i10) {
        return i10 <= 32 ? i10 : i10 - j.d(i10);
    }

    private final Object[] a(int i10) {
        if (J() <= i10) {
            return this.f3392g;
        }
        Object[] objArr = this.f3391f;
        Intrinsics.e(objArr);
        for (int i11 = this.f3389d; i11 > 0; i11 -= 5) {
            Object[] objArr2 = objArr[j.a(i10, i11)];
            Intrinsics.f(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] c(Object[] objArr, int i10, Iterator it) {
        while (i10 < 32 && it.hasNext()) {
            objArr[i10] = it.next();
            i10++;
        }
        return objArr;
    }

    private final void l(Collection collection, int i10, int i11, Object[][] objArr, int i12, Object[] objArr2) {
        if (this.f3391f == null) {
            throw new IllegalStateException("root is null");
        }
        int i13 = i10 >> 5;
        Object[] objArrL = L(i13, i11, objArr, i12, objArr2);
        int iJ = i12 - (((J() >> 5) - 1) - i13);
        if (iJ < i12) {
            objArr2 = objArr[iJ];
            Intrinsics.e(objArr2);
        }
        M(collection, i10, objArrL, 32, objArr, iJ, objArr2);
    }

    private final Object[] m(Object[] objArr, int i10, int i11, Object obj, c cVar) {
        Object obj2;
        int iA = j.a(i11, i10);
        if (i10 == 0) {
            cVar.b(objArr[31]);
            Object[] objArrL = ArraysKt.l(objArr, q(objArr), iA + 1, iA, 31);
            objArrL[iA] = obj;
            return objArrL;
        }
        Object[] objArrQ = q(objArr);
        int i12 = i10 - 5;
        Object obj3 = objArrQ[iA];
        Intrinsics.f(obj3, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrQ[iA] = m((Object[]) obj3, i12, i11, obj, cVar);
        while (true) {
            iA++;
            if (iA >= 32 || (obj2 = objArrQ[iA]) == null) {
                break;
            }
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrQ[iA] = m((Object[]) obj2, i12, 0, cVar.a(), cVar);
        }
        return objArrQ;
    }

    private final void n(Object[] objArr, int i10, Object obj) {
        int iN = N();
        Object[] objArrQ = q(this.f3392g);
        if (iN < 32) {
            ArraysKt.l(this.f3392g, objArrQ, i10 + 1, i10, iN);
            objArrQ[i10] = obj;
            this.f3391f = objArr;
            this.f3392g = objArrQ;
            this.f3393h = size() + 1;
            return;
        }
        Object[] objArr2 = this.f3392g;
        Object obj2 = objArr2[31];
        ArraysKt.l(objArr2, objArrQ, i10 + 1, i10, 31);
        objArrQ[i10] = obj;
        z(objArr, objArrQ, t(obj2));
    }

    private final boolean o(Object[] objArr) {
        return objArr.length == 33 && objArr[32] == this.f3390e;
    }

    private final ListIterator p(int i10) {
        Object[] objArr = this.f3391f;
        if (objArr == null) {
            throw new IllegalStateException("Invalid root");
        }
        int iJ = J() >> 5;
        w.d.b(i10, iJ);
        int i11 = this.f3389d;
        return i11 == 0 ? new g(objArr, i10) : new i(objArr, i10, iJ, i11 / 5);
    }

    private final Object[] q(Object[] objArr) {
        if (objArr == null) {
            return s();
        }
        return o(objArr) ? objArr : ArraysKt.p(objArr, s(), 0, 0, RangesKt.h(objArr.length, 32), 6, null);
    }

    private final Object[] r(Object[] objArr, int i10) {
        return o(objArr) ? ArraysKt.l(objArr, objArr, i10, 0, 32 - i10) : ArraysKt.l(objArr, s(), i10, 0, 32 - i10);
    }

    private final Object[] s() {
        Object[] objArr = new Object[33];
        objArr[32] = this.f3390e;
        return objArr;
    }

    private final Object[] t(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.f3390e;
        return objArr;
    }

    private final Object[] u(Object[] objArr, int i10, int i11) {
        if (!(i11 >= 0)) {
            o1.a("shift should be positive");
        }
        if (i11 == 0) {
            return objArr;
        }
        int iA = j.a(i10, i11);
        Object obj = objArr[iA];
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object objU = u((Object[]) obj, i10, i11 - 5);
        if (iA < 31) {
            int i12 = iA + 1;
            if (objArr[i12] != null) {
                if (o(objArr)) {
                    ArraysKt.u(objArr, null, i12, 32);
                }
                objArr = ArraysKt.l(objArr, s(), 0, 0, i12);
            }
        }
        if (objU == objArr[iA]) {
            return objArr;
        }
        Object[] objArrQ = q(objArr);
        objArrQ[iA] = objU;
        return objArrQ;
    }

    private final Object[] v(Object[] objArr, int i10, int i11, c cVar) {
        Object[] objArrV;
        int iA = j.a(i11 - 1, i10);
        if (i10 == 5) {
            cVar.b(objArr[iA]);
            objArrV = null;
        } else {
            Object obj = objArr[iA];
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrV = v((Object[]) obj, i10 - 5, i11, cVar);
        }
        if (objArrV == null && iA == 0) {
            return null;
        }
        Object[] objArrQ = q(objArr);
        objArrQ[iA] = objArrV;
        return objArrQ;
    }

    private final void w(Object[] objArr, int i10, int i11) {
        if (i11 == 0) {
            this.f3391f = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.f3392g = objArr;
            this.f3393h = i10;
            this.f3389d = i11;
            return;
        }
        c cVar = new c(null);
        Intrinsics.e(objArr);
        Object[] objArrV = v(objArr, i11, i10, cVar);
        Intrinsics.e(objArrV);
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        this.f3392g = (Object[]) objA;
        this.f3393h = i10;
        if (objArrV[1] == null) {
            this.f3391f = (Object[]) objArrV[0];
            this.f3389d = i11 - 5;
        } else {
            this.f3391f = objArrV;
            this.f3389d = i11;
        }
    }

    private final Object[] x(Object[] objArr, int i10, int i11, Iterator it) {
        if (!it.hasNext()) {
            o1.a("invalid buffersIterator");
        }
        if (!(i11 >= 0)) {
            o1.a("negative shift");
        }
        if (i11 == 0) {
            return (Object[]) it.next();
        }
        Object[] objArrQ = q(objArr);
        int iA = j.a(i10, i11);
        int i12 = i11 - 5;
        objArrQ[iA] = x((Object[]) objArrQ[iA], i10, i12, it);
        while (true) {
            iA++;
            if (iA >= 32 || !it.hasNext()) {
                break;
            }
            objArrQ[iA] = x((Object[]) objArrQ[iA], 0, i12, it);
        }
        return objArrQ;
    }

    private final Object[] y(Object[] objArr, int i10, Object[][] objArr2) {
        Iterator itA = ArrayIteratorKt.a(objArr2);
        int i11 = i10 >> 5;
        int i12 = this.f3389d;
        Object[] objArrX = i11 < (1 << i12) ? x(objArr, i10, i12, itA) : q(objArr);
        while (itA.hasNext()) {
            this.f3389d += 5;
            objArrX = t(objArrX);
            int i13 = this.f3389d;
            x(objArrX, 1 << i13, i13, itA);
        }
        return objArrX;
    }

    private final void z(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i10 = this.f3389d;
        if (size > (1 << i10)) {
            this.f3391f = A(t(objArr), objArr2, this.f3389d + 5);
            this.f3392g = objArr3;
            this.f3389d += 5;
            this.f3393h = size() + 1;
            return;
        }
        if (objArr == null) {
            this.f3391f = objArr2;
            this.f3392g = objArr3;
            this.f3393h = size() + 1;
        } else {
            this.f3391f = A(objArr, objArr2, i10);
            this.f3392g = objArr3;
            this.f3393h = size() + 1;
        }
    }

    public final boolean F(Function1 function1) {
        boolean zD = D(function1);
        if (zD) {
            ((AbstractList) this).modCount++;
        }
        return zD;
    }

    @Override
    public boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int iN = N();
        if (iN < 32) {
            Object[] objArrQ = q(this.f3392g);
            objArrQ[iN] = obj;
            this.f3392g = objArrQ;
            this.f3393h = size() + 1;
        } else {
            z(this.f3391f, this.f3392g, t(obj));
        }
        return true;
    }

    @Override
    public boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int iN = N();
        Iterator it = collection.iterator();
        if (32 - iN >= collection.size()) {
            this.f3392g = c(q(this.f3392g), iN, it);
            this.f3393h = size() + collection.size();
        } else {
            int size = ((collection.size() + iN) - 1) / 32;
            Object[][] objArr = new Object[size][];
            objArr[0] = c(q(this.f3392g), iN, it);
            for (int i10 = 1; i10 < size; i10++) {
                objArr[i10] = c(s(), 0, it);
            }
            this.f3391f = y(this.f3391f, J(), objArr);
            this.f3392g = c(s(), 0, it);
            this.f3393h = size() + collection.size();
        }
        return true;
    }

    @Override
    public t.f build() {
        t.f dVar;
        if (this.f3391f == this.f3387b && this.f3392g == this.f3388c) {
            dVar = this.f3386a;
        } else {
            this.f3390e = new w.e();
            Object[] objArr = this.f3391f;
            this.f3387b = objArr;
            Object[] objArr2 = this.f3392g;
            this.f3388c = objArr2;
            if (objArr != null) {
                Object[] objArr3 = this.f3391f;
                Intrinsics.e(objArr3);
                dVar = new d(objArr3, this.f3392g, size(), this.f3389d);
            } else if (objArr2.length == 0) {
                dVar = j.b();
            } else {
                Object[] objArrCopyOf = Arrays.copyOf(this.f3392g, size());
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
                dVar = new h(objArrCopyOf);
            }
        }
        this.f3386a = dVar;
        return dVar;
    }

    public final int e() {
        return ((AbstractList) this).modCount;
    }

    public final Object[] f() {
        return this.f3391f;
    }

    @Override
    public Object get(int i10) {
        w.d.a(i10, size());
        return a(i10)[i10 & 31];
    }

    @Override
    public int getSize() {
        return this.f3393h;
    }

    public final int i() {
        return this.f3389d;
    }

    @Override
    public Iterator iterator() {
        return listIterator();
    }

    public final Object[] j() {
        return this.f3392g;
    }

    @Override
    public ListIterator listIterator() {
        return listIterator(0);
    }

    @Override
    public boolean removeAll(final Collection collection) {
        return F(new Function1<Object, Boolean>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final Boolean invoke(Object obj) {
                return Boolean.valueOf(collection.contains(obj));
            }
        });
    }

    @Override
    public Object removeAt(int i10) {
        w.d.a(i10, size());
        ((AbstractList) this).modCount++;
        int iJ = J();
        if (i10 >= iJ) {
            return H(this.f3391f, iJ, this.f3389d, i10 - iJ);
        }
        c cVar = new c(this.f3392g[0]);
        Object[] objArr = this.f3391f;
        Intrinsics.e(objArr);
        H(G(objArr, this.f3389d, i10, cVar), iJ, this.f3389d, 0);
        return cVar.a();
    }

    @Override
    public Object set(int i10, Object obj) {
        w.d.a(i10, size());
        if (J() > i10) {
            c cVar = new c(null);
            Object[] objArr = this.f3391f;
            Intrinsics.e(objArr);
            this.f3391f = K(objArr, this.f3389d, i10, obj, cVar);
            return cVar.a();
        }
        Object[] objArrQ = q(this.f3392g);
        if (objArrQ != this.f3392g) {
            ((AbstractList) this).modCount++;
        }
        int i11 = i10 & 31;
        Object obj2 = objArrQ[i11];
        objArrQ[i11] = obj;
        this.f3392g = objArrQ;
        return obj2;
    }

    @Override
    public ListIterator listIterator(int i10) {
        w.d.b(i10, size());
        return new f(this, i10);
    }

    @Override
    public void add(int i10, Object obj) {
        w.d.b(i10, size());
        if (i10 == size()) {
            add(obj);
            return;
        }
        ((AbstractList) this).modCount++;
        int iJ = J();
        if (i10 >= iJ) {
            n(this.f3391f, i10 - iJ, obj);
            return;
        }
        c cVar = new c(null);
        Object[] objArr = this.f3391f;
        Intrinsics.e(objArr);
        n(m(objArr, this.f3389d, i10, obj, cVar), 0, cVar.a());
    }

    @Override
    public boolean addAll(int i10, Collection collection) {
        Object[] objArrL;
        w.d.b(i10, size());
        if (i10 == size()) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i11 = (i10 >> 5) << 5;
        int size = (((size() - i11) + collection.size()) - 1) / 32;
        if (size == 0) {
            w.a.a(i10 >= J());
            int i12 = i10 & 31;
            int size2 = ((i10 + collection.size()) - 1) & 31;
            Object[] objArr = this.f3392g;
            Object[] objArrL2 = ArraysKt.l(objArr, q(objArr), size2 + 1, i12, N());
            c(objArrL2, i12, collection.iterator());
            this.f3392g = objArrL2;
            this.f3393h = size() + collection.size();
            return true;
        }
        Object[][] objArr2 = new Object[size][];
        int iN = N();
        int iO = O(size() + collection.size());
        if (i10 >= J()) {
            objArrL = s();
            M(collection, i10, this.f3392g, iN, objArr2, size, objArrL);
        } else if (iO > iN) {
            int i13 = iO - iN;
            objArrL = r(this.f3392g, i13);
            l(collection, i10, i13, objArr2, size, objArrL);
        } else {
            int i14 = iN - iO;
            objArrL = ArraysKt.l(this.f3392g, s(), 0, i14, iN);
            int i15 = 32 - i14;
            Object[] objArrR = r(this.f3392g, i15);
            int i16 = size - 1;
            objArr2[i16] = objArrR;
            l(collection, i10, i15, objArr2, i16, objArrR);
        }
        this.f3391f = y(this.f3391f, i11, objArr2);
        this.f3392g = objArrL;
        this.f3393h = size() + collection.size();
        return true;
    }
}
