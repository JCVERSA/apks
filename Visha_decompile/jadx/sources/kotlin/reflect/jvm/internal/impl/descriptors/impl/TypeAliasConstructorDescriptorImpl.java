package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.c92;
import defpackage.dbb;
import defpackage.ebb;
import defpackage.eh5;
import defpackage.ky3;
import defpackage.md;
import defpackage.o37;
import defpackage.qw0;
import defpackage.ro8;
import defpackage.s82;
import defpackage.sm9;
import defpackage.su9;
import defpackage.to8;
import defpackage.tu9;
import defpackage.vx9;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.xy4;
import defpackage.y45;
import defpackage.y71;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

public final class TypeAliasConstructorDescriptorImpl extends kotlin.reflect.jvm.internal.impl.descriptors.impl.a implements dbb {
    public final vx9 F;
    public final ebb G;
    public final o37 H;
    public kotlin.reflect.jvm.internal.impl.descriptors.b I;
    public static final af5[] K = {xq8.j(new PropertyReference1Impl(xq8.b(TypeAliasConstructorDescriptorImpl.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"))};
    public static final a J = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final dbb b(vx9 vx9Var, ebb ebbVar, kotlin.reflect.jvm.internal.impl.descriptors.b bVar) {
            kotlin.reflect.jvm.internal.impl.descriptors.b bVarC;
            List listK;
            y45.j(vx9Var, "storageManager");
            y45.j(ebbVar, "typeAliasDescriptor");
            y45.j(bVar, "constructor");
            TypeSubstitutor typeSubstitutorC = c(ebbVar);
            if (typeSubstitutorC == null || (bVarC = bVar.c(typeSubstitutorC)) == null) {
                return null;
            }
            md annotations = bVar.getAnnotations();
            CallableMemberDescriptor.Kind kind = bVar.getKind();
            y45.i(kind, "constructor.kind");
            yt9 source = ebbVar.getSource();
            y45.i(source, "typeAliasDescriptor.source");
            TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = new TypeAliasConstructorDescriptorImpl(vx9Var, ebbVar, bVarC, null, annotations, kind, source, null);
            List listJ0 = kotlin.reflect.jvm.internal.impl.descriptors.impl.a.J0(typeAliasConstructorDescriptorImpl, bVar.f(), typeSubstitutorC);
            if (listJ0 == null) {
                return null;
            }
            sm9 sm9VarC = ky3.c(bVarC.getReturnType().L0());
            sm9 sm9VarQ = ebbVar.q();
            y45.i(sm9VarQ, "typeAliasDescriptor.defaultType");
            sm9 sm9VarJ = tu9.j(sm9VarC, sm9VarQ);
            ro8 ro8VarZ = bVar.Z();
            ro8 ro8VarI = ro8VarZ != null ? s82.i(typeAliasConstructorDescriptorImpl, typeSubstitutorC.n(ro8VarZ.getType(), Variance.INVARIANT), md.u1.b()) : null;
            qw0 qw0VarK = ebbVar.k();
            if (qw0VarK != null) {
                List listY0 = bVar.y0();
                y45.i(listY0, "constructor.contextReceiverParameters");
                List list = listY0;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        y71.u();
                    }
                    ro8 ro8Var = (ro8) obj;
                    eh5 eh5VarN = typeSubstitutorC.n(ro8Var.getType(), Variance.INVARIANT);
                    to8 value = ro8Var.getValue();
                    y45.h(value, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver");
                    arrayList.add(s82.c(qw0VarK, eh5VarN, ((xy4) value).a(), md.u1.b(), i));
                    i = i2;
                }
                listK = arrayList;
            } else {
                listK = y71.k();
            }
            typeAliasConstructorDescriptorImpl.M0(ro8VarI, null, listK, ebbVar.r(), listJ0, sm9VarJ, Modality.FINAL, ebbVar.getVisibility());
            return typeAliasConstructorDescriptorImpl;
        }

        public final TypeSubstitutor c(ebb ebbVar) {
            if (ebbVar.k() == null) {
                return null;
            }
            return TypeSubstitutor.f(ebbVar.W());
        }

        public a() {
        }
    }

    public TypeAliasConstructorDescriptorImpl(vx9 vx9Var, ebb ebbVar, kotlin.reflect.jvm.internal.impl.descriptors.b bVar, dbb dbbVar, md mdVar, CallableMemberDescriptor.Kind kind, yt9 yt9Var, DefaultConstructorMarker defaultConstructorMarker) {
        this(vx9Var, ebbVar, bVar, dbbVar, mdVar, kind, yt9Var);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.b B() {
        return this.I;
    }

    @Override
    public qw0 F() {
        qw0 qw0VarF = B().F();
        y45.i(qw0VarF, "underlyingConstructorDescriptor.constructedClass");
        return qw0VarF;
    }

    public final vx9 a0() {
        return this.F;
    }

    @Override
    public dbb J(xt1 xt1Var, Modality modality, c92 c92Var, CallableMemberDescriptor.Kind kind, boolean z) {
        y45.j(xt1Var, "newOwner");
        y45.j(modality, "modality");
        y45.j(c92Var, "visibility");
        y45.j(kind, "kind");
        e eVarBuild = l().q(xt1Var).r(modality).n(c92Var).s(kind).h(z).build();
        y45.h(eVarBuild, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (dbb) eVarBuild;
    }

    @Override
    public TypeAliasConstructorDescriptorImpl G0(xt1 xt1Var, e eVar, CallableMemberDescriptor.Kind kind, by6 by6Var, md mdVar, yt9 yt9Var) {
        y45.j(xt1Var, "newOwner");
        y45.j(kind, "kind");
        y45.j(mdVar, "annotations");
        y45.j(yt9Var, "source");
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind != kind2) {
            CallableMemberDescriptor.Kind kind3 = CallableMemberDescriptor.Kind.SYNTHESIZED;
        }
        return new TypeAliasConstructorDescriptorImpl(this.F, j1(), B(), this, mdVar, kind2, yt9Var);
    }

    @Override
    public eh5 getReturnType() {
        eh5 returnType = super.getReturnType();
        y45.g(returnType);
        return returnType;
    }

    @Override
    public ebb b() {
        return j1();
    }

    @Override
    public boolean i0() {
        return B().i0();
    }

    @Override
    public dbb a() {
        e eVarA = super.a();
        y45.h(eVarA, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor");
        return (dbb) eVarA;
    }

    public ebb j1() {
        return this.G;
    }

    @Override
    public dbb c(TypeSubstitutor typeSubstitutor) {
        y45.j(typeSubstitutor, "substitutor");
        e eVarC = super.c(typeSubstitutor);
        y45.h(eVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl");
        TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = (TypeAliasConstructorDescriptorImpl) eVarC;
        TypeSubstitutor typeSubstitutorF = TypeSubstitutor.f(typeAliasConstructorDescriptorImpl.getReturnType());
        y45.i(typeSubstitutorF, "create(substitutedTypeAliasConstructor.returnType)");
        kotlin.reflect.jvm.internal.impl.descriptors.b bVarC = B().a().c(typeSubstitutorF);
        if (bVarC == null) {
            return null;
        }
        typeAliasConstructorDescriptorImpl.I = bVarC;
        return typeAliasConstructorDescriptorImpl;
    }

    public TypeAliasConstructorDescriptorImpl(vx9 vx9Var, ebb ebbVar, final kotlin.reflect.jvm.internal.impl.descriptors.b bVar, dbb dbbVar, md mdVar, CallableMemberDescriptor.Kind kind, yt9 yt9Var) {
        super(ebbVar, dbbVar, mdVar, su9.j, kind, yt9Var);
        this.F = vx9Var;
        this.G = ebbVar;
        Q0(j1().f0());
        this.H = vx9Var.b(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final TypeAliasConstructorDescriptorImpl invoke() {
                vx9 vx9VarA0 = this.this$0.a0();
                ebb ebbVarJ1 = this.this$0.j1();
                kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 = bVar;
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl = this.this$0;
                md annotations = bVar2.getAnnotations();
                CallableMemberDescriptor.Kind kind2 = bVar.getKind();
                y45.i(kind2, "underlyingConstructorDescriptor.kind");
                yt9 source = this.this$0.j1().getSource();
                y45.i(source, "typeAliasDescriptor.source");
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl2 = new TypeAliasConstructorDescriptorImpl(vx9VarA0, ebbVarJ1, bVar2, typeAliasConstructorDescriptorImpl, annotations, kind2, source, null);
                TypeAliasConstructorDescriptorImpl typeAliasConstructorDescriptorImpl3 = this.this$0;
                kotlin.reflect.jvm.internal.impl.descriptors.b bVar3 = bVar;
                TypeSubstitutor typeSubstitutorC = TypeAliasConstructorDescriptorImpl.J.c(typeAliasConstructorDescriptorImpl3.j1());
                if (typeSubstitutorC == null) {
                    return null;
                }
                ro8 ro8VarZ = bVar3.Z();
                ro8 ro8VarC = ro8VarZ != null ? ro8VarZ.c(typeSubstitutorC) : null;
                List listY0 = bVar3.y0();
                y45.i(listY0, "underlyingConstructorDes…contextReceiverParameters");
                List list = listY0;
                ArrayList arrayList = new ArrayList(z71.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ro8) it.next()).c(typeSubstitutorC));
                }
                typeAliasConstructorDescriptorImpl2.M0(null, ro8VarC, arrayList, typeAliasConstructorDescriptorImpl3.j1().r(), typeAliasConstructorDescriptorImpl3.f(), typeAliasConstructorDescriptorImpl3.getReturnType(), Modality.FINAL, typeAliasConstructorDescriptorImpl3.j1().getVisibility());
                return typeAliasConstructorDescriptorImpl2;
            }
        });
        this.I = bVar;
    }
}
