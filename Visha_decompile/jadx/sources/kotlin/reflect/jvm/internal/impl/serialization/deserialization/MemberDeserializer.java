package kotlin.reflect.jvm.internal.impl.serialization.deserialization;

import defpackage.ay3;
import defpackage.by6;
import defpackage.c74;
import defpackage.c7a;
import defpackage.c92;
import defpackage.dv7;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.ey6;
import defpackage.gd;
import defpackage.gj8;
import defpackage.hj8;
import defpackage.i81;
import defpackage.i92;
import defpackage.id;
import defpackage.ij8;
import defpackage.l17;
import defpackage.l92;
import defpackage.md;
import defpackage.n92;
import defpackage.o37;
import defpackage.pf1;
import defpackage.qob;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.s82;
import defpackage.t92;
import defpackage.ti8;
import defpackage.u92;
import defpackage.v92;
import defpackage.vx9;
import defpackage.wi8;
import defpackage.x71;
import defpackage.xp3;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi8;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Annotation;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Constructor;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$MemberKind;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Modality;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Type;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeAlias;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$TypeParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$ValueParameter;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Visibility;
import kotlin.reflect.jvm.internal.impl.protobuf.g;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

public final class MemberDeserializer {
    public final i92 a;
    public final id b;

    public MemberDeserializer(i92 i92Var) {
        y45.j(i92Var, "c");
        this.a = i92Var;
        this.b = new id(i92Var.c().p(), i92Var.c().q());
    }

    public final d c(xt1 xt1Var) {
        if (xt1Var instanceof dv7) {
            return new d.b(((dv7) xt1Var).d(), this.a.g(), this.a.j(), this.a.d());
        }
        if (xt1Var instanceof DeserializedClassDescriptor) {
            return ((DeserializedClassDescriptor) xt1Var).Z0();
        }
        return null;
    }

    public final md d(final g gVar, int i, final AnnotatedCallableKind annotatedCallableKind) {
        return !ay3.c.d(i).booleanValue() ? md.u1.b() : new l17(this.a.h(), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<gd> invoke() {
                List<gd> listB1;
                MemberDeserializer memberDeserializer = this.this$0;
                d dVarC = memberDeserializer.c(memberDeserializer.a.e());
                if (dVarC != null) {
                    listB1 = i81.b1(this.this$0.a.c().d().i(dVarC, gVar, annotatedCallableKind));
                } else {
                    listB1 = null;
                }
                return listB1 == null ? y71.k() : listB1;
            }
        });
    }

    public final ro8 e() {
        xt1 xt1VarE = this.a.e();
        qw0 qw0Var = xt1VarE instanceof qw0 ? (qw0) xt1VarE : null;
        if (qw0Var != null) {
            return qw0Var.R();
        }
        return null;
    }

    public final md f(final ProtoBuf$Property protoBuf$Property, final boolean z) {
        return !ay3.c.d(protoBuf$Property.getFlags()).booleanValue() ? md.u1.b() : new l17(this.a.h(), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<gd> invoke() {
                List<gd> listB1;
                MemberDeserializer memberDeserializer = this.this$0;
                d dVarC = memberDeserializer.c(memberDeserializer.a.e());
                if (dVarC != null) {
                    boolean z2 = z;
                    MemberDeserializer memberDeserializer2 = this.this$0;
                    ProtoBuf$Property protoBuf$Property2 = protoBuf$Property;
                    listB1 = z2 ? i81.b1(memberDeserializer2.a.c().d().k(dVarC, protoBuf$Property2)) : i81.b1(memberDeserializer2.a.c().d().f(dVarC, protoBuf$Property2));
                } else {
                    listB1 = null;
                }
                return listB1 == null ? y71.k() : listB1;
            }
        });
    }

    public final md g(final g gVar, final AnnotatedCallableKind annotatedCallableKind) {
        return new l92(this.a.h(), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<gd> invoke() {
                List listG;
                MemberDeserializer memberDeserializer = this.this$0;
                d dVarC = memberDeserializer.c(memberDeserializer.a.e());
                if (dVarC != null) {
                    listG = this.this$0.a.c().d().g(dVarC, gVar, annotatedCallableKind);
                } else {
                    listG = null;
                }
                return listG == null ? y71.k() : listG;
            }
        });
    }

    public final void h(u92 u92Var, ro8 ro8Var, ro8 ro8Var2, List list, List list2, List list3, eh5 eh5Var, Modality modality, c92 c92Var, Map map) {
        u92Var.j1(ro8Var, ro8Var2, list, list2, list3, eh5Var, modality, c92Var, map);
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.b i(ProtoBuf$Constructor protoBuf$Constructor, boolean z) {
        y45.j(protoBuf$Constructor, "proto");
        xt1 xt1VarE = this.a.e();
        y45.h(xt1VarE, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        qw0 qw0Var = (qw0) xt1VarE;
        int flags = protoBuf$Constructor.getFlags();
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        n92 n92Var = new n92(qw0Var, null, d(protoBuf$Constructor, flags, annotatedCallableKind), z, CallableMemberDescriptor.Kind.DECLARATION, protoBuf$Constructor, this.a.g(), this.a.j(), this.a.k(), this.a.d(), null, 1024, null);
        MemberDeserializer memberDeserializerF = i92.b(this.a, n92Var, y71.k(), null, null, null, null, 60, null).f();
        List<ProtoBuf$ValueParameter> valueParameterList = protoBuf$Constructor.getValueParameterList();
        y45.i(valueParameterList, "proto.valueParameterList");
        n92Var.l1(memberDeserializerF.o(valueParameterList, protoBuf$Constructor, annotatedCallableKind), hj8.a(gj8.a, (ProtoBuf$Visibility) ay3.d.d(protoBuf$Constructor.getFlags())));
        n92Var.b1(qw0Var.q());
        n92Var.R0(qw0Var.m0());
        n92Var.T0(!ay3.n.d(protoBuf$Constructor.getFlags()).booleanValue());
        return n92Var;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.g j(ProtoBuf$Function protoBuf$Function) {
        eh5 eh5VarQ;
        y45.j(protoBuf$Function, "proto");
        int flags = protoBuf$Function.hasFlags() ? protoBuf$Function.getFlags() : k(protoBuf$Function.getOldFlags());
        AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.FUNCTION;
        md mdVarD = d(protoBuf$Function, flags, annotatedCallableKind);
        md mdVarG = ij8.g(protoBuf$Function) ? g(protoBuf$Function, annotatedCallableKind) : md.u1.b();
        u92 u92Var = new u92(this.a.e(), null, mdVarD, ey6.b(this.a.g(), protoBuf$Function.getName()), hj8.b(gj8.a, (ProtoBuf$MemberKind) ay3.o.d(flags)), protoBuf$Function, this.a.g(), this.a.j(), y45.e(DescriptorUtilsKt.l(this.a.e()).c(ey6.b(this.a.g(), protoBuf$Function.getName())), c7a.a) ? qob.b.b() : this.a.k(), this.a.d(), null, 1024, null);
        i92 i92Var = this.a;
        List<ProtoBuf$TypeParameter> typeParameterList = protoBuf$Function.getTypeParameterList();
        y45.i(typeParameterList, "proto.typeParameterList");
        i92 i92VarB = i92.b(i92Var, u92Var, typeParameterList, null, null, null, null, 60, null);
        ProtoBuf$Type protoBuf$TypeK = ij8.k(protoBuf$Function, this.a.j());
        ro8 ro8VarI = (protoBuf$TypeK == null || (eh5VarQ = i92VarB.i().q(protoBuf$TypeK)) == null) ? null : s82.i(u92Var, eh5VarQ, mdVarG);
        ro8 ro8VarE = e();
        List listC = ij8.c(protoBuf$Function, this.a.j());
        List arrayList = new ArrayList();
        int i = 0;
        for (Object obj : listC) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            ro8 ro8VarN = n((ProtoBuf$Type) obj, i92VarB, u92Var, i);
            if (ro8VarN != null) {
                arrayList.add(ro8VarN);
            }
            i = i2;
        }
        List listJ = i92VarB.i().j();
        MemberDeserializer memberDeserializerF = i92VarB.f();
        List valueParameterList = protoBuf$Function.getValueParameterList();
        y45.i(valueParameterList, "proto.valueParameterList");
        List listO = memberDeserializerF.o(valueParameterList, protoBuf$Function, AnnotatedCallableKind.FUNCTION);
        eh5 eh5VarQ2 = i92VarB.i().q(ij8.m(protoBuf$Function, this.a.j()));
        gj8 gj8Var = gj8.a;
        h(u92Var, ro8VarI, ro8VarE, arrayList, listJ, listO, eh5VarQ2, gj8Var.b((ProtoBuf$Modality) ay3.e.d(flags)), hj8.a(gj8Var, (ProtoBuf$Visibility) ay3.d.d(flags)), kotlin.collections.a.l());
        Boolean boolD = ay3.p.d(flags);
        y45.i(boolD, "IS_OPERATOR.get(flags)");
        u92Var.a1(boolD.booleanValue());
        Boolean boolD2 = ay3.q.d(flags);
        y45.i(boolD2, "IS_INFIX.get(flags)");
        u92Var.X0(boolD2.booleanValue());
        Boolean boolD3 = ay3.t.d(flags);
        y45.i(boolD3, "IS_EXTERNAL_FUNCTION.get(flags)");
        u92Var.S0(boolD3.booleanValue());
        Boolean boolD4 = ay3.r.d(flags);
        y45.i(boolD4, "IS_INLINE.get(flags)");
        u92Var.Z0(boolD4.booleanValue());
        Boolean boolD5 = ay3.s.d(flags);
        y45.i(boolD5, "IS_TAILREC.get(flags)");
        u92Var.d1(boolD5.booleanValue());
        Boolean boolD6 = ay3.u.d(flags);
        y45.i(boolD6, "IS_SUSPEND.get(flags)");
        u92Var.c1(boolD6.booleanValue());
        Boolean boolD7 = ay3.v.d(flags);
        y45.i(boolD7, "IS_EXPECT_FUNCTION.get(flags)");
        u92Var.R0(boolD7.booleanValue());
        u92Var.T0(!ay3.w.d(flags).booleanValue());
        Pair pairA = this.a.c().h().a(protoBuf$Function, u92Var, this.a.j(), i92VarB.i());
        if (pairA != null) {
            u92Var.P0((kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0379a) pairA.getFirst(), pairA.getSecond());
        }
        return u92Var;
    }

    public final int k(int i) {
        return (i & 63) + ((i >> 8) << 6);
    }

    public final ti8 l(ProtoBuf$Property protoBuf$Property) {
        final ProtoBuf$Property protoBuf$Property2;
        md mdVarB;
        t92 t92Var;
        ro8 ro8VarI;
        ay3.d dVar;
        final t92 t92Var2;
        wi8 wi8Var;
        yi8 yi8VarE;
        final MemberDeserializer memberDeserializer;
        wi8 wi8VarD;
        eh5 eh5VarQ;
        y45.j(protoBuf$Property, "proto");
        int flags = protoBuf$Property.hasFlags() ? protoBuf$Property.getFlags() : k(protoBuf$Property.getOldFlags());
        xt1 xt1VarE = this.a.e();
        md mdVarD = d(protoBuf$Property, flags, AnnotatedCallableKind.PROPERTY);
        gj8 gj8Var = gj8.a;
        Modality modalityB = gj8Var.b((ProtoBuf$Modality) ay3.e.d(flags));
        c92 c92VarA = hj8.a(gj8Var, (ProtoBuf$Visibility) ay3.d.d(flags));
        Boolean boolD = ay3.x.d(flags);
        y45.i(boolD, "IS_VAR.get(flags)");
        boolean zBooleanValue = boolD.booleanValue();
        by6 by6VarB = ey6.b(this.a.g(), protoBuf$Property.getName());
        CallableMemberDescriptor.Kind kindB = hj8.b(gj8Var, (ProtoBuf$MemberKind) ay3.o.d(flags));
        Boolean boolD2 = ay3.B.d(flags);
        y45.i(boolD2, "IS_LATEINIT.get(flags)");
        boolean zBooleanValue2 = boolD2.booleanValue();
        Boolean boolD3 = ay3.A.d(flags);
        y45.i(boolD3, "IS_CONST.get(flags)");
        boolean zBooleanValue3 = boolD3.booleanValue();
        Boolean boolD4 = ay3.D.d(flags);
        y45.i(boolD4, "IS_EXTERNAL_PROPERTY.get(flags)");
        boolean zBooleanValue4 = boolD4.booleanValue();
        Boolean boolD5 = ay3.E.d(flags);
        y45.i(boolD5, "IS_DELEGATED.get(flags)");
        boolean zBooleanValue5 = boolD5.booleanValue();
        Boolean boolD6 = ay3.F.d(flags);
        y45.i(boolD6, "IS_EXPECT_PROPERTY.get(flags)");
        t92 t92Var3 = new t92(xt1VarE, null, mdVarD, modalityB, c92VarA, zBooleanValue, by6VarB, kindB, zBooleanValue2, zBooleanValue3, zBooleanValue4, zBooleanValue5, boolD6.booleanValue(), protoBuf$Property, this.a.g(), this.a.j(), this.a.k(), this.a.d());
        i92 i92Var = this.a;
        List<ProtoBuf$TypeParameter> typeParameterList = protoBuf$Property.getTypeParameterList();
        y45.i(typeParameterList, "proto.typeParameterList");
        i92 i92VarB = i92.b(i92Var, t92Var3, typeParameterList, null, null, null, null, 60, null);
        Boolean boolD7 = ay3.y.d(flags);
        y45.i(boolD7, "HAS_GETTER.get(flags)");
        boolean zBooleanValue6 = boolD7.booleanValue();
        if (zBooleanValue6 && ij8.h(protoBuf$Property)) {
            protoBuf$Property2 = protoBuf$Property;
            mdVarB = g(protoBuf$Property2, AnnotatedCallableKind.PROPERTY_GETTER);
        } else {
            protoBuf$Property2 = protoBuf$Property;
            mdVarB = md.u1.b();
        }
        eh5 eh5VarQ2 = i92VarB.i().q(ij8.n(protoBuf$Property2, this.a.j()));
        List listJ = i92VarB.i().j();
        ro8 ro8VarE = e();
        ProtoBuf$Type protoBuf$TypeL = ij8.l(protoBuf$Property2, this.a.j());
        if (protoBuf$TypeL == null || (eh5VarQ = i92VarB.i().q(protoBuf$TypeL)) == null) {
            t92Var = t92Var3;
            ro8VarI = null;
        } else {
            t92Var = t92Var3;
            ro8VarI = s82.i(t92Var, eh5VarQ, mdVarB);
        }
        List listD = ij8.d(protoBuf$Property2, this.a.j());
        ArrayList arrayList = new ArrayList(z71.v(listD, 10));
        int i = 0;
        for (Object obj : listD) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            arrayList.add(n((ProtoBuf$Type) obj, i92VarB, t92Var, i));
            i = i2;
        }
        t92Var.W0(eh5VarQ2, listJ, ro8VarE, ro8VarI, arrayList);
        Boolean boolD8 = ay3.c.d(flags);
        y45.i(boolD8, "HAS_ANNOTATIONS.get(flags)");
        boolean zBooleanValue7 = boolD8.booleanValue();
        ay3.d dVar2 = ay3.d;
        ProtoBuf$Visibility protoBuf$Visibility = (ProtoBuf$Visibility) dVar2.d(flags);
        ay3.d dVar3 = ay3.e;
        int iB = ay3.b(zBooleanValue7, protoBuf$Visibility, (ProtoBuf$Modality) dVar3.d(flags), false, false, false);
        if (zBooleanValue6) {
            int getterFlags = protoBuf$Property.hasGetterFlags() ? protoBuf$Property.getGetterFlags() : iB;
            Boolean boolD9 = ay3.J.d(getterFlags);
            y45.i(boolD9, "IS_NOT_DEFAULT.get(getterFlags)");
            boolean zBooleanValue8 = boolD9.booleanValue();
            Boolean boolD10 = ay3.K.d(getterFlags);
            y45.i(boolD10, "IS_EXTERNAL_ACCESSOR.get(getterFlags)");
            boolean zBooleanValue9 = boolD10.booleanValue();
            Boolean boolD11 = ay3.L.d(getterFlags);
            y45.i(boolD11, "IS_INLINE_ACCESSOR.get(getterFlags)");
            boolean zBooleanValue10 = boolD11.booleanValue();
            md mdVarD2 = d(protoBuf$Property2, getterFlags, AnnotatedCallableKind.PROPERTY_GETTER);
            if (zBooleanValue8) {
                gj8 gj8Var2 = gj8.a;
                dVar = dVar3;
                t92Var2 = t92Var;
                wi8VarD = new wi8(t92Var, mdVarD2, gj8Var2.b((ProtoBuf$Modality) dVar3.d(getterFlags)), hj8.a(gj8Var2, (ProtoBuf$Visibility) dVar2.d(getterFlags)), !zBooleanValue8, zBooleanValue9, zBooleanValue10, t92Var.getKind(), null, yt9.a);
            } else {
                dVar = dVar3;
                t92Var2 = t92Var;
                wi8VarD = s82.d(t92Var2, mdVarD2);
                y45.i(wi8VarD, "{\n                Descri…nnotations)\n            }");
            }
            wi8VarD.K0(t92Var2.getReturnType());
            wi8Var = wi8VarD;
        } else {
            i92VarB = i92VarB;
            dVar = dVar3;
            dVar2 = dVar2;
            t92Var2 = t92Var;
            wi8Var = null;
        }
        Boolean boolD12 = ay3.z.d(flags);
        y45.i(boolD12, "HAS_SETTER.get(flags)");
        if (boolD12.booleanValue()) {
            if (protoBuf$Property.hasSetterFlags()) {
                iB = protoBuf$Property.getSetterFlags();
            }
            int i3 = iB;
            Boolean boolD13 = ay3.J.d(i3);
            y45.i(boolD13, "IS_NOT_DEFAULT.get(setterFlags)");
            boolean zBooleanValue11 = boolD13.booleanValue();
            Boolean boolD14 = ay3.K.d(i3);
            y45.i(boolD14, "IS_EXTERNAL_ACCESSOR.get(setterFlags)");
            boolean zBooleanValue12 = boolD14.booleanValue();
            Boolean boolD15 = ay3.L.d(i3);
            y45.i(boolD15, "IS_INLINE_ACCESSOR.get(setterFlags)");
            boolean zBooleanValue13 = boolD15.booleanValue();
            AnnotatedCallableKind annotatedCallableKind = AnnotatedCallableKind.PROPERTY_SETTER;
            md mdVarD3 = d(protoBuf$Property2, i3, annotatedCallableKind);
            if (zBooleanValue11) {
                gj8 gj8Var3 = gj8.a;
                yi8 yi8Var = new yi8(t92Var2, mdVarD3, gj8Var3.b((ProtoBuf$Modality) dVar.d(i3)), hj8.a(gj8Var3, (ProtoBuf$Visibility) dVar2.d(i3)), !zBooleanValue11, zBooleanValue12, zBooleanValue13, t92Var2.getKind(), null, yt9.a);
                yi8Var.L0((h) i81.O0(i92.b(i92VarB, yi8Var, y71.k(), null, null, null, null, 60, null).f().o(x71.e(protoBuf$Property.getSetterValueParameter()), protoBuf$Property2, annotatedCallableKind)));
                yi8VarE = yi8Var;
            } else {
                yi8VarE = s82.e(t92Var2, mdVarD3, md.u1.b());
                y45.i(yi8VarE, "{\n                Descri…          )\n            }");
            }
        } else {
            yi8VarE = null;
        }
        Boolean boolD16 = ay3.C.d(flags);
        y45.i(boolD16, "HAS_CONSTANT.get(flags)");
        if (boolD16.booleanValue()) {
            memberDeserializer = this;
            t92Var2.G0(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final o37 invoke() {
                    vx9 vx9VarH = this.this$0.a.h();
                    final MemberDeserializer memberDeserializer2 = this.this$0;
                    final ProtoBuf$Property protoBuf$Property3 = protoBuf$Property2;
                    final t92 t92Var4 = t92Var2;
                    return vx9VarH.b(new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final pf1 invoke() {
                            MemberDeserializer memberDeserializer3 = memberDeserializer2;
                            d dVarC = memberDeserializer3.c(memberDeserializer3.a.e());
                            y45.g(dVarC);
                            a aVarD = memberDeserializer2.a.c().d();
                            ProtoBuf$Property protoBuf$Property4 = protoBuf$Property3;
                            eh5 returnType = t92Var4.getReturnType();
                            y45.i(returnType, "property.returnType");
                            return (pf1) aVarD.d(dVarC, protoBuf$Property4, returnType);
                        }
                    });
                }
            });
        } else {
            memberDeserializer = this;
        }
        xt1 xt1VarE2 = memberDeserializer.a.e();
        qw0 qw0Var = xt1VarE2 instanceof qw0 ? (qw0) xt1VarE2 : null;
        if ((qw0Var != null ? qw0Var.getKind() : null) == ClassKind.ANNOTATION_CLASS) {
            t92Var2.G0(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final o37 invoke() {
                    vx9 vx9VarH = this.this$0.a.h();
                    final MemberDeserializer memberDeserializer2 = this.this$0;
                    final ProtoBuf$Property protoBuf$Property3 = protoBuf$Property2;
                    final t92 t92Var4 = t92Var2;
                    return vx9VarH.b(new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final pf1 invoke() {
                            MemberDeserializer memberDeserializer3 = memberDeserializer2;
                            d dVarC = memberDeserializer3.c(memberDeserializer3.a.e());
                            y45.g(dVarC);
                            a aVarD = memberDeserializer2.a.c().d();
                            ProtoBuf$Property protoBuf$Property4 = protoBuf$Property3;
                            eh5 returnType = t92Var4.getReturnType();
                            y45.i(returnType, "property.returnType");
                            return (pf1) aVarD.j(dVarC, protoBuf$Property4, returnType);
                        }
                    });
                }
            });
        }
        t92Var2.Q0(wi8Var, yi8VarE, new xp3(memberDeserializer.f(protoBuf$Property2, false), t92Var2), new xp3(memberDeserializer.f(protoBuf$Property2, true), t92Var2));
        return t92Var2;
    }

    public final ebb m(ProtoBuf$TypeAlias protoBuf$TypeAlias) {
        y45.j(protoBuf$TypeAlias, "proto");
        md.a aVar = md.u1;
        List<ProtoBuf$Annotation> annotationList = protoBuf$TypeAlias.getAnnotationList();
        y45.i(annotationList, "proto.annotationList");
        List<ProtoBuf$Annotation> list = annotationList;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        for (ProtoBuf$Annotation protoBuf$Annotation : list) {
            id idVar = this.b;
            y45.i(protoBuf$Annotation, "it");
            arrayList.add(idVar.a(protoBuf$Annotation, this.a.g()));
        }
        v92 v92Var = new v92(this.a.h(), this.a.e(), aVar.a(arrayList), ey6.b(this.a.g(), protoBuf$TypeAlias.getName()), hj8.a(gj8.a, (ProtoBuf$Visibility) ay3.d.d(protoBuf$TypeAlias.getFlags())), protoBuf$TypeAlias, this.a.g(), this.a.j(), this.a.k(), this.a.d());
        i92 i92Var = this.a;
        List<ProtoBuf$TypeParameter> typeParameterList = protoBuf$TypeAlias.getTypeParameterList();
        y45.i(typeParameterList, "proto.typeParameterList");
        i92 i92VarB = i92.b(i92Var, v92Var, typeParameterList, null, null, null, null, 60, null);
        v92Var.L0(i92VarB.i().j(), i92VarB.i().l(ij8.r(protoBuf$TypeAlias, this.a.j()), false), i92VarB.i().l(ij8.e(protoBuf$TypeAlias, this.a.j()), false));
        return v92Var;
    }

    public final ro8 n(ProtoBuf$Type protoBuf$Type, i92 i92Var, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, int i) {
        return s82.b(aVar, i92Var.i().q(protoBuf$Type), null, md.u1.b(), i);
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0087  */
    public final List o(List list, final g gVar, final AnnotatedCallableKind annotatedCallableKind) {
        md mdVarB;
        xt1 xt1VarE = this.a.e();
        y45.h(xt1VarE, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor");
        kotlin.reflect.jvm.internal.impl.descriptors.a aVar = (kotlin.reflect.jvm.internal.impl.descriptors.a) xt1VarE;
        xt1 xt1VarB = aVar.b();
        y45.i(xt1VarB, "callableDescriptor.containingDeclaration");
        final d dVarC = c(xt1VarB);
        List list2 = list;
        ArrayList arrayList = new ArrayList(z71.v(list2, 10));
        int i = 0;
        for (Object obj : list2) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            final ProtoBuf$ValueParameter protoBuf$ValueParameter = (ProtoBuf$ValueParameter) obj;
            int flags = protoBuf$ValueParameter.hasFlags() ? protoBuf$ValueParameter.getFlags() : 0;
            if (dVarC != null) {
                Boolean boolD = ay3.c.d(flags);
                y45.i(boolD, "HAS_ANNOTATIONS.get(flags)");
                if (boolD.booleanValue()) {
                    final int i3 = i;
                    mdVarB = new l17(this.a.h(), new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final List<gd> invoke() {
                            return i81.b1(this.this$0.a.c().d().a(dVarC, gVar, annotatedCallableKind, i3, protoBuf$ValueParameter));
                        }
                    });
                } else {
                    mdVarB = md.u1.b();
                }
            } else {
                mdVarB = md.u1.b();
            }
            by6 by6VarB = ey6.b(this.a.g(), protoBuf$ValueParameter.getName());
            eh5 eh5VarQ = this.a.i().q(ij8.q(protoBuf$ValueParameter, this.a.j()));
            Boolean boolD2 = ay3.G.d(flags);
            y45.i(boolD2, "DECLARES_DEFAULT_VALUE.get(flags)");
            boolean zBooleanValue = boolD2.booleanValue();
            Boolean boolD3 = ay3.H.d(flags);
            y45.i(boolD3, "IS_CROSSINLINE.get(flags)");
            boolean zBooleanValue2 = boolD3.booleanValue();
            Boolean boolD4 = ay3.I.d(flags);
            y45.i(boolD4, "IS_NOINLINE.get(flags)");
            boolean zBooleanValue3 = boolD4.booleanValue();
            ProtoBuf$Type protoBuf$TypeT = ij8.t(protoBuf$ValueParameter, this.a.j());
            eh5 eh5VarQ2 = protoBuf$TypeT != null ? this.a.i().q(protoBuf$TypeT) : null;
            yt9 yt9Var = yt9.a;
            y45.i(yt9Var, "NO_SOURCE");
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(aVar, null, i, mdVarB, by6VarB, eh5VarQ, zBooleanValue, zBooleanValue2, zBooleanValue3, eh5VarQ2, yt9Var));
            arrayList = arrayList2;
            i = i2;
        }
        return i81.b1(arrayList);
    }
}
