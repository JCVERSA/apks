package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public final class lv3 implements md {
    public final md b;
    public final boolean c;
    public final e74 d;

    public lv3(md mdVar, boolean z, e74 e74Var) {
        y45.j(mdVar, "delegate");
        y45.j(e74Var, "fqNameFilter");
        this.b = mdVar;
        this.c = z;
        this.d = e74Var;
    }

    @Override
    public gd a(o54 o54Var) {
        y45.j(o54Var, "fqName");
        if (((Boolean) this.d.invoke(o54Var)).booleanValue()) {
            return this.b.a(o54Var);
        }
        return null;
    }

    public final boolean b(gd gdVar) {
        o54 o54VarD = gdVar.d();
        return o54VarD != null && ((Boolean) this.d.invoke(o54VarD)).booleanValue();
    }

    @Override
    public boolean h(o54 o54Var) {
        y45.j(o54Var, "fqName");
        if (((Boolean) this.d.invoke(o54Var)).booleanValue()) {
            return this.b.h(o54Var);
        }
        return false;
    }

    @Override
    public boolean isEmpty() {
        boolean z;
        md mdVar = this.b;
        if (!(mdVar instanceof Collection) || !((Collection) mdVar).isEmpty()) {
            Iterator it = mdVar.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                if (b((gd) it.next())) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
            break;
        }
        if (this.c) {
            return !z;
        }
        return z;
    }

    @Override
    public Iterator iterator() {
        md mdVar = this.b;
        ArrayList arrayList = new ArrayList();
        for (Object obj : mdVar) {
            if (b((gd) obj)) {
                arrayList.add(obj);
            }
        }
        return arrayList.iterator();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public lv3(md mdVar, e74 e74Var) {
        this(mdVar, false, e74Var);
        y45.j(mdVar, "delegate");
        y45.j(e74Var, "fqNameFilter");
    }
}
