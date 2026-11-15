package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.by6;
import defpackage.c74;
import defpackage.e74;
import defpackage.h2a;
import defpackage.or5;
import defpackage.px0;
import defpackage.u82;
import defpackage.v71;
import defpackage.xt1;
import defpackage.y45;
import defpackage.yi5;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.resolve.calls.inference.CapturedTypeConstructorKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.l;

public final class SubstitutingScope implements MemberScope {
    public final MemberScope b;
    public final yi5 c;
    public final TypeSubstitutor d;
    public Map e;
    public final yi5 f;

    public SubstitutingScope(MemberScope memberScope, final TypeSubstitutor typeSubstitutor) {
        y45.j(memberScope, "workerScope");
        y45.j(typeSubstitutor, "givenSubstitutor");
        this.b = memberScope;
        this.c = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final TypeSubstitutor invoke() {
                return typeSubstitutor.j().c();
            }
        });
        l lVarJ = typeSubstitutor.j();
        y45.i(lVarJ, "givenSubstitutor.substitution");
        this.d = CapturedTypeConstructorKt.f(lVarJ, false, 1, null).c();
        this.f = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final Collection<xt1> invoke() {
                SubstitutingScope substitutingScope = this.this$0;
                return substitutingScope.l(c.a.a(substitutingScope.b, null, null, 3, null));
            }
        });
    }

    @Override
    public Set a() {
        return this.b.a();
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return l(this.b.b(by6Var, or5Var));
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return l(this.b.c(by6Var, or5Var));
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
        if (px0VarF != null) {
            return (px0) k(px0VarF);
        }
        return null;
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        return j();
    }

    public final Collection j() {
        return (Collection) this.f.getValue();
    }

    public final xt1 k(xt1 xt1Var) {
        if (this.d.k()) {
            return xt1Var;
        }
        if (this.e == null) {
            this.e = new HashMap();
        }
        Map map = this.e;
        y45.g(map);
        Object objC = map.get(xt1Var);
        if (objC == null) {
            if (!(xt1Var instanceof h2a)) {
                throw new IllegalStateException(("Unknown descriptor in scope: " + xt1Var).toString());
            }
            objC = ((h2a) xt1Var).c(this.d);
            if (objC == null) {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + xt1Var + " substitution fails");
            }
            map.put(xt1Var, objC);
        }
        xt1 xt1Var2 = (xt1) objC;
        y45.h(xt1Var2, "null cannot be cast to non-null type D of org.jetbrains.kotlin.resolve.scopes.SubstitutingScope.substitute");
        return xt1Var2;
    }

    public final Collection l(Collection collection) {
        if (this.d.k() || collection.isEmpty()) {
            return collection;
        }
        LinkedHashSet linkedHashSetG = v71.g(collection.size());
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSetG.add(k((xt1) it.next()));
        }
        return linkedHashSetG;
    }
}
