package defpackage;

import androidx.media3.exoplayer.upstream.CmcdData;

public final class b4 {
    public static final b4 a = new b4();

    public final boolean a(tcb tcbVar, tm9 tm9Var, tm9 tm9Var2) {
        if (tcbVar.o0(tm9Var) == tcbVar.o0(tm9Var2) && tcbVar.w(tm9Var) == tcbVar.w(tm9Var2)) {
            if ((tcbVar.E0(tm9Var) == null) == (tcbVar.E0(tm9Var2) == null) && tcbVar.H(tcbVar.c(tm9Var), tcbVar.c(tm9Var2))) {
                if (tcbVar.v(tm9Var, tm9Var2)) {
                    return true;
                }
                int iO0 = tcbVar.o0(tm9Var);
                for (int i = 0; i < iO0; i++) {
                    hbb hbbVarK0 = tcbVar.k0(tm9Var, i);
                    hbb hbbVarK1 = tcbVar.k0(tm9Var2, i);
                    if (tcbVar.p0(hbbVarK0) != tcbVar.p0(hbbVarK1)) {
                        return false;
                    }
                    if (!tcbVar.p0(hbbVarK0) && (tcbVar.z(hbbVarK0) != tcbVar.z(hbbVarK1) || !c(tcbVar, tcbVar.j(hbbVarK0), tcbVar.j(hbbVarK1)))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final boolean b(tcb tcbVar, gh5 gh5Var, gh5 gh5Var2) {
        y45.j(tcbVar, "context");
        y45.j(gh5Var, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(gh5Var2, "b");
        return c(tcbVar, gh5Var, gh5Var2);
    }

    public final boolean c(tcb tcbVar, gh5 gh5Var, gh5 gh5Var2) {
        if (gh5Var == gh5Var2) {
            return true;
        }
        tm9 tm9VarA = tcbVar.a(gh5Var);
        tm9 tm9VarA2 = tcbVar.a(gh5Var2);
        if (tm9VarA != null && tm9VarA2 != null) {
            return a(tcbVar, tm9VarA, tm9VarA2);
        }
        iy3 iy3VarI = tcbVar.I(gh5Var);
        iy3 iy3VarI2 = tcbVar.I(gh5Var2);
        if (iy3VarI == null || iy3VarI2 == null) {
            return false;
        }
        return a(tcbVar, tcbVar.e(iy3VarI), tcbVar.e(iy3VarI2)) && a(tcbVar, tcbVar.g(iy3VarI), tcbVar.g(iy3VarI2));
    }
}
