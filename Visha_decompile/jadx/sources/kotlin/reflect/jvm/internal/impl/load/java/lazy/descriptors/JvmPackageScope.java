package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.d81;
import defpackage.e74;
import defpackage.fmb;
import defpackage.gj5;
import defpackage.hi;
import defpackage.or5;
import defpackage.px0;
import defpackage.qw0;
import defpackage.qx0;
import defpackage.u82;
import defpackage.ux9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.y29;
import defpackage.y45;
import defpackage.y75;
import defpackage.ye9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.load.kotlin.c;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public final class JvmPackageScope implements MemberScope {
    public static final af5[] f = {xq8.j(new PropertyReference1Impl(xq8.b(JvmPackageScope.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
    public final gj5 b;
    public final LazyJavaPackageFragment c;
    public final LazyJavaPackageScope d;
    public final x17 e;

    public JvmPackageScope(gj5 gj5Var, y75 y75Var, LazyJavaPackageFragment lazyJavaPackageFragment) {
        y45.j(gj5Var, "c");
        y45.j(y75Var, "jPackage");
        y45.j(lazyJavaPackageFragment, "packageFragment");
        this.b = gj5Var;
        this.c = lazyJavaPackageFragment;
        this.d = new LazyJavaPackageScope(gj5Var, y75Var, lazyJavaPackageFragment);
        this.e = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final MemberScope[] invoke() {
                Collection collectionValues = this.this$0.c.I0().values();
                JvmPackageScope jvmPackageScope = this.this$0;
                ArrayList arrayList = new ArrayList();
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    MemberScope memberScopeB = jvmPackageScope.b.a().b().b(jvmPackageScope.c, (c) it.next());
                    if (memberScopeB != null) {
                        arrayList.add(memberScopeB);
                    }
                }
                return (MemberScope[]) y29.b(arrayList).toArray(new MemberScope[0]);
            }
        });
    }

    @Override
    public Set a() {
        MemberScope[] memberScopeArrK = k();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArrK) {
            d81.C(linkedHashSet, memberScope.a());
        }
        linkedHashSet.addAll(this.d.a());
        return linkedHashSet;
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        l(by6Var, or5Var);
        LazyJavaPackageScope lazyJavaPackageScope = this.d;
        MemberScope[] memberScopeArrK = k();
        Collection collectionB = lazyJavaPackageScope.b(by6Var, or5Var);
        for (MemberScope memberScope : memberScopeArrK) {
            collectionB = y29.a(collectionB, memberScope.b(by6Var, or5Var));
        }
        return collectionB == null ? ye9.f() : collectionB;
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        l(by6Var, or5Var);
        LazyJavaPackageScope lazyJavaPackageScope = this.d;
        MemberScope[] memberScopeArrK = k();
        Collection collectionC = lazyJavaPackageScope.c(by6Var, or5Var);
        for (MemberScope memberScope : memberScopeArrK) {
            collectionC = y29.a(collectionC, memberScope.c(by6Var, or5Var));
        }
        return collectionC == null ? ye9.f() : collectionC;
    }

    @Override
    public Set d() {
        MemberScope[] memberScopeArrK = k();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (MemberScope memberScope : memberScopeArrK) {
            d81.C(linkedHashSet, memberScope.d());
        }
        linkedHashSet.addAll(this.d.d());
        return linkedHashSet;
    }

    @Override
    public Set e() {
        Set setA = kotlin.reflect.jvm.internal.impl.resolve.scopes.b.a(hi.J(k()));
        if (setA == null) {
            return null;
        }
        setA.addAll(this.d.e());
        return setA;
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        l(by6Var, or5Var);
        qw0 qw0VarQ = this.d.f(by6Var, or5Var);
        if (qw0VarQ != null) {
            return qw0VarQ;
        }
        px0 px0Var = null;
        for (MemberScope memberScope : k()) {
            px0 px0VarF = memberScope.f(by6Var, or5Var);
            if (px0VarF != null) {
                if (!(px0VarF instanceof qx0) || !((qx0) px0VarF).m0()) {
                    return px0VarF;
                }
                if (px0Var == null) {
                    px0Var = px0VarF;
                }
            }
        }
        return px0Var;
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        LazyJavaPackageScope lazyJavaPackageScope = this.d;
        MemberScope[] memberScopeArrK = k();
        Collection collectionG = lazyJavaPackageScope.g(u82Var, e74Var);
        for (MemberScope memberScope : memberScopeArrK) {
            collectionG = y29.a(collectionG, memberScope.g(u82Var, e74Var));
        }
        return collectionG == null ? ye9.f() : collectionG;
    }

    public final LazyJavaPackageScope j() {
        return this.d;
    }

    public final MemberScope[] k() {
        return (MemberScope[]) ux9.a(this.e, this, f[0]);
    }

    public void l(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        fmb.b(this.b.a().l(), or5Var, this.c, by6Var);
    }

    public String toString() {
        return "scope for " + this.c;
    }
}
