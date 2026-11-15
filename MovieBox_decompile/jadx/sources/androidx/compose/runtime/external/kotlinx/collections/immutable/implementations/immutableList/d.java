package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.o1;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class d extends AbstractPersistentList implements t.f {

    private final Object[] f3398a;

    private final Object[] f3399b;

    private final int f3400c;

    private final int f3401d;

    public d(Object[] objArr, Object[] objArr2, int i10, int i11) {
        this.f3398a = objArr;
        this.f3399b = objArr2;
        this.f3400c = i10;
        this.f3401d = i11;
        if (!(size() > 32)) {
            o1.a("Trie-based persistent vector should have at least 33 elements, got " + size());
        }
        w.a.a(size() - j.d(size()) <= RangesKt.h(objArr2.length, 32));
    }

    private final Object[] f(int i10) {
        if (s() <= i10) {
            return this.f3399b;
        }
        Object[] objArr = this.f3398a;
        for (int i11 = this.f3401d; i11 > 0; i11 -= 5) {
            Object[] objArr2 = objArr[j.a(i10, i11)];
            Intrinsics.f(objArr2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArr = objArr2;
        }
        return objArr;
    }

    private final Object[] j(Object[] objArr, int i10, int i11, Object obj, c cVar) {
        Object[] objArrCopyOf;
        int iA = j.a(i11, i10);
        if (i10 == 0) {
            if (iA == 0) {
                objArrCopyOf = new Object[32];
            } else {
                objArrCopyOf = Arrays.copyOf(objArr, 32);
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            }
            ArraysKt.l(objArr, objArrCopyOf, iA + 1, iA, 31);
            cVar.b(objArr[31]);
            objArrCopyOf[iA] = obj;
            return objArrCopyOf;
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf2, "copyOf(this, newSize)");
        int i12 = i10 - 5;
        Object obj2 = objArr[iA];
        String str = "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>";
        Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrCopyOf2[iA] = j((Object[]) obj2, i12, i11, obj, cVar);
        int i13 = iA + 1;
        while (i13 < 32 && objArrCopyOf2[i13] != null) {
            Object obj3 = objArr[i13];
            Intrinsics.f(obj3, str);
            Object[] objArr2 = objArrCopyOf2;
            objArr2[i13] = j((Object[]) obj3, i12, 0, cVar.a(), cVar);
            i13++;
            objArrCopyOf2 = objArr2;
            str = str;
        }
        return objArrCopyOf2;
    }

    private final d l(Object[] objArr, int i10, Object obj) {
        int size = size() - s();
        Object[] objArrCopyOf = Arrays.copyOf(this.f3399b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        if (size < 32) {
            ArraysKt.l(this.f3399b, objArrCopyOf, i10 + 1, i10, size);
            objArrCopyOf[i10] = obj;
            return new d(objArr, objArrCopyOf, size() + 1, this.f3401d);
        }
        Object[] objArr2 = this.f3399b;
        Object obj2 = objArr2[31];
        ArraysKt.l(objArr2, objArrCopyOf, i10 + 1, i10, size - 1);
        objArrCopyOf[i10] = obj;
        return o(objArr, objArrCopyOf, j.c(obj2));
    }

    private final Object[] m(Object[] objArr, int i10, int i11, c cVar) {
        Object[] objArrM;
        int iA = j.a(i11, i10);
        if (i10 == 5) {
            cVar.b(objArr[iA]);
            objArrM = null;
        } else {
            Object obj = objArr[iA];
            Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrM = m((Object[]) obj, i10 - 5, i11, cVar);
        }
        if (objArrM == null && iA == 0) {
            return null;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[iA] = objArrM;
        return objArrCopyOf;
    }

    private final t.f n(Object[] objArr, int i10, int i11) {
        if (i11 == 0) {
            if (objArr.length == 33) {
                objArr = Arrays.copyOf(objArr, 32);
                Intrinsics.g(objArr, "copyOf(this, newSize)");
            }
            return new h(objArr);
        }
        c cVar = new c(null);
        Object[] objArrM = m(objArr, i11, i10 - 1, cVar);
        Intrinsics.e(objArrM);
        Object objA = cVar.a();
        Intrinsics.f(objA, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        Object[] objArr2 = (Object[]) objA;
        if (objArrM[1] != null) {
            return new d(objArrM, objArr2, i10, i11);
        }
        Object obj = objArrM[0];
        Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        return new d((Object[]) obj, objArr2, i10, i11 - 5);
    }

    private final d o(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int size = size() >> 5;
        int i10 = this.f3401d;
        if (size <= (1 << i10)) {
            return new d(p(objArr, i10, objArr2), objArr3, size() + 1, this.f3401d);
        }
        Object[] objArrC = j.c(objArr);
        int i11 = this.f3401d + 5;
        return new d(p(objArrC, i11, objArr2), objArr3, size() + 1, i11);
    }

    /* JADX WARN: Code duplicated, block: B:6:0x0019  */
    private final Object[] p(Object[] objArr, int i10, Object[] objArr2) {
        Object[] objArrCopyOf;
        int iA = j.a(size() - 1, i10);
        if (objArr != null) {
            objArrCopyOf = Arrays.copyOf(objArr, 32);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            if (objArrCopyOf == null) {
                objArrCopyOf = new Object[32];
            }
        } else {
            objArrCopyOf = new Object[32];
        }
        if (i10 == 5) {
            objArrCopyOf[iA] = objArr2;
        } else {
            objArrCopyOf[iA] = p((Object[]) objArrCopyOf[iA], i10 - 5, objArr2);
        }
        return objArrCopyOf;
    }

    private final Object[] q(Object[] objArr, int i10, int i11, c cVar) {
        Object[] objArrCopyOf;
        int iA = j.a(i11, i10);
        if (i10 == 0) {
            if (iA == 0) {
                objArrCopyOf = new Object[32];
            } else {
                objArrCopyOf = Arrays.copyOf(objArr, 32);
                Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            }
            ArraysKt.l(objArr, objArrCopyOf, iA, iA + 1, 32);
            objArrCopyOf[31] = cVar.a();
            cVar.b(objArr[iA]);
            return objArrCopyOf;
        }
        int iA2 = objArr[31] == null ? j.a(s() - 1, i10) : 31;
        Object[] objArrCopyOf2 = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf2, "copyOf(this, newSize)");
        int i12 = i10 - 5;
        int i13 = iA + 1;
        if (i13 <= iA2) {
            while (true) {
                Object obj = objArrCopyOf2[iA2];
                Intrinsics.f(obj, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
                objArrCopyOf2[iA2] = q((Object[]) obj, i12, 0, cVar);
                if (iA2 == i13) {
                    break;
                }
                iA2--;
            }
        }
        Object obj2 = objArrCopyOf2[iA];
        Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
        objArrCopyOf2[iA] = q((Object[]) obj2, i12, i11, cVar);
        return objArrCopyOf2;
    }

    private final t.f r(Object[] objArr, int i10, int i11, int i12) {
        int size = size() - i10;
        w.a.a(i12 < size);
        if (size == 1) {
            return n(objArr, i10, i11);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3399b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        int i13 = size - 1;
        if (i12 < i13) {
            ArraysKt.l(this.f3399b, objArrCopyOf, i12, i12 + 1, size);
        }
        objArrCopyOf[i13] = null;
        return new d(objArr, objArrCopyOf, (i10 + size) - 1, i11);
    }

    private final int s() {
        return j.d(size());
    }

    private final Object[] t(Object[] objArr, int i10, int i11, Object obj) {
        int iA = j.a(i11, i10);
        Object[] objArrCopyOf = Arrays.copyOf(objArr, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        if (i10 == 0) {
            objArrCopyOf[iA] = obj;
        } else {
            Object obj2 = objArrCopyOf[iA];
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Array<kotlin.Any?>");
            objArrCopyOf[iA] = t((Object[]) obj2, i10 - 5, i11, obj);
        }
        return objArrCopyOf;
    }

    @Override
    public t.f add(Object obj) {
        int size = size() - s();
        if (size >= 32) {
            return o(this.f3398a, this.f3399b, j.c(obj));
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3399b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[size] = obj;
        return new d(this.f3398a, objArrCopyOf, size() + 1, this.f3401d);
    }

    @Override
    public t.f d(int i10) {
        w.d.a(i10, size());
        int iS = s();
        return i10 >= iS ? r(this.f3398a, iS, this.f3401d, i10 - iS) : r(q(this.f3398a, this.f3401d, i10, new c(this.f3399b[0])), iS, this.f3401d, 0);
    }

    @Override
    public Object get(int i10) {
        w.d.a(i10, size());
        return f(i10)[i10 & 31];
    }

    @Override
    public int get_size() {
        return this.f3400c;
    }

    @Override
    public PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, this.f3398a, this.f3399b, this.f3401d);
    }

    @Override
    public t.f k(Function1 function1) {
        PersistentVectorBuilder persistentVectorBuilderBuilder = builder();
        persistentVectorBuilderBuilder.F(function1);
        return persistentVectorBuilderBuilder.build();
    }

    @Override
    public ListIterator listIterator(int i10) {
        w.d.b(i10, size());
        return new e(this.f3398a, this.f3399b, i10, size(), (this.f3401d / 5) + 1);
    }

    @Override
    public t.f set(int i10, Object obj) {
        w.d.a(i10, size());
        if (s() > i10) {
            return new d(t(this.f3398a, this.f3401d, i10, obj), this.f3399b, size(), this.f3401d);
        }
        Object[] objArrCopyOf = Arrays.copyOf(this.f3399b, 32);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        objArrCopyOf[i10 & 31] = obj;
        return new d(this.f3398a, objArrCopyOf, size(), this.f3401d);
    }

    @Override
    public t.f add(int i10, Object obj) {
        w.d.b(i10, size());
        if (i10 == size()) {
            return add(obj);
        }
        int iS = s();
        if (i10 >= iS) {
            return l(this.f3398a, i10 - iS, obj);
        }
        c cVar = new c(null);
        return l(j(this.f3398a, this.f3401d, i10, obj, cVar), 0, cVar.a());
    }
}
