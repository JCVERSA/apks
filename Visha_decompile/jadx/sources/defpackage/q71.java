package defpackage;

import java.util.Collection;
import java.util.Iterator;

public abstract class q71 extends n71 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q71(ef5 ef5Var) {
        super(ef5Var, null);
        y45.j(ef5Var, "element");
    }

    @Override
    public Iterator d(Collection collection) {
        y45.j(collection, "<this>");
        return collection.iterator();
    }

    @Override
    public int e(Collection collection) {
        y45.j(collection, "<this>");
        return collection.size();
    }
}
