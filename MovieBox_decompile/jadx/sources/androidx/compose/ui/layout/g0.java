package androidx.compose.ui.layout;

import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.RangesKt;

public abstract class g0 implements z {

    private int f4878a;

    private int f4879b;

    private long f4880c = o0.u.a(0, 0);

    private long f4881d = PlaceableKt.f4840b;

    private long f4882e = o0.p.f67416b.a();

    public static abstract class a {

        private boolean f4883a;

        /* JADX WARN: Multi-variable type inference failed */
        public final void f(g0 g0Var) {
            if (g0Var instanceof androidx.compose.ui.node.m0) {
                ((androidx.compose.ui.node.m0) g0Var).V(this.f4883a);
            }
        }

        public static void h(a aVar, g0 g0Var, int i10, int i11, float f10, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place");
            }
            if ((i12 & 4) != 0) {
                f10 = 0.0f;
            }
            aVar.g(g0Var, i10, i11, f10);
        }

        public static void j(a aVar, g0 g0Var, long j10, float f10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: place-70tqf50");
            }
            if ((i10 & 2) != 0) {
                f10 = 0.0f;
            }
            aVar.i(g0Var, j10, f10);
        }

        public static void l(a aVar, g0 g0Var, int i10, int i11, float f10, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelative");
            }
            if ((i12 & 4) != 0) {
                f10 = 0.0f;
            }
            aVar.k(g0Var, i10, i11, f10);
        }

        public static void n(a aVar, g0 g0Var, int i10, int i11, float f10, Function1 function1, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer");
            }
            if ((i12 & 4) != 0) {
                f10 = 0.0f;
            }
            float f11 = f10;
            if ((i12 & 8) != 0) {
                function1 = PlaceableKt.f4839a;
            }
            aVar.m(g0Var, i10, i11, f11, function1);
        }

        public static void q(a aVar, g0 g0Var, long j10, float f10, Function1 function1, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
            }
            if ((i10 & 2) != 0) {
                f10 = 0.0f;
            }
            float f11 = f10;
            if ((i10 & 4) != 0) {
                function1 = PlaceableKt.f4839a;
            }
            aVar.o(g0Var, j10, f11, function1);
        }

        public static void r(a aVar, g0 g0Var, long j10, GraphicsLayer graphicsLayer, float f10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeRelativeWithLayer-aW-9-wM");
            }
            if ((i10 & 4) != 0) {
                f10 = 0.0f;
            }
            aVar.p(g0Var, j10, graphicsLayer, f10);
        }

        public static void t(a aVar, g0 g0Var, int i10, int i11, float f10, Function1 function1, int i12, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer");
            }
            if ((i12 & 4) != 0) {
                f10 = 0.0f;
            }
            float f11 = f10;
            if ((i12 & 8) != 0) {
                function1 = PlaceableKt.f4839a;
            }
            aVar.s(g0Var, i10, i11, f11, function1);
        }

        public static void w(a aVar, g0 g0Var, long j10, float f10, Function1 function1, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
            }
            if ((i10 & 2) != 0) {
                f10 = 0.0f;
            }
            float f11 = f10;
            if ((i10 & 4) != 0) {
                function1 = PlaceableKt.f4839a;
            }
            aVar.u(g0Var, j10, f11, function1);
        }

        public static void x(a aVar, g0 g0Var, long j10, GraphicsLayer graphicsLayer, float f10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: placeWithLayer-aW-9-wM");
            }
            if ((i10 & 4) != 0) {
                f10 = 0.0f;
            }
            aVar.v(g0Var, j10, graphicsLayer, f10);
        }

        public abstract LayoutDirection d();

        public abstract int e();

        public final void g(g0 g0Var, int i10, int i11, float f10) {
            long jA = o0.q.a(i10, i11);
            f(g0Var);
            g0Var.y0(o0.p.l(jA, g0Var.f4882e), f10, null);
        }

        public final void i(g0 g0Var, long j10, float f10) {
            f(g0Var);
            g0Var.y0(o0.p.l(j10, g0Var.f4882e), f10, null);
        }

        public final void k(g0 g0Var, int i10, int i11, float f10) {
            long jA = o0.q.a(i10, i11);
            if (d() == LayoutDirection.Ltr || e() == 0) {
                f(g0Var);
                g0Var.y0(o0.p.l(jA, g0Var.f4882e), f10, null);
            } else {
                long jA2 = o0.q.a((e() - g0Var.u0()) - o0.p.h(jA), o0.p.i(jA));
                f(g0Var);
                g0Var.y0(o0.p.l(jA2, g0Var.f4882e), f10, null);
            }
        }

        public final void m(g0 g0Var, int i10, int i11, float f10, Function1 function1) {
            long jA = o0.q.a(i10, i11);
            if (d() == LayoutDirection.Ltr || e() == 0) {
                f(g0Var);
                g0Var.y0(o0.p.l(jA, g0Var.f4882e), f10, function1);
            } else {
                long jA2 = o0.q.a((e() - g0Var.u0()) - o0.p.h(jA), o0.p.i(jA));
                f(g0Var);
                g0Var.y0(o0.p.l(jA2, g0Var.f4882e), f10, function1);
            }
        }

        public final void o(g0 g0Var, long j10, float f10, Function1 function1) {
            if (d() == LayoutDirection.Ltr || e() == 0) {
                f(g0Var);
                g0Var.y0(o0.p.l(j10, g0Var.f4882e), f10, function1);
            } else {
                long jA = o0.q.a((e() - g0Var.u0()) - o0.p.h(j10), o0.p.i(j10));
                f(g0Var);
                g0Var.y0(o0.p.l(jA, g0Var.f4882e), f10, function1);
            }
        }

        public final void p(g0 g0Var, long j10, GraphicsLayer graphicsLayer, float f10) {
            if (d() == LayoutDirection.Ltr || e() == 0) {
                f(g0Var);
                g0Var.w0(o0.p.l(j10, g0Var.f4882e), f10, graphicsLayer);
            } else {
                long jA = o0.q.a((e() - g0Var.u0()) - o0.p.h(j10), o0.p.i(j10));
                f(g0Var);
                g0Var.w0(o0.p.l(jA, g0Var.f4882e), f10, graphicsLayer);
            }
        }

        public final void s(g0 g0Var, int i10, int i11, float f10, Function1 function1) {
            long jA = o0.q.a(i10, i11);
            f(g0Var);
            g0Var.y0(o0.p.l(jA, g0Var.f4882e), f10, function1);
        }

        public final void u(g0 g0Var, long j10, float f10, Function1 function1) {
            f(g0Var);
            g0Var.y0(o0.p.l(j10, g0Var.f4882e), f10, function1);
        }

        public final void v(g0 g0Var, long j10, GraphicsLayer graphicsLayer, float f10) {
            f(g0Var);
            g0Var.w0(o0.p.l(j10, g0Var.f4882e), f10, graphicsLayer);
        }
    }

    private final void v0() {
        this.f4878a = RangesKt.l(o0.t.g(this.f4880c), o0.b.n(this.f4881d), o0.b.l(this.f4881d));
        this.f4879b = RangesKt.l(o0.t.f(this.f4880c), o0.b.m(this.f4881d), o0.b.k(this.f4881d));
        this.f4882e = o0.q.a((this.f4878a - o0.t.g(this.f4880c)) / 2, (this.f4879b - o0.t.f(this.f4880c)) / 2);
    }

    protected final void A0(long j10) {
        if (o0.t.e(this.f4880c, j10)) {
            return;
        }
        this.f4880c = j10;
        v0();
    }

    public final void E0(long j10) {
        if (o0.b.f(this.f4881d, j10)) {
            return;
        }
        this.f4881d = j10;
        v0();
    }

    public Object G() {
        return y.a(this);
    }

    protected final long k0() {
        return this.f4882e;
    }

    public final int l0() {
        return this.f4879b;
    }

    public int o0() {
        return o0.t.f(this.f4880c);
    }

    protected final long r0() {
        return this.f4880c;
    }

    public int s0() {
        return o0.t.g(this.f4880c);
    }

    protected final long t0() {
        return this.f4881d;
    }

    public final int u0() {
        return this.f4878a;
    }

    public void w0(long j10, float f10, GraphicsLayer graphicsLayer) {
        y0(j10, f10, null);
    }

    public abstract void y0(long j10, float f10, Function1 function1);
}
