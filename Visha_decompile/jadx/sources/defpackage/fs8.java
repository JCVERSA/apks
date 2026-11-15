package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;

public final class fs8 {
    public final mq4 a;
    public final mq4 b;
    public final mq4 c;
    public final mq4 d;

    public fs8(mq4 mq4Var, mq4 mq4Var2, mq4 mq4Var3, mq4 mq4Var4) {
        y45.j(mq4Var, "measureFilter");
        y45.j(mq4Var2, "layoutFilter");
        y45.j(mq4Var3, "drawFilter");
        y45.j(mq4Var4, "totalFilter");
        this.a = mq4Var;
        this.b = mq4Var2;
        this.c = mq4Var3;
        this.d = mq4Var4;
    }

    public final mq4 a() {
        return this.c;
    }

    public final mq4 b() {
        return this.b;
    }

    public final mq4 c() {
        return this.a;
    }

    public final mq4 d() {
        return this.d;
    }

    public fs8(mq4 mq4Var, mq4 mq4Var2, mq4 mq4Var3, mq4 mq4Var4, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? mq4.a.e() : mq4Var, (i & 2) != 0 ? mq4.a.e() : mq4Var2, (i & 4) != 0 ? mq4.a.e() : mq4Var3, (i & 8) != 0 ? mq4.a.f() : mq4Var4);
    }
}
