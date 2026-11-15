package defpackage;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

public abstract class z4i extends AbstractMap {
    public transient Set b;
    public transient Collection c;

    public abstract Set a();

    @Override
    public final Set entrySet() {
        Set set = this.b;
        if (set != null) {
            return set;
        }
        Set setA = a();
        this.b = setA;
        return setA;
    }

    @Override
    public final Collection values() {
        Collection collection = this.c;
        if (collection != null) {
            return collection;
        }
        y4i y4iVar = new y4i(this);
        this.c = y4iVar;
        return y4iVar;
    }
}
