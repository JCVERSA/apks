package defpackage;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class inb {
    public inb(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public abstract List a();

    public final inb b(e74 e74Var) {
        y45.j(e74Var, "transform");
        if (this instanceof g05) {
            g05 g05Var = (g05) this;
            return new g05(g05Var.c(), (tm9) e74Var.invoke(g05Var.d()));
        }
        if (!(this instanceof js6)) {
            throw new NoWhenBranchMatchedException();
        }
        List<Pair> listA = a();
        ArrayList arrayList = new ArrayList(z71.v(listA, 10));
        for (Pair pair : listA) {
            arrayList.add(abb.a((by6) pair.component1(), e74Var.invoke((tm9) pair.component2())));
        }
        return new js6(arrayList);
    }

    public inb() {
    }
}
