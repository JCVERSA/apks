package androidx.compose.ui.graphics.layer;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.n1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.graphics.w1;
import androidx.compose.ui.graphics.w4;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class c0 implements GraphicsLayerImpl {
    private boolean A;
    private int B;
    private boolean C;

    private final long f4207b;

    private final n1 f4208c;

    private final z.a f4209d;

    private final RenderNode f4210e;

    private long f4211f;

    private Paint f4212g;

    private Matrix f4213h;

    private boolean f4214i;

    private float f4215j;

    private int f4216k;

    private v1 f4217l;

    private long f4218m;

    private float f4219n;

    private float f4220o;

    private float f4221p;

    private float f4222q;

    private float f4223r;

    private long f4224s;

    private long f4225t;

    private float f4226u;

    private float f4227v;

    private float f4228w;

    private float f4229x;

    private boolean f4230y;

    private boolean f4231z;

    public c0(long j10, n1 n1Var, z.a aVar) {
        this.f4207b = j10;
        this.f4208c = n1Var;
        this.f4209d = aVar;
        RenderNode renderNodeA = androidx.compose.foundation.i.a("graphicsLayer");
        this.f4210e = renderNodeA;
        this.f4211f = y.m.f76020b.b();
        renderNodeA.setClipToBounds(false);
        b.a aVar2 = b.f4203a;
        N(renderNodeA, aVar2.a());
        this.f4215j = 1.0f;
        this.f4216k = c1.f3983a.B();
        this.f4218m = y.g.f75999b.b();
        this.f4219n = 1.0f;
        this.f4220o = 1.0f;
        u1.a aVar3 = u1.f4349b;
        this.f4224s = aVar3.a();
        this.f4225t = aVar3.a();
        this.f4229x = 8.0f;
        this.B = aVar2.a();
        this.C = true;
    }

    private final void M() {
        boolean z10 = false;
        boolean z11 = O() && !this.f4214i;
        if (O() && this.f4214i) {
            z10 = true;
        }
        if (z11 != this.f4231z) {
            this.f4231z = z11;
            this.f4210e.setClipToBounds(z11);
        }
        if (z10 != this.A) {
            this.A = z10;
            this.f4210e.setClipToOutline(z10);
        }
    }

    private final void N(RenderNode renderNode, int i10) {
        b.a aVar = b.f4203a;
        if (b.e(i10, aVar.c())) {
            renderNode.setUseCompositingLayer(true, this.f4212g);
            renderNode.setHasOverlappingRendering(true);
        } else if (b.e(i10, aVar.b())) {
            renderNode.setUseCompositingLayer(false, this.f4212g);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, this.f4212g);
            renderNode.setHasOverlappingRendering(true);
        }
    }

    private final boolean P() {
        if (b.e(z(), b.f4203a.c()) || Q()) {
            return true;
        }
        v();
        return false;
    }

    private final boolean Q() {
        return (c1.E(l(), c1.f3983a.B()) && i() == null) ? false : true;
    }

    private final void R() {
        if (P()) {
            N(this.f4210e, b.f4203a.c());
        } else {
            N(this.f4210e, z());
        }
    }

    @Override
    public float A() {
        return this.f4220o;
    }

    @Override
    public void B(int i10, int i11, long j10) {
        this.f4210e.setPosition(i10, i11, o0.t.g(j10) + i10, o0.t.f(j10) + i11);
        this.f4211f = o0.u.d(j10);
    }

    @Override
    public long C() {
        return this.f4224s;
    }

    @Override
    public long D() {
        return this.f4225t;
    }

    @Override
    public Matrix E() {
        Matrix matrix = this.f4213h;
        if (matrix == null) {
            matrix = new Matrix();
            this.f4213h = matrix;
        }
        this.f4210e.getMatrix(matrix);
        return matrix;
    }

    @Override
    public void F(boolean z10) {
        this.C = z10;
    }

    @Override
    public void G(Outline outline, long j10) {
        this.f4210e.setOutline(outline);
        this.f4214i = outline != null;
        M();
    }

    @Override
    public void H(long j10) {
        this.f4218m = j10;
        if (y.h.d(j10)) {
            this.f4210e.resetPivot();
        } else {
            this.f4210e.setPivotX(y.g.m(j10));
            this.f4210e.setPivotY(y.g.n(j10));
        }
    }

    @Override
    public void I(o0.e eVar, LayoutDirection layoutDirection, GraphicsLayer graphicsLayer, Function1 function1) {
        RecordingCanvas recordingCanvasBeginRecording = this.f4210e.beginRecording();
        try {
            n1 n1Var = this.f4208c;
            Canvas canvasV = n1Var.a().v();
            n1Var.a().w(recordingCanvasBeginRecording);
            androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
            z.d dVarG0 = this.f4209d.G0();
            dVarG0.b(eVar);
            dVarG0.a(layoutDirection);
            dVarG0.d(graphicsLayer);
            dVarG0.f(this.f4211f);
            dVarG0.h(g0VarA);
            function1.invoke(this.f4209d);
            n1Var.a().w(canvasV);
            this.f4210e.endRecording();
            F(false);
        } catch (Throwable th2) {
            this.f4210e.endRecording();
            throw th2;
        }
    }

    @Override
    public void J(int i10) {
        this.B = i10;
        R();
    }

    @Override
    public float K() {
        return this.f4223r;
    }

    @Override
    public void L(m1 m1Var) {
        androidx.compose.ui.graphics.h0.d(m1Var).drawRenderNode(this.f4210e);
    }

    public boolean O() {
        return this.f4230y;
    }

    @Override
    public void a(float f10) {
        this.f4222q = f10;
        this.f4210e.setTranslationY(f10);
    }

    @Override
    public void b(float f10) {
        this.f4219n = f10;
        this.f4210e.setScaleX(f10);
    }

    @Override
    public void c(w4 w4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            q0.f4292a.a(this.f4210e, w4Var);
        }
    }

    @Override
    public void d(float f10) {
        this.f4229x = f10;
        this.f4210e.setCameraDistance(f10);
    }

    @Override
    public void e(float f10) {
        this.f4226u = f10;
        this.f4210e.setRotationX(f10);
    }

    @Override
    public void f(float f10) {
        this.f4227v = f10;
        this.f4210e.setRotationY(f10);
    }

    @Override
    public void g(float f10) {
        this.f4228w = f10;
        this.f4210e.setRotationZ(f10);
    }

    @Override
    public float getAlpha() {
        return this.f4215j;
    }

    @Override
    public void h(float f10) {
        this.f4220o = f10;
        this.f4210e.setScaleY(f10);
    }

    @Override
    public v1 i() {
        return this.f4217l;
    }

    @Override
    public void j(float f10) {
        this.f4221p = f10;
        this.f4210e.setTranslationX(f10);
    }

    @Override
    public void k() {
        this.f4210e.discardDisplayList();
    }

    @Override
    public int l() {
        return this.f4216k;
    }

    @Override
    public float m() {
        return this.f4227v;
    }

    @Override
    public boolean n() {
        return this.f4210e.hasDisplayList();
    }

    @Override
    public float o() {
        return this.f4228w;
    }

    @Override
    public void p(long j10) {
        this.f4224s = j10;
        this.f4210e.setAmbientShadowColor(w1.j(j10));
    }

    @Override
    public float q() {
        return this.f4229x;
    }

    @Override
    public void r(boolean z10) {
        this.f4230y = z10;
        M();
    }

    @Override
    public void s(long j10) {
        this.f4225t = j10;
        this.f4210e.setSpotShadowColor(w1.j(j10));
    }

    @Override
    public void setAlpha(float f10) {
        this.f4215j = f10;
        this.f4210e.setAlpha(f10);
    }

    @Override
    public float t() {
        return this.f4219n;
    }

    @Override
    public void u(float f10) {
        this.f4223r = f10;
        this.f4210e.setElevation(f10);
    }

    @Override
    public w4 v() {
        return null;
    }

    @Override
    public float w() {
        return this.f4222q;
    }

    @Override
    public float x() {
        return this.f4221p;
    }

    @Override
    public float y() {
        return this.f4226u;
    }

    @Override
    public int z() {
        return this.B;
    }

    public c0(long j10, n1 n1Var, z.a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, (i10 & 2) != 0 ? new n1() : n1Var, (i10 & 4) != 0 ? new z.a() : aVar);
    }
}
