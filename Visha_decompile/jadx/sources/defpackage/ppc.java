package defpackage;

import kotlinx.serialization.descriptors.a;
import kotlinx.serialization.descriptors.b;
import kotlinx.serialization.json.internal.WriteMode;

public abstract class ppc {
    public static final a a(a aVar, td9 td9Var) {
        a aVarA;
        y45.j(aVar, "<this>");
        y45.j(td9Var, "module");
        if (!y45.e(aVar.getKind(), id9.a.a)) {
            return aVar.isInline() ? a(aVar.d(0), td9Var) : aVar;
        }
        a aVarB = mh1.b(td9Var, aVar);
        return (aVarB == null || (aVarA = a(aVarB, td9Var)) == null) ? aVar : aVarA;
    }

    public static final WriteMode b(u95 u95Var, a aVar) {
        y45.j(u95Var, "<this>");
        y45.j(aVar, "desc");
        id9 kind = aVar.getKind();
        if (kind instanceof mc8) {
            return WriteMode.POLY_OBJ;
        }
        if (y45.e(kind, b.C0418b.a)) {
            return WriteMode.LIST;
        }
        if (!y45.e(kind, b.c.a)) {
            return WriteMode.OBJ;
        }
        a aVarA = a(aVar.d(0), u95Var.a());
        id9 kind2 = aVarA.getKind();
        if ((kind2 instanceof ef8) || y45.e(kind2, id9.b.a)) {
            return WriteMode.MAP;
        }
        if (u95Var.d().b()) {
            return WriteMode.LIST;
        }
        throw oa5.c(aVarA);
    }
}
