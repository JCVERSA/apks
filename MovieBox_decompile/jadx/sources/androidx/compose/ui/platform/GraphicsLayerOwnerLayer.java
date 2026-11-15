package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.a4;
import androidx.compose.ui.graphics.e5;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.k4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.o4;
import androidx.compose.ui.graphics.w3;
import androidx.compose.ui.graphics.x4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

public final class GraphicsLayerOwnerLayer implements androidx.compose.ui.node.w0 {

    private GraphicsLayer f5334a;

    private final a4 f5335b;

    private final AndroidComposeView f5336c;

    private Function2 f5337d;

    private Function0 f5338e;

    private boolean f5340g;

    private float[] f5342i;

    private boolean f5343j;

    private int f5347n;

    private k4 f5349p;

    private Path f5350q;

    private m4 f5351r;

    private boolean f5352s;

    private long f5339f = o0.u.a(Integer.MAX_VALUE, Integer.MAX_VALUE);

    private final float[] f5341h = i4.c(null, 1, null);

    private o0.e f5344k = o0.g.b(1.0f, 0.0f, 2, null);

    private LayoutDirection f5345l = LayoutDirection.Ltr;

    private final z.a f5346m = new z.a();

    private long f5348o = e5.f4127a.a();

    private final Function1 f5353t = new Function1<z.g, Unit>() {
        {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((z.g) obj);
            return Unit.f64096a;
        }

        public final void invoke(z.g gVar) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = this.this$0;
            androidx.compose.ui.graphics.m1 m1VarE = gVar.G0().e();
            Function2 function2 = graphicsLayerOwnerLayer.f5337d;
            if (function2 != null) {
                function2.invoke(m1VarE, gVar.G0().g());
            }
        }
    };

    public GraphicsLayerOwnerLayer(GraphicsLayer graphicsLayer, a4 a4Var, AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.f5334a = graphicsLayer;
        this.f5335b = a4Var;
        this.f5336c = androidComposeView;
        this.f5337d = function2;
        this.f5338e = function0;
    }

    private final void b(androidx.compose.ui.graphics.m1 m1Var) {
        if (this.f5334a.k()) {
            k4 k4VarN = this.f5334a.n();
            if (k4VarN instanceof k4.b) {
                androidx.compose.ui.graphics.l1.e(m1Var, ((k4.b) k4VarN).b(), 0, 2, null);
                return;
            }
            if (!(k4VarN instanceof k4.c)) {
                if (k4VarN instanceof k4.a) {
                    androidx.compose.ui.graphics.l1.c(m1Var, ((k4.a) k4VarN).b(), 0, 2, null);
                    return;
                }
                return;
            }
            Path pathA = this.f5350q;
            if (pathA == null) {
                pathA = androidx.compose.ui.graphics.x0.a();
                this.f5350q = pathA;
            }
            pathA.reset();
            o4.b(pathA, ((k4.c) k4VarN).b(), null, 2, null);
            androidx.compose.ui.graphics.l1.c(m1Var, pathA, 0, 2, null);
        }
    }

    private final float[] c() {
        float[] fArrD = d();
        float[] fArrC = this.f5342i;
        if (fArrC == null) {
            fArrC = i4.c(null, 1, null);
            this.f5342i = fArrC;
        }
        if (b1.a(fArrD, fArrC)) {
            return fArrC;
        }
        return null;
    }

    private final float[] d() {
        g();
        return this.f5341h;
    }

    private final void e(boolean z10) {
        if (z10 != this.f5343j) {
            this.f5343j = z10;
            this.f5336c.notifyLayerIsDirty$ui_release(this, z10);
        }
    }

    private final void f() {
        if (Build.VERSION.SDK_INT >= 26) {
            a3.f5422a.a(this.f5336c);
        } else {
            this.f5336c.invalidate();
        }
    }

    private final void g() {
        GraphicsLayer graphicsLayer = this.f5334a;
        long jB = y.h.d(graphicsLayer.o()) ? y.n.b(o0.u.d(this.f5339f)) : graphicsLayer.o();
        i4.h(this.f5341h);
        float[] fArr = this.f5341h;
        float[] fArrC = i4.c(null, 1, null);
        i4.q(fArrC, -y.g.m(jB), -y.g.n(jB), 0.0f, 4, null);
        i4.n(fArr, fArrC);
        float[] fArr2 = this.f5341h;
        float[] fArrC2 = i4.c(null, 1, null);
        i4.q(fArrC2, graphicsLayer.x(), graphicsLayer.y(), 0.0f, 4, null);
        i4.i(fArrC2, graphicsLayer.p());
        i4.j(fArrC2, graphicsLayer.q());
        i4.k(fArrC2, graphicsLayer.r());
        i4.m(fArrC2, graphicsLayer.s(), graphicsLayer.t(), 0.0f, 4, null);
        i4.n(fArr2, fArrC2);
        float[] fArr3 = this.f5341h;
        float[] fArrC3 = i4.c(null, 1, null);
        i4.q(fArrC3, y.g.m(jB), y.g.n(jB), 0.0f, 4, null);
        i4.n(fArr3, fArrC3);
    }

    private final void h() {
        Function0 function0;
        k4 k4Var = this.f5349p;
        if (k4Var == null) {
            return;
        }
        androidx.compose.ui.graphics.layer.d.b(this.f5334a, k4Var);
        if (!(k4Var instanceof k4.a) || Build.VERSION.SDK_INT >= 33 || (function0 = this.f5338e) == null) {
            return;
        }
        function0.invoke();
    }

    @Override
    public void destroy() {
        this.f5337d = null;
        this.f5338e = null;
        this.f5340g = true;
        e(false);
        a4 a4Var = this.f5335b;
        if (a4Var != null) {
            a4Var.b(this.f5334a);
            this.f5336c.recycle$ui_release(this);
        }
    }

    @Override
    public void drawLayer(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (canvasD.isHardwareAccelerated()) {
            updateDisplayList();
            this.f5352s = this.f5334a.u() > 0.0f;
            z.d dVarG0 = this.f5346m.G0();
            dVarG0.h(m1Var);
            dVarG0.d(graphicsLayer);
            androidx.compose.ui.graphics.layer.d.a(this.f5346m, this.f5334a);
            return;
        }
        float fH = o0.p.h(this.f5334a.w());
        float fI = o0.p.i(this.f5334a.w());
        float fG = fH + o0.t.g(this.f5339f);
        float f10 = fI + o0.t.f(this.f5339f);
        if (this.f5334a.i() < 1.0f) {
            m4 m4VarA = this.f5351r;
            if (m4VarA == null) {
                m4VarA = androidx.compose.ui.graphics.t0.a();
                this.f5351r = m4VarA;
            }
            m4VarA.setAlpha(this.f5334a.i());
            canvasD.saveLayer(fH, fI, fG, f10, m4VarA.w());
        } else {
            m1Var.n();
        }
        m1Var.c(fH, fI);
        m1Var.p(d());
        if (this.f5334a.k()) {
            b(m1Var);
        }
        Function2 function2 = this.f5337d;
        if (function2 != null) {
            function2.invoke(m1Var, null);
        }
        m1Var.j();
    }

    @Override
    public void invalidate() {
        if (this.f5343j || this.f5340g) {
            return;
        }
        this.f5336c.invalidate();
        e(true);
    }

    @Override
    public boolean mo138isInLayerk4lQ0M(long j10) {
        float fM = y.g.m(j10);
        float fN = y.g.n(j10);
        if (this.f5334a.k()) {
            return f2.c(this.f5334a.n(), fM, fN, null, null, 24, null);
        }
        return true;
    }

    @Override
    public void mapBounds(y.e eVar, boolean z10) {
        if (!z10) {
            i4.g(d(), eVar);
            return;
        }
        float[] fArrC = c();
        if (fArrC == null) {
            eVar.g(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            i4.g(fArrC, eVar);
        }
    }

    @Override
    public long mo139mapOffset8S9VItk(long j10, boolean z10) {
        if (!z10) {
            return i4.f(d(), j10);
        }
        float[] fArrC = c();
        return fArrC != null ? i4.f(fArrC, j10) : y.g.f75999b.a();
    }

    @Override
    public void mo140movegyyYBs(long j10) {
        this.f5334a.c0(j10);
        f();
    }

    @Override
    public void mo141resizeozmzZPI(long j10) {
        if (o0.t.e(j10, this.f5339f)) {
            return;
        }
        this.f5339f = j10;
        invalidate();
    }

    @Override
    public void reuseLayer(Function2 function2, Function0 function0) {
        a4 a4Var = this.f5335b;
        if (a4Var == null) {
            throw new IllegalArgumentException("currently reuse is only supported when we manage the layer lifecycle");
        }
        if (!this.f5334a.z()) {
            throw new IllegalArgumentException("layer should have been released before reuse");
        }
        this.f5334a = a4Var.a();
        this.f5340g = false;
        this.f5337d = function2;
        this.f5338e = function0;
        this.f5348o = e5.f4127a.a();
        this.f5352s = false;
        this.f5339f = o0.u.a(Integer.MAX_VALUE, Integer.MAX_VALUE);
        this.f5349p = null;
        this.f5347n = 0;
    }

    @Override
    public void updateDisplayList() {
        if (this.f5343j) {
            if (!e5.c(this.f5348o, e5.f4127a.a()) && !o0.t.e(this.f5334a.v(), this.f5339f)) {
                this.f5334a.P(y.h.a(e5.d(this.f5348o) * o0.t.g(this.f5339f), e5.e(this.f5348o) * o0.t.f(this.f5339f)));
            }
            this.f5334a.E(this.f5344k, this.f5345l, this.f5339f, this.f5353t);
            e(false);
        }
    }

    @Override
    public void updateLayerProperties(x4 x4Var) {
        boolean z10;
        int iB;
        Function0 function0;
        int iF = x4Var.F() | this.f5347n;
        this.f5345l = x4Var.D();
        this.f5344k = x4Var.C();
        int i10 = iF & 4096;
        if (i10 != 0) {
            this.f5348o = x4Var.b0();
        }
        if ((iF & 1) != 0) {
            this.f5334a.X(x4Var.t());
        }
        if ((iF & 2) != 0) {
            this.f5334a.Y(x4Var.A());
        }
        if ((iF & 4) != 0) {
            this.f5334a.J(x4Var.n());
        }
        if ((iF & 8) != 0) {
            this.f5334a.d0(x4Var.x());
        }
        if ((iF & 16) != 0) {
            this.f5334a.e0(x4Var.w());
        }
        if ((iF & 32) != 0) {
            this.f5334a.Z(x4Var.L());
            if (x4Var.L() > 0.0f && !this.f5352s && (function0 = this.f5338e) != null) {
                function0.invoke();
            }
        }
        if ((iF & 64) != 0) {
            this.f5334a.K(x4Var.v());
        }
        if ((iF & 128) != 0) {
            this.f5334a.b0(x4Var.O());
        }
        if ((iF & 1024) != 0) {
            this.f5334a.V(x4Var.o());
        }
        if ((iF & 256) != 0) {
            this.f5334a.T(x4Var.y());
        }
        if ((iF & 512) != 0) {
            this.f5334a.U(x4Var.m());
        }
        if ((iF & 2048) != 0) {
            this.f5334a.L(x4Var.q());
        }
        if (i10 != 0) {
            if (e5.c(this.f5348o, e5.f4127a.a())) {
                this.f5334a.P(y.g.f75999b.b());
            } else {
                this.f5334a.P(y.h.a(e5.d(this.f5348o) * o0.t.g(this.f5339f), e5.e(this.f5348o) * o0.t.f(this.f5339f)));
            }
        }
        if ((iF & 16384) != 0) {
            this.f5334a.M(x4Var.z());
        }
        if ((131072 & iF) != 0) {
            GraphicsLayer graphicsLayer = this.f5334a;
            x4Var.I();
            graphicsLayer.S(null);
        }
        if ((32768 & iF) != 0) {
            GraphicsLayer graphicsLayer2 = this.f5334a;
            int iB2 = x4Var.B();
            w3.a aVar = w3.f4565a;
            if (w3.e(iB2, aVar.a())) {
                iB = androidx.compose.ui.graphics.layer.b.f4203a.a();
            } else if (w3.e(iB2, aVar.c())) {
                iB = androidx.compose.ui.graphics.layer.b.f4203a.c();
            } else {
                if (!w3.e(iB2, aVar.b())) {
                    throw new IllegalStateException("Not supported composition strategy");
                }
                iB = androidx.compose.ui.graphics.layer.b.f4203a.b();
            }
            graphicsLayer2.N(iB);
        }
        if (Intrinsics.c(this.f5349p, x4Var.G())) {
            z10 = false;
        } else {
            this.f5349p = x4Var.G();
            h();
            z10 = true;
        }
        this.f5347n = x4Var.F();
        if (iF != 0 || z10) {
            f();
        }
    }
}
