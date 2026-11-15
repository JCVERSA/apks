package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.util.List;

public final class uq {
    private o50 a;
    private jc b;
    private final List<String> c;

    public uq() {
        this(new jc(), new o50());
    }

    public final jc a() {
        return this.b;
    }

    public final o50 b() {
        return this.a;
    }

    public final List<String> c() {
        return this.c;
    }

    public final void a(jc jcVar) {
        y45.j(jcVar, "<set-?>");
        this.b = jcVar;
    }

    public uq(jc jcVar, o50 o50Var) {
        y45.j(o50Var, "environmentConfiguration");
        y45.j(jcVar, "advertisingConfiguration");
        this.a = o50Var;
        this.b = jcVar;
        this.c = defpackage.y71.n("small", "medium", "large");
    }

    public final void a(o50 o50Var) {
        y45.j(o50Var, "<set-?>");
        this.a = o50Var;
    }
}
