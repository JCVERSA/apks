package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

public class u1a extends dn6 {
    public final qq6 b;
    public final o54 c;

    public u1a(qq6 qq6Var, o54 o54Var) {
        y45.j(qq6Var, "moduleDescriptor");
        y45.j(o54Var, "fqName");
        this.b = qq6Var;
        this.c = o54Var;
    }

    @Override
    public Set e() {
        return ye9.f();
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        if (!u82Var.a(u82.c.f())) {
            return y71.k();
        }
        if (this.c.d() && u82Var.l().contains(t82.b.a)) {
            return y71.k();
        }
        Collection collectionI = this.b.i(this.c, e74Var);
        ArrayList arrayList = new ArrayList(collectionI.size());
        Iterator it = collectionI.iterator();
        while (it.hasNext()) {
            by6 by6VarG = ((o54) it.next()).g();
            y45.i(by6VarG, "subFqName.shortName()");
            if (((Boolean) e74Var.invoke(by6VarG)).booleanValue()) {
                v71.a(arrayList, h(by6VarG));
            }
        }
        return arrayList;
    }

    public final pv7 h(by6 by6Var) {
        y45.j(by6Var, "name");
        if (by6Var.h()) {
            return null;
        }
        qq6 qq6Var = this.b;
        o54 o54VarC = this.c.c(by6Var);
        y45.i(o54VarC, "fqName.child(name)");
        pv7 pv7VarC = qq6Var.C(o54VarC);
        if (pv7VarC.isEmpty()) {
            return null;
        }
        return pv7VarC;
    }

    public String toString() {
        return "subpackages of " + this.c + " from " + this.b;
    }
}
