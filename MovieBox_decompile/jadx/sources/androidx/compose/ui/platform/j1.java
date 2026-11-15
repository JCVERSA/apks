package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.os.Build;
import android.view.DisplayListCanvas;
import android.view.RenderNode;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.w3;
import androidx.compose.ui.graphics.w4;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j1 implements t0 {

    private static boolean f5518k;

    private final AndroidComposeView f5520a;

    private final RenderNode f5521b;

    private int f5522c;

    private int f5523d;

    private int f5524e;

    private int f5525f;

    private int f5526g;

    private boolean f5527h;

    public static final a f5516i = new a(null);

    public static final int f5517j = 8;

    private static boolean f5519l = true;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j1(AndroidComposeView androidComposeView) {
        this.f5520a = androidComposeView;
        RenderNode renderNodeCreate = RenderNode.create("Compose", androidComposeView);
        this.f5521b = renderNodeCreate;
        this.f5522c = w3.f4565a.a();
        if (f5519l) {
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
            N(renderNodeCreate);
            I();
            renderNodeCreate.setLayerType(0);
            renderNodeCreate.setHasOverlappingRendering(renderNodeCreate.hasOverlappingRendering());
            f5519l = false;
        }
        if (f5518k) {
            throw new NoClassDefFoundError();
        }
    }

    private final void I() {
        if (Build.VERSION.SDK_INT >= 24) {
            z1.f5582a.a(this.f5521b);
        } else {
            y1.f5574a.a(this.f5521b);
        }
    }

    private final void N(RenderNode renderNode) {
        if (Build.VERSION.SDK_INT >= 28) {
            a2 a2Var = a2.f5421a;
            a2Var.c(renderNode, a2Var.a(renderNode));
            a2Var.d(renderNode, a2Var.b(renderNode));
        }
    }

    @Override
    public void A(float f10) {
        this.f5521b.setPivotX(f10);
    }

    @Override
    public void B(float f10) {
        this.f5521b.setPivotY(f10);
    }

    @Override
    public void C(Outline outline) {
        this.f5521b.setOutline(outline);
    }

    @Override
    public void D(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            a2.f5421a.c(this.f5521b, i10);
        }
    }

    @Override
    public void E(boolean z10) {
        this.f5521b.setClipToOutline(z10);
    }

    @Override
    public void F(androidx.compose.ui.graphics.n1 n1Var, Path path, Function1 function1) {
        DisplayListCanvas displayListCanvasStart = this.f5521b.start(getWidth(), getHeight());
        Canvas canvasV = n1Var.a().v();
        n1Var.a().w((Canvas) displayListCanvasStart);
        androidx.compose.ui.graphics.g0 g0VarA = n1Var.a();
        if (path != null) {
            g0VarA.n();
            androidx.compose.ui.graphics.l1.c(g0VarA, path, 0, 2, null);
        }
        function1.invoke(g0VarA);
        if (path != null) {
            g0VarA.j();
        }
        n1Var.a().w(canvasV);
        this.f5521b.end(displayListCanvasStart);
    }

    @Override
    public void G(int i10) {
        if (Build.VERSION.SDK_INT >= 28) {
            a2.f5421a.d(this.f5521b, i10);
        }
    }

    @Override
    public float H() {
        return this.f5521b.getElevation();
    }

    public void J(int i10) {
        this.f5526g = i10;
    }

    public void K(int i10) {
        this.f5523d = i10;
    }

    public void L(int i10) {
        this.f5525f = i10;
    }

    public void M(int i10) {
        this.f5524e = i10;
    }

    @Override
    public void a(float f10) {
        this.f5521b.setTranslationY(f10);
    }

    @Override
    public void b(float f10) {
        this.f5521b.setScaleX(f10);
    }

    @Override
    public void d(float f10) {
        this.f5521b.setCameraDistance(-f10);
    }

    @Override
    public void e(float f10) {
        this.f5521b.setRotationX(f10);
    }

    @Override
    public void f(float f10) {
        this.f5521b.setRotationY(f10);
    }

    @Override
    public void g(float f10) {
        this.f5521b.setRotation(f10);
    }

    @Override
    public float getAlpha() {
        return this.f5521b.getAlpha();
    }

    @Override
    public int getHeight() {
        return z() - u();
    }

    @Override
    public int getWidth() {
        return m() - i();
    }

    @Override
    public void h(float f10) {
        this.f5521b.setScaleY(f10);
    }

    @Override
    public int i() {
        return this.f5523d;
    }

    @Override
    public void j(float f10) {
        this.f5521b.setTranslationX(f10);
    }

    @Override
    public void k() {
        I();
    }

    @Override
    public void l(int i10) {
        w3.a aVar = w3.f4565a;
        if (w3.e(i10, aVar.c())) {
            this.f5521b.setLayerType(2);
            this.f5521b.setHasOverlappingRendering(true);
        } else if (w3.e(i10, aVar.b())) {
            this.f5521b.setLayerType(0);
            this.f5521b.setHasOverlappingRendering(false);
        } else {
            this.f5521b.setLayerType(0);
            this.f5521b.setHasOverlappingRendering(true);
        }
        this.f5522c = i10;
    }

    @Override
    public int m() {
        return this.f5525f;
    }

    @Override
    public boolean n() {
        return this.f5521b.isValid();
    }

    @Override
    public void o(Canvas canvas) {
        Intrinsics.f(canvas, "null cannot be cast to non-null type android.view.DisplayListCanvas");
        ((DisplayListCanvas) canvas).drawRenderNode(this.f5521b);
    }

    @Override
    public void p(boolean z10) {
        this.f5527h = z10;
        this.f5521b.setClipToBounds(z10);
    }

    @Override
    public boolean q(int i10, int i11, int i12, int i13) {
        K(i10);
        M(i11);
        L(i12);
        J(i13);
        return this.f5521b.setLeftTopRightBottom(i10, i11, i12, i13);
    }

    @Override
    public void r(float f10) {
        this.f5521b.setElevation(f10);
    }

    @Override
    public void s(int i10) {
        M(u() + i10);
        J(z() + i10);
        this.f5521b.offsetTopAndBottom(i10);
    }

    @Override
    public void setAlpha(float f10) {
        this.f5521b.setAlpha(f10);
    }

    @Override
    public boolean t() {
        return this.f5527h;
    }

    @Override
    public int u() {
        return this.f5524e;
    }

    @Override
    public boolean v() {
        return this.f5521b.getClipToOutline();
    }

    @Override
    public boolean w(boolean z10) {
        return this.f5521b.setHasOverlappingRendering(z10);
    }

    @Override
    public void x(Matrix matrix) {
        this.f5521b.getMatrix(matrix);
    }

    @Override
    public void y(int i10) {
        K(i() + i10);
        L(m() + i10);
        this.f5521b.offsetLeftAndRight(i10);
    }

    @Override
    public int z() {
        return this.f5526g;
    }

    @Override
    public void c(w4 w4Var) {
    }
}
