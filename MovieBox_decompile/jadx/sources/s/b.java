package s;

import androidx.compose.runtime.ComposerImpl;
import androidx.compose.runtime.b2;
import androidx.compose.runtime.i2;
import androidx.compose.runtime.j2;
import androidx.compose.runtime.k;
import androidx.compose.runtime.l;
import androidx.compose.runtime.m;
import androidx.compose.runtime.m0;
import androidx.compose.runtime.x0;
import androidx.compose.runtime.y0;
import androidx.compose.runtime.z2;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {

    public static final a f71373m = new a(null);

    public static final int f71374n = 8;

    private final ComposerImpl f71375a;

    private s.a f71376b;

    private boolean f71377c;

    private int f71380f;

    private int f71381g;

    private int f71386l;

    private final m0 f71378d = new m0();

    private boolean f71379e = true;

    private z2 f71382h = new z2();

    private int f71383i = -1;

    private int f71384j = -1;

    private int f71385k = -1;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public b(ComposerImpl composerImpl, s.a aVar) {
        this.f71375a = composerImpl;
        this.f71376b = aVar;
    }

    private final void A() {
        B();
    }

    private final void B() {
        int i10 = this.f71381g;
        if (i10 > 0) {
            this.f71376b.G(i10);
            this.f71381g = 0;
        }
        if (this.f71382h.d()) {
            this.f71376b.k(this.f71382h.i());
            this.f71382h.a();
        }
    }

    private final void C() {
        I(this, false, 1, null);
        K();
    }

    private final void D(boolean z10) {
        H(z10);
    }

    static void E(b bVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        bVar.D(z10);
    }

    private final void F(int i10, int i11, int i12) {
        A();
        this.f71376b.u(i10, i11, i12);
    }

    private final void G() {
        int i10 = this.f71386l;
        if (i10 > 0) {
            int i11 = this.f71383i;
            if (i11 >= 0) {
                J(i11, i10);
                this.f71383i = -1;
            } else {
                F(this.f71385k, this.f71384j, i10);
                this.f71384j = -1;
                this.f71385k = -1;
            }
            this.f71386l = 0;
        }
    }

    private final void H(boolean z10) {
        int iU = z10 ? q().u() : q().k();
        int i10 = iU - this.f71380f;
        if (!(i10 >= 0)) {
            k.r("Tried to seek backward");
        }
        if (i10 > 0) {
            this.f71376b.e(i10);
            this.f71380f = iU;
        }
    }

    static void I(b bVar, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        bVar.H(z10);
    }

    private final void J(int i10, int i11) {
        A();
        this.f71376b.x(i10, i11);
    }

    private final void k(androidx.compose.runtime.c cVar) {
        E(this, false, 1, null);
        this.f71376b.o(cVar);
        this.f71377c = true;
    }

    private final void l() {
        if (this.f71377c || !this.f71379e) {
            return;
        }
        E(this, false, 1, null);
        this.f71376b.p();
        this.f71377c = true;
    }

    private final i2 q() {
        return this.f71375a.E0();
    }

    public final void K() {
        i2 i2VarQ;
        int iU;
        if (q().x() <= 0 || this.f71378d.h(-2) == (iU = (i2VarQ = q()).u())) {
            return;
        }
        l();
        if (iU > 0) {
            androidx.compose.runtime.c cVarA = i2VarQ.a(iU);
            this.f71378d.j(iU);
            k(cVarA);
        }
    }

    public final void L() {
        B();
        if (this.f71377c) {
            U();
            j();
        }
    }

    public final void M(b2 b2Var) {
        this.f71376b.v(b2Var);
    }

    public final void N() {
        C();
        this.f71376b.w();
        this.f71380f += q().p();
    }

    public final void O(int i10, int i11) {
        if (i11 > 0) {
            if (!(i10 >= 0)) {
                k.r("Invalid remove index " + i10);
            }
            if (this.f71383i == i10) {
                this.f71386l += i11;
                return;
            }
            G();
            this.f71383i = i10;
            this.f71386l = i11;
        }
    }

    public final void P() {
        this.f71376b.y();
    }

    public final void Q() {
        this.f71377c = false;
        this.f71378d.a();
        this.f71380f = 0;
    }

    public final void R(s.a aVar) {
        this.f71376b = aVar;
    }

    public final void S(boolean z10) {
        this.f71379e = z10;
    }

    public final void T(Function0 function0) {
        this.f71376b.z(function0);
    }

    public final void U() {
        this.f71376b.A();
    }

    public final void V(int i10) {
        if (i10 > 0) {
            C();
            this.f71376b.B(i10);
        }
    }

    public final void W(Object obj, androidx.compose.runtime.c cVar, int i10) {
        this.f71376b.C(obj, cVar, i10);
    }

    public final void X(Object obj) {
        E(this, false, 1, null);
        this.f71376b.D(obj);
    }

    public final void Y(Object obj, Function2 function2) {
        A();
        this.f71376b.E(obj, function2);
    }

    public final void Z(Object obj, int i10) {
        D(true);
        this.f71376b.F(obj, i10);
    }

    public final void a(androidx.compose.runtime.c cVar, Object obj) {
        this.f71376b.f(cVar, obj);
    }

    public final void a0(Object obj) {
        A();
        this.f71376b.H(obj);
    }

    public final void b(List list, androidx.compose.runtime.internal.c cVar) {
        this.f71376b.g(list, cVar);
    }

    public final void c(x0 x0Var, m mVar, y0 y0Var, y0 y0Var2) {
        this.f71376b.h(x0Var, mVar, y0Var, y0Var2);
    }

    public final void d() {
        E(this, false, 1, null);
        this.f71376b.i();
    }

    public final void e(androidx.compose.runtime.internal.c cVar, androidx.compose.runtime.c cVar2) {
        B();
        this.f71376b.j(cVar, cVar2);
    }

    public final void f(Function1 function1, l lVar) {
        this.f71376b.l(function1, lVar);
    }

    public final void g() {
        int iU = q().u();
        if (!(this.f71378d.h(-1) <= iU)) {
            k.r("Missed recording an endGroup");
        }
        if (this.f71378d.h(-1) == iU) {
            E(this, false, 1, null);
            this.f71378d.i();
            this.f71376b.m();
        }
    }

    public final void h() {
        this.f71376b.n();
        this.f71380f = 0;
    }

    public final void i() {
        G();
    }

    public final void j() {
        if (this.f71377c) {
            E(this, false, 1, null);
            E(this, false, 1, null);
            this.f71376b.m();
            this.f71377c = false;
        }
    }

    public final void m() {
        B();
        if (this.f71378d.d()) {
            return;
        }
        k.r("Missed recording an endGroup()");
    }

    public final s.a n() {
        return this.f71376b;
    }

    public final boolean o() {
        return this.f71379e;
    }

    public final boolean p() {
        return q().u() - this.f71380f < 0;
    }

    public final void r(s.a aVar, androidx.compose.runtime.internal.c cVar) {
        this.f71376b.q(aVar, cVar);
    }

    public final void s(androidx.compose.runtime.c cVar, j2 j2Var) {
        B();
        C();
        G();
        this.f71376b.r(cVar, j2Var);
    }

    public final void t(androidx.compose.runtime.c cVar, j2 j2Var, c cVar2) {
        B();
        C();
        G();
        this.f71376b.s(cVar, j2Var, cVar2);
    }

    public final void u(int i10) {
        C();
        this.f71376b.t(i10);
    }

    public final void v(Object obj) {
        G();
        this.f71382h.h(obj);
    }

    public final void w(int i10, int i11, int i12) {
        if (i12 > 0) {
            int i13 = this.f71386l;
            if (i13 > 0 && this.f71384j == i10 - i13 && this.f71385k == i11 - i13) {
                this.f71386l = i13 + i12;
                return;
            }
            G();
            this.f71384j = i10;
            this.f71385k = i11;
            this.f71386l = i12;
        }
    }

    public final void x(int i10) {
        this.f71380f += i10 - q().k();
    }

    public final void y(int i10) {
        this.f71380f = i10;
    }

    public final void z() {
        G();
        if (this.f71382h.d()) {
            this.f71382h.g();
        } else {
            this.f71381g++;
        }
    }
}
