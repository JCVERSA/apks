package kotlin.reflect.jvm.internal.impl.resolve;

import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.bn6;
import defpackage.dv7;
import defpackage.hcb;
import defpackage.i81;
import defpackage.px0;
import defpackage.qw0;
import defpackage.r82;
import defpackage.s74;
import defpackage.sbb;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y82;
import defpackage.yt9;
import java.util.Collection;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.a;
import kotlin.reflect.jvm.internal.impl.types.checker.c;

public final class DescriptorEquivalenceForOverrides {
    public static final DescriptorEquivalenceForOverrides a = new DescriptorEquivalenceForOverrides();

    public static boolean c(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, a aVar, a aVar2, boolean z, boolean z2, boolean z3, c cVar, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        boolean z4 = z2;
        if ((i & 16) != 0) {
            z3 = false;
        }
        return descriptorEquivalenceForOverrides.b(aVar, aVar2, z, z4, z3, cVar);
    }

    public static final boolean d(boolean z, final a aVar, final a aVar2, sbb sbbVar, sbb sbbVar2) {
        y45.j(aVar, "$a");
        y45.j(aVar2, "$b");
        y45.j(sbbVar, "c1");
        y45.j(sbbVar2, "c2");
        if (y45.e(sbbVar, sbbVar2)) {
            return true;
        }
        px0 px0VarC = sbbVar.c();
        px0 px0VarC2 = sbbVar2.c();
        if ((px0VarC instanceof hcb) && (px0VarC2 instanceof hcb)) {
            return a.i((hcb) px0VarC, (hcb) px0VarC2, z, new s74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override
                public final Boolean invoke(xt1 xt1Var, xt1 xt1Var2) {
                    return Boolean.valueOf(y45.e(xt1Var, aVar) && y45.e(xt1Var2, aVar2));
                }
            });
        }
        return false;
    }

    public static boolean g(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, xt1 xt1Var, xt1 xt1Var2, boolean z, boolean z2, int i, Object obj) {
        if ((i & 8) != 0) {
            z2 = true;
        }
        return descriptorEquivalenceForOverrides.f(xt1Var, xt1Var2, z, z2);
    }

    public static boolean j(DescriptorEquivalenceForOverrides descriptorEquivalenceForOverrides, hcb hcbVar, hcb hcbVar2, boolean z, s74 s74Var, int i, Object obj) {
        if ((i & 8) != 0) {
            s74Var = new s74() {
                @Override
                public final Boolean invoke(xt1 xt1Var, xt1 xt1Var2) {
                    return Boolean.FALSE;
                }
            };
        }
        return descriptorEquivalenceForOverrides.i(hcbVar, hcbVar2, z, s74Var);
    }

    public final boolean b(a aVar, a aVar2, boolean z, boolean z2, boolean z3, c cVar) {
        y45.j(aVar, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(aVar2, "b");
        y45.j(cVar, "kotlinTypeRefiner");
        if (y45.e(aVar, aVar2)) {
            return true;
        }
        if (!y45.e(aVar.getName(), aVar2.getName())) {
            return false;
        }
        if (z2 && (aVar instanceof bn6) && (aVar2 instanceof bn6) && ((bn6) aVar).m0() != ((bn6) aVar2).m0()) {
            return false;
        }
        if ((y45.e(aVar.b(), aVar2.b()) && (!z || !y45.e(l(aVar), l(aVar2)))) || y82.E(aVar) || y82.E(aVar2) || !k(aVar, aVar2, new s74() {
            @Override
            public final Boolean invoke(xt1 xt1Var, xt1 xt1Var2) {
                return Boolean.FALSE;
            }
        }, z)) {
            return false;
        }
        OverridingUtil overridingUtilI = OverridingUtil.i(cVar, new r82(z, aVar, aVar2));
        y45.i(overridingUtilI, "create(kotlinTypeRefiner…= a && y == b }\n        }");
        OverridingUtil.OverrideCompatibilityInfo.Result resultC = overridingUtilI.E(aVar, aVar2, null, !z3).c();
        OverridingUtil.OverrideCompatibilityInfo.Result result = OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
        return resultC == result && overridingUtilI.E(aVar2, aVar, null, z3 ^ true).c() == result;
    }

    public final boolean e(qw0 qw0Var, qw0 qw0Var2) {
        return y45.e(qw0Var.m(), qw0Var2.m());
    }

    public final boolean f(xt1 xt1Var, xt1 xt1Var2, boolean z, boolean z2) {
        if ((xt1Var instanceof qw0) && (xt1Var2 instanceof qw0)) {
            return e((qw0) xt1Var, (qw0) xt1Var2);
        }
        if ((xt1Var instanceof hcb) && (xt1Var2 instanceof hcb)) {
            return j(this, (hcb) xt1Var, (hcb) xt1Var2, z, null, 8, null);
        }
        if ((xt1Var instanceof a) && (xt1Var2 instanceof a)) {
            return c(this, (a) xt1Var, (a) xt1Var2, z, z2, false, c.a.a, 16, null);
        }
        return ((xt1Var instanceof dv7) && (xt1Var2 instanceof dv7)) ? y45.e(((dv7) xt1Var).d(), ((dv7) xt1Var2).d()) : y45.e(xt1Var, xt1Var2);
    }

    public final boolean h(hcb hcbVar, hcb hcbVar2, boolean z) {
        y45.j(hcbVar, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(hcbVar2, "b");
        return j(this, hcbVar, hcbVar2, z, null, 8, null);
    }

    public final boolean i(hcb hcbVar, hcb hcbVar2, boolean z, s74 s74Var) {
        y45.j(hcbVar, CmcdData.OBJECT_TYPE_AUDIO_ONLY);
        y45.j(hcbVar2, "b");
        y45.j(s74Var, "equivalentCallables");
        if (y45.e(hcbVar, hcbVar2)) {
            return true;
        }
        return !y45.e(hcbVar.b(), hcbVar2.b()) && k(hcbVar, hcbVar2, s74Var, z) && hcbVar.getIndex() == hcbVar2.getIndex();
    }

    public final boolean k(xt1 xt1Var, xt1 xt1Var2, s74 s74Var, boolean z) {
        xt1 xt1VarB = xt1Var.b();
        xt1 xt1VarB2 = xt1Var2.b();
        return ((xt1VarB instanceof CallableMemberDescriptor) || (xt1VarB2 instanceof CallableMemberDescriptor)) ? ((Boolean) s74Var.invoke(xt1VarB, xt1VarB2)).booleanValue() : g(this, xt1VarB, xt1VarB2, z, false, 8, null);
    }

    public final yt9 l(a aVar) {
        while (aVar instanceof CallableMemberDescriptor) {
            CallableMemberDescriptor callableMemberDescriptor = (CallableMemberDescriptor) aVar;
            if (callableMemberDescriptor.getKind() != CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
                break;
            }
            Collection collectionE = callableMemberDescriptor.e();
            y45.i(collectionE, "overriddenDescriptors");
            aVar = (CallableMemberDescriptor) i81.P0(collectionE);
            if (aVar == null) {
                return null;
            }
        }
        return aVar.getSource();
    }
}
