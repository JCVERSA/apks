package defpackage;

import java.util.Iterator;
import java.util.List;

public final class nd implements md {
    public final List b;

    public nd(List list) {
        y45.j(list, "annotations");
        this.b = list;
    }

    @Override
    public gd a(o54 o54Var) {
        return md.b.a(this, o54Var);
    }

    @Override
    public boolean h(o54 o54Var) {
        return md.b.b(this, o54Var);
    }

    @Override
    public boolean isEmpty() {
        return this.b.isEmpty();
    }

    @Override
    public Iterator iterator() {
        return this.b.iterator();
    }

    public String toString() {
        return this.b.toString();
    }
}
