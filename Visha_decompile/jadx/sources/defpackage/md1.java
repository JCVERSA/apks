package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public final class md1 implements hv7 {
    public final List a;
    public final String b;

    public md1(List list, String str) {
        y45.j(list, "providers");
        y45.j(str, "debugName");
        this.a = list;
        this.b = str;
        list.size();
        i81.g1(list).size();
    }

    @Override
    public void a(o54 o54Var, Collection collection) {
        y45.j(o54Var, "fqName");
        y45.j(collection, "packageFragments");
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            gv7.a((fv7) it.next(), o54Var, collection);
        }
    }

    @Override
    public boolean b(o54 o54Var) {
        y45.j(o54Var, "fqName");
        List list = this.a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!gv7.b((fv7) it.next(), o54Var)) {
                return false;
            }
        }
        return true;
    }

    @Override
    public List c(o54 o54Var) {
        y45.j(o54Var, "fqName");
        ArrayList arrayList = new ArrayList();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            gv7.a((fv7) it.next(), o54Var, arrayList);
        }
        return i81.b1(arrayList);
    }

    @Override
    public Collection i(o54 o54Var, e74 e74Var) {
        y45.j(o54Var, "fqName");
        y45.j(e74Var, "nameFilter");
        HashSet hashSet = new HashSet();
        Iterator it = this.a.iterator();
        while (it.hasNext()) {
            hashSet.addAll(((fv7) it.next()).i(o54Var, e74Var));
        }
        return hashSet;
    }

    public String toString() {
        return this.b;
    }
}
