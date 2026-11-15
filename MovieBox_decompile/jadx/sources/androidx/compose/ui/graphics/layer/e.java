package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import android.view.View;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.n1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class e implements GraphicsLayerImpl {
    private static boolean G;
    private float A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;

    private final long f4257b;

    private final n1 f4258c;

    private final z.a f4259d;

    private final RenderNode f4260e;

    private long f4261f;

    private Paint f4262g;

    private Matrix f4263h;

    private boolean f4264i;

    private long f4265j;

    private int f4266k;

    private int f4267l;

    private v1 f4268m;

    private float f4269n;

    private boolean f4270o;

    private long f4271p;

    private float f4272q;

    private float f4273r;

    private float f4274s;

    private float f4275t;

    private float f4276u;

    private long f4277v;

    private long f4278w;

    private float f4279x;

    private float f4280y;

    private float f4281z;
    public static final a F = new a(null);
    private static final AtomicBoolean H = new AtomicBoolean(true);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public e(View view, long j10, n1 n1Var, z.a aVar) {
        this.f4257b = j10;
        this.f4258c = n1Var;
        this.f4259d = aVar;
        RenderNode renderNodeCreate = RenderNode.create("Compose", view);
        this.f4260e = renderNodeCreate;
        o0.t.a aVar2 = o0.t.f67425b;
        this.f4261f = aVar2.a();
        this.f4265j = aVar2.a();
        if (H.getAndSet(false)) {
            renderNodeCreate.setScaleX(renderNodeCreate.getScaleX());
            renderNodeCreate.setScaleY(renderNodeCreate.getScaleY());
            renderNodeCreate.setTranslationX(renderNodeCreate.getTranslationX());
            renderNodeCreate.setTranslationY(renderNodeCreate.getTranslationY());
            renderNodeCreate.setElevation(renderNodeCreate.getElevation());
            renderNodeCreate.setRotation(renderNodeCreate.getRotation());
            renderNodeCreate.setRotationX(renderNodeCreate.getRotationX());
            renderNodeCreate.setRotationY(renderNodeCreate.getRotationY());
            renderNodeCreate.setCameraDistance(renderNodeCreate.getCameraDistance());
            renderNodeCreate.setPivotX(renderNodeCreate.getPivotX());
            renderNodeCreate.setPivotY(renderNodeCreate.getPivotY());
            renderNodeCreate.setClipToOutline(renderNodeCreate.getClipToOutline());
            renderNodeCreate.setClipToBounds(false);
            renderNodeCreate.setAlpha(renderNodeCreate.getAlpha());
            renderNodeCreate.isValid();
            renderNodeCreate.setLeftTopRightBottom(0, 0, 0, 0);
            renderNodeCreate.offsetLeftAndRight(0);
            renderNodeCreate.offsetTopAndBottom(0);
            S(renderNodeCreate);
            O();
            renderNodeCreate.setLayerType(0);
            renderNodeCreate.setHasOverlappingRendering(renderNodeCreate.hasOverlappingRendering());
        }
        if (G) {
            throw new NoClassDefFoundError();
        }
        renderNodeCreate.setClipToBounds(false);
        b.a aVar3 = b.f4203a;
        N(aVar3.a());
        this.f4266k = aVar3.a();
        this.f4267l = c1.f3983a.B();
        this.f4269n = 1.0f;
        this.f4271p = y.g.f75999b.b();
        this.f4272q = 1.0f;
        this.f4273r = 1.0f;
        u1.a aVar4 = u1.f4349b;
        this.f4277v = aVar4.a();
        this.f4278w = aVar4.a();
        this.A = 8.0f;
        this.E = true;
    }

    private final void M() {
        boolean z10 = false;
        boolean z11 = P() && !this.f4264i;
        if (P() && this.f4264i) {
            z10 = true;
        }
        if (z11 != this.C) {
            this.C = z11;
            this.f4260e.setClipToBounds(z11);
        }
        if (z10 != this.D) {
            this.D = z10;
            this.f4260e.setClipToOutline(z10);
        }
    }

    private final void N(int i10) {
        RenderNode renderNode = this.f4260e;
        b.a aVar = b.f4203a;
        if (b.e(i10, aVar.c())) {
            renderNode.setLayerType(2);
            renderNode.setLayerPaint(this.f4262g);
            renderNode.setHasOverlappingRendering(true);
        } else if (b.e(i10, aVar.b())) {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f4262g);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setLayerType(0);
            renderNode.setLayerPaint(this.f4262g);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    private final boolean Q() {
        return (!b.e(z(), b.f4203a.c()) && c1.E(l(), c1.f3983a.B()) && i() == null) ? false : true;
    }

    private final void R() {
        if (Q()) {
            N(b.f4203a.c());
        } else {
            N(z());
        }
    }

    private final void S(RenderNode renderNode) {
        if (Build.VERSION.SDK_INT >= 28) {
            p0 p0Var = p0.f4291a;
            p0Var.c(renderNode, p0Var.a(renderNode));
            p0Var.d(renderNode, p0Var.b(renderNode));
        }
    }

    @Override
    public float A() {
        return this.f4273r;
    }

    @Override
    public void B(int i10, int i11, long j10) {
        this.f4260e.setLeftTopRightBottom(i10, i11, o0.t.g(j10) + i10, o0.t.f(j10) + i11);
        if (o0.t.e(this.f4261f, j10)) {
            return;
        }
        if (this.f4270o) {
            this.f4260e.setPivotX(o0.t.g(j10) / 2.0f);
            this.f4260e.setPivotY(o0.t.f(j10) / 2.0f);
        }
        this.f4261f = j10;
    }

    @Override
    public long C() {
        return this.f4277v;
    }

    @Override
    public long D() {
        return this.f4278w;
    }

    @Override
    public Matrix E() {
        Matrix matrix = this.f4263h;
        if (matrix == null) {
            matrix = new Matrix();
            this.f4263h = matrix;
        }
        this.f4260e.getMatrix(matrix);
        return matrix;
    }

    @Override
    public void F(boolean z10) {
        this.E = z10;
    }

    @Override
    public void G(Outline outline, long j10) {
        this.f4265j = j10;
        this.f4260e.setOutline(outline);
        this.f4264i = outline != null;
        M();
    }

    @Override
    public void H(long j10) {
        this.f4271p = j10;
        if (y.h.d(j10)) {
            this.f4270o = true;
            this.f4260e.setPivotX(o0.t.g(this.f4261f) / 2.0f);
            this.f4260e.setPivotY(o0.t.f(this.f4261f) / 2.0f);
        } else {
            this.f4270o = false;
            this.f4260e.setPivotX(y.g.m(j10));
            this.f4260e.setPivotY(y.g.n(j10));
        }
    }

    @Override
    public void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        Canvas canvasStart = this.f4260e.start(Math.max(o0.t.g(this.f4261f), o0.t.g(this.f4265j)), Math.max(o0.t.f(this.f4261f), o0.t.f(this.f4265j)));
        try {
            n1 n1Var = this.f4258c;
            Canvas canvasV = n1Var.a().v();
            n1Var.a().w(canvasStart);
            androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
            z.a aVar = this.f4259d;
            long jD = o0.u.d(this.f4261f);
            o0.e density = aVar.G0().getDensity();
            LayoutDirection layoutDirection2 = aVar.G0().getLayoutDirection();
            m1 m1VarE = aVar.G0().e();
            long jI = aVar.G0().i();
            GraphicsLayer graphicsLayerG = aVar.G0().g();
            z.d dVarG0 = aVar.G0();
            dVarG0.b(eVar);
            dVarG0.a(layoutDirection);
            dVarG0.h(g0VarA);
            dVarG0.f(jD);
            dVarG0.d(graphicsLayer);
            g0VarA.n();
            try {
                function1.invoke(aVar);
                g0VarA.j();
                z.d dVarG1 = aVar.G0();
                dVarG1.b(density);
                dVarG1.a(layoutDirection2);
                dVarG1.h(m1VarE);
                dVarG1.f(jI);
                dVarG1.d(graphicsLayerG);
                n1Var.a().w(canvasV);
                this.f4260e.end(canvasStart);
                F(false);
            } catch (Throwable th2) {
                g0VarA.j();
                z.d dVarG2 = aVar.G0();
                dVarG2.b(density);
                dVarG2.a(layoutDirection2);
                dVarG2.h(m1VarE);
                dVarG2.f(jI);
                dVarG2.d(graphicsLayerG);
                throw th2;
            }
        } catch (Throwable th3) {
            this.f4260e.end(canvasStart);
            throw th3;
        }
    }

    @Override
    public void J(int i10) {
        this.f4266k = i10;
        R();
    }

    @Override
    public float K() {
        return this.f4276u;
    }

    @Override
    public void L(m1 m1Var) {
        DisplayListCanvas displayListCanvasD = androidx.compose.ui.graphics.h0.d(m1Var);
        Intrinsics.f(displayListCanvasD, "null cannot be cast to non-null type android.view.DisplayListCanvas");
        displayListCanvasD.drawRenderNode(this.f4260e);
    }

    public final void O() {
        if (Build.VERSION.SDK_INT >= 24) {
            o0.f4290a.a(this.f4260e);
        } else {
            n0.f4289a.a(this.f4260e);
        }
    }

    public boolean P() {
        return this.B;
    }

    @Override
    public void a(float f10) {
        this.f4275t = f10;
        this.f4260e.setTranslationY(f10);
    }

    @Override
    public void b(float f10) {
        this.f4272q = f10;
        this.f4260e.setScaleX(f10);
    }

    @Override
    public void d(float f10) {
        this.A = f10;
        this.f4260e.setCameraDistance(-f10);
    }

    @Override
    public void e(float f10) {
        this.f4279x = f10;
        this.f4260e.setRotationX(f10);
    }

    @Override
    public void f(float f10) {
        this.f4280y = f10;
        this.f4260e.setRotationY(f10);
    }

    @Override
    public void g(float f10) {
        this.f4281z = f10;
        this.f4260e.setRotation(f10);
    }

    @Override
    public float getAlpha() {
        return this.f4269n;
    }

    @Override
    public void h(float f10) {
        this.f4273r = f10;
        this.f4260e.setScaleY(f10);
    }

    @Override
    public v1 i() {
        return this.f4268m;
    }

    @Override
    public void j(float f10) {
        this.f4274s = f10;
        this.f4260e.setTranslationX(f10);
    }

    @Override
    public void k() {
        O();
    }

    @Override
    public int l() {
        return this.f4267l;
    }

    @Override
    public float m() {
        return this.f4280y;
    }

    @Override
    public boolean n() {
        return this.f4260e.isValid();
    }

    @Override
    public float o() {
        return this.f4281z;
    }

    @Override
    public void p(long j10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4277v = j10;
            p0.f4291a.c(this.f4260e, w1.j(j10));
        }
    }

    @Override
    public float q() {
        return this.A;
    }

    @Override
    public void r(boolean z10) {
        this.B = z10;
        M();
    }

    @Override
    public void s(long j10) {
        if (Build.VERSION.SDK_INT >= 28) {
            this.f4278w = j10;
            p0.f4291a.d(this.f4260e, w1.j(j10));
        }
    }

    @Override
    public void setAlpha(float f10) {
        this.f4269n = f10;
        this.f4260e.setAlpha(f10);
    }

    @Override
    public float t() {
        return this.f4272q;
    }

    @Override
    public void u(float f10) {
        this.f4276u = f10;
        this.f4260e.setElevation(f10);
    }

    @Override
    public w4 v() {
        return null;
    }

    @Override
    public float w() {
        return this.f4275t;
    }

    @Override
    public float x() {
        return this.f4274s;
    }

    @Override
    public float y() {
        return this.f4279x;
    }

    @Override
    public int z() {
        return this.f4266k;
    }

    @Override
    public void c(w4 w4Var) {
    }

    public e(View view, long j10, n1 n1Var, z.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(view, j10, (i10 & 4) != 0 ? new n1() : n1Var, (i10 & 8) != 0 ? new z.a() : aVar);
    }
}
