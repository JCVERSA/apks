package androidx.compose.ui.platform;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.os.Build;
import androidx.compose.ui.graphics.Path;
import androidx.compose.ui.graphics.w3;
import androidx.compose.ui.graphics.w4;
import kotlin.jvm.functions.Function1;

public final class w1 implements t0 {

    private final AndroidComposeView f5561a;

    private final RenderNode f5562b = androidx.compose.foundation.i.a("Compose");

    private int f5563c = w3.f4565a.a();

    public w1(AndroidComposeView androidComposeView) {
        this.f5561a = androidComposeView;
    }

    @Override
    public void A(float f10) {
        this.f5562b.setPivotX(f10);
    }

    @Override
    public void B(float f10) {
        this.f5562b.setPivotY(f10);
    }

    @Override
    public void C(Outline outline) {
        this.f5562b.setOutline(outline);
    }

    @Override
    public void D(int i10) {
        this.f5562b.setAmbientShadowColor(i10);
    }

    @Override
    public void E(boolean z10) {
        this.f5562b.setClipToOutline(z10);
    }

    @Override
    public void F(androidx.compose.ui.graphics.n1 n1Var, Path path, Function1 function1) {
        RecordingCanvas recordingCanvasBeginRecording = this.f5562b.beginRecording();
        Canvas canvasV = n1Var.a().v();
        n1Var.a().w(recordingCanvasBeginRecording);
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
        this.f5562b.endRecording();
    }

    @Override
    public void G(int i10) {
        this.f5562b.setSpotShadowColor(i10);
    }

    @Override
    public float H() {
        return this.f5562b.getElevation();
    }

    @Override
    public void a(float f10) {
        this.f5562b.setTranslationY(f10);
    }

    @Override
    public void b(float f10) {
        this.f5562b.setScaleX(f10);
    }

    @Override
    public void c(w4 w4Var) {
        if (Build.VERSION.SDK_INT >= 31) {
            x1.f5570a.a(this.f5562b, w4Var);
        }
    }

    @Override
    public void d(float f10) {
        this.f5562b.setCameraDistance(f10);
    }

    @Override
    public void e(float f10) {
        this.f5562b.setRotationX(f10);
    }

    @Override
    public void f(float f10) {
        this.f5562b.setRotationY(f10);
    }

    @Override
    public void g(float f10) {
        this.f5562b.setRotationZ(f10);
    }

    @Override
    public float getAlpha() {
        return this.f5562b.getAlpha();
    }

    @Override
    public int getHeight() {
        return this.f5562b.getHeight();
    }

    @Override
    public int getWidth() {
        return this.f5562b.getWidth();
    }

    @Override
    public void h(float f10) {
        this.f5562b.setScaleY(f10);
    }

    @Override
    public int i() {
        return this.f5562b.getLeft();
    }

    @Override
    public void j(float f10) {
        this.f5562b.setTranslationX(f10);
    }

    @Override
    public void k() {
        this.f5562b.discardDisplayList();
    }

    @Override
    public void l(int i10) {
        RenderNode renderNode = this.f5562b;
        w3.a aVar = w3.f4565a;
        if (w3.e(i10, aVar.c())) {
            renderNode.setUseCompositingLayer(true, null);
            renderNode.setHasOverlappingRendering(true);
        } else if (w3.e(i10, aVar.b())) {
            renderNode.setUseCompositingLayer(false, null);
            renderNode.setHasOverlappingRendering(false);
        } else {
            renderNode.setUseCompositingLayer(false, null);
            renderNode.setHasOverlappingRendering(true);
        }
        this.f5563c = i10;
    }

    @Override
    public int m() {
        return this.f5562b.getRight();
    }

    @Override
    public boolean n() {
        return this.f5562b.hasDisplayList();
    }

    @Override
    public void o(Canvas canvas) {
        canvas.drawRenderNode(this.f5562b);
    }

    @Override
    public void p(boolean z10) {
        this.f5562b.setClipToBounds(z10);
    }

    @Override
    public boolean q(int i10, int i11, int i12, int i13) {
        return this.f5562b.setPosition(i10, i11, i12, i13);
    }

    @Override
    public void r(float f10) {
        this.f5562b.setElevation(f10);
    }

    @Override
    public void s(int i10) {
        this.f5562b.offsetTopAndBottom(i10);
    }

    @Override
    public void setAlpha(float f10) {
        this.f5562b.setAlpha(f10);
    }

    @Override
    public boolean t() {
        return this.f5562b.getClipToBounds();
    }

    @Override
    public int u() {
        return this.f5562b.getTop();
    }

    @Override
    public boolean v() {
        return this.f5562b.getClipToOutline();
    }

    @Override
    public boolean w(boolean z10) {
        return this.f5562b.setHasOverlappingRendering(z10);
    }

    @Override
    public void x(Matrix matrix) {
        this.f5562b.getMatrix(matrix);
    }

    @Override
    public void y(int i10) {
        this.f5562b.offsetLeftAndRight(i10);
    }

    @Override
    public int z() {
        return this.f5562b.getBottom();
    }
}
