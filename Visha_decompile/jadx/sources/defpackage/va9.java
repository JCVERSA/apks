package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class va9 implements ua9 {
    public final Object a;
    public final u74 b;
    public final u74 c;
    public final u74 d;

    public va9(Object obj, u74 u74Var, u74 u74Var2, u74 u74Var3) {
        this.a = obj;
        this.b = u74Var;
        this.c = u74Var2;
        this.d = u74Var3;
    }

    @Override
    public u74 a() {
        return this.d;
    }

    @Override
    public u74 b() {
        return this.c;
    }

    @Override
    public u74 c() {
        return this.b;
    }

    @Override
    public Object d() {
        return this.a;
    }

    public va9(Object obj, u74 u74Var, u74 u74Var2, u74 u74Var3, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, u74Var, u74Var2, (i & 8) != 0 ? null : u74Var3);
    }
}
