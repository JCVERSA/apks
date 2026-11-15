package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.layout.g0;
import androidx.compose.ui.layout.m0;
import androidx.compose.ui.layout.s;
import androidx.compose.ui.layout.v;
import androidx.compose.ui.layout.w;
import androidx.compose.ui.node.n;
import androidx.compose.ui.node.x;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import o0.p;
import o0.u;
import y.m;

final class PainterNode extends androidx.compose.ui.f.c implements x, n {

    private Painter f3846n;

    private boolean f3847o;

    private androidx.compose.ui.b f3848p;

    private androidx.compose.ui.layout.e f3849q;

    private float f3850r;

    private v1 f3851s;

    public PainterNode(Painter painter, boolean z10, androidx.compose.ui.b bVar, androidx.compose.ui.layout.e eVar, float f10, v1 v1Var) {
        this.f3846n = painter;
        this.f3847o = z10;
        this.f3848p = bVar;
        this.f3849q = eVar;
        this.f3850r = f10;
        this.f3851s = v1Var;
    }

    private final long C1(long j10) {
        if (!F1()) {
            return j10;
        }
        long jA = y.n.a(!H1(this.f3846n.h()) ? m.i(j10) : m.i(this.f3846n.h()), !G1(this.f3846n.h()) ? m.g(j10) : m.g(this.f3846n.h()));
        return (m.i(j10) == 0.0f || m.g(j10) == 0.0f) ? m.f76020b.b() : m0.b(jA, this.f3849q.a(jA, j10));
    }

    private final boolean F1() {
        return this.f3847o && this.f3846n.h() != 9205357640488583168L;
    }

    private final boolean G1(long j10) {
        if (!m.f(j10, m.f76020b.a())) {
            float fG = m.g(j10);
            if (!Float.isInfinite(fG) && !Float.isNaN(fG)) {
                return true;
            }
        }
        return false;
    }

    private final boolean H1(long j10) {
        if (!m.f(j10, m.f76020b.a())) {
            float fI = m.i(j10);
            if (!Float.isInfinite(fI) && !Float.isNaN(fI)) {
                return true;
            }
        }
        return false;
    }

    private final long I1(long j10) {
        boolean z10 = false;
        boolean z11 = o0.b.h(j10) && o0.b.g(j10);
        if (o0.b.j(j10) && o0.b.i(j10)) {
            z10 = true;
        }
        if ((!F1() && z11) || z10) {
            return o0.b.d(j10, o0.b.l(j10), 0, o0.b.k(j10), 0, 10, null);
        }
        long jH = this.f3846n.h();
        long jC1 = C1(y.n.a(o0.c.i(j10, H1(jH) ? Math.round(m.i(jH)) : o0.b.n(j10)), o0.c.h(j10, G1(jH) ? Math.round(m.g(jH)) : o0.b.m(j10))));
        return o0.b.d(j10, o0.c.i(j10, Math.round(m.i(jC1))), 0, o0.c.h(j10, Math.round(m.g(jC1))), 0, 10, null);
    }

    public final Painter D1() {
        return this.f3846n;
    }

    public final boolean E1() {
        return this.f3847o;
    }

    public final void J1(androidx.compose.ui.b bVar) {
        this.f3848p = bVar;
    }

    public final void K1(v1 v1Var) {
        this.f3851s = v1Var;
    }

    public final void L1(androidx.compose.ui.layout.e eVar) {
        this.f3849q = eVar;
    }

    public final void M1(Painter painter) {
        this.f3846n = painter;
    }

    public final void N1(boolean z10) {
        this.f3847o = z10;
    }

    @Override
    public boolean h1() {
        return false;
    }

    @Override
    public void n(z.c cVar) {
        long jH = this.f3846n.h();
        long jA = y.n.a(H1(jH) ? m.i(jH) : m.i(cVar.i()), G1(jH) ? m.g(jH) : m.g(cVar.i()));
        long jB = (m.i(cVar.i()) == 0.0f || m.g(cVar.i()) == 0.0f) ? m.f76020b.b() : m0.b(jA, this.f3849q.a(jA, cVar.i()));
        long jA2 = this.f3848p.a(u.a(Math.round(m.i(jB)), Math.round(m.g(jB))), u.a(Math.round(m.i(cVar.i())), Math.round(m.g(cVar.i()))), cVar.getLayoutDirection());
        float fH = p.h(jA2);
        float fI = p.i(jA2);
        cVar.G0().c().c(fH, fI);
        try {
            this.f3846n.g(cVar, jB, this.f3850r, this.f3851s);
            cVar.G0().c().c(-fH, -fI);
            cVar.X0();
        } catch (Throwable th2) {
            cVar.G0().c().c(-fH, -fI);
            throw th2;
        }
    }

    public final void setAlpha(float f10) {
        this.f3850r = f10;
    }

    public String toString() {
        return "PainterModifier(painter=" + this.f3846n + ", sizeToIntrinsics=" + this.f3847o + ", alignment=" + this.f3848p + ", alpha=" + this.f3850r + ", colorFilter=" + this.f3851s + ')';
    }

    @Override
    public void w0() {
        androidx.compose.ui.node.m.a(this);
    }

    @Override
    public v z(androidx.compose.ui.layout.x xVar, s sVar, long j10) {
        final g0 g0VarP = sVar.P(I1(j10));
        return w.b(xVar, g0VarP.u0(), g0VarP.l0(), null, new Function1<g0.a, Unit>() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((g0.a) obj);
                return Unit.f64096a;
            }

            public final void invoke(g0.a aVar) {
                g0.a.l(aVar, g0VarP, 0, 0, 0.0f, 4, null);
            }
        }, 4, null);
    }
}
