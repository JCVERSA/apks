package androidx.compose.ui.graphics.painter;

import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.m4;
import androidx.compose.ui.graphics.t0;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import y.i;
import y.j;
import y.m;
import y.n;
import z.g;

public abstract class Painter {

    private m4 f4306a;

    private boolean f4307b;

    private v1 f4308c;

    private float f4309d = 1.0f;

    private LayoutDirection f4310e = LayoutDirection.Ltr;

    private final Function1 f4311f = new Function1<g, Unit>() {
        {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((g) obj);
            return Unit.f64096a;
        }

        public final void invoke(g gVar) {
            this.this$0.j(gVar);
        }
    };

    private final void d(float f10) {
        if (this.f4309d == f10) {
            return;
        }
        if (!a(f10)) {
            if (f10 == 1.0f) {
                m4 m4Var = this.f4306a;
                if (m4Var != null) {
                    m4Var.setAlpha(f10);
                }
                this.f4307b = false;
            } else {
                i().setAlpha(f10);
                this.f4307b = true;
            }
        }
        this.f4309d = f10;
    }

    private final void e(v1 v1Var) {
        if (Intrinsics.c(this.f4308c, v1Var)) {
            return;
        }
        if (!b(v1Var)) {
            if (v1Var == null) {
                m4 m4Var = this.f4306a;
                if (m4Var != null) {
                    m4Var.z(null);
                }
                this.f4307b = false;
            } else {
                i().z(v1Var);
                this.f4307b = true;
            }
        }
        this.f4308c = v1Var;
    }

    private final void f(LayoutDirection layoutDirection) {
        if (this.f4310e != layoutDirection) {
            c(layoutDirection);
            this.f4310e = layoutDirection;
        }
    }

    private final m4 i() {
        m4 m4Var = this.f4306a;
        if (m4Var != null) {
            return m4Var;
        }
        m4 m4VarA = t0.a();
        this.f4306a = m4VarA;
        return m4VarA;
    }

    protected boolean a(float f10) {
        return false;
    }

    protected boolean b(v1 v1Var) {
        return false;
    }

    protected boolean c(LayoutDirection layoutDirection) {
        return false;
    }

    public final void g(g gVar, long j10, float f10, v1 v1Var) {
        d(f10);
        e(v1Var);
        f(gVar.getLayoutDirection());
        float fI = m.i(gVar.i()) - m.i(j10);
        float fG = m.g(gVar.i()) - m.g(j10);
        gVar.G0().c().f(0.0f, 0.0f, fI, fG);
        if (f10 > 0.0f) {
            try {
                if (m.i(j10) > 0.0f && m.g(j10) > 0.0f) {
                    if (this.f4307b) {
                        i iVarA = j.a(y.g.f75999b.c(), n.a(m.i(j10), m.g(j10)));
                        m1 m1VarE = gVar.G0().e();
                        try {
                            m1VarE.d(iVarA, i());
                            j(gVar);
                            m1VarE.j();
                        } catch (Throwable th2) {
                            m1VarE.j();
                            throw th2;
                        }
                    } else {
                        j(gVar);
                    }
                }
            } catch (Throwable th3) {
                gVar.G0().c().f(-0.0f, -0.0f, -fI, -fG);
                throw th3;
            }
        }
        gVar.G0().c().f(-0.0f, -0.0f, -fI, -fG);
    }

    public abstract long h();

    protected abstract void j(g gVar);
}
