package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

public abstract class gv7 {
    public static final void a(fv7 fv7Var, o54 o54Var, Collection collection) {
        y45.j(fv7Var, "<this>");
        y45.j(o54Var, "fqName");
        y45.j(collection, "packageFragments");
        if (fv7Var instanceof hv7) {
            ((hv7) fv7Var).a(o54Var, collection);
        } else {
            collection.addAll(fv7Var.c(o54Var));
        }
    }

    public static final boolean b(fv7 fv7Var, o54 o54Var) {
        y45.j(fv7Var, "<this>");
        y45.j(o54Var, "fqName");
        return fv7Var instanceof hv7 ? ((hv7) fv7Var).b(o54Var) : c(fv7Var, o54Var).isEmpty();
    }

    public static final List c(fv7 fv7Var, o54 o54Var) {
        y45.j(fv7Var, "<this>");
        y45.j(o54Var, "fqName");
        ArrayList arrayList = new ArrayList();
        a(fv7Var, o54Var, arrayList);
        return arrayList;
    }
}
