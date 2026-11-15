package defpackage;

import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.l;

public abstract class kq6 {
    public static final MemberScope a(qw0 qw0Var, l lVar, c cVar) {
        y45.j(qw0Var, "<this>");
        y45.j(lVar, "typeSubstitution");
        y45.j(cVar, "kotlinTypeRefiner");
        return jq6.b.a(qw0Var, lVar, cVar);
    }

    public static final MemberScope b(qw0 qw0Var, c cVar) {
        y45.j(qw0Var, "<this>");
        y45.j(cVar, "kotlinTypeRefiner");
        return jq6.b.b(qw0Var, cVar);
    }
}
