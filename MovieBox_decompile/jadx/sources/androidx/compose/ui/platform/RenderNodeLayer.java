package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.e5;
import androidx.compose.ui.graphics.i4;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.v4;
import androidx.compose.ui.graphics.x4;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class RenderNodeLayer implements androidx.compose.ui.node.w0 {

    public static final a f5356n = new a(null);

    public static final int f5357o = 8;

    private static final Function2 f5358p = new Function2<t0, Matrix, Unit>() {
        @Override
        public Object invoke(Object obj, Object obj2) {
            invoke((t0) obj, (Matrix) obj2);
            return Unit.f64096a;
        }

        public final void invoke(t0 t0Var, Matrix matrix) {
            t0Var.x(matrix);
        }
    };

    private final AndroidComposeView f5359a;

    private Function2 f5360b;

    private Function0 f5361c;

    private boolean f5362d;

    private boolean f5364f;

    private boolean f5365g;

    private m4 f5366h;

    private final t0 f5370l;

    private int f5371m;

    private final i1 f5363e = new i1();

    private final d1 f5367i = new d1(f5358p);

    private final androidx.compose.ui.graphics.n1 f5368j = new androidx.compose.ui.graphics.n1();

    private long f5369k = e5.f4127a.a();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public RenderNodeLayer(AndroidComposeView androidComposeView, Function2 function2, Function0 function0) {
        this.f5359a = androidComposeView;
        this.f5360b = function2;
        this.f5361c = function0;
        t0 w1Var = Build.VERSION.SDK_INT >= 29 ? new w1(androidComposeView) : new j1(androidComposeView);
        w1Var.w(true);
        w1Var.p(false);
        this.f5370l = w1Var;
    }

    private final void a(androidx.compose.ui.graphics.m1 m1Var) {
        if (this.f5370l.v() || this.f5370l.t()) {
            this.f5363e.a(m1Var);
        }
    }

    private final void b(boolean z10) {
        if (z10 != this.f5362d) {
            this.f5362d = z10;
            this.f5359a.notifyLayerIsDirty$ui_release(this, z10);
        }
    }

    private final void c() {
        if (Build.VERSION.SDK_INT >= 26) {
            a3.f5422a.a(this.f5359a);
        } else {
            this.f5359a.invalidate();
        }
    }

    @Override
    public void destroy() {
        if (this.f5370l.n()) {
            this.f5370l.k();
        }
        this.f5360b = null;
        this.f5361c = null;
        this.f5364f = true;
        b(false);
        this.f5359a.requestClearInvalidObservations();
        this.f5359a.recycle$ui_release(this);
    }

    @Override
    public void drawLayer(androidx.compose.ui.graphics.m1 m1Var, GraphicsLayer graphicsLayer) {
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (canvasD.isHardwareAccelerated()) {
            updateDisplayList();
            boolean z10 = this.f5370l.H() > 0.0f;
            this.f5365g = z10;
            if (z10) {
                m1Var.k();
            }
            this.f5370l.o(canvasD);
            if (this.f5365g) {
                m1Var.o();
                return;
            }
            return;
        }
        float fI = this.f5370l.i();
        float fU = this.f5370l.u();
        float fM = this.f5370l.m();
        float fZ = this.f5370l.z();
        if (this.f5370l.getAlpha() < 1.0f) {
            m4 m4VarA = this.f5366h;
            if (m4VarA == null) {
                m4VarA = androidx.compose.ui.graphics.t0.a();
                this.f5366h = m4VarA;
            }
            m4VarA.setAlpha(this.f5370l.getAlpha());
            canvasD.saveLayer(fI, fU, fM, fZ, m4VarA.w());
        } else {
            m1Var.n();
        }
        m1Var.c(fI, fU);
        m1Var.p(this.f5367i.b(this.f5370l));
        a(m1Var);
        Function2 function2 = this.f5360b;
        if (function2 != null) {
            function2.invoke(m1Var, null);
        }
        m1Var.j();
        b(false);
    }

    @Override
    public void invalidate() {
        if (this.f5362d || this.f5364f) {
            return;
        }
        this.f5359a.invalidate();
        b(true);
    }

    @Override
    public boolean mo138isInLayerk4lQ0M(long j10) {
        float fM = y.g.m(j10);
        float fN = y.g.n(j10);
        if (this.f5370l.t()) {
            return 0.0f <= fM && fM < ((float) this.f5370l.getWidth()) && 0.0f <= fN && fN < ((float) this.f5370l.getHeight());
        }
        if (this.f5370l.v()) {
            return this.f5363e.f(j10);
        }
        return true;
    }

    @Override
    public void mapBounds(y.e eVar, boolean z10) {
        if (!z10) {
            i4.g(this.f5367i.b(this.f5370l), eVar);
            return;
        }
        float[] fArrA = this.f5367i.a(this.f5370l);
        if (fArrA == null) {
            eVar.g(0.0f, 0.0f, 0.0f, 0.0f);
        } else {
            i4.g(fArrA, eVar);
        }
    }

    @Override
    public long mo139mapOffset8S9VItk(long j10, boolean z10) {
        if (!z10) {
            return i4.f(this.f5367i.b(this.f5370l), j10);
        }
        float[] fArrA = this.f5367i.a(this.f5370l);
        return fArrA != null ? i4.f(fArrA, j10) : y.g.f75999b.a();
    }

    @Override
    public void mo140movegyyYBs(long j10) {
        int i10 = this.f5370l.i();
        int iU = this.f5370l.u();
        int iH = o0.p.h(j10);
        int i11 = o0.p.i(j10);
        if (i10 == iH && iU == i11) {
            return;
        }
        if (i10 != iH) {
            this.f5370l.y(iH - i10);
        }
        if (iU != i11) {
            this.f5370l.s(i11 - iU);
        }
        c();
        this.f5367i.c();
    }

    @Override
    public void mo141resizeozmzZPI(long j10) {
        int iG = o0.t.g(j10);
        int iF = o0.t.f(j10);
        this.f5370l.A(e5.d(this.f5369k) * iG);
        this.f5370l.B(e5.e(this.f5369k) * iF);
        t0 t0Var = this.f5370l;
        if (t0Var.q(t0Var.i(), this.f5370l.u(), this.f5370l.i() + iG, this.f5370l.u() + iF)) {
            this.f5370l.C(this.f5363e.b());
            invalidate();
            this.f5367i.c();
        }
    }

    @Override
    public void reuseLayer(Function2 function2, Function0 function0) {
        b(false);
        this.f5364f = false;
        this.f5365g = false;
        this.f5369k = e5.f4127a.a();
        this.f5360b = function2;
        this.f5361c = function0;
    }

    @Override
    public void updateDisplayList() {
        if (this.f5362d || !this.f5370l.n()) {
            Path pathD = (!this.f5370l.v() || this.f5363e.e()) ? null : this.f5363e.d();
            final Function2 function2 = this.f5360b;
            if (function2 != null) {
                this.f5370l.F(this.f5368j, pathD, new Function1<androidx.compose.ui.graphics.m1, Unit>() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((androidx.compose.ui.graphics.m1) obj);
                        return Unit.f64096a;
                    }

                    public final void invoke(androidx.compose.ui.graphics.m1 m1Var) {
                        function2.invoke(m1Var, null);
                    }
                });
            }
            b(false);
        }
    }

    @Override
    public void updateLayerProperties(x4 x4Var) {
        Function0 function0;
        int iF = x4Var.F() | this.f5371m;
        int i10 = iF & 4096;
        if (i10 != 0) {
            this.f5369k = x4Var.b0();
        }
        boolean z10 = false;
        boolean z11 = this.f5370l.v() && !this.f5363e.e();
        if ((iF & 1) != 0) {
            this.f5370l.b(x4Var.t());
        }
        if ((iF & 2) != 0) {
            this.f5370l.h(x4Var.A());
        }
        if ((iF & 4) != 0) {
            this.f5370l.setAlpha(x4Var.n());
        }
        if ((iF & 8) != 0) {
            this.f5370l.j(x4Var.x());
        }
        if ((iF & 16) != 0) {
            this.f5370l.a(x4Var.w());
        }
        if ((iF & 32) != 0) {
            this.f5370l.r(x4Var.L());
        }
        if ((iF & 64) != 0) {
            this.f5370l.D(androidx.compose.ui.graphics.w1.j(x4Var.v()));
        }
        if ((iF & 128) != 0) {
            this.f5370l.G(androidx.compose.ui.graphics.w1.j(x4Var.O()));
        }
        if ((iF & 1024) != 0) {
            this.f5370l.g(x4Var.o());
        }
        if ((iF & 256) != 0) {
            this.f5370l.e(x4Var.y());
        }
        if ((iF & 512) != 0) {
            this.f5370l.f(x4Var.m());
        }
        if ((iF & 2048) != 0) {
            this.f5370l.d(x4Var.q());
        }
        if (i10 != 0) {
            this.f5370l.A(e5.d(this.f5369k) * this.f5370l.getWidth());
            this.f5370l.B(e5.e(this.f5369k) * this.f5370l.getHeight());
        }
        boolean z12 = x4Var.z() && x4Var.M() != v4.a();
        if ((iF & 24576) != 0) {
            this.f5370l.E(z12);
            this.f5370l.p(x4Var.z() && x4Var.M() == v4.a());
        }
        if ((131072 & iF) != 0) {
            t0 t0Var = this.f5370l;
            x4Var.I();
            t0Var.c(null);
        }
        if ((32768 & iF) != 0) {
            this.f5370l.l(x4Var.B());
        }
        boolean zH = this.f5363e.h(x4Var.G(), x4Var.n(), z12, x4Var.L(), x4Var.i());
        if (this.f5363e.c()) {
            this.f5370l.C(this.f5363e.b());
        }
        if (z12 && !this.f5363e.e()) {
            z10 = true;
        }
        if (z11 != z10 || (z10 && zH)) {
            invalidate();
        } else {
            c();
        }
        if (!this.f5365g && this.f5370l.H() > 0.0f && (function0 = this.f5361c) != null) {
            function0.invoke();
        }
        if ((iF & 7963) != 0) {
            this.f5367i.c();
        }
        this.f5371m = x4Var.F();
    }
}
