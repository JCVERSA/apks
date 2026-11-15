package androidx.compose.ui.graphics;

import kotlin.NoWhenBranchMatchedException;

public abstract class l4 {
    public static final void a(z.g gVar, k4 k4Var, j1 j1Var, float f10, z.h hVar, v1 v1Var, int i10) {
        Path pathB;
        if (k4Var instanceof k4.b) {
            y.i iVarB = ((k4.b) k4Var).b();
            gVar.M0(j1Var, g(iVarB), e(iVarB), f10, hVar, v1Var, i10);
            return;
        }
        if (k4Var instanceof k4.c) {
            k4.c cVar = (k4.c) k4Var;
            pathB = cVar.c();
            if (pathB == null) {
                y.k kVarB = cVar.b();
                gVar.U0(j1Var, h(kVarB), f(kVarB), y.b.b(y.a.d(kVarB.b()), 0.0f, 2, null), f10, hVar, v1Var, i10);
                return;
            }
        } else {
            if (!(k4Var instanceof k4.a)) {
                throw new NoWhenBranchMatchedException();
            }
            pathB = ((k4.a) k4Var).b();
        }
        gVar.i0(pathB, j1Var, f10, hVar, v1Var, i10);
    }

    public static void b(z.g gVar, k4 k4Var, j1 j1Var, float f10, z.h hVar, v1 v1Var, int i10, int i11, Object obj) {
        if ((i11 & 4) != 0) {
            f10 = 1.0f;
        }
        float f11 = f10;
        if ((i11 & 8) != 0) {
            hVar = z.l.f76454a;
        }
        z.h hVar2 = hVar;
        if ((i11 & 16) != 0) {
            v1Var = null;
        }
        v1 v1Var2 = v1Var;
        if ((i11 & 32) != 0) {
            i10 = z.g.f76450o1.a();
        }
        a(gVar, k4Var, j1Var, f11, hVar2, v1Var2, i10);
    }

    public static final void c(z.g gVar, k4 k4Var, long j10, float f10, z.h hVar, v1 v1Var, int i10) {
        Path pathB;
        if (k4Var instanceof k4.b) {
            y.i iVarB = ((k4.b) k4Var).b();
            gVar.K0(j10, g(iVarB), e(iVarB), f10, hVar, v1Var, i10);
            return;
        }
        if (k4Var instanceof k4.c) {
            k4.c cVar = (k4.c) k4Var;
            pathB = cVar.c();
            if (pathB == null) {
                y.k kVarB = cVar.b();
                gVar.T(j10, h(kVarB), f(kVarB), y.b.b(y.a.d(kVarB.b()), 0.0f, 2, null), hVar, f10, v1Var, i10);
                return;
            }
        } else {
            if (!(k4Var instanceof k4.a)) {
                throw new NoWhenBranchMatchedException();
            }
            pathB = ((k4.a) k4Var).b();
        }
        gVar.C0(pathB, j10, f10, hVar, v1Var, i10);
    }

    private static final long e(y.i iVar) {
        return y.n.a(iVar.k(), iVar.e());
    }

    private static final long f(y.k kVar) {
        return y.n.a(kVar.j(), kVar.d());
    }

    private static final long g(y.i iVar) {
        return y.h.a(iVar.f(), iVar.i());
    }

    private static final long h(y.k kVar) {
        return y.h.a(kVar.e(), kVar.g());
    }
}
