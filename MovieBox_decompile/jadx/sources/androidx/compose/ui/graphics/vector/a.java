package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.c1;
import androidx.compose.ui.graphics.e4;
import androidx.compose.ui.graphics.f4;
import androidx.compose.ui.graphics.g4;
import androidx.compose.ui.graphics.m1;
import androidx.compose.ui.graphics.o1;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.v1;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function1;
import o0.t;
import o0.u;

public final class a {

    private e4 f4428a;

    private m1 f4429b;

    private o0.e f4430c;

    private LayoutDirection f4431d = LayoutDirection.Ltr;

    private long f4432e = t.f67425b.a();

    private int f4433f = f4.f4130b.b();

    private final z.a f4434g = new z.a();

    private final void a(z.g gVar) {
        z.f.j(gVar, u1.f4349b.a(), 0L, 0L, 0.0f, null, null, c1.f3983a.a(), 62, null);
    }

    public final void b(int i10, long j10, o0.e eVar, LayoutDirection layoutDirection, Function1 function1) {
        this.f4430c = eVar;
        this.f4431d = layoutDirection;
        e4 e4VarB = this.f4428a;
        m1 m1VarA = this.f4429b;
        if (e4VarB == null || m1VarA == null || t.g(j10) > e4VarB.getWidth() || t.f(j10) > e4VarB.getHeight() || !f4.i(this.f4433f, i10)) {
            e4VarB = g4.b(t.g(j10), t.f(j10), i10, false, null, 24, null);
            m1VarA = o1.a(e4VarB);
            this.f4428a = e4VarB;
            this.f4429b = m1VarA;
            this.f4433f = i10;
        }
        this.f4432e = j10;
        z.a aVar = this.f4434g;
        long jD = u.d(j10);
        z.a.C0951a c0951aF = aVar.F();
        o0.e eVarA = c0951aF.a();
        LayoutDirection layoutDirectionB = c0951aF.b();
        m1 m1VarC = c0951aF.c();
        long jD2 = c0951aF.d();
        z.a.C0951a c0951aF2 = aVar.F();
        c0951aF2.j(eVar);
        c0951aF2.k(layoutDirection);
        c0951aF2.i(m1VarA);
        c0951aF2.l(jD);
        m1VarA.n();
        a(aVar);
        function1.invoke(aVar);
        m1VarA.j();
        z.a.C0951a c0951aF3 = aVar.F();
        c0951aF3.j(eVarA);
        c0951aF3.k(layoutDirectionB);
        c0951aF3.i(m1VarC);
        c0951aF3.l(jD2);
        e4VarB.a();
    }

    public final void c(z.g gVar, float f10, v1 v1Var) {
        e4 e4Var = this.f4428a;
        if (!(e4Var != null)) {
            g0.a.b("drawCachedImage must be invoked first before attempting to draw the result into another destination");
        }
        z.f.e(gVar, e4Var, 0L, this.f4432e, 0L, 0L, f10, null, v1Var, 0, 0, 858, null);
    }

    public final e4 d() {
        return this.f4428a;
    }
}
