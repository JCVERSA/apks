package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.abb;
import defpackage.bo8;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fh5;
import defpackage.hcb;
import defpackage.id3;
import defpackage.ky3;
import defpackage.mcb;
import defpackage.oc3;
import defpackage.ocb;
import defpackage.p85;
import defpackage.px0;
import defpackage.q85;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.x71;
import defpackage.xw0;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.l;

public final class RawSubstitution extends l {
    public static final a e = new a(null);
    public static final p85 f;
    public static final p85 g;
    public final bo8 c;
    public final TypeParameterUpperBoundEraser d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        TypeUsage typeUsage = TypeUsage.COMMON;
        f = q85.b(typeUsage, false, true, null, 5, null).l(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND);
        g = q85.b(typeUsage, false, true, null, 5, null).l(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND);
    }

    public RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser) {
        bo8 bo8Var = new bo8();
        this.c = bo8Var;
        this.d = typeParameterUpperBoundEraser == null ? new TypeParameterUpperBoundEraser(bo8Var, null, 2, null) : typeParameterUpperBoundEraser;
    }

    public static eh5 l(RawSubstitution rawSubstitution, eh5 eh5Var, p85 p85Var, int i, Object obj) {
        if ((i & 2) != 0) {
            p85Var = new p85(TypeUsage.COMMON, null, false, false, null, null, 62, null);
        }
        return rawSubstitution.k(eh5Var, p85Var);
    }

    @Override
    public boolean f() {
        return false;
    }

    public final Pair j(final sm9 sm9Var, final qw0 qw0Var, final p85 p85Var) {
        if (sm9Var.I0().getParameters().isEmpty()) {
            return abb.a(sm9Var, Boolean.FALSE);
        }
        if (d.c0(sm9Var)) {
            mcb mcbVar = (mcb) sm9Var.G0().get(0);
            Variance varianceC = mcbVar.c();
            eh5 type = mcbVar.getType();
            y45.i(type, "componentTypeProjection.type");
            return abb.a(KotlinTypeFactory.j(sm9Var.H0(), sm9Var.I0(), x71.e(new ocb(varianceC, k(type, p85Var))), sm9Var.J0(), null, 16, null), Boolean.FALSE);
        }
        if (fh5.a(sm9Var)) {
            return abb.a(id3.d(ErrorTypeKind.ERROR_RAW_TYPE, sm9Var.I0().toString()), Boolean.FALSE);
        }
        MemberScope memberScopeT0 = qw0Var.t0(this);
        y45.i(memberScopeT0, "declaration.getMemberScope(this)");
        j jVarH0 = sm9Var.H0();
        sbb sbbVarM = qw0Var.m();
        y45.i(sbbVarM, "declaration.typeConstructor");
        List parameters = qw0Var.m().getParameters();
        y45.i(parameters, "declaration.typeConstructor.parameters");
        List<hcb> list = parameters;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (hcb hcbVar : list) {
            bo8 bo8Var = this.c;
            y45.i(hcbVar, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            arrayList.add(oc3.b(bo8Var, hcbVar, p85Var, this.d, null, 8, null));
        }
        return abb.a(KotlinTypeFactory.l(jVarH0, sbbVarM, arrayList, sm9Var.J0(), memberScopeT0, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final sm9 invoke(c cVar) {
                xw0 xw0VarK;
                qw0 qw0VarB;
                y45.j(cVar, "kotlinTypeRefiner");
                qw0 qw0Var2 = qw0Var;
                if (qw0Var2 == null) {
                    qw0Var2 = null;
                }
                if (qw0Var2 == null || (xw0VarK = DescriptorUtilsKt.k(qw0Var2)) == null || (qw0VarB = cVar.b(xw0VarK)) == null || y45.e(qw0VarB, qw0Var)) {
                    return null;
                }
                return (sm9) this.j(sm9Var, qw0VarB, p85Var).getFirst();
            }
        }), Boolean.TRUE);
    }

    public final eh5 k(eh5 eh5Var, p85 p85Var) {
        px0 px0VarC = eh5Var.I0().c();
        if (px0VarC instanceof hcb) {
            return k(this.d.c((hcb) px0VarC, p85Var.j(true)), p85Var);
        }
        if (!(px0VarC instanceof qw0)) {
            throw new IllegalStateException(("Unexpected declaration kind: " + px0VarC).toString());
        }
        px0 px0VarC2 = ky3.d(eh5Var).I0().c();
        if (px0VarC2 instanceof qw0) {
            Pair pairJ = j(ky3.c(eh5Var), (qw0) px0VarC, f);
            sm9 sm9Var = (sm9) pairJ.component1();
            boolean zBooleanValue = ((Boolean) pairJ.component2()).booleanValue();
            Pair pairJ2 = j(ky3.d(eh5Var), (qw0) px0VarC2, g);
            sm9 sm9Var2 = (sm9) pairJ2.component1();
            return (zBooleanValue || ((Boolean) pairJ2.component2()).booleanValue()) ? new RawTypeImpl(sm9Var, sm9Var2) : KotlinTypeFactory.d(sm9Var, sm9Var2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + px0VarC2 + "\" while for lower it's \"" + px0VarC + '\"').toString());
    }

    @Override
    public ocb e(eh5 eh5Var) {
        y45.j(eh5Var, "key");
        return new ocb(l(this, eh5Var, null, 2, null));
    }

    public RawSubstitution(TypeParameterUpperBoundEraser typeParameterUpperBoundEraser, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : typeParameterUpperBoundEraser);
    }
}
