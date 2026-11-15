package androidx.compose.ui.graphics;

public abstract class l1 {
    public static void a(m1 m1Var, y.i iVar, int i10) {
        m1Var.a(iVar.f(), iVar.i(), iVar.g(), iVar.c(), i10);
    }

    public static void b(m1 m1Var, y.i iVar, m4 m4Var) {
        m1Var.f(iVar.f(), iVar.i(), iVar.g(), iVar.c(), m4Var);
    }

    public static void c(m1 m1Var, Path path, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipPath-mtrdD-E");
        }
        if ((i11 & 2) != 0) {
            i10 = t1.f4338a.b();
        }
        m1Var.b(path, i10);
    }

    public static void d(m1 m1Var, float f10, float f11, float f12, float f13, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-N_I0leg");
        }
        if ((i11 & 16) != 0) {
            i10 = t1.f4338a.b();
        }
        m1Var.a(f10, f11, f12, f13, i10);
    }

    public static void e(m1 m1Var, y.i iVar, int i10, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: clipRect-mtrdD-E");
        }
        if ((i11 & 2) != 0) {
            i10 = t1.f4338a.b();
        }
        m1Var.l(iVar, i10);
    }
}
