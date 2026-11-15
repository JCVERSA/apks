package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import com.google.android.gms.ads.mediation.MediationConfiguration;
import defpackage.a75;
import defpackage.b75;
import defpackage.b95;
import defpackage.bo8;
import defpackage.c74;
import defpackage.eh5;
import defpackage.gd;
import defpackage.gd3;
import defpackage.gj5;
import defpackage.gmb;
import defpackage.hcb;
import defpackage.i81;
import defpackage.id3;
import defpackage.lbb;
import defpackage.mcb;
import defpackage.md;
import defpackage.mz4;
import defpackage.n85;
import defpackage.o54;
import defpackage.o85;
import defpackage.ocb;
import defpackage.p85;
import defpackage.px0;
import defpackage.q65;
import defpackage.q85;
import defpackage.qw0;
import defpackage.s65;
import defpackage.s85;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.v85;
import defpackage.w85;
import defpackage.x71;
import defpackage.xw0;
import defpackage.y45;
import defpackage.z71;
import defpackage.z75;
import java.util.ArrayList;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.CompositeAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.a;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeParameterUpperBoundEraser;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.n;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

public final class JavaTypeResolver {
    public final gj5 a;
    public final a b;
    public final bo8 c;
    public final TypeParameterUpperBoundEraser d;

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeResolver(gj5 gj5Var, a aVar) {
        y45.j(gj5Var, "c");
        y45.j(aVar, "typeParameterResolver");
        this.a = gj5Var;
        this.b = aVar;
        bo8 bo8Var = new bo8();
        this.c = bo8Var;
        this.d = new TypeParameterUpperBoundEraser(bo8Var, null, 2, 0 == true ? 1 : 0);
    }

    public static eh5 l(JavaTypeResolver javaTypeResolver, q65 q65Var, p85 p85Var, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return javaTypeResolver.k(q65Var, p85Var, z);
    }

    public static final gd3 n(b75 b75Var) {
        return id3.d(ErrorTypeKind.UNRESOLVED_JAVA_CLASS, b75Var.y());
    }

    public final boolean b(b75 b75Var, qw0 qw0Var) {
        Variance varianceH;
        if (!w85.a((o85) i81.C0(b75Var.t()))) {
            return false;
        }
        List parameters = n85.a.b(qw0Var).m().getParameters();
        y45.i(parameters, "JavaToKotlinClassMapper.…ypeConstructor.parameters");
        hcb hcbVar = (hcb) i81.C0(parameters);
        return (hcbVar == null || (varianceH = hcbVar.h()) == null || varianceH == Variance.OUT_VARIANCE) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0024  */
    public final List c(b75 b75Var, p85 p85Var, sbb sbbVar) {
        boolean z;
        if (!b75Var.H()) {
            if (b75Var.t().isEmpty()) {
                List parameters = sbbVar.getParameters();
                y45.i(parameters, "constructor.parameters");
                z = parameters.isEmpty() ? false : true;
            }
        }
        List parameters2 = sbbVar.getParameters();
        y45.i(parameters2, "constructor.parameters");
        if (z) {
            return d(b75Var, parameters2, sbbVar, p85Var);
        }
        if (parameters2.size() != b75Var.t().size()) {
            List<hcb> list = parameters2;
            ArrayList arrayList = new ArrayList(z71.v(list, 10));
            for (hcb hcbVar : list) {
                ErrorTypeKind errorTypeKind = ErrorTypeKind.MISSED_TYPE_ARGUMENT_FOR_TYPE_PARAMETER;
                String strB = hcbVar.getName().b();
                y45.i(strB, "p.name.asString()");
                arrayList.add(new ocb(id3.d(errorTypeKind, strB)));
            }
            return i81.b1(arrayList);
        }
        Iterable<mz4> iterableJ1 = i81.j1(b75Var.t());
        ArrayList arrayList2 = new ArrayList(z71.v(iterableJ1, 10));
        for (mz4 mz4Var : iterableJ1) {
            int iA = mz4Var.a();
            o85 o85Var = (o85) mz4Var.b();
            parameters2.size();
            hcb hcbVar2 = (hcb) parameters2.get(iA);
            p85 p85VarB = q85.b(TypeUsage.COMMON, false, false, null, 7, null);
            y45.i(hcbVar2, MediationConfiguration.CUSTOM_EVENT_SERVER_PARAMETER_FIELD);
            arrayList2.add(p(o85Var, p85VarB, hcbVar2));
        }
        return i81.b1(arrayList2);
    }

    public final List d(final b75 b75Var, List list, final sbb sbbVar, final p85 p85Var) {
        List<hcb> list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        for (final hcb hcbVar : list2) {
            arrayList.add(TypeUtilsKt.l(hcbVar, null, p85Var.c()) ? n.t(hcbVar, p85Var) : this.c.a(hcbVar, p85Var.j(b75Var.H()), this.d, new LazyWrappedType(this.a.e(), new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final eh5 invoke() {
                    TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = this.this$0.d;
                    hcb hcbVar2 = hcbVar;
                    p85 p85Var2 = p85Var;
                    px0 px0VarC = sbbVar.c();
                    return typeParameterUpperBoundEraser.c(hcbVar2, p85Var2.k(px0VarC != null ? px0VarC.q() : null).j(b75Var.H()));
                }
            })));
        }
        return arrayList;
    }

    public final sm9 e(b75 b75Var, p85 p85Var, sm9 sm9Var) {
        j jVarB;
        if (sm9Var == null || (jVarB = sm9Var.H0()) == null) {
            jVarB = lbb.b(new LazyJavaAnnotations(this.a, b75Var, false, 4, null));
        }
        j jVar = jVarB;
        sbb sbbVarF = f(b75Var, p85Var);
        if (sbbVarF == null) {
            return null;
        }
        boolean zI = i(p85Var);
        return (y45.e(sm9Var != null ? sm9Var.I0() : null, sbbVarF) && !b75Var.H() && zI) ? sm9Var.M0(true) : KotlinTypeFactory.j(jVar, sbbVarF, c(b75Var, p85Var, sbbVarF), zI, null, 16, null);
    }

    public final sbb f(b75 b75Var, p85 p85Var) {
        sbb sbbVarM;
        a75 a75VarJ = b75Var.j();
        if (a75VarJ == null) {
            return g(b75Var);
        }
        if (!(a75VarJ instanceof s65)) {
            if (a75VarJ instanceof s85) {
                hcb hcbVarA = this.b.a((s85) a75VarJ);
                if (hcbVarA != null) {
                    return hcbVarA.m();
                }
                return null;
            }
            throw new IllegalStateException("Unknown classifier kind: " + a75VarJ);
        }
        s65 s65Var = (s65) a75VarJ;
        o54 o54VarD = s65Var.d();
        if (o54VarD != null) {
            qw0 qw0VarJ = j(b75Var, p85Var, o54VarD);
            if (qw0VarJ == null) {
                qw0VarJ = this.a.a().n().a(s65Var);
            }
            return (qw0VarJ == null || (sbbVarM = qw0VarJ.m()) == null) ? g(b75Var) : sbbVarM;
        }
        throw new AssertionError("Class type should have a FQ name: " + a75VarJ);
    }

    public final sbb g(b75 b75Var) {
        xw0 xw0VarM = xw0.m(new o54(b75Var.A()));
        y45.i(xw0VarM, "topLevel(FqName(javaType.classifierQualifiedName))");
        sbb sbbVarM = this.a.a().b().d().q().d(xw0VarM, x71.e(0)).m();
        y45.i(sbbVarM, "c.components.deserialize…istOf(0)).typeConstructor");
        return sbbVarM;
    }

    public final boolean h(Variance variance, hcb hcbVar) {
        return (hcbVar.h() == Variance.INVARIANT || variance == hcbVar.h()) ? false : true;
    }

    public final boolean i(p85 p85Var) {
        return (p85Var.g() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || p85Var.h() || p85Var.b() == TypeUsage.SUPERTYPE) ? false : true;
    }

    public final qw0 j(b75 b75Var, p85 p85Var, o54 o54Var) {
        if (p85Var.h() && y45.e(o54Var, v85.a)) {
            return this.a.a().p().c();
        }
        n85 n85Var = n85.a;
        qw0 qw0VarF = n85.f(n85Var, o54Var, this.a.d().o(), null, 4, null);
        if (qw0VarF == null) {
            return null;
        }
        return (n85Var.d(qw0VarF) && (p85Var.g() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || p85Var.b() == TypeUsage.SUPERTYPE || b(b75Var, qw0VarF))) ? n85Var.b(qw0VarF) : qw0VarF;
    }

    public final eh5 k(q65 q65Var, p85 p85Var, boolean z) {
        y45.j(q65Var, "arrayType");
        y45.j(p85Var, "attr");
        o85 o85VarH = q65Var.h();
        z75 z75Var = o85VarH instanceof z75 ? (z75) o85VarH : null;
        PrimitiveType type = z75Var != null ? z75Var.getType() : null;
        LazyJavaAnnotations lazyJavaAnnotations = new LazyJavaAnnotations(this.a, q65Var, true);
        if (type != null) {
            sm9 sm9VarO = this.a.d().o().O(type);
            y45.i(sm9VarO, "it");
            eh5 eh5VarX = TypeUtilsKt.x(sm9VarO, new CompositeAnnotations(sm9VarO.getAnnotations(), lazyJavaAnnotations));
            y45.h(eh5VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
            sm9 sm9Var = (sm9) eh5VarX;
            return p85Var.h() ? sm9Var : KotlinTypeFactory.d(sm9Var, sm9Var.M0(true));
        }
        eh5 eh5VarO = o(o85VarH, q85.b(TypeUsage.COMMON, p85Var.h(), false, null, 6, null));
        if (p85Var.h()) {
            sm9 sm9VarM = this.a.d().o().m(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, eh5VarO, lazyJavaAnnotations);
            y45.i(sm9VarM, "c.module.builtIns.getArr…mponentType, annotations)");
            return sm9VarM;
        }
        sm9 sm9VarM2 = this.a.d().o().m(Variance.INVARIANT, eh5VarO, lazyJavaAnnotations);
        y45.i(sm9VarM2, "c.module.builtIns.getArr…mponentType, annotations)");
        return KotlinTypeFactory.d(sm9VarM2, this.a.d().o().m(Variance.OUT_VARIANCE, eh5VarO, lazyJavaAnnotations).M0(true));
    }

    public final eh5 m(b75 b75Var, p85 p85Var) {
        sm9 sm9VarE;
        boolean z = (p85Var.h() || p85Var.b() == TypeUsage.SUPERTYPE) ? false : true;
        boolean zH = b75Var.H();
        if (!zH && !z) {
            sm9 sm9VarE2 = e(b75Var, p85Var, null);
            return sm9VarE2 != null ? sm9VarE2 : n(b75Var);
        }
        sm9 sm9VarE3 = e(b75Var, p85Var.l(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (sm9VarE3 != null && (sm9VarE = e(b75Var, p85Var.l(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), sm9VarE3)) != null) {
            return zH ? new RawTypeImpl(sm9VarE3, sm9VarE) : KotlinTypeFactory.d(sm9VarE3, sm9VarE);
        }
        return n(b75Var);
    }

    public final eh5 o(o85 o85Var, p85 p85Var) {
        eh5 eh5VarO;
        y45.j(p85Var, "attr");
        if (o85Var instanceof z75) {
            PrimitiveType type = ((z75) o85Var).getType();
            sm9 sm9VarR = type != null ? this.a.d().o().R(type) : this.a.d().o().Z();
            y45.i(sm9VarR, "{\n                val pr…ns.unitType\n            }");
            return sm9VarR;
        }
        if (o85Var instanceof b75) {
            return m((b75) o85Var, p85Var);
        }
        if (o85Var instanceof q65) {
            return l(this, (q65) o85Var, p85Var, false, 4, null);
        }
        if (o85Var instanceof b95) {
            o85 o85VarS = ((b95) o85Var).s();
            if (o85VarS != null && (eh5VarO = o(o85VarS, p85Var)) != null) {
                return eh5VarO;
            }
            sm9 sm9VarY = this.a.d().o().y();
            y45.i(sm9VarY, "c.module.builtIns.defaultBound");
            return sm9VarY;
        }
        if (o85Var == null) {
            sm9 sm9VarY2 = this.a.d().o().y();
            y45.i(sm9VarY2, "c.module.builtIns.defaultBound");
            return sm9VarY2;
        }
        throw new UnsupportedOperationException("Unsupported type: " + o85Var);
    }

    public final mcb p(o85 o85Var, p85 p85Var, hcb hcbVar) {
        mcb mcbVarT;
        if (!(o85Var instanceof b95)) {
            return new ocb(Variance.INVARIANT, o(o85Var, p85Var));
        }
        b95 b95Var = (b95) o85Var;
        o85 o85VarS = b95Var.s();
        Variance variance = b95Var.M() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
        if (o85VarS == null || h(variance, hcbVar)) {
            mcbVarT = n.t(hcbVar, p85Var);
        } else {
            gd gdVarA = gmb.a(this.a, b95Var);
            eh5 eh5VarO = o(o85VarS, q85.b(TypeUsage.COMMON, false, false, null, 7, null));
            if (gdVarA != null) {
                eh5VarO = TypeUtilsKt.x(eh5VarO, md.u1.a(i81.I0(eh5VarO.getAnnotations(), gdVarA)));
            }
            mcbVarT = TypeUtilsKt.f(eh5VarO, variance, hcbVar);
        }
        y45.i(mcbVarT, "{\n                val bo…          }\n            }");
        return mcbVarT;
    }
}
