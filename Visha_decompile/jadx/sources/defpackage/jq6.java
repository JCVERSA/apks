package defpackage;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.l;

public abstract class jq6 implements qw0 {
    public static final a b = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberScope a(qw0 qw0Var, l lVar, c cVar) {
            MemberScope memberScopeQ;
            y45.j(qw0Var, "<this>");
            y45.j(lVar, "typeSubstitution");
            y45.j(cVar, "kotlinTypeRefiner");
            jq6 jq6Var = qw0Var instanceof jq6 ? (jq6) qw0Var : null;
            if (jq6Var != null && (memberScopeQ = jq6Var.Q(lVar, cVar)) != null) {
                return memberScopeQ;
            }
            MemberScope memberScopeT0 = qw0Var.t0(lVar);
            y45.i(memberScopeT0, "this.getMemberScope(\n   …ubstitution\n            )");
            return memberScopeT0;
        }

        public final MemberScope b(qw0 qw0Var, c cVar) {
            MemberScope memberScopeD0;
            y45.j(qw0Var, "<this>");
            y45.j(cVar, "kotlinTypeRefiner");
            jq6 jq6Var = qw0Var instanceof jq6 ? (jq6) qw0Var : null;
            if (jq6Var != null && (memberScopeD0 = jq6Var.d0(cVar)) != null) {
                return memberScopeD0;
            }
            MemberScope memberScopeE = qw0Var.E();
            y45.i(memberScopeE, "this.unsubstitutedMemberScope");
            return memberScopeE;
        }

        public a() {
        }
    }

    public abstract MemberScope Q(l lVar, c cVar);

    public abstract MemberScope d0(c cVar);
}
