package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.ay3;
import defpackage.c74;
import defpackage.c7a;
import defpackage.e74;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.ey6;
import defpackage.fh5;
import defpackage.fw9;
import defpackage.g72;
import defpackage.gd;
import defpackage.gj8;
import defpackage.hcb;
import defpackage.i81;
import defpackage.i92;
import defpackage.id3;
import defpackage.ij8;
import defpackage.jbb;
import defpackage.l92;
import defpackage.mcb;
import defpackage.md;
import defpackage.o54;
import defpackage.ocb;
import defpackage.px0;
import defpackage.qw0;
import defpackage.sbb;
import defpackage.sm9;
import defpackage.tu9;
import defpackage.ubb;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zc9;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedTypeParameterDescriptor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.StarProjectionImpl;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.error.ErrorTypeKind;
import kotlin.reflect.jvm.internal.impl.types.j;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class TypeDeserializer {
    public final i92 a;
    public final TypeDeserializer b;
    public final String c;
    public final String d;
    public final e74 e;
    public final e74 f;
    public final Map g;

    public TypeDeserializer(i92 i92Var, TypeDeserializer typeDeserializer, List list, String str, String str2) {
        Map linkedHashMap;
        y45.j(i92Var, "c");
        y45.j(list, "typeParameterProtos");
        y45.j(str, "debugName");
        y45.j(str2, "containerPresentableName");
        this.a = i92Var;
        this.b = typeDeserializer;
        this.c = str;
        this.d = str2;
        this.e = i92Var.h().a(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final px0 invoke(int i) {
                return this.this$0.d(i);
            }
        });
        this.f = i92Var.h().a(new e74() {
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                return invoke(((Number) obj).intValue());
            }

            public final px0 invoke(int i) {
                return this.this$0.f(i);
            }
        });
        if (list.isEmpty()) {
            linkedHashMap = kotlin.collections.a.l();
        } else {
            linkedHashMap = new LinkedHashMap();
            Iterator it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                ProtoBuf$TypeParameter protoBuf$TypeParameter = (ProtoBuf$TypeParameter) it.next();
                linkedHashMap.put(Integer.valueOf(protoBuf$TypeParameter.getId()), new DeserializedTypeParameterDescriptor(this.a, protoBuf$TypeParameter, i));
                i++;
            }
        }
        this.g = linkedHashMap;
    }

    public static final List m(ProtoBuf$Type protoBuf$Type, TypeDeserializer typeDeserializer) {
        List<ProtoBuf$Type.Argument> argumentList = protoBuf$Type.getArgumentList();
        y45.i(argumentList, "argumentList");
        List<ProtoBuf$Type.Argument> list = argumentList;
        ProtoBuf$Type protoBuf$TypeJ = ij8.j(protoBuf$Type, typeDeserializer.a.j());
        List listM = protoBuf$TypeJ != null ? m(protoBuf$TypeJ, typeDeserializer) : null;
        if (listM == null) {
            listM = y71.k();
        }
        return i81.J0(list, listM);
    }

    public static sm9 n(TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return typeDeserializer.l(protoBuf$Type, z);
    }

    public static final qw0 t(final TypeDeserializer typeDeserializer, ProtoBuf$Type protoBuf$Type, int i) {
        xw0 xw0VarA = ey6.a(typeDeserializer.a.g(), i);
        List listD0 = SequencesKt___SequencesKt.d0(SequencesKt___SequencesKt.R(zc9.p(protoBuf$Type, new e74() {
            {
                super(1);
            }

            @Override
            public final ProtoBuf$Type invoke(ProtoBuf$Type protoBuf$Type2) {
                y45.j(protoBuf$Type2, "it");
                return ij8.j(protoBuf$Type2, this.this$0.a.j());
            }
        }), new e74() {
            @Override
            public final Integer invoke(ProtoBuf$Type protoBuf$Type2) {
                y45.j(protoBuf$Type2, "it");
                return Integer.valueOf(protoBuf$Type2.getArgumentCount());
            }
        }));
        int iA = SequencesKt___SequencesKt.A(zc9.p(xw0VarA, TypeDeserializer$typeConstructor$notFoundClass$classNestingLevel$1.INSTANCE));
        while (listD0.size() < iA) {
            listD0.add(0);
        }
        return typeDeserializer.a.c().q().d(xw0VarA, listD0);
    }

    public final px0 d(int i) {
        xw0 xw0VarA = ey6.a(this.a.g(), i);
        return xw0VarA.k() ? this.a.c().b(xw0VarA) : FindClassInModuleKt.b(this.a.c().p(), xw0VarA);
    }

    public final sm9 e(int i) {
        if (ey6.a(this.a.g(), i).k()) {
            return this.a.c().n().a();
        }
        return null;
    }

    public final px0 f(int i) {
        xw0 xw0VarA = ey6.a(this.a.g(), i);
        if (xw0VarA.k()) {
            return null;
        }
        return FindClassInModuleKt.d(this.a.c().p(), xw0VarA);
    }

    public final sm9 g(eh5 eh5Var, eh5 eh5Var2) {
        kotlin.reflect.jvm.internal.impl.builtins.d dVarI = TypeUtilsKt.i(eh5Var);
        md annotations = eh5Var.getAnnotations();
        eh5 eh5VarJ = kotlin.reflect.jvm.internal.impl.builtins.c.j(eh5Var);
        List listE = kotlin.reflect.jvm.internal.impl.builtins.c.e(eh5Var);
        List listG0 = i81.g0(kotlin.reflect.jvm.internal.impl.builtins.c.l(eh5Var), 1);
        ArrayList arrayList = new ArrayList(z71.v(listG0, 10));
        Iterator it = listG0.iterator();
        while (it.hasNext()) {
            arrayList.add(((mcb) it.next()).getType());
        }
        return kotlin.reflect.jvm.internal.impl.builtins.c.b(dVarI, annotations, eh5VarJ, listE, arrayList, null, eh5Var2, true).M0(eh5Var.J0());
    }

    public final sm9 h(j jVar, sbb sbbVar, List list, boolean z) {
        sm9 sm9VarI;
        int size;
        int size2 = sbbVar.getParameters().size() - list.size();
        if (size2 != 0) {
            sm9VarI = null;
            if (size2 == 1 && (size = list.size() - 1) >= 0) {
                sbb sbbVarM = sbbVar.o().X(size).m();
                y45.i(sbbVarM, "functionTypeConstructor.…on(arity).typeConstructor");
                sm9VarI = KotlinTypeFactory.j(jVar, sbbVarM, list, z, null, 16, null);
            }
        } else {
            sm9VarI = i(jVar, sbbVar, list, z);
        }
        return sm9VarI == null ? id3.a.f(ErrorTypeKind.INCONSISTENT_SUSPEND_FUNCTION, list, sbbVar, new String[0]) : sm9VarI;
    }

    public final sm9 i(j jVar, sbb sbbVar, List list, boolean z) {
        sm9 sm9VarJ = KotlinTypeFactory.j(jVar, sbbVar, list, z, null, 16, null);
        if (kotlin.reflect.jvm.internal.impl.builtins.c.p(sm9VarJ)) {
            return p(sm9VarJ);
        }
        return null;
    }

    public final List j() {
        return i81.b1(this.g.values());
    }

    public final hcb k(int i) {
        hcb hcbVar = (hcb) this.g.get(Integer.valueOf(i));
        if (hcbVar != null) {
            return hcbVar;
        }
        TypeDeserializer typeDeserializer = this.b;
        if (typeDeserializer != null) {
            return typeDeserializer.k(i);
        }
        return null;
    }

    public final sm9 l(final ProtoBuf$Type protoBuf$Type, boolean z) {
        sm9 sm9VarJ;
        sm9 sm9VarJ2;
        y45.j(protoBuf$Type, "proto");
        sm9 sm9VarE = protoBuf$Type.hasClassName() ? e(protoBuf$Type.getClassName()) : protoBuf$Type.hasTypeAliasName() ? e(protoBuf$Type.getTypeAliasName()) : null;
        if (sm9VarE != null) {
            return sm9VarE;
        }
        sbb sbbVarS = s(protoBuf$Type);
        if (id3.m(sbbVarS.c())) {
            return id3.a.c(ErrorTypeKind.TYPE_FOR_ERROR_TYPE_CONSTRUCTOR, sbbVarS, sbbVarS.toString());
        }
        l92 l92Var = new l92(this.a.h(), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<gd> invoke() {
                return this.this$0.a.c().d().h(protoBuf$Type, this.this$0.a.g());
            }
        });
        j jVarO = o(this.a.c().v(), l92Var, sbbVarS, this.a.e());
        List listM = m(protoBuf$Type, this);
        ArrayList arrayList = new ArrayList(z71.v(listM, 10));
        int i = 0;
        for (Object obj : listM) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            List parameters = sbbVarS.getParameters();
            y45.i(parameters, "constructor.parameters");
            arrayList.add(r((hcb) i81.r0(parameters, i), (ProtoBuf$Type.Argument) obj));
            i = i2;
        }
        List listB1 = i81.b1(arrayList);
        px0 px0VarC = sbbVarS.c();
        if (z && (px0VarC instanceof ebb)) {
            sm9 sm9VarB = KotlinTypeFactory.b((ebb) px0VarC, listB1);
            sm9VarJ = sm9VarB.M0(fh5.b(sm9VarB) || protoBuf$Type.getNullable()).O0(o(this.a.c().v(), md.u1.a(i81.H0(l92Var, sm9VarB.getAnnotations())), sbbVarS, this.a.e()));
        } else {
            Boolean boolD = ay3.a.d(protoBuf$Type.getFlags());
            y45.i(boolD, "SUSPEND_TYPE.get(proto.flags)");
            if (boolD.booleanValue()) {
                sm9VarJ = h(jVarO, sbbVarS, listB1, protoBuf$Type.getNullable());
            } else {
                sm9VarJ = KotlinTypeFactory.j(jVarO, sbbVarS, listB1, protoBuf$Type.getNullable(), null, 16, null);
                Boolean boolD2 = ay3.b.d(protoBuf$Type.getFlags());
                y45.i(boolD2, "DEFINITELY_NOT_NULL_TYPE.get(proto.flags)");
                if (boolD2.booleanValue()) {
                    g72 g72VarC = g72.a.c(g72.e, sm9VarJ, true, false, 4, null);
                    if (g72VarC == null) {
                        throw new IllegalStateException(("null DefinitelyNotNullType for '" + sm9VarJ + '\'').toString());
                    }
                    sm9VarJ = g72VarC;
                }
            }
        }
        ProtoBuf$Type protoBuf$TypeA = ij8.a(protoBuf$Type, this.a.j());
        if (protoBuf$TypeA != null && (sm9VarJ2 = tu9.j(sm9VarJ, l(protoBuf$TypeA, false))) != null) {
            sm9VarJ = sm9VarJ2;
        }
        return protoBuf$Type.hasClassName() ? this.a.c().t().a(ey6.a(this.a.g(), protoBuf$Type.getClassName()), sm9VarJ) : sm9VarJ;
    }

    public final j o(List list, md mdVar, sbb sbbVar, xt1 xt1Var) {
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList.add(((jbb) it.next()).a(mdVar, sbbVar, xt1Var));
        }
        return j.c.g(z71.x(arrayList));
    }

    public final sm9 p(eh5 eh5Var) {
        eh5 type;
        mcb mcbVar = (mcb) i81.C0(kotlin.reflect.jvm.internal.impl.builtins.c.l(eh5Var));
        if (mcbVar == null || (type = mcbVar.getType()) == null) {
            return null;
        }
        px0 px0VarC = type.I0().c();
        o54 o54VarL = px0VarC != null ? DescriptorUtilsKt.l(px0VarC) : null;
        if (type.G0().size() != 1 || (!y45.e(o54VarL, e.q) && !y45.e(o54VarL, ubb.a))) {
            return (sm9) eh5Var;
        }
        eh5 type2 = ((mcb) i81.O0(type.G0())).getType();
        y45.i(type2, "continuationArgumentType.arguments.single().type");
        xt1 xt1VarE = this.a.e();
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = xt1VarE instanceof kotlin.reflect.jvm.internal.impl.descriptors.a ? (kotlin.reflect.jvm.internal.impl.descriptors.a) xt1VarE : null;
        return y45.e(aVar != null ? DescriptorUtilsKt.h(aVar) : null, c7a.a) ? g(eh5Var, type2) : g(eh5Var, type2);
    }

    public final eh5 q(ProtoBuf$Type protoBuf$Type) {
        y45.j(protoBuf$Type, "proto");
        if (!protoBuf$Type.hasFlexibleTypeCapabilitiesId()) {
            return l(protoBuf$Type, true);
        }
        String string = this.a.g().getString(protoBuf$Type.getFlexibleTypeCapabilitiesId());
        sm9 sm9VarN = n(this, protoBuf$Type, false, 2, null);
        ProtoBuf$Type protoBuf$TypeF = ij8.f(protoBuf$Type, this.a.j());
        y45.g(protoBuf$TypeF);
        return this.a.c().l().a(protoBuf$Type, string, sm9VarN, n(this, protoBuf$TypeF, false, 2, null));
    }

    public final mcb r(hcb hcbVar, ProtoBuf$Type.Argument argument) {
        if (argument.getProjection() == ProtoBuf$Type.Argument.Projection.STAR) {
            return hcbVar == null ? new fw9(this.a.c().p().o()) : new StarProjectionImpl(hcbVar);
        }
        gj8 gj8Var = gj8.a;
        ProtoBuf$Type.Argument.Projection projection = argument.getProjection();
        y45.i(projection, "typeArgumentProto.projection");
        Variance varianceC = gj8Var.c(projection);
        ProtoBuf$Type protoBuf$TypeP = ij8.p(argument, this.a.j());
        return protoBuf$TypeP == null ? new ocb(id3.d(ErrorTypeKind.NO_RECORDED_TYPE, argument.toString())) : new ocb(varianceC, q(protoBuf$TypeP));
    }

    public final sbb s(ProtoBuf$Type protoBuf$Type) {
        px0 px0VarT;
        Object next;
        if (protoBuf$Type.hasClassName()) {
            px0VarT = (px0) this.e.invoke(Integer.valueOf(protoBuf$Type.getClassName()));
            if (px0VarT == null) {
                px0VarT = t(this, protoBuf$Type, protoBuf$Type.getClassName());
            }
        } else if (protoBuf$Type.hasTypeParameter()) {
            px0VarT = k(protoBuf$Type.getTypeParameter());
            if (px0VarT == null) {
                return id3.a.e(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER, String.valueOf(protoBuf$Type.getTypeParameter()), this.d);
            }
        } else if (protoBuf$Type.hasTypeParameterName()) {
            String string = this.a.g().getString(protoBuf$Type.getTypeParameterName());
            Iterator it = j().iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!y45.e(((hcb) next).getName().b(), string));
            px0VarT = (hcb) next;
            if (px0VarT == null) {
                return id3.a.e(ErrorTypeKind.CANNOT_LOAD_DESERIALIZE_TYPE_PARAMETER_BY_NAME, string, this.a.e().toString());
            }
        } else {
            if (!protoBuf$Type.hasTypeAliasName()) {
                return id3.a.e(ErrorTypeKind.UNKNOWN_TYPE, new String[0]);
            }
            px0VarT = (px0) this.f.invoke(Integer.valueOf(protoBuf$Type.getTypeAliasName()));
            if (px0VarT == null) {
                px0VarT = t(this, protoBuf$Type, protoBuf$Type.getTypeAliasName());
            }
        }
        sbb sbbVarM = px0VarT.m();
        y45.i(sbbVarM, "classifier.typeConstructor");
        return sbbVarM;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.c);
        if (this.b == null) {
            str = "";
        } else {
            str = ". Child of " + this.b.c;
        }
        sb.append(str);
        return sb.toString();
    }
}
