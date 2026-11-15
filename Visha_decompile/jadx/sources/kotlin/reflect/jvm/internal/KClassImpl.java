package kotlin.reflect.jvm.internal;

import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.ccb;
import defpackage.cj8;
import defpackage.clb;
import defpackage.de5;
import defpackage.ed5;
import defpackage.eh5;
import defpackage.g1a;
import defpackage.hcb;
import defpackage.hi;
import defpackage.i81;
import defpackage.ie5;
import defpackage.if5;
import defpackage.j1a;
import defpackage.le5;
import defpackage.o54;
import defpackage.px0;
import defpackage.qq8;
import defpackage.qw0;
import defpackage.sm9;
import defpackage.ti8;
import defpackage.tw8;
import defpackage.ua1;
import defpackage.v71;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import defpackage.z71;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.KClassImpl.Data;
import kotlin.reflect.jvm.internal.KClassImpl.Data;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.runtime.structure.ReflectClassUtilKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Class;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Property;
import kotlin.reflect.jvm.internal.impl.metadata.jvm.JvmProtoBuf;
import kotlin.reflect.jvm.internal.impl.protobuf.GeneratedMessageLite;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;

public final class KClassImpl extends KDeclarationContainerImpl implements de5, ie5, if5 {
    public static final int g = 0;
    public final Class e;
    public final e.b f;

    public final class Data extends KDeclarationContainerImpl.Data {
        public static final af5[] w = {xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "descriptor", "getDescriptor()Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "annotations", "getAnnotations()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "simpleName", "getSimpleName()Ljava/lang/String;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "qualifiedName", "getQualifiedName()Ljava/lang/String;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "constructors", "getConstructors()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "nestedClasses", "getNestedClasses()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "objectInstance", "getObjectInstance()Ljava/lang/Object;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "typeParameters", "getTypeParameters()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "supertypes", "getSupertypes()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "sealedSubclasses", "getSealedSubclasses()Ljava/util/List;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "declaredNonStaticMembers", "getDeclaredNonStaticMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "declaredStaticMembers", "getDeclaredStaticMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "inheritedNonStaticMembers", "getInheritedNonStaticMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "inheritedStaticMembers", "getInheritedStaticMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "allNonStaticMembers", "getAllNonStaticMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "allStaticMembers", "getAllStaticMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "declaredMembers", "getDeclaredMembers()Ljava/util/Collection;")), xq8.j(new PropertyReference1Impl(xq8.b(Data.class), "allMembers", "getAllMembers()Ljava/util/Collection;"))};
        public final e.a d;
        public final e.a e;
        public final e.a f;
        public final e.a g;
        public final e.a h;
        public final e.a i;
        public final e.b j;
        public final e.a k;
        public final e.a l;
        public final e.a m;
        public final e.a n;
        public final e.a o;
        public final e.a p;
        public final e.a q;
        public final e.a r;
        public final e.a s;
        public final e.a t;
        public final e.a u;

        public Data() {
            super();
            this.d = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final qw0 invoke() {
                    xw0 xw0VarN = kClassImpl.N();
                    tw8 tw8VarA = ((KClassImpl.Data) kClassImpl.P().invoke()).a();
                    qw0 qw0VarB = xw0VarN.k() ? tw8VarA.a().b(xw0VarN) : FindClassInModuleKt.a(tw8VarA.b(), xw0VarN);
                    if (qw0VarB != null) {
                        return qw0VarB;
                    }
                    kClassImpl.T();
                    throw null;
                }
            });
            this.e = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<Annotation> invoke() {
                    return clb.e(this.this$0.m());
                }
            });
            this.f = e.c(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final String invoke() {
                    if (kClassImpl.d().isAnonymousClass()) {
                        return null;
                    }
                    xw0 xw0VarN = kClassImpl.N();
                    if (xw0VarN.k()) {
                        return this.f(kClassImpl.d());
                    }
                    String strB = xw0VarN.j().b();
                    y45.i(strB, "classId.shortClassName.asString()");
                    return strB;
                }
            });
            this.g = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final String invoke() {
                    if (kClassImpl.d().isAnonymousClass()) {
                        return null;
                    }
                    xw0 xw0VarN = kClassImpl.N();
                    if (xw0VarN.k()) {
                        return null;
                    }
                    return xw0VarN.b().b();
                }
            });
            this.h = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<le5> invoke() {
                    Collection collectionZ = kClassImpl.z();
                    KClassImpl kClassImpl = kClassImpl;
                    ArrayList arrayList = new ArrayList(z71.v(collectionZ, 10));
                    Iterator it = collectionZ.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new KFunctionImpl(kClassImpl, (kotlin.reflect.jvm.internal.impl.descriptors.c) it.next()));
                    }
                    return arrayList;
                }
            });
            this.i = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KClassImpl> invoke() {
                    MemberScope memberScopeD = this.this$0.m().D();
                    y45.i(memberScopeD, "descriptor.unsubstitutedInnerClassesScope");
                    Collection collectionA = kotlin.reflect.jvm.internal.impl.resolve.scopes.c.a.a(memberScopeD, null, null, 3, null);
                    ArrayList<xt1> arrayList = new ArrayList();
                    for (Object obj : collectionA) {
                        if (!y82.B((xt1) obj)) {
                            arrayList.add(obj);
                        }
                    }
                    ArrayList arrayList2 = new ArrayList();
                    for (xt1 xt1Var : arrayList) {
                        qw0 qw0Var = xt1Var instanceof qw0 ? (qw0) xt1Var : null;
                        Class clsP = qw0Var != null ? clb.p(qw0Var) : null;
                        KClassImpl kClassImpl = clsP != null ? new KClassImpl(clsP) : null;
                        if (kClassImpl != null) {
                            arrayList2.add(kClassImpl);
                        }
                    }
                    return arrayList2;
                }
            });
            this.j = e.b(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final Object invoke() throws IllegalAccessException {
                    qw0 qw0VarM = this.this$0.m();
                    if (qw0VarM.getKind() != ClassKind.OBJECT) {
                        return null;
                    }
                    Object obj = ((!qw0VarM.h0() || ua1.a(kotlin.reflect.jvm.internal.impl.builtins.a.a, qw0VarM)) ? kClassImpl.d().getDeclaredField("INSTANCE") : kClassImpl.d().getEnclosingClass().getDeclaredField(qw0VarM.getName().b())).get(null);
                    y45.h(obj, "null cannot be cast to non-null type T of kotlin.reflect.jvm.internal.KClassImpl");
                    return obj;
                }
            });
            this.k = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KTypeParameterImpl> invoke() {
                    List listR = this.this$0.m().r();
                    y45.i(listR, "descriptor.declaredTypeParameters");
                    List<hcb> list = listR;
                    KClassImpl kClassImpl = kClassImpl;
                    ArrayList arrayList = new ArrayList(z71.v(list, 10));
                    for (hcb hcbVar : list) {
                        y45.i(hcbVar, "descriptor");
                        arrayList.add(new KTypeParameterImpl(kClassImpl, hcbVar));
                    }
                    return arrayList;
                }
            });
            this.l = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KTypeImpl> invoke() {
                    Collection<eh5> collectionK = this.this$0.m().m().k();
                    y45.i(collectionK, "descriptor.typeConstructor.supertypes");
                    ArrayList arrayList = new ArrayList(collectionK.size());
                    final Data data = this.this$0;
                    final KClassImpl kClassImpl = kClassImpl;
                    for (final eh5 eh5Var : collectionK) {
                        y45.i(eh5Var, "kotlinType");
                        arrayList.add(new KTypeImpl(eh5Var, new c74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(0);
                            }

                            @Override
                            public final Type invoke() {
                                px0 px0VarC = eh5Var.I0().c();
                                if (!(px0VarC instanceof qw0)) {
                                    throw new KotlinReflectionInternalError("Supertype not a class: " + px0VarC);
                                }
                                Class clsP = clb.p((qw0) px0VarC);
                                if (clsP == null) {
                                    throw new KotlinReflectionInternalError("Unsupported superclass of " + data + ": " + px0VarC);
                                }
                                if (y45.e(kClassImpl.d().getSuperclass(), clsP)) {
                                    Type genericSuperclass = kClassImpl.d().getGenericSuperclass();
                                    y45.i(genericSuperclass, "{\n                      …ass\n                    }");
                                    return genericSuperclass;
                                }
                                Class<?>[] interfaces = kClassImpl.d().getInterfaces();
                                y45.i(interfaces, "jClass.interfaces");
                                int iK0 = hi.k0(interfaces, clsP);
                                if (iK0 >= 0) {
                                    Type type = kClassImpl.d().getGenericInterfaces()[iK0];
                                    y45.i(type, "{\n                      …ex]\n                    }");
                                    return type;
                                }
                                throw new KotlinReflectionInternalError("No superclass of " + data + " in Java reflection for " + px0VarC);
                            }
                        }));
                    }
                    if (!kotlin.reflect.jvm.internal.impl.builtins.d.u0(this.this$0.m())) {
                        if (arrayList.isEmpty()) {
                            sm9 sm9VarI = DescriptorUtilsKt.j(this.this$0.m()).i();
                            y45.i(sm9VarI, "descriptor.builtIns.anyType");
                            arrayList.add(new KTypeImpl(sm9VarI, new c74() {
                                @Override
                                public final Type invoke() {
                                    return Object.class;
                                }
                            }));
                        } else {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                ClassKind kind = y82.e(((KTypeImpl) it.next()).h()).getKind();
                                y45.i(kind, "getClassDescriptorForType(it.type).kind");
                                if (kind == ClassKind.INTERFACE || kind == ClassKind.ANNOTATION_CLASS) {
                                }
                            }
                            sm9 sm9VarI2 = DescriptorUtilsKt.j(this.this$0.m()).i();
                            y45.i(sm9VarI2, "descriptor.builtIns.anyType");
                            arrayList.add(new KTypeImpl(sm9VarI2, new c74() {
                                @Override
                                public final Type invoke() {
                                    return Object.class;
                                }
                            }));
                        }
                    }
                    return v71.c(arrayList);
                }
            });
            this.m = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KClassImpl> invoke() {
                    Collection<qw0> collectionT = this.this$0.m().T();
                    y45.i(collectionT, "descriptor.sealedSubclasses");
                    ArrayList arrayList = new ArrayList();
                    for (qw0 qw0Var : collectionT) {
                        y45.h(qw0Var, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
                        Class clsP = clb.p(qw0Var);
                        KClassImpl kClassImpl = clsP != null ? new KClassImpl(clsP) : null;
                        if (kClassImpl != null) {
                            arrayList.add(kClassImpl);
                        }
                    }
                    return arrayList;
                }
            });
            this.n = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Collection<KCallableImpl> invoke() {
                    KClassImpl kClassImpl = kClassImpl;
                    return kClassImpl.C(kClassImpl.R(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
                }
            });
            this.o = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Collection<KCallableImpl> invoke() {
                    KClassImpl kClassImpl = kClassImpl;
                    return kClassImpl.C(kClassImpl.S(), KDeclarationContainerImpl.MemberBelonginess.DECLARED);
                }
            });
            this.p = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Collection<KCallableImpl> invoke() {
                    KClassImpl kClassImpl = kClassImpl;
                    return kClassImpl.C(kClassImpl.R(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
                }
            });
            this.q = e.c(new c74() {
                {
                    super(0);
                }

                @Override
                public final Collection<KCallableImpl> invoke() {
                    KClassImpl kClassImpl = kClassImpl;
                    return kClassImpl.C(kClassImpl.S(), KDeclarationContainerImpl.MemberBelonginess.INHERITED);
                }
            });
            this.r = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KCallableImpl> invoke() {
                    return i81.J0(this.this$0.k(), this.this$0.n());
                }
            });
            this.s = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KCallableImpl> invoke() {
                    return i81.J0(this.this$0.l(), this.this$0.o());
                }
            });
            this.t = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KCallableImpl> invoke() {
                    return i81.J0(this.this$0.k(), this.this$0.l());
                }
            });
            this.u = e.c(new c74(this) {
                final Data this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                @Override
                public final List<KCallableImpl> invoke() {
                    return i81.J0(this.this$0.g(), this.this$0.h());
                }
            });
        }

        public final String f(Class cls) {
            String simpleName = cls.getSimpleName();
            Method enclosingMethod = cls.getEnclosingMethod();
            if (enclosingMethod != null) {
                y45.i(simpleName, "name");
                return j1a.X0(simpleName, enclosingMethod.getName() + '$', null, 2, null);
            }
            Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
            if (enclosingConstructor == null) {
                y45.i(simpleName, "name");
                return j1a.W0(simpleName, '$', null, 2, null);
            }
            y45.i(simpleName, "name");
            return j1a.X0(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
        }

        public final Collection g() {
            Object objB = this.r.b(this, w[14]);
            y45.i(objB, "<get-allNonStaticMembers>(...)");
            return (Collection) objB;
        }

        public final Collection h() {
            Object objB = this.s.b(this, w[15]);
            y45.i(objB, "<get-allStaticMembers>(...)");
            return (Collection) objB;
        }

        public final List i() {
            Object objB = this.e.b(this, w[1]);
            y45.i(objB, "<get-annotations>(...)");
            return (List) objB;
        }

        public final Collection j() {
            Object objB = this.h.b(this, w[4]);
            y45.i(objB, "<get-constructors>(...)");
            return (Collection) objB;
        }

        public final Collection k() {
            Object objB = this.n.b(this, w[10]);
            y45.i(objB, "<get-declaredNonStaticMembers>(...)");
            return (Collection) objB;
        }

        public final Collection l() {
            Object objB = this.o.b(this, w[11]);
            y45.i(objB, "<get-declaredStaticMembers>(...)");
            return (Collection) objB;
        }

        public final qw0 m() {
            Object objB = this.d.b(this, w[0]);
            y45.i(objB, "<get-descriptor>(...)");
            return (qw0) objB;
        }

        public final Collection n() {
            Object objB = this.p.b(this, w[12]);
            y45.i(objB, "<get-inheritedNonStaticMembers>(...)");
            return (Collection) objB;
        }

        public final Collection o() {
            Object objB = this.q.b(this, w[13]);
            y45.i(objB, "<get-inheritedStaticMembers>(...)");
            return (Collection) objB;
        }

        public final Object p() {
            return this.j.b(this, w[6]);
        }

        public final String q() {
            return (String) this.g.b(this, w[3]);
        }

        public final String r() {
            return (String) this.f.b(this, w[2]);
        }
    }

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[KotlinClassHeader.Kind.values().length];
            try {
                iArr[KotlinClassHeader.Kind.FILE_FACADE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[KotlinClassHeader.Kind.MULTIFILE_CLASS_PART.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[KotlinClassHeader.Kind.SYNTHETIC_CLASS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[KotlinClassHeader.Kind.UNKNOWN.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[KotlinClassHeader.Kind.CLASS.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            a = iArr;
        }
    }

    public KClassImpl(Class cls) {
        y45.j(cls, "jClass");
        this.e = cls;
        e.b bVarB = e.b(new c74() {
            {
                super(0);
            }

            @Override
            public final Data invoke() {
                return this.this$0.new Data();
            }
        });
        y45.i(bVarB, "lazy { Data() }");
        this.f = bVarB;
    }

    @Override
    public Collection A(by6 by6Var) {
        y45.j(by6Var, "name");
        MemberScope memberScopeR = R();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        return i81.J0(memberScopeR.c(by6Var, noLookupLocation), S().c(by6Var, noLookupLocation));
    }

    @Override
    public ti8 B(int i) {
        Class<?> declaringClass;
        if (y45.e(d().getSimpleName(), "DefaultImpls") && (declaringClass = d().getDeclaringClass()) != null && declaringClass.isInterface()) {
            de5 de5VarE = ed5.e(declaringClass);
            y45.h(de5VarE, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<*>");
            return ((KClassImpl) de5VarE).B(i);
        }
        qw0 descriptor = getDescriptor();
        DeserializedClassDescriptor deserializedClassDescriptor = descriptor instanceof DeserializedClassDescriptor ? (DeserializedClassDescriptor) descriptor : null;
        if (deserializedClassDescriptor == null) {
            return null;
        }
        ProtoBuf$Class protoBuf$ClassV0 = deserializedClassDescriptor.V0();
        GeneratedMessageLite.e eVar = JvmProtoBuf.j;
        y45.i(eVar, "classLocalVariable");
        ProtoBuf$Property protoBuf$Property = (ProtoBuf$Property) cj8.b(protoBuf$ClassV0, eVar, i);
        if (protoBuf$Property != null) {
            return (ti8) clb.h(d(), protoBuf$Property, deserializedClassDescriptor.U0().g(), deserializedClassDescriptor.U0().j(), deserializedClassDescriptor.X0(), KClassImpl$getLocalProperty$2$1$1.INSTANCE);
        }
        return null;
    }

    @Override
    public Collection E(by6 by6Var) {
        y45.j(by6Var, "name");
        MemberScope memberScopeR = R();
        NoLookupLocation noLookupLocation = NoLookupLocation.FROM_REFLECTION;
        return i81.J0(memberScopeR.b(by6Var, noLookupLocation), S().b(by6Var, noLookupLocation));
    }

    public final xw0 N() {
        return f.a.c(d());
    }

    public Collection O() {
        return ((Data) this.f.invoke()).j();
    }

    public final e.b P() {
        return this.f;
    }

    @Override
    public qw0 getDescriptor() {
        return ((Data) this.f.invoke()).m();
    }

    public final MemberScope R() {
        return getDescriptor().q().p();
    }

    public final MemberScope S() {
        MemberScope memberScopeN0 = getDescriptor().n0();
        y45.i(memberScopeN0, "descriptor.staticScope");
        return memberScopeN0;
    }

    public final Void T() {
        KotlinClassHeader kotlinClassHeaderB;
        qq8 qq8VarA = qq8.c.a(d());
        KotlinClassHeader.Kind kindC = (qq8VarA == null || (kotlinClassHeaderB = qq8VarA.b()) == null) ? null : kotlinClassHeaderB.c();
        switch (kindC == null ? -1 : a.a[kindC.ordinal()]) {
            case -1:
            case 6:
                throw new KotlinReflectionInternalError("Unresolved class: " + d());
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
            case 2:
            case 3:
                throw new UnsupportedOperationException("Packages and file facades are not yet supported in Kotlin reflection. Meanwhile please use Java reflection to inspect this class: " + d());
            case 4:
                throw new UnsupportedOperationException("This class is an internal synthetic class generated by the Kotlin compiler, such as an anonymous class for a lambda, a SAM wrapper, a callable reference, etc. It's not a Kotlin class or interface, so the reflection library has no idea what declarations it has. Please use Java reflection to inspect this class: " + d());
            case 5:
                throw new KotlinReflectionInternalError("Unknown class: " + d() + " (kind = " + kindC + ')');
        }
    }

    @Override
    public String c() {
        return ((Data) this.f.invoke()).q();
    }

    @Override
    public Class d() {
        return this.e;
    }

    public boolean equals(Object obj) {
        return (obj instanceof KClassImpl) && y45.e(ed5.c(this), ed5.c((de5) obj));
    }

    @Override
    public boolean g() {
        return getDescriptor().g();
    }

    @Override
    public List getAnnotations() {
        return ((Data) this.f.invoke()).i();
    }

    public int hashCode() {
        return ed5.c(this).hashCode();
    }

    @Override
    public boolean i() {
        return getDescriptor().j() == Modality.SEALED;
    }

    @Override
    public boolean isAbstract() {
        return getDescriptor().j() == Modality.ABSTRACT;
    }

    @Override
    public Object m() {
        return ((Data) this.f.invoke()).p();
    }

    @Override
    public boolean n(Object obj) {
        Integer numC = ReflectClassUtilKt.c(d());
        if (numC != null) {
            return ccb.m(obj, numC.intValue());
        }
        Class clsG = ReflectClassUtilKt.g(d());
        if (clsG == null) {
            clsG = d();
        }
        return clsG.isInstance(obj);
    }

    @Override
    public String o() {
        return ((Data) this.f.invoke()).r();
    }

    @Override
    public boolean s() {
        return getDescriptor().s();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("class ");
        xw0 xw0VarN = N();
        o54 o54VarH = xw0VarN.h();
        y45.i(o54VarH, "classId.packageFqName");
        if (o54VarH.d()) {
            str = "";
        } else {
            str = o54VarH.b() + '.';
        }
        String strB = xw0VarN.i().b();
        y45.i(strB, "classId.relativeClassName.asString()");
        sb.append(str + g1a.M(strB, '.', '$', false, 4, null));
        return sb.toString();
    }

    @Override
    public Collection z() {
        qw0 descriptor = getDescriptor();
        if (descriptor.getKind() == ClassKind.INTERFACE || descriptor.getKind() == ClassKind.OBJECT) {
            return y71.k();
        }
        Collection collectionN = descriptor.n();
        y45.i(collectionN, "descriptor.constructors");
        return collectionN;
    }
}
