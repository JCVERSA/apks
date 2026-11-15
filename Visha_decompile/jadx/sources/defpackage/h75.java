package defpackage;

import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaPackageFragmentProvider;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageFragment;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;

public final class h75 {
    public final LazyJavaPackageFragmentProvider a;
    public final d85 b;

    public h75(LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider, d85 d85Var) {
        y45.j(lazyJavaPackageFragmentProvider, "packageFragmentProvider");
        y45.j(d85Var, "javaResolverCache");
        this.a = lazyJavaPackageFragmentProvider;
        this.b = d85Var;
    }

    public final LazyJavaPackageFragmentProvider a() {
        return this.a;
    }

    public final qw0 b(s65 s65Var) {
        y45.j(s65Var, "javaClass");
        o54 o54VarD = s65Var.d();
        if (o54VarD != null && s65Var.B() == LightClassOriginKind.SOURCE) {
            return this.b.a(o54VarD);
        }
        s65 s65VarM = s65Var.m();
        if (s65VarM != null) {
            qw0 qw0VarB = b(s65VarM);
            MemberScope memberScopeD = qw0VarB != null ? qw0VarB.D() : null;
            px0 px0VarF = memberScopeD != null ? memberScopeD.f(s65Var.getName(), NoLookupLocation.FROM_JAVA_LOADER) : null;
            if (px0VarF instanceof qw0) {
                return (qw0) px0VarF;
            }
            return null;
        }
        if (o54VarD == null) {
            return null;
        }
        LazyJavaPackageFragmentProvider lazyJavaPackageFragmentProvider = this.a;
        o54 o54VarE = o54VarD.e();
        y45.i(o54VarE, "fqName.parent()");
        LazyJavaPackageFragment lazyJavaPackageFragment = (LazyJavaPackageFragment) i81.q0(lazyJavaPackageFragmentProvider.c(o54VarE));
        if (lazyJavaPackageFragment != null) {
            return lazyJavaPackageFragment.H0(s65Var);
        }
        return null;
    }
}
