package kotlin.reflect.jvm.internal.impl.types;

import defpackage.e74;
import defpackage.fd3;
import defpackage.q37;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.uia;
import defpackage.um9;
import defpackage.y17;
import defpackage.y45;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public final class f extends sm9 {
    public final sbb c;
    public final List d;
    public final boolean e;
    public final MemberScope f;
    public final e74 g;

    public f(sbb sbbVar, List list, boolean z, MemberScope memberScope, e74 e74Var) {
        y45.j(sbbVar, "constructor");
        y45.j(list, "arguments");
        y45.j(memberScope, "memberScope");
        y45.j(e74Var, "refinedTypeFactory");
        this.c = sbbVar;
        this.d = list;
        this.e = z;
        this.f = memberScope;
        this.g = e74Var;
        if (!(p() instanceof fd3) || (p() instanceof uia)) {
            return;
        }
        throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + p() + '\n' + I0());
    }

    @Override
    public List G0() {
        return this.d;
    }

    @Override
    public j H0() {
        return j.c.h();
    }

    @Override
    public sbb I0() {
        return this.c;
    }

    @Override
    public boolean J0() {
        return this.e;
    }

    @Override
    public sm9 M0(boolean z) {
        if (z == J0()) {
            return this;
        }
        return z ? new q37(this) : new y17(this);
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return jVar.isEmpty() ? this : new um9(this, jVar);
    }

    @Override
    public sm9 S0(kotlin.reflect.jvm.internal.impl.types.checker.c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        sm9 sm9Var = (sm9) this.g.invoke(cVar);
        return sm9Var == null ? this : sm9Var;
    }

    @Override
    public MemberScope p() {
        return this.f;
    }
}
