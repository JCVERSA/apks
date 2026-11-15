package defpackage;

import java.util.List;

public final class rnb implements snb {
    public final snb a;
    public final vf1 b;

    public rnb(snb snbVar, vf1 vf1Var) {
        y45.j(snbVar, "delegate");
        y45.j(vf1Var, "constants");
        this.a = snbVar;
        this.b = vf1Var;
    }

    @Override
    public qnb a(String str) {
        y45.j(str, "name");
        return this.a.a(str);
    }

    @Override
    public qc2 c(List list, boolean z, e74 e74Var) {
        y45.j(list, "names");
        y45.j(e74Var, "observer");
        return this.a.c(list, z, e74Var);
    }

    @Override
    public void d() {
        this.a.d();
    }

    @Override
    public void e() {
        this.a.e();
    }

    @Override
    public qc2 g(List list, e74 e74Var) {
        y45.j(list, "names");
        y45.j(e74Var, "observer");
        return this.a.g(list, e74Var);
    }

    @Override
    public Object get(String str) {
        y45.j(str, "name");
        Object objA = wnb.a(this.b.get(str));
        return objA == null ? this.a.get(str) : objA;
    }

    @Override
    public qc2 h(String str, wc3 wc3Var, boolean z, e74 e74Var) {
        y45.j(str, "name");
        y45.j(e74Var, "observer");
        return this.a.h(str, wc3Var, z, e74Var);
    }

    @Override
    public void i(qnb qnbVar) {
        y45.j(qnbVar, "variable");
        this.a.i(qnbVar);
    }

    @Override
    public void j(oj3 oj3Var, e74 e74Var) {
        y45.j(oj3Var, "owner");
        y45.j(e74Var, "callback");
        this.a.j(oj3Var, e74Var);
    }
}
