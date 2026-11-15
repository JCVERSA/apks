package androidx.compose.foundation;

import android.graphics.Canvas;
import android.widget.EdgeEffect;
import androidx.compose.ui.platform.a1;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

final class h extends a1 implements androidx.compose.ui.draw.f {

    private final AndroidEdgeEffectOverscrollEffect f2422c;

    private final p f2423d;

    private final e0 f2424e;

    public h(AndroidEdgeEffectOverscrollEffect androidEdgeEffectOverscrollEffect, p pVar, e0 e0Var, Function1 function1) {
        super(function1);
        this.f2422c = androidEdgeEffectOverscrollEffect;
        this.f2423d = pVar;
        this.f2424e = e0Var;
    }

    private final boolean a(z.g gVar, EdgeEffect edgeEffect, Canvas canvas) {
        return l(180.0f, y.h.a(-y.m.i(gVar.i()), (-y.m.g(gVar.i())) + gVar.D0(this.f2424e.a().a())), edgeEffect, canvas);
    }

    private final boolean i(z.g gVar, EdgeEffect edgeEffect, Canvas canvas) {
        return l(270.0f, y.h.a(-y.m.g(gVar.i()), gVar.D0(this.f2424e.a().b(gVar.getLayoutDirection()))), edgeEffect, canvas);
    }

    private final boolean j(z.g gVar, EdgeEffect edgeEffect, Canvas canvas) {
        return l(90.0f, y.h.a(0.0f, (-MathKt.d(y.m.i(gVar.i()))) + gVar.D0(this.f2424e.a().c(gVar.getLayoutDirection()))), edgeEffect, canvas);
    }

    private final boolean k(z.g gVar, EdgeEffect edgeEffect, Canvas canvas) {
        return l(0.0f, y.h.a(0.0f, gVar.D0(this.f2424e.a().d())), edgeEffect, canvas);
    }

    private final boolean l(float f10, long j10, EdgeEffect edgeEffect, Canvas canvas) {
        int iSave = canvas.save();
        canvas.rotate(f10);
        canvas.translate(y.g.m(j10), y.g.n(j10));
        boolean zDraw = edgeEffect.draw(canvas);
        canvas.restoreToCount(iSave);
        return zDraw;
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
        this.f2422c.r(cVar.i());
        if (y.m.k(cVar.i())) {
            cVar.X0();
            return;
        }
        cVar.X0();
        this.f2422c.j().getValue();
        Canvas canvasD = androidx.compose.ui.graphics.h0.d(cVar.G0().e());
        p pVar = this.f2423d;
        boolean zI = pVar.r() ? i(cVar, pVar.h(), canvasD) : false;
        if (pVar.y()) {
            zI = k(cVar, pVar.l(), canvasD) || zI;
        }
        if (pVar.u()) {
            zI = j(cVar, pVar.j(), canvasD) || zI;
        }
        if (pVar.o()) {
            zI = a(cVar, pVar.f(), canvasD) || zI;
        }
        if (zI) {
            this.f2422c.k();
        }
    }
}
