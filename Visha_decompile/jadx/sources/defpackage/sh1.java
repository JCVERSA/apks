package defpackage;

import kotlin.reflect.jvm.internal.impl.descriptors.a;

public final class sh1 extends t3 implements xy4 {
    public final a c;
    public final by6 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sh1(a aVar, eh5 eh5Var, by6 by6Var, to8 to8Var) {
        super(eh5Var, to8Var);
        y45.j(aVar, "declarationDescriptor");
        y45.j(eh5Var, "receiverType");
        this.c = aVar;
        this.d = by6Var;
    }

    @Override
    public by6 a() {
        return this.d;
    }

    public a c() {
        return this.c;
    }

    public String toString() {
        return "Cxt { " + c() + " }";
    }
}
