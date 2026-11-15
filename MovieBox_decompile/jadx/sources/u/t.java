package u;

import androidx.compose.runtime.o1;
import java.util.Arrays;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;

public final class t {

    public static final a f72918e = new a(null);

    public static final int f72919f = 8;

    private static final t f72920g = new t(0, 0, new Object[0]);

    private int f72921a;

    private int f72922b;

    private final w.e f72923c;

    private Object[] f72924d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final t a() {
            return t.f72920g;
        }

        private a() {
        }
    }

    public static final class b {

        private t f72925a;

        private final int f72926b;

        public b(t tVar, int i10) {
            this.f72925a = tVar;
            this.f72926b = i10;
        }

        public final t a() {
            return this.f72925a;
        }

        public final int b() {
            return this.f72926b;
        }

        public final void c(t tVar) {
            this.f72925a = tVar;
        }
    }

    public t(int i10, int i11, Object[] objArr, w.e eVar) {
        this.f72921a = i10;
        this.f72922b = i11;
        this.f72923c = eVar;
        this.f72924d = objArr;
    }

    private final t A(int i10, f fVar) {
        fVar.p(fVar.size() - 1);
        fVar.n(W(i10));
        if (this.f72924d.length == 2) {
            return null;
        }
        if (this.f72923c != fVar.l()) {
            return new t(0, 0, x.h(this.f72924d, i10), fVar.l());
        }
        this.f72924d = x.h(this.f72924d, i10);
        return this;
    }

    private final t B(int i10, Object obj, Object obj2, w.e eVar) {
        int iN = n(i10);
        if (this.f72923c != eVar) {
            return new t(i10 | this.f72921a, this.f72922b, x.g(this.f72924d, iN, obj, obj2), eVar);
        }
        this.f72924d = x.g(this.f72924d, iN, obj, obj2);
        this.f72921a = i10 | this.f72921a;
        return this;
    }

    private final t C(int i10, int i11, int i12, Object obj, Object obj2, int i13, w.e eVar) {
        if (this.f72923c != eVar) {
            return new t(this.f72921a ^ i11, i11 | this.f72922b, d(i10, i11, i12, obj, obj2, i13, eVar), eVar);
        }
        this.f72924d = d(i10, i11, i12, obj, obj2, i13, eVar);
        this.f72921a ^= i11;
        this.f72922b |= i11;
        return this;
    }

    private final t F(t tVar, int i10, int i11, w.b bVar, f fVar) {
        if (r(i10)) {
            t tVarN = N(O(i10));
            if (tVar.r(i10)) {
                return tVarN.E(tVar.N(tVar.O(i10)), i11 + 5, bVar, fVar);
            }
            if (!tVar.q(i10)) {
                return tVarN;
            }
            int iN = tVar.n(i10);
            Object objT = tVar.t(iN);
            Object objW = tVar.W(iN);
            int size = fVar.size();
            t tVarD = tVarN.D(objT != null ? objT.hashCode() : 0, objT, objW, i11 + 5, fVar);
            if (fVar.size() != size) {
                return tVarD;
            }
            bVar.c(bVar.a() + 1);
            return tVarD;
        }
        if (!tVar.r(i10)) {
            int iN2 = n(i10);
            Object objT2 = t(iN2);
            Object objW2 = W(iN2);
            int iN3 = tVar.n(i10);
            Object objT3 = tVar.t(iN3);
            return u(objT2 != null ? objT2.hashCode() : 0, objT2, objW2, objT3 != null ? objT3.hashCode() : 0, objT3, tVar.W(iN3), i11 + 5, fVar.l());
        }
        t tVarN2 = tVar.N(tVar.O(i10));
        if (q(i10)) {
            int iN4 = n(i10);
            Object objT4 = t(iN4);
            int i12 = i11 + 5;
            if (!tVarN2.k(objT4 != null ? objT4.hashCode() : 0, objT4, i12)) {
                return tVarN2.D(objT4 != null ? objT4.hashCode() : 0, objT4, W(iN4), i12, fVar);
            }
            bVar.c(bVar.a() + 1);
        }
        return tVarN2;
    }

    private final t I(int i10, int i11, f fVar) {
        fVar.p(fVar.size() - 1);
        fVar.n(W(i10));
        if (this.f72924d.length == 2) {
            return null;
        }
        if (this.f72923c != fVar.l()) {
            return new t(i11 ^ this.f72921a, this.f72922b, x.h(this.f72924d, i10), fVar.l());
        }
        this.f72924d = x.h(this.f72924d, i10);
        this.f72921a ^= i11;
        return this;
    }

    private final t J(int i10, int i11, w.e eVar) {
        Object[] objArr = this.f72924d;
        if (objArr.length == 1) {
            return null;
        }
        if (this.f72923c != eVar) {
            return new t(this.f72921a, i11 ^ this.f72922b, x.i(objArr, i10), eVar);
        }
        this.f72924d = x.i(objArr, i10);
        this.f72922b ^= i11;
        return this;
    }

    private final t K(t tVar, t tVar2, int i10, int i11, w.e eVar) {
        if (tVar2 == null) {
            return J(i10, i11, eVar);
        }
        return (this.f72923c == eVar || tVar != tVar2) ? L(i10, tVar2, eVar) : this;
    }

    private final t L(int i10, t tVar, w.e eVar) {
        Object[] objArr = this.f72924d;
        if (objArr.length == 1 && tVar.f72924d.length == 2 && tVar.f72922b == 0) {
            tVar.f72921a = this.f72922b;
            return tVar;
        }
        if (this.f72923c == eVar) {
            objArr[i10] = tVar;
            return this;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10] = tVar;
        return new t(this.f72921a, this.f72922b, objArrCopyOf, eVar);
    }

    private final t M(int i10, Object obj, f fVar) {
        if (this.f72923c == fVar.l()) {
            this.f72924d[i10 + 1] = obj;
            return this;
        }
        fVar.m(fVar.i() + 1);
        Object[] objArr = this.f72924d;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10 + 1] = obj;
        return new t(this.f72921a, this.f72922b, objArrCopyOf, fVar.l());
    }

    private final t R(int i10, int i11) {
        Object[] objArr = this.f72924d;
        if (objArr.length == 2) {
            return null;
        }
        return new t(i11 ^ this.f72921a, this.f72922b, x.h(objArr, i10));
    }

    private final t S(int i10, int i11) {
        Object[] objArr = this.f72924d;
        if (objArr.length == 1) {
            return null;
        }
        return new t(this.f72921a, i11 ^ this.f72922b, x.i(objArr, i10));
    }

    private final t T(t tVar, t tVar2, int i10, int i11) {
        if (tVar2 == null) {
            return S(i10, i11);
        }
        return tVar != tVar2 ? U(i10, i11, tVar2) : this;
    }

    private final t U(int i10, int i11, t tVar) {
        Object[] objArr = tVar.f72924d;
        if (objArr.length != 2 || tVar.f72922b != 0) {
            Object[] objArr2 = this.f72924d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr2, objArr2.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            objArrCopyOf[i10] = tVar;
            return new t(this.f72921a, this.f72922b, objArrCopyOf);
        }
        if (this.f72924d.length == 1) {
            tVar.f72921a = this.f72922b;
            return tVar;
        }
        return new t(this.f72921a ^ i11, i11 ^ this.f72922b, x.k(this.f72924d, i10, n(i11), objArr[0], objArr[1]));
    }

    private final t V(int i10, Object obj) {
        Object[] objArr = this.f72924d;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
        objArrCopyOf[i10 + 1] = obj;
        return new t(this.f72921a, this.f72922b, objArrCopyOf);
    }

    private final Object W(int i10) {
        return this.f72924d[i10 + 1];
    }

    private final b b() {
        return new b(this, 1);
    }

    private final b c() {
        return new b(this, 0);
    }

    private final Object[] d(int i10, int i11, int i12, Object obj, Object obj2, int i13, w.e eVar) {
        Object objT = t(i10);
        return x.j(this.f72924d, i10, O(i11) + 1, u(objT != null ? objT.hashCode() : 0, objT, W(i10), i12, obj, obj2, i13 + 5, eVar));
    }

    private final int e() {
        if (this.f72922b == 0) {
            return this.f72924d.length / 2;
        }
        int iBitCount = Integer.bitCount(this.f72921a);
        int length = this.f72924d.length;
        for (int i10 = iBitCount * 2; i10 < length; i10++) {
            iBitCount += N(i10).e();
        }
        return iBitCount;
    }

    private final boolean f(Object obj) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (!Intrinsics.c(obj, this.f72924d[iF])) {
                if (iF != i10) {
                    iF += iL;
                }
            }
            return true;
        }
        return false;
    }

    private final Object g(Object obj) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL <= 0 || iF > i10) && (iL >= 0 || i10 > iF)) {
            return null;
        }
        while (!Intrinsics.c(obj, t(iF))) {
            if (iF == i10) {
                return null;
            }
            iF += iL;
        }
        return W(iF);
    }

    private final b h(Object obj, Object obj2) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != i10) {
                    iF += iL;
                }
            }
            if (obj2 == W(iF)) {
                return null;
            }
            Object[] objArr = this.f72924d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
            objArrCopyOf[iF + 1] = obj2;
            return new t(0, 0, objArrCopyOf).c();
        }
        return new t(0, 0, x.g(this.f72924d, 0, obj, obj2)).b();
    }

    private final t i(Object obj) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != i10) {
                    iF += iL;
                }
            }
            return j(iF);
        }
        return this;
    }

    private final t j(int i10) {
        Object[] objArr = this.f72924d;
        if (objArr.length == 2) {
            return null;
        }
        return new t(0, 0, x.h(objArr, i10));
    }

    private final boolean l(t tVar) {
        if (this == tVar) {
            return true;
        }
        if (this.f72922b != tVar.f72922b || this.f72921a != tVar.f72921a) {
            return false;
        }
        int length = this.f72924d.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (this.f72924d[i10] != tVar.f72924d[i10]) {
                return false;
            }
        }
        return true;
    }

    private final boolean r(int i10) {
        return (i10 & this.f72922b) != 0;
    }

    private final t s(int i10, Object obj, Object obj2) {
        return new t(i10 | this.f72921a, this.f72922b, x.g(this.f72924d, n(i10), obj, obj2));
    }

    private final Object t(int i10) {
        return this.f72924d[i10];
    }

    private final t u(int i10, Object obj, Object obj2, int i11, Object obj3, Object obj4, int i12, w.e eVar) {
        if (i12 > 30) {
            return new t(0, 0, new Object[]{obj, obj2, obj3, obj4}, eVar);
        }
        int iF = x.f(i10, i12);
        int iF2 = x.f(i11, i12);
        if (iF != iF2) {
            return new t((1 << iF) | (1 << iF2), 0, iF < iF2 ? new Object[]{obj, obj2, obj3, obj4} : new Object[]{obj3, obj4, obj, obj2}, eVar);
        }
        return new t(0, 1 << iF, new Object[]{u(i10, obj, obj2, i11, obj3, obj4, i12 + 5, eVar)}, eVar);
    }

    private final t v(int i10, int i11, int i12, Object obj, Object obj2, int i13) {
        return new t(this.f72921a ^ i11, i11 | this.f72922b, d(i10, i11, i12, obj, obj2, i13, null));
    }

    private final t w(Object obj, Object obj2, f fVar) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != i10) {
                    iF += iL;
                }
            }
            fVar.n(W(iF));
            if (this.f72923c == fVar.l()) {
                this.f72924d[iF + 1] = obj2;
                return this;
            }
            fVar.m(fVar.i() + 1);
            Object[] objArr = this.f72924d;
            Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
            Intrinsics.g(objArrCopyOf, "copyOf(this, size)");
            objArrCopyOf[iF + 1] = obj2;
            return new t(0, 0, objArrCopyOf, fVar.l());
        }
        fVar.p(fVar.size() + 1);
        return new t(0, 0, x.g(this.f72924d, 0, obj, obj2), fVar.l());
    }

    private final t x(t tVar, w.b bVar, w.e eVar) {
        w.a.a(this.f72922b == 0);
        w.a.a(this.f72921a == 0);
        w.a.a(tVar.f72922b == 0);
        w.a.a(tVar.f72921a == 0);
        Object[] objArr = this.f72924d;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length + tVar.f72924d.length);
        Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
        int length = this.f72924d.length;
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, tVar.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (true) {
                if (f(tVar.f72924d[iF])) {
                    bVar.c(bVar.a() + 1);
                } else {
                    Object[] objArr2 = tVar.f72924d;
                    objArrCopyOf[length] = objArr2[iF];
                    objArrCopyOf[length + 1] = objArr2[iF + 1];
                    length += 2;
                }
                if (iF == i10) {
                    break;
                }
                iF += iL;
            }
        }
        if (length == this.f72924d.length) {
            return this;
        }
        if (length == tVar.f72924d.length) {
            return tVar;
        }
        if (length == objArrCopyOf.length) {
            return new t(0, 0, objArrCopyOf, eVar);
        }
        Object[] objArrCopyOf2 = Arrays.copyOf(objArrCopyOf, length);
        Intrinsics.g(objArrCopyOf2, "copyOf(this, newSize)");
        return new t(0, 0, objArrCopyOf2, eVar);
    }

    private final t y(Object obj, Object obj2, f fVar) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (true) {
                if (Intrinsics.c(obj, t(iF)) && Intrinsics.c(obj2, W(iF))) {
                    return A(iF, fVar);
                }
                if (iF != i10) {
                    iF += iL;
                }
            }
        }
        return this;
    }

    private final t z(Object obj, f fVar) {
        IntProgression intProgressionR = RangesKt.r(RangesKt.s(0, this.f72924d.length), 2);
        int iF = intProgressionR.getFirst();
        int i10 = intProgressionR.getLast();
        int iL = intProgressionR.getStep();
        if ((iL > 0 && iF <= i10) || (iL < 0 && i10 <= iF)) {
            while (!Intrinsics.c(obj, t(iF))) {
                if (iF != i10) {
                    iF += iL;
                }
            }
            return A(iF, fVar);
        }
        return this;
    }

    public final t D(int i10, Object obj, Object obj2, int i11, f fVar) {
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            if (Intrinsics.c(obj, t(iN))) {
                fVar.n(W(iN));
                return W(iN) == obj2 ? this : M(iN, obj2, fVar);
            }
            fVar.p(fVar.size() + 1);
            return C(iN, iF, i10, obj, obj2, i11, fVar.l());
        }
        if (!r(iF)) {
            fVar.p(fVar.size() + 1);
            return B(iF, obj, obj2, fVar.l());
        }
        int iO = O(iF);
        t tVarN = N(iO);
        t tVarW = i11 == 30 ? tVarN.w(obj, obj2, fVar) : tVarN.D(i10, obj, obj2, i11 + 5, fVar);
        return tVarN == tVarW ? this : L(iO, tVarW, fVar.l());
    }

    public final t E(t tVar, int i10, w.b bVar, f fVar) {
        if (this == tVar) {
            bVar.b(e());
            return this;
        }
        if (i10 > 30) {
            return x(tVar, bVar, fVar.l());
        }
        int i11 = this.f72922b | tVar.f72922b;
        int i12 = this.f72921a;
        int i13 = tVar.f72921a;
        int i14 = (i12 ^ i13) & (~i11);
        int i15 = i12 & i13;
        int i16 = i14;
        while (i15 != 0) {
            int iLowestOneBit = Integer.lowestOneBit(i15);
            if (Intrinsics.c(t(n(iLowestOneBit)), tVar.t(tVar.n(iLowestOneBit)))) {
                i16 |= iLowestOneBit;
            } else {
                i11 |= iLowestOneBit;
            }
            i15 ^= iLowestOneBit;
        }
        int i17 = 0;
        if (!((i11 & i16) == 0)) {
            o1.b("Check failed.");
        }
        t tVar2 = (Intrinsics.c(this.f72923c, fVar.l()) && this.f72921a == i16 && this.f72922b == i11) ? this : new t(i16, i11, new Object[(Integer.bitCount(i16) * 2) + Integer.bitCount(i11)]);
        int i18 = i11;
        int i19 = 0;
        while (i18 != 0) {
            int iLowestOneBit2 = Integer.lowestOneBit(i18);
            Object[] objArr = tVar2.f72924d;
            objArr[(objArr.length - 1) - i19] = F(tVar, iLowestOneBit2, i10, bVar, fVar);
            i19++;
            i18 ^= iLowestOneBit2;
        }
        while (i16 != 0) {
            int iLowestOneBit3 = Integer.lowestOneBit(i16);
            int i20 = i17 * 2;
            if (tVar.q(iLowestOneBit3)) {
                int iN = tVar.n(iLowestOneBit3);
                tVar2.f72924d[i20] = tVar.t(iN);
                tVar2.f72924d[i20 + 1] = tVar.W(iN);
                if (q(iLowestOneBit3)) {
                    bVar.c(bVar.a() + 1);
                }
            } else {
                int iN2 = n(iLowestOneBit3);
                tVar2.f72924d[i20] = t(iN2);
                tVar2.f72924d[i20 + 1] = W(iN2);
            }
            i17++;
            i16 ^= iLowestOneBit3;
        }
        if (l(tVar2)) {
            return this;
        }
        return tVar.l(tVar2) ? tVar : tVar2;
    }

    public final t G(int i10, Object obj, int i11, f fVar) {
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            return Intrinsics.c(obj, t(iN)) ? I(iN, iF, fVar) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        t tVarN = N(iO);
        return K(tVarN, i11 == 30 ? tVarN.z(obj, fVar) : tVarN.G(i10, obj, i11 + 5, fVar), iO, iF, fVar.l());
    }

    public final t H(int i10, Object obj, Object obj2, int i11, f fVar) {
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            return (Intrinsics.c(obj, t(iN)) && Intrinsics.c(obj2, W(iN))) ? I(iN, iF, fVar) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        t tVarN = N(iO);
        return K(tVarN, i11 == 30 ? tVarN.y(obj, obj2, fVar) : tVarN.H(i10, obj, obj2, i11 + 5, fVar), iO, iF, fVar.l());
    }

    public final t N(int i10) {
        Object obj = this.f72924d[i10];
        Intrinsics.f(obj, "null cannot be cast to non-null type androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode<K of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode, V of androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode>");
        return (t) obj;
    }

    public final int O(int i10) {
        return (this.f72924d.length - 1) - Integer.bitCount((i10 - 1) & this.f72922b);
    }

    public final b P(int i10, Object obj, Object obj2, int i11) {
        b bVarP;
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            if (!Intrinsics.c(obj, t(iN))) {
                return v(iN, iF, i10, obj, obj2, i11).b();
            }
            if (W(iN) == obj2) {
                return null;
            }
            return V(iN, obj2).c();
        }
        if (!r(iF)) {
            return s(iF, obj, obj2).b();
        }
        int iO = O(iF);
        t tVarN = N(iO);
        if (i11 == 30) {
            bVarP = tVarN.h(obj, obj2);
            if (bVarP == null) {
                return null;
            }
        } else {
            bVarP = tVarN.P(i10, obj, obj2, i11 + 5);
            if (bVarP == null) {
                return null;
            }
        }
        bVarP.c(U(iO, iF, bVarP.a()));
        return bVarP;
    }

    public final t Q(int i10, Object obj, int i11) {
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            return Intrinsics.c(obj, t(iN)) ? R(iN, iF) : this;
        }
        if (!r(iF)) {
            return this;
        }
        int iO = O(iF);
        t tVarN = N(iO);
        return T(tVarN, i11 == 30 ? tVarN.i(obj) : tVarN.Q(i10, obj, i11 + 5), iO, iF);
    }

    public final boolean k(int i10, Object obj, int i11) {
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            return Intrinsics.c(obj, t(n(iF)));
        }
        if (!r(iF)) {
            return false;
        }
        t tVarN = N(O(iF));
        return i11 == 30 ? tVarN.f(obj) : tVarN.k(i10, obj, i11 + 5);
    }

    public final int m() {
        return Integer.bitCount(this.f72921a);
    }

    public final int n(int i10) {
        return Integer.bitCount((i10 - 1) & this.f72921a) * 2;
    }

    public final Object o(int i10, Object obj, int i11) {
        int iF = 1 << x.f(i10, i11);
        if (q(iF)) {
            int iN = n(iF);
            if (Intrinsics.c(obj, t(iN))) {
                return W(iN);
            }
            return null;
        }
        if (!r(iF)) {
            return null;
        }
        t tVarN = N(O(iF));
        return i11 == 30 ? tVarN.g(obj) : tVarN.o(i10, obj, i11 + 5);
    }

    public final Object[] p() {
        return this.f72924d;
    }

    public final boolean q(int i10) {
        return (i10 & this.f72921a) != 0;
    }

    public t(int i10, int i11, Object[] objArr) {
        this(i10, i11, objArr, null);
    }
}
