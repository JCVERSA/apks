package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public final class k05 extends dn6 {
    public final MemberScope b;

    public k05(MemberScope memberScope) {
        y45.j(memberScope, "workerScope");
        this.b = memberScope;
    }

    @Override
    public Set a() {
        return this.b.a();
    }

    @Override
    public Set d() {
        return this.b.d();
    }

    @Override
    public Set e() {
        return this.b.e();
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        px0 px0VarF = this.b.f(by6Var, or5Var);
        if (px0VarF == null) {
            return null;
        }
        qw0 qw0Var = px0VarF instanceof qw0 ? (qw0) px0VarF : null;
        if (qw0Var != null) {
            return qw0Var;
        }
        if (px0VarF instanceof ebb) {
            return (ebb) px0VarF;
        }
        return null;
    }

    @Override
    public List g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        u82 u82VarN = u82Var.n(u82.c.c());
        if (u82VarN == null) {
            return y71.k();
        }
        Collection collectionG = this.b.g(u82VarN, e74Var);
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionG) {
            if (obj instanceof qx0) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public String toString() {
        return "Classes from " + this.b;
    }
}
