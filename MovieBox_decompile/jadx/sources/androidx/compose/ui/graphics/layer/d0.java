package androidx.compose.ui.graphics.layer;

import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Picture;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.layer.view.DrawChildContainer;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.n1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class d0 implements GraphicsLayerImpl {
    public static final b J = new b(null);
    private static final boolean K = !r0.f4293a.a();
    private static final Canvas L = new a();
    private float A;
    private float B;
    private float C;
    private float D;
    private long E;
    private long F;
    private float G;
    private float H;
    private float I;

    private final DrawChildContainer f4232b;

    private final long f4233c;

    private final n1 f4234d;

    private final ViewLayer f4235e;

    private final Resources f4236f;

    private final Rect f4237g;

    private Paint f4238h;

    private final Picture f4239i;

    private final z.a f4240j;

    private final n1 f4241k;

    private int f4242l;

    private int f4243m;

    private long f4244n;

    private boolean f4245o;

    private boolean f4246p;

    private boolean f4247q;

    private boolean f4248r;

    private final long f4249s;

    private int f4250t;

    private v1 f4251u;

    private int f4252v;

    private float f4253w;

    private boolean f4254x;

    private long f4255y;

    private float f4256z;

    public static final class a extends Canvas {
        a() {
        }

        @Override
        public boolean isHardwareAccelerated() {
            return true;
        }
    }

    public static final class b {
        public b(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private b() {
        }
    }

    public d0(DrawChildContainer drawChildContainer, long j10, n1 n1Var, z.a aVar) {
        this.f4232b = drawChildContainer;
        this.f4233c = j10;
        this.f4234d = n1Var;
        ViewLayer viewLayer = new ViewLayer(drawChildContainer, n1Var, aVar);
        this.f4235e = viewLayer;
        this.f4236f = drawChildContainer.getResources();
        this.f4237g = new Rect();
        boolean z10 = K;
        this.f4239i = z10 ? new Picture() : null;
        this.f4240j = z10 ? new z.a() : null;
        this.f4241k = z10 ? new n1() : null;
        drawChildContainer.addView(viewLayer);
        viewLayer.setClipBounds(null);
        this.f4244n = o0.t.f67425b.a();
        this.f4246p = true;
        this.f4249s = View.generateViewId();
        this.f4250t = c1.f3983a.B();
        this.f4252v = androidx.compose.ui.graphics.layer.b.f4203a.a();
        this.f4253w = 1.0f;
        this.f4255y = y.g.f75999b.c();
        this.f4256z = 1.0f;
        this.A = 1.0f;
        u1.a aVar2 = u1.f4349b;
        this.E = aVar2.a();
        this.F = aVar2.a();
    }

    private final void M(int i10) {
        ViewLayer viewLayer = this.f4235e;
        androidx.compose.ui.graphics.layer.b.a aVar = androidx.compose.ui.graphics.layer.b.f4203a;
        boolean z10 = true;
        if (androidx.compose.ui.graphics.layer.b.e(i10, aVar.c())) {
            this.f4235e.setLayerType(2, this.f4238h);
        } else if (androidx.compose.ui.graphics.layer.b.e(i10, aVar.b())) {
            this.f4235e.setLayerType(0, this.f4238h);
            z10 = false;
        } else {
            this.f4235e.setLayerType(0, this.f4238h);
        }
        viewLayer.setCanUseCompositingLayer$ui_graphics_release(z10);
    }

    private final void O() {
        try {
            n1 n1Var = this.f4234d;
            Canvas canvas = L;
            Canvas canvasV = n1Var.a().v();
            n1Var.a().w(canvas);
            androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
            DrawChildContainer drawChildContainer = this.f4232b;
            ViewLayer viewLayer = this.f4235e;
            drawChildContainer.drawChild$ui_graphics_release(g0VarA, viewLayer, viewLayer.getDrawingTime());
            n1Var.a().w(canvasV);
        } catch (Throwable unused) {
        }
    }

    private final boolean P() {
        return androidx.compose.ui.graphics.layer.b.e(z(), androidx.compose.ui.graphics.layer.b.f4203a.c()) || Q();
    }

    private final boolean Q() {
        return (c1.E(l(), c1.f3983a.B()) && i() == null) ? false : true;
    }

    private final void R() {
        Rect rect;
        if (this.f4245o) {
            ViewLayer viewLayer = this.f4235e;
            if (!N() || this.f4247q) {
                rect = null;
            } else {
                rect = this.f4237g;
                rect.left = 0;
                rect.top = 0;
                rect.right = this.f4235e.getWidth();
                rect.bottom = this.f4235e.getHeight();
            }
            viewLayer.setClipBounds(rect);
        }
    }

    private final void S() {
        if (P()) {
            M(androidx.compose.ui.graphics.layer.b.f4203a.c());
        } else {
            M(z());
        }
    }

    @Override
    public float A() {
        return this.A;
    }

    @Override
    public void B(int i10, int i11, long j10) {
        if (o0.t.e(this.f4244n, j10)) {
            int i12 = this.f4242l;
            if (i12 != i10) {
                this.f4235e.offsetLeftAndRight(i10 - i12);
            }
            int i13 = this.f4243m;
            if (i13 != i11) {
                this.f4235e.offsetTopAndBottom(i11 - i13);
            }
        } else {
            if (N()) {
                this.f4245o = true;
            }
            this.f4235e.layout(i10, i11, o0.t.g(j10) + i10, o0.t.f(j10) + i11);
            this.f4244n = j10;
            if (this.f4254x) {
                this.f4235e.setPivotX(o0.t.g(j10) / 2.0f);
                this.f4235e.setPivotY(o0.t.f(j10) / 2.0f);
            }
        }
        this.f4242l = i10;
        this.f4243m = i11;
    }

    @Override
    public long C() {
        return this.E;
    }

    @Override
    public long D() {
        return this.F;
    }

    @Override
    public Matrix E() {
        return this.f4235e.getMatrix();
    }

    @Override
    public void F(boolean z10) {
        this.f4246p = z10;
    }

    @Override
    public void G(Outline outline, long j10) {
        boolean layerOutline = this.f4235e.setLayerOutline(outline);
        if (N() && outline != null) {
            this.f4235e.setClipToOutline(true);
            if (this.f4248r) {
                this.f4248r = false;
                this.f4245o = true;
            }
        }
        this.f4247q = outline != null;
        if (layerOutline) {
            return;
        }
        this.f4235e.invalidate();
        O();
    }

    @Override
    public void H(long j10) {
        this.f4255y = j10;
        if (!y.h.d(j10)) {
            this.f4254x = false;
            this.f4235e.setPivotX(y.g.m(j10));
            this.f4235e.setPivotY(y.g.n(j10));
        } else {
            if (Build.VERSION.SDK_INT >= 28) {
                v0.f4294a.a(this.f4235e);
                return;
            }
            this.f4254x = true;
            this.f4235e.setPivotX(o0.t.g(this.f4244n) / 2.0f);
            this.f4235e.setPivotY(o0.t.f(this.f4244n) / 2.0f);
        }
    }

    @Override
    public void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        if (this.f4235e.getParent() == null) {
            this.f4232b.addView(this.f4235e);
        }
        this.f4235e.setDrawParams(eVar, layoutDirection, graphicsLayer, function1);
        if (this.f4235e.isAttachedToWindow()) {
            this.f4235e.setVisibility(4);
            this.f4235e.setVisibility(0);
            O();
            Picture picture = this.f4239i;
            if (picture != null) {
                Canvas canvasBeginRecording = picture.beginRecording(o0.t.g(this.f4244n), o0.t.f(this.f4244n));
                try {
                    n1 n1Var = this.f4241k;
                    if (n1Var != null) {
                        Canvas canvasV = n1Var.a().v();
                        n1Var.a().w(canvasBeginRecording);
                        androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
                        z.a aVar = this.f4240j;
                        if (aVar != null) {
                            long jD = o0.u.d(this.f4244n);
                            z.a.C0951a c0951aF = aVar.F();
                            o0.e eVarA = c0951aF.a();
                            LayoutDirection layoutDirectionB = c0951aF.b();
                            m1 m1VarC = c0951aF.c();
                            long jD2 = c0951aF.d();
                            z.a.C0951a c0951aF2 = aVar.F();
                            c0951aF2.j(eVar);
                            c0951aF2.k(layoutDirection);
                            c0951aF2.i(g0VarA);
                            c0951aF2.l(jD);
                            g0VarA.n();
                            function1.invoke(aVar);
                            g0VarA.j();
                            z.a.C0951a c0951aF3 = aVar.F();
                            c0951aF3.j(eVarA);
                            c0951aF3.k(layoutDirectionB);
                            c0951aF3.i(m1VarC);
                            c0951aF3.l(jD2);
                        }
                        n1Var.a().w(canvasV);
                        Unit unit = Unit.f64096a;
                    }
                } finally {
                    picture.endRecording();
                }
            }
        }
    }

    @Override
    public void J(int i10) {
        this.f4252v = i10;
        S();
    }

    @Override
    public float K() {
        return this.D;
    }

    @Override
    public void L(m1 m1Var) {
        R();
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        if (canvasD.isHardwareAccelerated()) {
            DrawChildContainer drawChildContainer = this.f4232b;
            ViewLayer viewLayer = this.f4235e;
            drawChildContainer.drawChild$ui_graphics_release(m1Var, viewLayer, viewLayer.getDrawingTime());
        } else {
            Picture picture = this.f4239i;
            if (picture != null) {
                canvasD.drawPicture(picture);
            }
        }
    }

    public boolean N() {
        return this.f4248r || this.f4235e.getClipToOutline();
    }

    @Override
    public void a(float f10) {
        this.C = f10;
        this.f4235e.setTranslationY(f10);
    }

    @Override
    public void b(float f10) {
        this.f4256z = f10;
        this.f4235e.setScaleX(f10);
    }

    @Override
    public void c(w4 w4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            x0.f4296a.a(this.f4235e, w4Var);
        }
    }

    @Override
    public void d(float f10) {
        this.f4235e.setCameraDistance(f10 * this.f4236f.getDisplayMetrics().densityDpi);
    }

    @Override
    public void e(float f10) {
        this.G = f10;
        this.f4235e.setRotationX(f10);
    }

    @Override
    public void f(float f10) {
        this.H = f10;
        this.f4235e.setRotationY(f10);
    }

    @Override
    public void g(float f10) {
        this.I = f10;
        this.f4235e.setRotation(f10);
    }

    @Override
    public float getAlpha() {
        return this.f4253w;
    }

    @Override
    public void h(float f10) {
        this.A = f10;
        this.f4235e.setScaleY(f10);
    }

    @Override
    public v1 i() {
        return this.f4251u;
    }

    @Override
    public void j(float f10) {
        this.B = f10;
        this.f4235e.setTranslationX(f10);
    }

    @Override
    public void k() {
        this.f4232b.removeViewInLayout(this.f4235e);
    }

    @Override
    public int l() {
        return this.f4250t;
    }

    @Override
    public float m() {
        return this.H;
    }

    @Override
    public boolean n() {
        return c.a(this);
    }

    @Override
    public float o() {
        return this.I;
    }

    @Override
    public void p(long j10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.E = j10;
            v0.f4294a.b(this.f4235e, w1.j(j10));
        }
    }

    @Override
    public float q() {
        return this.f4235e.getCameraDistance() / this.f4236f.getDisplayMetrics().densityDpi;
    }

    @Override
    public void r(boolean z10) {
        boolean z11 = false;
        this.f4248r = z10 && !this.f4247q;
        this.f4245o = true;
        ViewLayer viewLayer = this.f4235e;
        if (z10 && this.f4247q) {
            z11 = true;
        }
        viewLayer.setClipToOutline(z11);
    }

    @Override
    public void s(long j10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.F = j10;
            v0.f4294a.c(this.f4235e, w1.j(j10));
        }
    }

    @Override
    public void setAlpha(float f10) {
        this.f4253w = f10;
        this.f4235e.setAlpha(f10);
    }

    @Override
    public float t() {
        return this.f4256z;
    }

    @Override
    public void u(float f10) {
        this.D = f10;
        this.f4235e.setElevation(f10);
    }

    @Override
    public w4 v() {
        return null;
    }

    @Override
    public float w() {
        return this.C;
    }

    @Override
    public float x() {
        return this.B;
    }

    @Override
    public float y() {
        return this.G;
    }

    @Override
    public int z() {
        return this.f4252v;
    }

    public d0(DrawChildContainer drawChildContainer, long j10, n1 n1Var, z.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(drawChildContainer, j10, (i10 & 4) != 0 ? new n1() : n1Var, (i10 & 8) != 0 ? new z.a() : aVar);
    }
}
