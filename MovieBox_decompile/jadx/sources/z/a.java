package z;

import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.c5;
import androidx.compose.ui.graphics.d5;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.j1;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.n4;
import androidx.compose.ui.graphics.p4;
import androidx.compose.ui.graphics.t0;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.x3;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements g {

    private final C0951a f76437a = new C0951a(null, null, null, 0, 15, null);

    private final d f76438b = new b();

    private m4 f76439c;

    private m4 f76440d;

    public static final class C0951a {

        private o0.e f76441a;

        private LayoutDirection f76442b;

        private m1 f76443c;

        private long f76444d;

        public C0951a(o0.e eVar, LayoutDirection layoutDirection, m1 m1Var, long j10, DefaultConstructorMarker defaultConstructorMarker) {
            this(eVar, layoutDirection, m1Var, j10);
        }

        public final o0.e a() {
            return this.f76441a;
        }

        public final LayoutDirection b() {
            return this.f76442b;
        }

        public final m1 c() {
            return this.f76443c;
        }

        public final long d() {
            return this.f76444d;
        }

        public final m1 e() {
            return this.f76443c;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0951a)) {
                return false;
            }
            C0951a c0951a = (C0951a) obj;
            return Intrinsics.c(this.f76441a, c0951a.f76441a) && this.f76442b == c0951a.f76442b && Intrinsics.c(this.f76443c, c0951a.f76443c) && y.m.f(this.f76444d, c0951a.f76444d);
        }

        public final o0.e f() {
            return this.f76441a;
        }

        public final LayoutDirection g() {
            return this.f76442b;
        }

        public final long h() {
            return this.f76444d;
        }

        public int hashCode() {
            return (((((this.f76441a.hashCode() * 31) + this.f76442b.hashCode()) * 31) + this.f76443c.hashCode()) * 31) + y.m.j(this.f76444d);
        }

        public final void i(m1 m1Var) {
            this.f76443c = m1Var;
        }

        public final void j(o0.e eVar) {
            this.f76441a = eVar;
        }

        public final void k(LayoutDirection layoutDirection) {
            this.f76442b = layoutDirection;
        }

        public final void l(long j10) {
            this.f76444d = j10;
        }

        public String toString() {
            return "DrawParams(density=" + this.f76441a + ", layoutDirection=" + this.f76442b + ", canvas=" + this.f76443c + ", size=" + ((Object) y.m.l(this.f76444d)) + ')';
        }

        private C0951a(o0.e eVar, LayoutDirection layoutDirection, m1 m1Var, long j10) {
            this.f76441a = eVar;
            this.f76442b = layoutDirection;
            this.f76443c = m1Var;
            this.f76444d = j10;
        }

        public C0951a(o0.e eVar, LayoutDirection layoutDirection, m1 m1Var, long j10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this((i10 & 1) != 0 ? e.a() : eVar, (i10 & 2) != 0 ? LayoutDirection.Ltr : layoutDirection, (i10 & 4) != 0 ? new k() : m1Var, (i10 & 8) != 0 ? y.m.f76020b.b() : j10, null);
        }
    }

    public static final class b implements d {

        private final j f76445a = z.b.b(this);

        private GraphicsLayer f76446b;

        b() {
        }

        @Override
        public void a(LayoutDirection layoutDirection) {
            a.this.F().k(layoutDirection);
        }

        @Override
        public void b(o0.e eVar) {
            a.this.F().j(eVar);
        }

        @Override
        public j c() {
            return this.f76445a;
        }

        @Override
        public void d(GraphicsLayer graphicsLayer) {
            this.f76446b = graphicsLayer;
        }

        @Override
        public m1 e() {
            return a.this.F().e();
        }

        @Override
        public void f(long j10) {
            a.this.F().l(j10);
        }

        @Override
        public GraphicsLayer g() {
            return this.f76446b;
        }

        @Override
        public o0.e getDensity() {
            return a.this.F().f();
        }

        @Override
        public LayoutDirection getLayoutDirection() {
            return a.this.F().g();
        }

        @Override
        public void h(m1 m1Var) {
            a.this.F().i(m1Var);
        }

        @Override
        public long i() {
            return a.this.F().h();
        }
    }

    static m4 B(a aVar, j1 j1Var, h hVar, float f10, v1 v1Var, int i10, int i11, int i12, Object obj) {
        if ((i12 & 32) != 0) {
            i11 = g.f76450o1.b();
        }
        return aVar.z(j1Var, hVar, f10, v1Var, i10, i11);
    }

    private final m4 C(long j10, float f10, float f11, int i10, int i11, p4 p4Var, float f12, v1 v1Var, int i12, int i13) {
        m4 m4VarL = L();
        long jG = G(j10, f12);
        if (!u1.m(m4VarL.a(), jG)) {
            m4VarL.s(jG);
        }
        if (m4VarL.y() != null) {
            m4VarL.x(null);
        }
        if (!Intrinsics.c(m4VarL.i(), v1Var)) {
            m4VarL.z(v1Var);
        }
        if (!c1.E(m4VarL.l(), i12)) {
            m4VarL.n(i12);
        }
        if (m4VarL.getStrokeWidth() != f10) {
            m4VarL.setStrokeWidth(f10);
        }
        if (m4VarL.v() != f11) {
            m4VarL.A(f11);
        }
        if (!c5.e(m4VarL.p(), i10)) {
            m4VarL.m(i10);
        }
        if (!d5.e(m4VarL.u(), i11)) {
            m4VarL.r(i11);
        }
        m4VarL.t();
        if (!Intrinsics.c(null, p4Var)) {
            m4VarL.q(p4Var);
        }
        if (!x3.d(m4VarL.B(), i13)) {
            m4VarL.o(i13);
        }
        return m4VarL;
    }

    static m4 D(a aVar, long j10, float f10, float f11, int i10, int i11, p4 p4Var, float f12, v1 v1Var, int i12, int i13, int i14, Object obj) {
        return aVar.C(j10, f10, f11, i10, i11, p4Var, f12, v1Var, i12, (i14 & 512) != 0 ? g.f76450o1.b() : i13);
    }

    private final long G(long j10, float f10) {
        return f10 == 1.0f ? j10 : u1.k(j10, u1.n(j10) * f10, 0.0f, 0.0f, 0.0f, 14, null);
    }

    private final m4 I() {
        m4 m4Var = this.f76439c;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarA = t0.a();
        m4VarA.C(n4.f4299a.a());
        this.f76439c = m4VarA;
        return m4VarA;
    }

    private final m4 L() {
        m4 m4Var = this.f76440d;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarA = t0.a();
        m4VarA.C(n4.f4299a.b());
        this.f76440d = m4VarA;
        return m4VarA;
    }

    private final m4 M(h hVar) {
        if (Intrinsics.c(hVar, l.f76454a)) {
            return I();
        }
        if (!(hVar instanceof m)) {
            throw new NoWhenBranchMatchedException();
        }
        m4 m4VarL = L();
        m mVar = (m) hVar;
        if (m4VarL.getStrokeWidth() != mVar.f()) {
            m4VarL.setStrokeWidth(mVar.f());
        }
        if (!c5.e(m4VarL.p(), mVar.b())) {
            m4VarL.m(mVar.b());
        }
        if (m4VarL.v() != mVar.d()) {
            m4VarL.A(mVar.d());
        }
        if (!d5.e(m4VarL.u(), mVar.c())) {
            m4VarL.r(mVar.c());
        }
        m4VarL.t();
        mVar.e();
        if (!Intrinsics.c(null, null)) {
            mVar.e();
            m4VarL.q(null);
        }
        return m4VarL;
    }

    private final m4 n(long j10, h hVar, float f10, v1 v1Var, int i10, int i11) {
        m4 m4VarM = M(hVar);
        long jG = G(j10, f10);
        if (!u1.m(m4VarM.a(), jG)) {
            m4VarM.s(jG);
        }
        if (m4VarM.y() != null) {
            m4VarM.x(null);
        }
        if (!Intrinsics.c(m4VarM.i(), v1Var)) {
            m4VarM.z(v1Var);
        }
        if (!c1.E(m4VarM.l(), i10)) {
            m4VarM.n(i10);
        }
        if (!x3.d(m4VarM.B(), i11)) {
            m4VarM.o(i11);
        }
        return m4VarM;
    }

    static m4 v(a aVar, long j10, h hVar, float f10, v1 v1Var, int i10, int i11, int i12, Object obj) {
        return aVar.n(j10, hVar, f10, v1Var, i10, (i12 & 32) != 0 ? g.f76450o1.b() : i11);
    }

    private final m4 z(j1 j1Var, h hVar, float f10, v1 v1Var, int i10, int i11) {
        m4 m4VarM = M(hVar);
        if (j1Var != null) {
            j1Var.a(i(), m4VarM, f10);
        } else {
            if (m4VarM.y() != null) {
                m4VarM.x(null);
            }
            long jA = m4VarM.a();
            u1.a aVar = u1.f4349b;
            if (!u1.m(jA, aVar.a())) {
                m4VarM.s(aVar.a());
            }
            if (m4VarM.getAlpha() != f10) {
                m4VarM.setAlpha(f10);
            }
        }
        if (!Intrinsics.c(m4VarM.i(), v1Var)) {
            m4VarM.z(v1Var);
        }
        if (!c1.E(m4VarM.l(), i10)) {
            m4VarM.n(i10);
        }
        if (!x3.d(m4VarM.B(), i11)) {
            m4VarM.o(i11);
        }
        return m4VarM;
    }

    @Override
    public float B0() {
        return this.f76437a.f().B0();
    }

    @Override
    public void C0(Path path, long j10, float f10, h hVar, v1 v1Var, int i10) {
        this.f76437a.e().q(path, v(this, j10, hVar, f10, v1Var, i10, 0, 32, null));
    }

    @Override
    public float D0(float f10) {
        return o0.d.d(this, f10);
    }

    public final C0951a F() {
        return this.f76437a;
    }

    @Override
    public void F0(List list, int i10, long j10, float f10, int i11, p4 p4Var, float f11, v1 v1Var, int i12) {
        this.f76437a.e().g(i10, list, D(this, j10, f10, 4.0f, i11, d5.f4121a.b(), p4Var, f11, v1Var, i12, 0, 512, null));
    }

    @Override
    public d G0() {
        return this.f76438b;
    }

    @Override
    public long H(float f10) {
        return o0.m.b(this, f10);
    }

    @Override
    public float J(long j10) {
        return o0.m.a(this, j10);
    }

    @Override
    public void J0(long j10, float f10, long j11, float f11, h hVar, v1 v1Var, int i10) {
        this.f76437a.e().r(j11, f10, v(this, j10, hVar, f11, v1Var, i10, 0, 32, null));
    }

    @Override
    public void K0(long j10, long j11, long j12, float f10, h hVar, v1 v1Var, int i10) {
        this.f76437a.e().f(y.g.m(j11), y.g.n(j11), y.g.m(j11) + y.m.i(j12), y.g.n(j11) + y.m.g(j12), v(this, j10, hVar, f10, v1Var, i10, 0, 32, null));
    }

    @Override
    public void M0(j1 j1Var, long j10, long j11, float f10, h hVar, v1 v1Var, int i10) {
        this.f76437a.e().f(y.g.m(j10), y.g.n(j10), y.g.m(j10) + y.m.i(j11), y.g.n(j10) + y.m.g(j11), B(this, j1Var, hVar, f10, v1Var, i10, 0, 32, null));
    }

    @Override
    public long N0() {
        return f.a(this);
    }

    @Override
    public long P0(long j10) {
        return o0.d.e(this, j10);
    }

    @Override
    public long Q(float f10) {
        return o0.d.f(this, f10);
    }

    @Override
    public void T(long j10, long j11, long j12, long j13, h hVar, float f10, v1 v1Var, int i10) {
        this.f76437a.e().s(y.g.m(j11), y.g.n(j11), y.g.m(j11) + y.m.i(j12), y.g.n(j11) + y.m.g(j12), y.a.d(j13), y.a.e(j13), v(this, j10, hVar, f10, v1Var, i10, 0, 32, null));
    }

    @Override
    public void T0(e4 e4Var, long j10, long j11, long j12, long j13, float f10, h hVar, v1 v1Var, int i10, int i11) {
        this.f76437a.e().h(e4Var, j10, j11, j12, j13, z(null, hVar, f10, v1Var, i10, i11));
    }

    @Override
    public void U0(j1 j1Var, long j10, long j11, long j12, float f10, h hVar, v1 v1Var, int i10) {
        this.f76437a.e().s(y.g.m(j10), y.g.n(j10), y.g.m(j10) + y.m.i(j11), y.g.n(j10) + y.m.g(j11), y.a.d(j12), y.a.e(j12), B(this, j1Var, hVar, f10, v1Var, i10, 0, 32, null));
    }

    @Override
    public int c0(float f10) {
        return o0.d.a(this, f10);
    }

    @Override
    public float getDensity() {
        return this.f76437a.f().getDensity();
    }

    @Override
    public LayoutDirection getLayoutDirection() {
        return this.f76437a.g();
    }

    @Override
    public float h0(long j10) {
        return o0.d.c(this, j10);
    }

    @Override
    public long i() {
        return f.b(this);
    }

    @Override
    public void i0(Path path, j1 j1Var, float f10, h hVar, v1 v1Var, int i10) {
        this.f76437a.e().q(path, B(this, j1Var, hVar, f10, v1Var, i10, 0, 32, null));
    }

    @Override
    public void q0(long j10, long j11, long j12, float f10, int i10, p4 p4Var, float f11, v1 v1Var, int i11) {
        this.f76437a.e().m(j11, j12, D(this, j10, f10, 4.0f, i10, d5.f4121a.b(), p4Var, f11, v1Var, i11, 0, 512, null));
    }

    @Override
    public float x0(float f10) {
        return o0.d.b(this, f10);
    }
}
