package defpackage;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.PropertyReference1Impl;

public class l92 implements md {
    public static final af5[] c = {xq8.j(new PropertyReference1Impl(xq8.b(l92.class), "annotations", "getAnnotations()Ljava/util/List;"))};
    public final x17 b;

    public l92(vx9 vx9Var, c74 c74Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(c74Var, "compute");
        this.b = vx9Var.c(c74Var);
    }

    private final List b() {
        return (List) ux9.a(this.b, this, c[0]);
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
        return b().isEmpty();
    }

    @Override
    public Iterator iterator() {
        return b().iterator();
    }
}
