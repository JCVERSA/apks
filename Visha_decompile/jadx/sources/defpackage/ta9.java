package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ta9 implements sa9 {
    public final Object a;
    public final u74 b;
    public final u74 c;
    public final u74 d;

    public ta9(Object obj, u74 u74Var, u74 u74Var2) {
        this.a = obj;
        this.b = u74Var;
        this.c = u74Var2;
        this.d = ya9.a;
    }

    @Override
    public u74 a() {
        return this.c;
    }

    @Override
    public u74 b() {
        return this.d;
    }

    @Override
    public u74 c() {
        return this.b;
    }

    @Override
    public Object d() {
        return this.a;
    }

    public ta9(Object obj, u74 u74Var, u74 u74Var2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, u74Var, (i & 4) != 0 ? null : u74Var2);
    }
}
