package defpackage;

import kotlin.reflect.jvm.internal.impl.load.java.lazy.a;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver;

public final class gj5 {
    public final e85 a;
    public final a b;
    public final yi5 c;
    public final yi5 d;
    public final JavaTypeResolver e;

    public gj5(e85 e85Var, a aVar, yi5 yi5Var) {
        y45.j(e85Var, "components");
        y45.j(aVar, "typeParameterResolver");
        y45.j(yi5Var, "delegateForDefaultTypeQualifiers");
        this.a = e85Var;
        this.b = aVar;
        this.c = yi5Var;
        this.d = yi5Var;
        this.e = new JavaTypeResolver(this, aVar);
    }

    public final e85 a() {
        return this.a;
    }

    public final u85 b() {
        return (u85) this.d.getValue();
    }

    public final yi5 c() {
        return this.c;
    }

    public final qq6 d() {
        return this.a.m();
    }

    public final vx9 e() {
        return this.a.u();
    }

    public final a f() {
        return this.b;
    }

    public final JavaTypeResolver g() {
        return this.e;
    }
}
