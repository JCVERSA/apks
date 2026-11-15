package kotlin.reflect.jvm.internal.impl.types;

import defpackage.ebb;
import defpackage.eh5;
import defpackage.fh5;
import defpackage.gd;
import defpackage.hcb;
import defpackage.id3;
import defpackage.mcb;
import defpackage.md;
import defpackage.mgb;
import defpackage.ocb;
import defpackage.px0;
import defpackage.sbb;
import defpackage.scb;
import defpackage.sm9;
import defpackage.tu9;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class g {
    public static final a c = new a(null);
    public static final g d = new g(i.a.a, false);
    public final i a;
    public final boolean b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void b(int i, ebb ebbVar) {
            if (i <= 100) {
                return;
            }
            throw new AssertionError("Too deep recursion while expanding type alias " + ebbVar.getName());
        }

        public a() {
        }
    }

    public g(i iVar, boolean z) {
        y45.j(iVar, "reportStrategy");
        this.a = iVar;
        this.b = z;
    }

    public final void a(md mdVar, md mdVar2) {
        HashSet hashSet = new HashSet();
        Iterator it = mdVar.iterator();
        while (it.hasNext()) {
            hashSet.add(((gd) it.next()).d());
        }
        Iterator it2 = mdVar2.iterator();
        while (it2.hasNext()) {
            gd gdVar = (gd) it2.next();
            if (hashSet.contains(gdVar.d())) {
                this.a.b(gdVar);
            }
        }
    }

    public final void b(eh5 eh5Var, eh5 eh5Var2) {
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(eh5Var2);
        y45.i(typeSubstitutorF, "create(substitutedType)");
        int i = 0;
        for (Object obj : eh5Var2.G0()) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            mcb mcbVar = (mcb) obj;
            if (!mcbVar.b()) {
                eh5 type = mcbVar.getType();
                y45.i(type, "substitutedArgument.type");
                if (!TypeUtilsKt.d(type)) {
                    mcb mcbVar2 = (mcb) eh5Var.G0().get(i);
                    hcb hcbVar = (hcb) eh5Var.I0().getParameters().get(i);
                    if (this.b) {
                        i iVar = this.a;
                        eh5 type2 = mcbVar2.getType();
                        y45.i(type2, "unsubstitutedArgument.type");
                        eh5 type3 = mcbVar.getType();
                        y45.i(type3, "substitutedArgument.type");
                        y45.i(hcbVar, "typeParameter");
                        iVar.c(typeSubstitutorF, type2, type3, hcbVar);
                    }
                }
            }
            i = i2;
        }
    }

    public final sm9 c(sm9 sm9Var, j jVar) {
        return fh5.a(sm9Var) ? sm9Var : scb.f(sm9Var, null, g(sm9Var, jVar), 1, null);
    }

    public final sm9 d(sm9 sm9Var, eh5 eh5Var) {
        sm9 sm9VarR = n.r(sm9Var, eh5Var.J0());
        y45.i(sm9VarR, "makeNullableIfNeeded(thi…romType.isMarkedNullable)");
        return sm9VarR;
    }

    public final sm9 e(sm9 sm9Var, eh5 eh5Var) {
        return c(d(sm9Var, eh5Var), eh5Var.H0());
    }

    public final sm9 f(h hVar, j jVar, boolean z) {
        sbb sbbVarM = hVar.b().m();
        y45.i(sbbVarM, "descriptor.typeConstructor");
        return KotlinTypeFactory.k(jVar, sbbVarM, hVar.a(), z, MemberScope.a.b);
    }

    public final j g(eh5 eh5Var, j jVar) {
        return fh5.a(eh5Var) ? eh5Var.H0() : jVar.l(eh5Var.H0());
    }

    public final sm9 h(h hVar, j jVar) {
        y45.j(hVar, "typeAliasExpansion");
        y45.j(jVar, "attributes");
        return j(hVar, jVar, false, 0, true);
    }

    public final mcb i(mcb mcbVar, h hVar, int i) {
        ocb ocbVar;
        mgb mgbVarL0 = mcbVar.getType().L0();
        if (e.a(mgbVarL0)) {
            return mcbVar;
        }
        sm9 sm9VarA = scb.a(mgbVarL0);
        if (fh5.a(sm9VarA) || !TypeUtilsKt.z(sm9VarA)) {
            return mcbVar;
        }
        sbb sbbVarI0 = sm9VarA.I0();
        px0 px0VarC = sbbVarI0.c();
        sbbVarI0.getParameters().size();
        sm9VarA.G0().size();
        if (px0VarC instanceof hcb) {
            return mcbVar;
        }
        if (px0VarC instanceof ebb) {
            ebb ebbVar = (ebb) px0VarC;
            if (hVar.d(ebbVar)) {
                this.a.d(ebbVar);
                Variance variance = Variance.INVARIANT;
                ErrorTypeKind errorTypeKind = ErrorTypeKind.RECURSIVE_TYPE_ALIAS;
                String string = ebbVar.getName().toString();
                y45.i(string, "typeDescriptor.name.toString()");
                return new ocb(variance, id3.d(errorTypeKind, string));
            }
            List listG0 = sm9VarA.G0();
            ArrayList arrayList = new ArrayList(z71.v(listG0, 10));
            int i2 = 0;
            for (Object obj : listG0) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    y71.u();
                }
                arrayList.add(k((mcb) obj, hVar, (hcb) sbbVarI0.getParameters().get(i2), i + 1));
                i2 = i3;
            }
            sm9 sm9VarJ = j(h.e.a(hVar, ebbVar, arrayList), sm9VarA.H0(), sm9VarA.J0(), i + 1, false);
            sm9 sm9VarL = l(sm9VarA, hVar, i);
            if (!e.a(sm9VarJ)) {
                sm9VarJ = tu9.j(sm9VarJ, sm9VarL);
            }
            ocbVar = new ocb(mcbVar.c(), sm9VarJ);
        } else {
            sm9 sm9VarL2 = l(sm9VarA, hVar, i);
            b(sm9VarA, sm9VarL2);
            ocbVar = new ocb(mcbVar.c(), sm9VarL2);
        }
        return ocbVar;
    }

    public final sm9 j(h hVar, j jVar, boolean z, int i, boolean z2) {
        mcb mcbVarK = k(new ocb(Variance.INVARIANT, hVar.b().w0()), hVar, null, i);
        eh5 type = mcbVarK.getType();
        y45.i(type, "expandedProjection.type");
        sm9 sm9VarA = scb.a(type);
        if (fh5.a(sm9VarA)) {
            return sm9VarA;
        }
        mcbVarK.c();
        a(sm9VarA.getAnnotations(), b.a(jVar));
        sm9 sm9VarR = n.r(c(sm9VarA, jVar), z);
        y45.i(sm9VarR, "expandedType.combineAttr…fNeeded(it, isNullable) }");
        return z2 ? tu9.j(sm9VarR, f(hVar, jVar, z)) : sm9VarR;
    }

    public final mcb k(mcb mcbVar, h hVar, hcb hcbVar, int i) {
        Variance varianceH;
        Variance variance;
        Variance variance2;
        c.b(i, hVar.b());
        if (mcbVar.b()) {
            y45.g(hcbVar);
            mcb mcbVarS = n.s(hcbVar);
            y45.i(mcbVarS, "makeStarProjection(typeParameterDescriptor!!)");
            return mcbVarS;
        }
        eh5 type = mcbVar.getType();
        y45.i(type, "underlyingProjection.type");
        mcb mcbVarC = hVar.c(type.I0());
        if (mcbVarC == null) {
            return i(mcbVar, hVar, i);
        }
        if (mcbVarC.b()) {
            y45.g(hcbVar);
            mcb mcbVarS2 = n.s(hcbVar);
            y45.i(mcbVarS2, "makeStarProjection(typeParameterDescriptor!!)");
            return mcbVarS2;
        }
        mgb mgbVarL0 = mcbVarC.getType().L0();
        Variance varianceC = mcbVarC.c();
        y45.i(varianceC, "argument.projectionKind");
        Variance varianceC2 = mcbVar.c();
        y45.i(varianceC2, "underlyingProjection.projectionKind");
        if (varianceC2 != varianceC && varianceC2 != (variance2 = Variance.INVARIANT)) {
            if (varianceC == variance2) {
                varianceC = varianceC2;
            } else {
                this.a.a(hVar.b(), hcbVar, mgbVarL0);
            }
        }
        if (hcbVar == null || (varianceH = hcbVar.h()) == null) {
            varianceH = Variance.INVARIANT;
        }
        y45.i(varianceH, "typeParameterDescriptor?…nce ?: Variance.INVARIANT");
        if (varianceH != varianceC && varianceH != (variance = Variance.INVARIANT)) {
            if (varianceC == variance) {
                varianceC = variance;
            } else {
                this.a.a(hVar.b(), hcbVar, mgbVarL0);
            }
        }
        a(type.getAnnotations(), mgbVarL0.getAnnotations());
        return new ocb(varianceC, e(scb.a(mgbVarL0), type));
    }

    public final sm9 l(sm9 sm9Var, h hVar, int i) {
        sbb sbbVarI0 = sm9Var.I0();
        List listG0 = sm9Var.G0();
        ArrayList arrayList = new ArrayList(z71.v(listG0, 10));
        int i2 = 0;
        for (Object obj : listG0) {
            int i3 = i2 + 1;
            if (i2 < 0) {
                y71.u();
            }
            mcb mcbVar = (mcb) obj;
            mcb mcbVarK = k(mcbVar, hVar, (hcb) sbbVarI0.getParameters().get(i2), i + 1);
            if (!mcbVarK.b()) {
                mcbVarK = new ocb(mcbVarK.c(), n.q(mcbVarK.getType(), mcbVar.getType().J0()));
            }
            arrayList.add(mcbVarK);
            i2 = i3;
        }
        return scb.f(sm9Var, arrayList, null, 2, null);
    }
}
