package defpackage;

import kotlinx.serialization.descriptors.a;

public abstract class mh1 {
    public static final de5 a(a aVar) {
        y45.j(aVar, "<this>");
        if (aVar instanceof qh1) {
            return ((qh1) aVar).b;
        }
        if (aVar instanceof fd9) {
            return a(((fd9) aVar).j());
        }
        return null;
    }

    public static final a b(td9 td9Var, a aVar) {
        ef5 ef5VarC;
        y45.j(td9Var, "<this>");
        y45.j(aVar, "descriptor");
        de5 de5VarA = a(aVar);
        if (de5VarA == null || (ef5VarC = td9.c(td9Var, de5VarA, null, 2, null)) == null) {
            return null;
        }
        return ef5VarC.getDescriptor();
    }

    public static final a c(a aVar, de5 de5Var) {
        y45.j(aVar, "<this>");
        y45.j(de5Var, "context");
        return new qh1(aVar, de5Var);
    }
}
