package androidx.compose.ui.graphics;

import androidx.compose.ui.node.NodeCoordinator;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

final class SimpleGraphicsLayerModifier extends androidx.compose.ui.f.c implements androidx.compose.ui.node.x {
    private long A;
    private long B;
    private int C;
    private Function1 D;

    private float f3968n;

    private float f3969o;

    private float f3970p;

    private float f3971q;

    private float f3972r;

    private float f3973s;

    private float f3974t;

    private float f3975u;

    private float f3976v;

    private float f3977w;

    private long f3978x;

    private a5 f3979y;

    private boolean f3980z;

    public SimpleGraphicsLayerModifier(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, a5 a5Var, boolean z10, w4 w4Var, long j11, long j12, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, j10, a5Var, z10, w4Var, j11, j12, i10);
    }

    public final float A() {
        return this.f3969o;
    }

    public final float D1() {
        return this.f3970p;
    }

    public final long E1() {
        return this.A;
    }

    public final boolean F1() {
        return this.f3980z;
    }

    public final int G1() {
        return this.C;
    }

    public final w4 H1() {
        return null;
    }

    public final float I1() {
        return this.f3973s;
    }

    public final a5 J1() {
        return this.f3979y;
    }

    public final long K1() {
        return this.B;
    }

    public final void L1() {
        NodeCoordinator nodeCoordinatorY1 = androidx.compose.ui.node.g.h(this, androidx.compose.ui.node.s0.a(2)).Y1();
        if (nodeCoordinatorY1 != null) {
            nodeCoordinatorY1.K2(this.D, true);
        }
    }

    public final void a(float f10) {
        this.f3972r = f10;
    }

    public final void b(float f10) {
        this.f3968n = f10;
    }

    public final long b0() {
        return this.f3978x;
    }

    public final void d(float f10) {
        this.f3977w = f10;
    }

    public final void d0(long j10) {
        this.f3978x = j10;
    }

    public final void e(float f10) {
        this.f3974t = f10;
    }

    public final void f(float f10) {
        this.f3975u = f10;
    }

    public final void g(float f10) {
        this.f3976v = f10;
    }

    public final void h(float f10) {
        this.f3969o = f10;
    }

    @Override
    public boolean h1() {
        return false;
    }

    public final void j(float f10) {
        this.f3971q = f10;
    }

    public final void l(int i10) {
        this.C = i10;
    }

    public final float m() {
        return this.f3975u;
    }

    public final float o() {
        return this.f3976v;
    }

    public final void p(long j10) {
        this.A = j10;
    }

    public final float q() {
        return this.f3977w;
    }

    public final void r(boolean z10) {
        this.f3980z = z10;
    }

    public final void s(long j10) {
        this.B = j10;
    }

    public final void setAlpha(float f10) {
        this.f3970p = f10;
    }

    public final float t() {
        return this.f3968n;
    }

    public String toString() {
        return "SimpleGraphicsLayerModifier(scaleX=" + this.f3968n + ", scaleY=" + this.f3969o + ", alpha = " + this.f3970p + ", translationX=" + this.f3971q + ", translationY=" + this.f3972r + ", shadowElevation=" + this.f3973s + ", rotationX=" + this.f3974t + ", rotationY=" + this.f3975u + ", rotationZ=" + this.f3976v + ", cameraDistance=" + this.f3977w + ", transformOrigin=" + ((Object) e5.g(this.f3978x)) + ", shape=" + this.f3979y + ", clip=" + this.f3980z + ", renderEffect=" + ((Object) null) + ", ambientShadowColor=" + ((Object) u1.t(this.A)) + ", spotShadowColor=" + ((Object) u1.t(this.B)) + ", compositingStrategy=" + ((Object) w3.g(this.C)) + ')';
    }

    public final void u(float f10) {
        this.f3973s = f10;
    }

    public final float w() {
        return this.f3972r;
    }

    public final float x() {
        return this.f3971q;
    }

    public final float y() {
        return this.f3974t;
    }

    @Override
    public androidx.compose.ui.layout.v z(androidx.compose.ui.layout.x xVar, androidx.compose.ui.layout.s sVar, long j10) {
        final androidx.compose.ui.layout.g0 g0VarP = sVar.P(j10);
        return androidx.compose.ui.layout.w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<androidx.compose.ui.layout.g0.a, Unit>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((androidx.compose.ui.layout.g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(androidx.compose.ui.layout.g0.a aVar) {
                androidx.compose.ui.layout.g0.a.t(aVar, g0VarP, 0, 0, 0.0f, this.D, 4, null);
            }
        }, 4, null);
    }

    public final void z0(a5 a5Var) {
        this.f3979y = a5Var;
    }

    private SimpleGraphicsLayerModifier(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18, float f19, long j10, a5 a5Var, boolean z10, w4 w4Var, long j11, long j12, int i10) {
        this.f3968n = f10;
        this.f3969o = f11;
        this.f3970p = f12;
        this.f3971q = f13;
        this.f3972r = f14;
        this.f3973s = f15;
        this.f3974t = f16;
        this.f3975u = f17;
        this.f3976v = f18;
        this.f3977w = f19;
        this.f3978x = j10;
        this.f3979y = a5Var;
        this.f3980z = z10;
        this.A = j11;
        this.B = j12;
        this.C = i10;
        this.D = new Function1<c4, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((c4) obj);
                return Unit.f64096a;
            }

            public final void invoke(c4 c4Var) {
                c4Var.b(this.this$0.t());
                c4Var.h(this.this$0.A());
                c4Var.setAlpha(this.this$0.D1());
                c4Var.j(this.this$0.x());
                c4Var.a(this.this$0.w());
                c4Var.u(this.this$0.I1());
                c4Var.e(this.this$0.y());
                c4Var.f(this.this$0.m());
                c4Var.g(this.this$0.o());
                c4Var.d(this.this$0.q());
                c4Var.d0(this.this$0.b0());
                c4Var.z0(this.this$0.J1());
                c4Var.r(this.this$0.F1());
                this.this$0.H1();
                c4Var.c(null);
                c4Var.p(this.this$0.E1());
                c4Var.s(this.this$0.K1());
                c4Var.l(this.this$0.G1());
            }
        };
    }

    public final void c(w4 w4Var) {
    }
}
