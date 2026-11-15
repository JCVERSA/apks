package androidx.compose.foundation;

import android.graphics.Canvas;
import android.graphics.RecordingCanvas;
import android.graphics.RenderNode;
import android.widget.EdgeEffect;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.platform.a1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

final class n extends a1 implements androidx.compose.ui.draw.f {

    private final AndroidEdgeEffectOverscrollEffect f2834c;

    private final p f2835d;

    private RenderNode f2836e;

    public n(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, p pVar, Function1 function1) {
        super(function1);
        this.f2834c = androidEdgeEffectOverscrollEffect;
        this.f2835d = pVar;
    }

    private final boolean a(EdgeEffect edgeEffect, Canvas canvas) {
        return l(180.0f, edgeEffect, canvas);
    }

    private final boolean i(EdgeEffect edgeEffect, Canvas canvas) {
        return l(270.0f, edgeEffect, canvas);
    }

    private final boolean j(EdgeEffect edgeEffect, Canvas canvas) {
        return l(90.0f, edgeEffect, canvas);
    }

    private final boolean k(EdgeEffect edgeEffect, Canvas canvas) {
        return l(0.0f, edgeEffect, canvas);
    }

    private final boolean l(float f10, EdgeEffect edgeEffect, Canvas canvas) {
        if (f10 == 0.0f) {
            return edgeEffect.draw(canvas);
        }
        int iSave = canvas.save();
        canvas.rotate(f10);
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
    }

    private final RenderNode m() {
        RenderNode renderNode = this.f2836e;
        if (renderNode != null) {
            return renderNode;
        }
        RenderNode renderNodeA = i.a("AndroidEdgeEffectOverscrollEffect");
        this.f2836e = renderNodeA;
        return renderNodeA;
    }

    private final boolean o() {
        p pVar = this.f2835d;
        return pVar.r() || pVar.s() || pVar.u() || pVar.v();
    }

    private final boolean p() {
        p pVar = this.f2835d;
        return pVar.y() || pVar.z() || pVar.o() || pVar.p();
    }

    @Override
    public Object b(Object obj, Function2 function2) {
        return androidx.compose.ui.g.b(this, obj, function2);
    }

    @Override
    public boolean c(Function1 function1) {
        return androidx.compose.ui.g.a(this, function1);
    }

    @Override
    public androidx.compose.ui.f e(androidx.compose.ui.f fVar) {
        return androidx.compose.ui.e.a(this, fVar);
    }

    @Override
    public void n(z.c cVar) {
        boolean zI;
        this.f2834c.r(cVar.i());
        if (y.m.k(cVar.i())) {
            cVar.X0();
            return;
        }
        this.f2834c.j().getValue();
        float fD0 = cVar.D0(g.b());
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(cVar.G0().e());
        p pVar = this.f2835d;
        boolean zP = p();
        boolean zO = o();
        if (zP && zO) {
            m().setPosition(0, 0, canvasD.getWidth(), canvasD.getHeight());
        } else if (zP) {
            m().setPosition(0, 0, canvasD.getWidth() + (MathKt.d(fD0) * 2), canvasD.getHeight());
        } else {
            if (!zO) {
                cVar.X0();
                return;
            }
            m().setPosition(0, 0, canvasD.getWidth(), canvasD.getHeight() + (MathKt.d(fD0) * 2));
        }
        RecordingCanvas recordingCanvasBeginRecording = m().beginRecording();
        if (pVar.s()) {
            EdgeEffect edgeEffectI = pVar.i();
            j(edgeEffectI, recordingCanvasBeginRecording);
            edgeEffectI.finish();
        }
        if (pVar.r()) {
            EdgeEffect edgeEffectH = pVar.h();
            zI = i(edgeEffectH, recordingCanvasBeginRecording);
            if (pVar.t()) {
                float fN = y.g.n(this.f2834c.i());
                o oVar = o.f2837a;
                oVar.d(pVar.i(), oVar.b(edgeEffectH), 1 - fN);
            }
        } else {
            zI = false;
        }
        if (pVar.z()) {
            EdgeEffect edgeEffectM = pVar.m();
            a(edgeEffectM, recordingCanvasBeginRecording);
            edgeEffectM.finish();
        }
        if (pVar.y()) {
            EdgeEffect edgeEffectL = pVar.l();
            zI = k(edgeEffectL, recordingCanvasBeginRecording) || zI;
            if (pVar.A()) {
                float fM = y.g.m(this.f2834c.i());
                o oVar2 = o.f2837a;
                oVar2.d(pVar.m(), oVar2.b(edgeEffectL), fM);
            }
        }
        if (pVar.v()) {
            EdgeEffect edgeEffectK = pVar.k();
            i(edgeEffectK, recordingCanvasBeginRecording);
            edgeEffectK.finish();
        }
        if (pVar.u()) {
            EdgeEffect edgeEffectJ = pVar.j();
            zI = j(edgeEffectJ, recordingCanvasBeginRecording) || zI;
            if (pVar.w()) {
                float fN2 = y.g.n(this.f2834c.i());
                o oVar3 = o.f2837a;
                oVar3.d(pVar.k(), oVar3.b(edgeEffectJ), fN2);
            }
        }
        if (pVar.p()) {
            EdgeEffect edgeEffectG = pVar.g();
            k(edgeEffectG, recordingCanvasBeginRecording);
            edgeEffectG.finish();
        }
        if (pVar.o()) {
            EdgeEffect edgeEffectF = pVar.f();
            boolean z10 = a(edgeEffectF, recordingCanvasBeginRecording) || zI;
            if (pVar.q()) {
                float fM2 = y.g.m(this.f2834c.i());
                o oVar4 = o.f2837a;
                oVar4.d(pVar.g(), oVar4.b(edgeEffectF), 1 - fM2);
            }
            zI = z10;
        }
        if (zI) {
            this.f2834c.k();
        }
        float f10 = zO ? 0.0f : fD0;
        if (zP) {
            fD0 = 0.0f;
        }
        LayoutDirection layoutDirection = cVar.getLayoutDirection();
        m1 m1VarB = androidx.compose.ui.graphics.h0.b(recordingCanvasBeginRecording);
        long jI = cVar.i();
        o0.e density = cVar.G0().getDensity();
        LayoutDirection layoutDirection2 = cVar.G0().getLayoutDirection();
        m1 m1VarE = cVar.G0().e();
        long jI2 = cVar.G0().i();
        GraphicsLayer graphicsLayerG = cVar.G0().g();
        z.d dVarG0 = cVar.G0();
        dVarG0.b(cVar);
        dVarG0.a(layoutDirection);
        dVarG0.h(m1VarB);
        dVarG0.f(jI);
        dVarG0.d(null);
        m1VarB.n();
        try {
            cVar.G0().c().c(f10, fD0);
            try {
                cVar.X0();
                float f11 = -f10;
                float f12 = -fD0;
                cVar.G0().c().c(f11, f12);
                m1VarB.j();
                z.d dVarG1 = cVar.G0();
                dVarG1.b(density);
                dVarG1.a(layoutDirection2);
                dVarG1.h(m1VarE);
                dVarG1.f(jI2);
                dVarG1.d(graphicsLayerG);
                m().endRecording();
                int iSave = canvasD.save();
                canvasD.translate(f11, f12);
                canvasD.drawRenderNode(m());
                canvasD.restoreToCount(iSave);
            } catch (Throwable th2) {
                cVar.G0().c().c(-f10, -fD0);
                throw th2;
            }
        } catch (Throwable th3) {
            m1VarB.j();
            z.d dVarG2 = cVar.G0();
            dVarG2.b(density);
            dVarG2.a(layoutDirection2);
            dVarG2.h(m1VarE);
            dVarG2.f(jI2);
            dVarG2.d(graphicsLayerG);
            throw th3;
        }
    }
}
