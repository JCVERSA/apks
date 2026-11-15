package defpackage;

import java.util.Collection;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public abstract class v3 implements MemberScope {
    @Override
    public Set a() {
        return i().a();
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return i().b(by6Var, or5Var);
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return i().c(by6Var, or5Var);
    }

    @Override
    public Set d() {
        return i().d();
    }

    @Override
    public Set e() {
        return i().e();
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return i().f(by6Var, or5Var);
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        return i().g(u82Var, e74Var);
    }

    public final MemberScope h() {
        if (!(i() instanceof v3)) {
            return i();
        }
        MemberScope memberScopeI = i();
        y45.h(memberScopeI, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter");
        return ((v3) memberScopeI).h();
    }

    public abstract MemberScope i();
}
