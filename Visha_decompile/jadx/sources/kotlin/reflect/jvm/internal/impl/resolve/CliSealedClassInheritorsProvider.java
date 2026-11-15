package kotlin.reflect.jvm.internal.impl.resolve;

import defpackage.by6;
import defpackage.dv7;
import defpackage.ebb;
import defpackage.i81;
import defpackage.k39;
import defpackage.px0;
import defpackage.qw0;
import defpackage.u82;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import kotlin.comparisons.a;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.c;

public final class CliSealedClassInheritorsProvider extends k39 {
    public static final CliSealedClassInheritorsProvider a = new CliSealedClassInheritorsProvider();

    public static final void b(qw0 qw0Var, LinkedHashSet linkedHashSet, MemberScope memberScope, boolean z) {
        for (xt1 xt1Var : c.a.a(memberScope, u82.t, null, 2, null)) {
            if (xt1Var instanceof qw0) {
                qw0 qw0VarK = (qw0) xt1Var;
                if (qw0VarK.m0()) {
                    by6 name = qw0VarK.getName();
                    y45.i(name, "descriptor.name");
                    px0 px0VarF = memberScope.f(name, NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS);
                    qw0VarK = px0VarF instanceof qw0 ? (qw0) px0VarF : px0VarF instanceof ebb ? ((ebb) px0VarF).k() : null;
                }
                if (qw0VarK != null) {
                    if (y82.z(qw0VarK, qw0Var)) {
                        linkedHashSet.add(qw0VarK);
                    }
                    if (z) {
                        MemberScope memberScopeD = qw0VarK.D();
                        y45.i(memberScopeD, "refinedDescriptor.unsubstitutedInnerClassesScope");
                        b(qw0Var, linkedHashSet, memberScopeD, z);
                    }
                }
            }
        }
    }

    public Collection a(qw0 qw0Var, boolean z) {
        Object next;
        xt1 xt1VarB;
        y45.j(qw0Var, "sealedClass");
        if (qw0Var.j() != Modality.SEALED) {
            return y71.k();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (z) {
            Iterator it = DescriptorUtilsKt.q(qw0Var).iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!(((xt1) next) instanceof dv7));
            xt1VarB = (xt1) next;
        } else {
            xt1VarB = qw0Var.b();
        }
        if (xt1VarB instanceof dv7) {
            b(qw0Var, linkedHashSet, ((dv7) xt1VarB).p(), z);
        }
        MemberScope memberScopeD = qw0Var.D();
        y45.i(memberScopeD, "sealedClass.unsubstitutedInnerClassesScope");
        b(qw0Var, linkedHashSet, memberScopeD, true);
        return i81.T0(linkedHashSet, new Comparator() {
            @Override
            public final int compare(T t, T t2) {
                return a.d(DescriptorUtilsKt.l((qw0) t).b(), DescriptorUtilsKt.l((qw0) t2).b());
            }
        });
    }
}
