package s;

import androidx.compose.runtime.a2;
import androidx.compose.runtime.m2;
import androidx.compose.runtime.o1;
import java.util.Arrays;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public final class g extends h {

    public static final a f71423i = new a(null);

    public static final int f71424j = 8;

    private int f71426b;

    private int f71428d;

    private int f71430f;

    private int f71431g;

    private int f71432h;

    private d[] f71425a = new d[16];

    private int[] f71427c = new int[16];

    private Object[] f71429e = new Object[16];

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public final class b implements e {

        private int f71433a;

        private int f71434b;

        private int f71435c;

        public b() {
        }

        @Override
        public Object a(int i10) {
            return g.this.f71429e[this.f71435c + i10];
        }

        @Override
        public int b(int i10) {
            return g.this.f71427c[this.f71434b + i10];
        }

        public final d c() {
            d dVar = g.this.f71425a[this.f71433a];
            Intrinsics.e(dVar);
            return dVar;
        }

        public final boolean d() {
            if (this.f71433a >= g.this.f71426b) {
                return false;
            }
            d dVarC = c();
            this.f71434b += dVarC.b();
            this.f71435c += dVarC.d();
            int i10 = this.f71433a + 1;
            this.f71433a = i10;
            return i10 < g.this.f71426b;
        }
    }

    public final int A(int i10) {
        return (this.f71430f - v().d()) + i10;
    }

    public final int n(int i10) {
        if (i10 == 0) {
            return 0;
        }
        return (-1) >>> (32 - i10);
    }

    private final int o(int i10, int i11) {
        return RangesKt.e(i10 + RangesKt.h(i10, 1024), i11);
    }

    private final void p(int i10) {
        int[] iArr = this.f71427c;
        int length = iArr.length;
        if (i10 > length) {
            int[] iArrCopyOf = Arrays.copyOf(iArr, o(length, i10));
            Intrinsics.g(iArrCopyOf, "copyOf(this, newSize)");
            this.f71427c = iArrCopyOf;
        }
    }

    private final void q(int i10) {
        Object[] objArr = this.f71429e;
        int length = objArr.length;
        if (i10 > length) {
            Object[] objArrCopyOf = Arrays.copyOf(objArr, o(length, i10));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f71429e = objArrCopyOf;
        }
    }

    public final d v() {
        d dVar = this.f71425a[this.f71426b - 1];
        Intrinsics.e(dVar);
        return dVar;
    }

    public final int z(int i10) {
        return (this.f71428d - v().b()) + i10;
    }

    public final void m() {
        this.f71426b = 0;
        this.f71428d = 0;
        ArraysKt.u(this.f71429e, null, 0, this.f71430f);
        this.f71430f = 0;
    }

    public final void r(androidx.compose.runtime.f fVar, m2 m2Var, a2 a2Var) {
        if (u()) {
            b bVar = new b();
            do {
                bVar.c().a(bVar, fVar, m2Var, a2Var);
            } while (bVar.d());
        }
        m();
    }

    public final int s() {
        return this.f71426b;
    }

    public final boolean t() {
        return s() == 0;
    }

    public String toString() {
        return super.toString();
    }

    public final boolean u() {
        return s() != 0;
    }

    public final void w(g gVar) {
        if (t()) {
            throw new NoSuchElementException("Cannot pop(), because the stack is empty.");
        }
        d[] dVarArr = this.f71425a;
        int i10 = this.f71426b - 1;
        this.f71426b = i10;
        d dVar = dVarArr[i10];
        Intrinsics.e(dVar);
        this.f71425a[this.f71426b] = null;
        gVar.y(dVar);
        int i11 = this.f71430f;
        int i12 = gVar.f71430f;
        int iD = dVar.d();
        for (int i13 = 0; i13 < iD; i13++) {
            i12--;
            i11--;
            Object[] objArr = gVar.f71429e;
            Object[] objArr2 = this.f71429e;
            objArr[i12] = objArr2[i11];
            objArr2[i11] = null;
        }
        int i14 = this.f71428d;
        int i15 = gVar.f71428d;
        int iB = dVar.b();
        for (int i16 = 0; i16 < iB; i16++) {
            i15--;
            i14--;
            int[] iArr = gVar.f71427c;
            int[] iArr2 = this.f71427c;
            iArr[i15] = iArr2[i14];
            iArr2[i14] = 0;
        }
        this.f71430f -= dVar.d();
        this.f71428d -= dVar.b();
    }

    public final void x(d dVar) {
        if (!(dVar.b() == 0 && dVar.d() == 0)) {
            o1.a("Cannot push " + dVar + " without arguments because it expects " + dVar.b() + " ints and " + dVar.d() + " objects.");
        }
        y(dVar);
    }

    public final void y(d dVar) {
        this.f71431g = 0;
        this.f71432h = 0;
        int i10 = this.f71426b;
        if (i10 == this.f71425a.length) {
            Object[] objArrCopyOf = Arrays.copyOf(this.f71425a, this.f71426b + RangesKt.h(i10, 1024));
            Intrinsics.g(objArrCopyOf, "copyOf(this, newSize)");
            this.f71425a = (d[]) objArrCopyOf;
        }
        p(this.f71428d + dVar.b());
        q(this.f71430f + dVar.d());
        d[] dVarArr = this.f71425a;
        int i11 = this.f71426b;
        this.f71426b = i11 + 1;
        dVarArr[i11] = dVar;
        this.f71428d += dVar.b();
        this.f71430f += dVar.d();
    }

    public static final class c {
        public static final d b(g gVar) {
            return gVar.v();
        }

        public static final void c(g gVar, int i10, int i11) {
            int i12 = 1 << i10;
            if (!((gVar.f71431g & i12) == 0)) {
                o1.b("Already pushed argument " + b(gVar).e(i10));
            }
            gVar.f71431g |= i12;
            gVar.f71427c[gVar.z(i10)] = i11;
        }

        public static final void d(g gVar, int i10, Object obj) {
            int i11 = 1 << i10;
            if (!((gVar.f71432h & i11) == 0)) {
                o1.b("Already pushed argument " + b(gVar).f(i10));
            }
            gVar.f71432h |= i11;
            gVar.f71429e[gVar.A(i10)] = obj;
        }

        public static g a(g gVar) {
            return gVar;
        }
    }
}
