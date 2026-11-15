package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import defpackage.ad5;
import defpackage.af5;
import defpackage.aq0;
import defpackage.b92;
import defpackage.bd5;
import defpackage.by6;
import defpackage.c74;
import defpackage.cq9;
import defpackage.d85;
import defpackage.dd5;
import defpackage.dq6;
import defpackage.e74;
import defpackage.eh5;
import defpackage.ev7;
import defpackage.ey6;
import defpackage.i81;
import defpackage.iy5;
import defpackage.jo6;
import defpackage.jq1;
import defpackage.ko6;
import defpackage.m85;
import defpackage.md;
import defpackage.n8;
import defpackage.n85;
import defpackage.o54;
import defpackage.p54;
import defpackage.px0;
import defpackage.qq6;
import defpackage.qw0;
import defpackage.sm9;
import defpackage.tw0;
import defpackage.ux9;
import defpackage.v18;
import defpackage.vx9;
import defpackage.w18;
import defpackage.x17;
import defpackage.x71;
import defpackage.x82;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.yt9;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

public final class JvmBuiltInsCustomizer implements n8, v18 {
    public static final af5[] h = {xq8.j(new PropertyReference1Impl(xq8.b(JvmBuiltInsCustomizer.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), xq8.j(new PropertyReference1Impl(xq8.b(JvmBuiltInsCustomizer.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), xq8.j(new PropertyReference1Impl(xq8.b(JvmBuiltInsCustomizer.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};
    public final qq6 a;
    public final n85 b;
    public final x17 c;
    public final eh5 d;
    public final x17 e;
    public final aq0 f;
    public final x17 g;

    public enum JDKMemberStatus {
        HIDDEN,
        VISIBLE,
        NOT_CONSIDERED,
        DROP
    }

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[JDKMemberStatus.values().length];
            try {
                iArr[JDKMemberStatus.HIDDEN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[JDKMemberStatus.NOT_CONSIDERED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[JDKMemberStatus.DROP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[JDKMemberStatus.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            a = iArr;
        }
    }

    public static final class b extends ev7 {
        public b(qq6 qq6Var, o54 o54Var) {
            super(qq6Var, o54Var);
        }

        @Override
        public MemberScope.a p() {
            return MemberScope.a.b;
        }
    }

    public static final class c extends jq1.b {
        public final String a;
        public final Ref$ObjectRef b;

        public c(String str, Ref$ObjectRef ref$ObjectRef) {
            this.a = str;
            this.b = ref$ObjectRef;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$JDKMemberStatus] */
        /* JADX WARN: Type inference failed for: r0v5, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$JDKMemberStatus] */
        /* JADX WARN: Type inference failed for: r0v6, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$JDKMemberStatus] */
        @Override
        public boolean b(qw0 qw0Var) {
            y45.j(qw0Var, "javaClassDescriptor");
            String strA = jo6.a(SignatureBuildingComponents.a, qw0Var, this.a);
            dd5 dd5Var = dd5.a;
            if (dd5Var.e().contains(strA)) {
                this.b.element = JDKMemberStatus.HIDDEN;
            } else if (dd5Var.h().contains(strA)) {
                this.b.element = JDKMemberStatus.VISIBLE;
            } else if (dd5Var.c().contains(strA)) {
                this.b.element = JDKMemberStatus.DROP;
            }
            return this.b.element == 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public JDKMemberStatus a() {
            JDKMemberStatus jDKMemberStatus = (JDKMemberStatus) this.b.element;
            return jDKMemberStatus == null ? JDKMemberStatus.NOT_CONSIDERED : jDKMemberStatus;
        }
    }

    public JvmBuiltInsCustomizer(qq6 qq6Var, final vx9 vx9Var, c74 c74Var) {
        y45.j(qq6Var, "moduleDescriptor");
        y45.j(vx9Var, "storageManager");
        y45.j(c74Var, "settingsComputation");
        this.a = qq6Var;
        this.b = n85.a;
        this.c = vx9Var.c(c74Var);
        this.d = l(vx9Var);
        this.e = vx9Var.c(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final sm9 invoke() {
                return FindClassInModuleKt.c(this.this$0.u().a(), JvmBuiltInClassDescriptorFactory.d.a(), new NotFoundClasses(vx9Var, this.this$0.u().a())).q();
            }
        });
        this.f = vx9Var.e();
        this.g = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final md invoke() {
                return md.u1.a(x71.e(AnnotationUtilKt.b(this.this$0.a.o(), "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version", null, null, 6, null)));
            }
        });
    }

    public static final boolean o(kotlin.reflect.jvm.internal.impl.descriptors.c cVar, TypeSubstitutor typeSubstitutor, kotlin.reflect.jvm.internal.impl.descriptors.c cVar2) {
        return OverridingUtil.x(cVar, cVar2.c(typeSubstitutor)) == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
    }

    public static final Iterable s(JvmBuiltInsCustomizer jvmBuiltInsCustomizer, qw0 qw0Var) {
        y45.j(jvmBuiltInsCustomizer, "this$0");
        Collection collectionK = qw0Var.m().k();
        y45.i(collectionK, "it.typeConstructor.supertypes");
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionK.iterator();
        while (it.hasNext()) {
            px0 px0VarC = ((eh5) it.next()).I0().c();
            px0 px0VarA = px0VarC != null ? px0VarC.a() : null;
            qw0 qw0Var2 = px0VarA instanceof qw0 ? (qw0) px0VarA : null;
            LazyJavaClassDescriptor lazyJavaClassDescriptorQ = qw0Var2 != null ? jvmBuiltInsCustomizer.q(qw0Var2) : null;
            if (lazyJavaClassDescriptorQ != null) {
                arrayList.add(lazyJavaClassDescriptorQ);
            }
        }
        return arrayList;
    }

    public static final Iterable w(CallableMemberDescriptor callableMemberDescriptor) {
        return callableMemberDescriptor.a().e();
    }

    @Override
    public Collection a(qw0 qw0Var) {
        y45.j(qw0Var, "classDescriptor");
        p54 p54VarM = DescriptorUtilsKt.m(qw0Var);
        dd5 dd5Var = dd5.a;
        if (!dd5Var.i(p54VarM)) {
            return dd5Var.j(p54VarM) ? x71.e(this.d) : y71.k();
        }
        sm9 sm9VarN = n();
        y45.i(sm9VarN, "cloneableType");
        return y71.n(sm9VarN, this.d);
    }

    @Override
    public Collection b(final by6 by6Var, qw0 qw0Var) {
        y45.j(by6Var, "name");
        y45.j(qw0Var, "classDescriptor");
        if (y45.e(by6Var, kotlin.reflect.jvm.internal.impl.builtins.jvm.a.e.a()) && (qw0Var instanceof DeserializedClassDescriptor) && d.d0(qw0Var)) {
            DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) qw0Var;
            List<ProtoBuf$Function> functionList = deserializedClassDescriptor.V0().getFunctionList();
            y45.i(functionList, "classDescriptor.classProto.functionList");
            List<ProtoBuf$Function> list = functionList;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (y45.e(ey6.b(deserializedClassDescriptor.U0().g(), ((ProtoBuf$Function) it.next()).getName()), kotlin.reflect.jvm.internal.impl.builtins.jvm.a.e.a())) {
                        return y71.k();
                    }
                }
            }
            return x71.e(k(deserializedClassDescriptor, (g) i81.N0(n().p().c(by6Var, NoLookupLocation.FROM_BUILTINS))));
        }
        if (!u().b()) {
            return y71.k();
        }
        Collection<g> collectionM = m(qw0Var, new e74() {
            {
                super(1);
            }

            @Override
            public final Collection<g> invoke(MemberScope memberScope) {
                y45.j(memberScope, "it");
                return memberScope.c(by6Var, NoLookupLocation.FROM_BUILTINS);
            }
        });
        ArrayList arrayList = new ArrayList();
        for (g gVar : collectionM) {
            xt1 xt1VarB = gVar.b();
            y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
            e eVarC = gVar.c(iy5.a((qw0) xt1VarB, qw0Var).c());
            y45.h(eVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor");
            e.a aVarL = ((g) eVarC).l();
            aVarL.q(qw0Var);
            aVarL.b(qw0Var.R());
            aVarL.f();
            int i = a.a[r(gVar).ordinal()];
            g gVar2 = null;
            if (i != 1) {
                if (i == 2) {
                    aVarL.p(t());
                } else if (i != 3) {
                }
                e eVarBuild = aVarL.build();
                y45.g(eVarBuild);
                gVar2 = (g) eVarBuild;
            } else if (!dq6.a(qw0Var)) {
                aVarL.o();
                e eVarBuild2 = aVarL.build();
                y45.g(eVarBuild2);
                gVar2 = (g) eVarBuild2;
            }
            if (gVar2 != null) {
                arrayList.add(gVar2);
            }
        }
        return arrayList;
    }

    @Override
    public Collection c(qw0 qw0Var) {
        qw0 qw0VarF;
        y45.j(qw0Var, "classDescriptor");
        if (qw0Var.getKind() != ClassKind.CLASS || !u().b()) {
            return y71.k();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorQ = q(qw0Var);
        if (lazyJavaClassDescriptorQ != null && (qw0VarF = n85.f(this.b, DescriptorUtilsKt.l(lazyJavaClassDescriptorQ), kotlin.reflect.jvm.internal.impl.builtins.jvm.b.h.a(), null, 4, null)) != null) {
            TypeSubstitutor typeSubstitutorC = iy5.a(qw0VarF, lazyJavaClassDescriptorQ).c();
            List listN = lazyJavaClassDescriptorQ.n();
            ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.b> arrayList = new ArrayList();
            for (Object obj : listN) {
                kotlin.reflect.jvm.internal.impl.descriptors.b bVar = (kotlin.reflect.jvm.internal.impl.descriptors.b) obj;
                if (bVar.getVisibility().d()) {
                    Collection collectionN = qw0VarF.n();
                    y45.i(collectionN, "defaultKotlinVersion.constructors");
                    Collection collection = collectionN;
                    if (!(collection instanceof Collection) || !collection.isEmpty()) {
                        Iterator it = collection.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                kotlin.reflect.jvm.internal.impl.descriptors.b bVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.b) it.next();
                                y45.i(bVar2, "it");
                                if (o(bVar2, typeSubstitutorC, bVar)) {
                                }
                            }
                        }
                    }
                    if (!x(bVar, qw0Var) && !d.k0(bVar) && !dd5.a.d().contains(jo6.a(SignatureBuildingComponents.a, lazyJavaClassDescriptorQ, ko6.c(bVar, false, false, 3, null)))) {
                        arrayList.add(obj);
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList(z71.v(arrayList, 10));
            for (kotlin.reflect.jvm.internal.impl.descriptors.b bVar3 : arrayList) {
                e.a aVarL = bVar3.l();
                aVarL.q(qw0Var);
                aVarL.j(qw0Var.q());
                aVarL.f();
                aVarL.c(typeSubstitutorC.j());
                if (!dd5.a.g().contains(jo6.a(SignatureBuildingComponents.a, lazyJavaClassDescriptorQ, ko6.c(bVar3, false, false, 3, null)))) {
                    aVarL.p(t());
                }
                e eVarBuild = aVarL.build();
                y45.h(eVarBuild, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor");
                arrayList2.add((kotlin.reflect.jvm.internal.impl.descriptors.b) eVarBuild);
            }
            return arrayList2;
        }
        return y71.k();
    }

    @Override
    public boolean e(qw0 qw0Var, g gVar) {
        y45.j(qw0Var, "classDescriptor");
        y45.j(gVar, "functionDescriptor");
        LazyJavaClassDescriptor lazyJavaClassDescriptorQ = q(qw0Var);
        if (lazyJavaClassDescriptorQ == null || !gVar.getAnnotations().h(w18.a())) {
            return true;
        }
        if (!u().b()) {
            return false;
        }
        String strC = ko6.c(gVar, false, false, 3, null);
        LazyJavaClassMemberScope lazyJavaClassMemberScopeE = lazyJavaClassDescriptorQ.E();
        by6 name = gVar.getName();
        y45.i(name, "functionDescriptor.name");
        Collection collectionC = lazyJavaClassMemberScopeE.c(name, NoLookupLocation.FROM_BUILTINS);
        if (!(collectionC instanceof Collection) || !collectionC.isEmpty()) {
            Iterator it = collectionC.iterator();
            while (it.hasNext()) {
                if (y45.e(ko6.c((g) it.next(), false, false, 3, null), strC)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final g k(DeserializedClassDescriptor deserializedClassDescriptor, g gVar) {
        e.a aVarL = gVar.l();
        aVarL.q(deserializedClassDescriptor);
        aVarL.n(b92.e);
        aVarL.j(deserializedClassDescriptor.q());
        aVarL.b(deserializedClassDescriptor.R());
        e eVarBuild = aVarL.build();
        y45.g(eVarBuild);
        return (g) eVarBuild;
    }

    public final eh5 l(vx9 vx9Var) {
        tw0 tw0Var = new tw0(new b(this.a, new o54("java.io")), by6.g("Serializable"), Modality.ABSTRACT, ClassKind.INTERFACE, x71.e(new LazyWrappedType(vx9Var, new c74() {
            {
                super(0);
            }

            @Override
            public final eh5 invoke() {
                sm9 sm9VarI = this.this$0.a.o().i();
                y45.i(sm9VarI, "moduleDescriptor.builtIns.anyType");
                return sm9VarI;
            }
        })), yt9.a, false, vx9Var);
        tw0Var.F0(MemberScope.a.b, ye9.f(), null);
        sm9 sm9VarQ = tw0Var.q();
        y45.i(sm9VarQ, "mockSerializableClass.defaultType");
        return sm9VarQ;
    }

    public final Collection m(qw0 qw0Var, e74 e74Var) {
        final LazyJavaClassDescriptor lazyJavaClassDescriptorQ = q(qw0Var);
        if (lazyJavaClassDescriptorQ == null) {
            return y71.k();
        }
        Collection collectionG = this.b.g(DescriptorUtilsKt.l(lazyJavaClassDescriptorQ), kotlin.reflect.jvm.internal.impl.builtins.jvm.b.h.a());
        final qw0 qw0Var2 = (qw0) i81.B0(collectionG);
        if (qw0Var2 == null) {
            return y71.k();
        }
        cq9.b bVar = cq9.d;
        ArrayList arrayList = new ArrayList(z71.v(collectionG, 10));
        Iterator it = collectionG.iterator();
        while (it.hasNext()) {
            arrayList.add(DescriptorUtilsKt.l((qw0) it.next()));
        }
        cq9 cq9VarB = bVar.b(arrayList);
        boolean zC = this.b.c(qw0Var);
        MemberScope memberScopeE = ((qw0) this.f.a(DescriptorUtilsKt.l(lazyJavaClassDescriptorQ), new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final qw0 invoke() {
                LazyJavaClassDescriptor lazyJavaClassDescriptor = lazyJavaClassDescriptorQ;
                d85 d85Var = d85.a;
                y45.i(d85Var, "EMPTY");
                return lazyJavaClassDescriptor.I0(d85Var, qw0Var2);
            }
        })).E();
        y45.i(memberScopeE, "fakeJavaClassDescriptor.unsubstitutedMemberScope");
        Iterable iterable = (Iterable) e74Var.invoke(memberScopeE);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : iterable) {
            g gVar = (g) obj;
            if (gVar.getKind() == CallableMemberDescriptor.Kind.DECLARATION && gVar.getVisibility().d() && !d.k0(gVar)) {
                Collection collectionE = gVar.e();
                y45.i(collectionE, "analogueMember.overriddenDescriptors");
                Collection collection = collectionE;
                if (!(collection instanceof Collection) || !collection.isEmpty()) {
                    Iterator it2 = collection.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            xt1 xt1VarB = ((e) it2.next()).b();
                            y45.i(xt1VarB, "it.containingDeclaration");
                            if (cq9VarB.contains(DescriptorUtilsKt.l(xt1VarB))) {
                            }
                        }
                    }
                }
                if (!v(gVar, zC)) {
                    arrayList2.add(obj);
                }
            }
        }
        return arrayList2;
    }

    public final sm9 n() {
        return (sm9) ux9.a(this.e, this, h[1]);
    }

    @Override
    public Set d(qw0 qw0Var) {
        LazyJavaClassMemberScope lazyJavaClassMemberScopeE;
        Set setA;
        y45.j(qw0Var, "classDescriptor");
        if (!u().b()) {
            return ye9.f();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorQ = q(qw0Var);
        return (lazyJavaClassDescriptorQ == null || (lazyJavaClassMemberScopeE = lazyJavaClassDescriptorQ.E()) == null || (setA = lazyJavaClassMemberScopeE.a()) == null) ? ye9.f() : setA;
    }

    public final LazyJavaClassDescriptor q(qw0 qw0Var) {
        xw0 xw0VarN;
        o54 o54VarB;
        if (d.a0(qw0Var) || !d.B0(qw0Var)) {
            return null;
        }
        p54 p54VarM = DescriptorUtilsKt.m(qw0Var);
        if (!p54VarM.f() || (xw0VarN = m85.a.n(p54VarM)) == null || (o54VarB = xw0VarN.b()) == null) {
            return null;
        }
        qw0 qw0VarD = x82.d(u().a(), o54VarB, NoLookupLocation.FROM_BUILTINS);
        if (qw0VarD instanceof LazyJavaClassDescriptor) {
            return (LazyJavaClassDescriptor) qw0VarD;
        }
        return null;
    }

    public final JDKMemberStatus r(e eVar) {
        xt1 xt1VarB = eVar.b();
        y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        Object objB = jq1.b(x71.e((qw0) xt1VarB), new bd5(this), new c(ko6.c(eVar, false, false, 3, null), new Ref$ObjectRef()));
        y45.i(objB, "jvmDescriptor = computeJ…CONSIDERED\n            })");
        return (JDKMemberStatus) objB;
    }

    public final md t() {
        return (md) ux9.a(this.g, this, h[2]);
    }

    public final JvmBuiltIns.a u() {
        return (JvmBuiltIns.a) ux9.a(this.c, this, h[0]);
    }

    public final boolean v(g gVar, boolean z) {
        xt1 xt1VarB = gVar.b();
        y45.h(xt1VarB, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        String strC = ko6.c(gVar, false, false, 3, null);
        if (z ^ dd5.a.f().contains(jo6.a(SignatureBuildingComponents.a, (qw0) xt1VarB, strC))) {
            return true;
        }
        Boolean boolE = jq1.e(x71.e(gVar), ad5.a, new e74() {
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0021  */
            @Override
            public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
                boolean z2;
                if (callableMemberDescriptor.getKind() == CallableMemberDescriptor.Kind.DECLARATION) {
                    n85 n85Var = this.this$0.b;
                    xt1 xt1VarB2 = callableMemberDescriptor.b();
                    y45.h(xt1VarB2, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                    if (n85Var.c((qw0) xt1VarB2)) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                } else {
                    z2 = false;
                }
                return Boolean.valueOf(z2);
            }
        });
        y45.i(boolE, "private fun SimpleFuncti…scriptor)\n        }\n    }");
        return boolE.booleanValue();
    }

    public final boolean x(kotlin.reflect.jvm.internal.impl.descriptors.c cVar, qw0 qw0Var) {
        if (cVar.f().size() == 1) {
            List listF = cVar.f();
            y45.i(listF, "valueParameters");
            px0 px0VarC = ((h) i81.O0(listF)).getType().I0().c();
            if (y45.e(px0VarC != null ? DescriptorUtilsKt.m(px0VarC) : null, DescriptorUtilsKt.m(qw0Var))) {
                return true;
            }
        }
        return false;
    }
}
