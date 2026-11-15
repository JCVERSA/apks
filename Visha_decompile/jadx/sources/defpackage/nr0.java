package defpackage;

import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorScopeKind;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class nr0 extends sm9 implements rr0 {
    public final mcb c;
    public final or0 d;
    public final boolean e;
    public final j f;

    public nr0(mcb mcbVar, or0 or0Var, boolean z, j jVar, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(mcbVar, (i & 2) != 0 ? new pr0(mcbVar) : or0Var, (i & 4) != 0 ? false : z, (i & 8) != 0 ? j.c.h() : jVar);
    }

    @Override
    public List G0() {
        return y71.k();
    }

    @Override
    public j H0() {
        return this.f;
    }

    @Override
    public boolean J0() {
        return this.e;
    }

    @Override
    public sm9 O0(j jVar) {
        y45.j(jVar, "newAttributes");
        return new nr0(this.c, I0(), J0(), jVar);
    }

    @Override
    public or0 I0() {
        return this.d;
    }

    @Override
    public nr0 M0(boolean z) {
        return z == J0() ? this : new nr0(this.c, I0(), z, H0());
    }

    @Override
    public nr0 S0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        mcb mcbVarA = this.c.a(cVar);
        y45.i(mcbVarA, "typeProjection.refine(kotlinTypeRefiner)");
        return new nr0(mcbVarA, I0(), J0(), H0());
    }

    @Override
    public MemberScope p() {
        return id3.a(ErrorScopeKind.CAPTURED_TYPE_SCOPE, true, new String[0]);
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Captured(");
        sb.append(this.c);
        sb.append(')');
        sb.append(J0() ? "?" : "");
        return sb.toString();
    }

    public nr0(mcb mcbVar, or0 or0Var, boolean z, j jVar) {
        y45.j(mcbVar, "typeProjection");
        y45.j(or0Var, "constructor");
        y45.j(jVar, "attributes");
        this.c = mcbVar;
        this.d = or0Var;
        this.e = z;
        this.f = jVar;
    }
}
