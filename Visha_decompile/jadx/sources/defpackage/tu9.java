package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import kotlin.reflect.jvm.internal.impl.types.IntersectionTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class tu9 {
    public static final j2 a(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        mgb mgbVarL0 = eh5Var.L0();
        if (mgbVarL0 instanceof j2) {
            return (j2) mgbVarL0;
        }
        return null;
    }

    public static final sm9 b(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        j2 j2VarA = a(eh5Var);
        if (j2VarA != null) {
            return j2VarA.U0();
        }
        return null;
    }

    public static final boolean c(eh5 eh5Var) {
        y45.j(eh5Var, "<this>");
        return eh5Var.L0() instanceof g72;
    }

    public static final mgb d(mgb mgbVar, boolean z) {
        y45.j(mgbVar, "<this>");
        g72 g72VarC = g72.a.c(g72.e, mgbVar, z, false, 4, null);
        if (g72VarC != null) {
            return g72VarC;
        }
        sm9 sm9VarG = g(mgbVar);
        return sm9VarG != null ? sm9VarG : mgbVar.M0(false);
    }

    public static final IntersectionTypeConstructor e(IntersectionTypeConstructor intersectionTypeConstructor) {
        eh5 eh5Var;
        Collection collectionK = intersectionTypeConstructor.k();
        ArrayList arrayList = new ArrayList(z71.v(collectionK, 10));
        Iterator it = collectionK.iterator();
        boolean z = false;
        while (true) {
            eh5Var = null;
            if (!it.hasNext()) {
                break;
            }
            eh5 eh5VarF = (eh5) it.next();
            if (n.l(eh5VarF)) {
                eh5VarF = f(eh5VarF.L0(), false, 1, null);
                z = true;
            }
            arrayList.add(eh5VarF);
        }
        if (!z) {
            return null;
        }
        eh5 eh5VarG = intersectionTypeConstructor.g();
        if (eh5VarG != null) {
            if (n.l(eh5VarG)) {
                eh5VarG = f(eh5VarG.L0(), false, 1, null);
            }
            eh5Var = eh5VarG;
        }
        return new IntersectionTypeConstructor(arrayList).l(eh5Var);
    }

    public static mgb f(mgb mgbVar, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return d(mgbVar, z);
    }

    public static final sm9 g(eh5 eh5Var) {
        IntersectionTypeConstructor intersectionTypeConstructorE;
        sbb sbbVarI0 = eh5Var.I0();
        IntersectionTypeConstructor intersectionTypeConstructor = sbbVarI0 instanceof IntersectionTypeConstructor ? (IntersectionTypeConstructor) sbbVarI0 : null;
        if (intersectionTypeConstructor == null || (intersectionTypeConstructorE = e(intersectionTypeConstructor)) == null) {
            return null;
        }
        return intersectionTypeConstructorE.f();
    }

    public static final sm9 h(sm9 sm9Var, boolean z) {
        y45.j(sm9Var, "<this>");
        g72 g72VarC = g72.a.c(g72.e, sm9Var, z, false, 4, null);
        if (g72VarC != null) {
            return g72VarC;
        }
        sm9 sm9VarG = g(sm9Var);
        return sm9VarG == null ? sm9Var.M0(false) : sm9VarG;
    }

    public static sm9 i(sm9 sm9Var, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return h(sm9Var, z);
    }

    public static final sm9 j(sm9 sm9Var, sm9 sm9Var2) {
        y45.j(sm9Var, "<this>");
        y45.j(sm9Var2, "abbreviatedType");
        return fh5.a(sm9Var) ? sm9Var : new j2(sm9Var, sm9Var2);
    }

    public static final f07 k(f07 f07Var) {
        y45.j(f07Var, "<this>");
        return new f07(f07Var.R0(), f07Var.I0(), f07Var.T0(), f07Var.H0(), f07Var.J0(), true);
    }
}
