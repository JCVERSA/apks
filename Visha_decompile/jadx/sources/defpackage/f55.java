package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.InvalidModuleException;

public abstract class f55 {
    public static final mq6 a = new mq6("InvalidModuleNotifier");

    public static final void a(qq6 qq6Var) {
        y45.j(qq6Var, "<this>");
        ubc.a(qq6Var.s0(a));
        throw new InvalidModuleException("Accessing invalid module descriptor " + qq6Var);
    }
}
