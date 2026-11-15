package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.b75;
import defpackage.b92;
import defpackage.c74;
import defpackage.c92;
import defpackage.d85;
import defpackage.e74;
import defpackage.ed3;
import defpackage.eh5;
import defpackage.fj5;
import defpackage.gd;
import defpackage.gj5;
import defpackage.gmb;
import defpackage.hcb;
import defpackage.i81;
import defpackage.inb;
import defpackage.iy5;
import defpackage.j75;
import defpackage.k05;
import defpackage.k65;
import defpackage.md;
import defpackage.o54;
import defpackage.o85;
import defpackage.ocb;
import defpackage.p2;
import defpackage.p85;
import defpackage.px0;
import defpackage.q15;
import defpackage.q85;
import defpackage.qo3;
import defpackage.qw0;
import defpackage.rw0;
import defpackage.s0a;
import defpackage.s65;
import defpackage.s85;
import defpackage.sbb;
import defpackage.t6a;
import defpackage.tfc;
import defpackage.u15;
import defpackage.v65;
import defpackage.v71;
import defpackage.x17;
import defpackage.x71;
import defpackage.xt1;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.yc5;
import defpackage.ye9;
import defpackage.yi5;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.checker.c;
import kotlin.reflect.jvm.internal.impl.types.j;

public final class LazyJavaClassDescriptor extends rw0 implements v65 {
    public final gj5 j;
    public final s65 k;
    public final qw0 l;
    public final gj5 m;
    public final yi5 n;
    public final ClassKind o;
    public final Modality p;
    public final tfc q;
    public final boolean r;
    public final LazyJavaClassTypeConstructor s;
    public final LazyJavaClassMemberScope t;
    public final ScopesHolderForClass u;
    public final k05 v;
    public final LazyJavaStaticClassScope w;
    public final md x;
    public final x17 y;
    public static final a z = new a(null);
    public static final Set A = ye9.j("equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString");

    public final class LazyJavaClassTypeConstructor extends p2 {
        public final x17 d;

        public LazyJavaClassTypeConstructor() {
            super(LazyJavaClassDescriptor.this.m.e());
            this.d = LazyJavaClassDescriptor.this.m.e().c(new c74() {
                {
                    super(0);
                }

                @Override
                public final List<hcb> invoke() {
                    return TypeParameterUtilsKt.d(lazyJavaClassDescriptor);
                }
            });
        }

        @Override
        public boolean d() {
            return true;
        }

        @Override
        public List getParameters() {
            return (List) this.d.invoke();
        }

        @Override
        public Collection j() {
            Collection collectionK = LazyJavaClassDescriptor.this.K0().k();
            ArrayList arrayList = new ArrayList(collectionK.size());
            ArrayList<o85> arrayList2 = new ArrayList(0);
            eh5 eh5VarW = w();
            Iterator it = collectionK.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                b75 b75Var = (b75) it.next();
                eh5 eh5VarH = LazyJavaClassDescriptor.this.m.a().r().h(LazyJavaClassDescriptor.this.m.g().o(b75Var, q85.b(TypeUsage.SUPERTYPE, false, false, null, 7, null)), LazyJavaClassDescriptor.this.m);
                if (eh5VarH.I0().c() instanceof NotFoundClasses.b) {
                    arrayList2.add(b75Var);
                }
                if (!y45.e(eh5VarH.I0(), eh5VarW != null ? eh5VarW.I0() : null) && !d.b0(eh5VarH)) {
                    arrayList.add(eh5VarH);
                }
            }
            qw0 qw0Var = LazyJavaClassDescriptor.this.l;
            v71.a(arrayList, qw0Var != null ? iy5.a(qw0Var, LazyJavaClassDescriptor.this).c().p(qw0Var.q(), Variance.INVARIANT) : null);
            v71.a(arrayList, eh5VarW);
            if (!arrayList2.isEmpty()) {
                ed3 ed3VarC = LazyJavaClassDescriptor.this.m.a().c();
                qw0 qw0VarC = c();
                ArrayList arrayList3 = new ArrayList(z71.v(arrayList2, 10));
                for (o85 o85Var : arrayList2) {
                    y45.h(o85Var, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType");
                    arrayList3.add(((b75) o85Var).y());
                }
                ed3VarC.b(qw0VarC, arrayList3);
            }
            return !arrayList.isEmpty() ? i81.b1(arrayList) : x71.e(LazyJavaClassDescriptor.this.m.d().o().i());
        }

        @Override
        public t6a p() {
            return LazyJavaClassDescriptor.this.m.a().v();
        }

        public String toString() {
            String strB = LazyJavaClassDescriptor.this.getName().b();
            y45.i(strB, "name.asString()");
            return strB;
        }

        @Override
        public qw0 c() {
            return LazyJavaClassDescriptor.this;
        }

        public final eh5 w() {
            o54 o54VarB;
            ArrayList arrayList;
            o54 o54VarX = x();
            if (o54VarX == null || o54VarX.d() || !o54VarX.i(e.u)) {
                o54VarX = null;
            }
            if (o54VarX == null) {
                o54VarB = qo3.a.b(DescriptorUtilsKt.l(LazyJavaClassDescriptor.this));
                if (o54VarB == null) {
                    return null;
                }
            } else {
                o54VarB = o54VarX;
            }
            qw0 qw0VarV = DescriptorUtilsKt.v(LazyJavaClassDescriptor.this.m.d(), o54VarB, NoLookupLocation.FROM_JAVA_LOADER);
            if (qw0VarV == null) {
                return null;
            }
            int size = qw0VarV.m().getParameters().size();
            List parameters = LazyJavaClassDescriptor.this.m().getParameters();
            y45.i(parameters, "getTypeConstructor().parameters");
            int size2 = parameters.size();
            if (size2 == size) {
                List list = parameters;
                arrayList = new ArrayList(z71.v(list, 10));
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    arrayList.add(new ocb(Variance.INVARIANT, ((hcb) it.next()).q()));
                }
            } else {
                if (size2 != 1 || size <= 1 || o54VarX != null) {
                    return null;
                }
                ocb ocbVar = new ocb(Variance.INVARIANT, ((hcb) i81.O0(parameters)).q());
                u15 u15Var = new u15(1, size);
                ArrayList arrayList2 = new ArrayList(z71.v(u15Var, 10));
                Iterator it2 = u15Var.iterator();
                while (it2.hasNext()) {
                    ((q15) it2).nextInt();
                    arrayList2.add(ocbVar);
                }
                arrayList = arrayList2;
            }
            return KotlinTypeFactory.g(j.c.h(), qw0VarV, arrayList);
        }

        public final o54 x() {
            String str;
            md annotations = LazyJavaClassDescriptor.this.getAnnotations();
            o54 o54Var = yc5.q;
            y45.i(o54Var, "PURELY_IMPLEMENTS_ANNOTATION");
            gd gdVarA = annotations.a(o54Var);
            if (gdVarA == null) {
                return null;
            }
            Object objP0 = i81.P0(gdVarA.f().values());
            s0a s0aVar = objP0 instanceof s0a ? (s0a) objP0 : null;
            if (s0aVar == null || (str = (String) s0aVar.b()) == null || !kotlin.reflect.jvm.internal.impl.name.a.e(str)) {
                return null;
            }
            return new o54(str);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public LazyJavaClassDescriptor(gj5 gj5Var, xt1 xt1Var, s65 s65Var, qw0 qw0Var, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gj5Var, xt1Var, s65Var, (i & 8) != 0 ? null : qw0Var);
    }

    @Override
    public MemberScope D() {
        return this.v;
    }

    @Override
    public boolean E0() {
        return false;
    }

    public final LazyJavaClassDescriptor I0(d85 d85Var, qw0 qw0Var) {
        y45.j(d85Var, "javaResolverCache");
        gj5 gj5Var = this.m;
        gj5 gj5VarI = ContextKt.i(gj5Var, gj5Var.a().x(d85Var));
        xt1 xt1VarB = b();
        y45.i(xt1VarB, "containingDeclaration");
        return new LazyJavaClassDescriptor(gj5VarI, xt1VarB, this.k, qw0Var);
    }

    @Override
    public List n() {
        return (List) this.t.x0().invoke();
    }

    public final s65 K0() {
        return this.k;
    }

    public final List L0() {
        return (List) this.n.getValue();
    }

    public final gj5 M0() {
        return this.j;
    }

    @Override
    public LazyJavaClassMemberScope E() {
        MemberScope memberScopeE = super.E();
        y45.h(memberScopeE, "null cannot be cast to non-null type org.jetbrains.kotlin.load.java.lazy.descriptors.LazyJavaClassMemberScope");
        return (LazyJavaClassMemberScope) memberScopeE;
    }

    @Override
    public LazyJavaClassMemberScope d0(c cVar) {
        y45.j(cVar, "kotlinTypeRefiner");
        return (LazyJavaClassMemberScope) this.u.c(cVar);
    }

    @Override
    public Collection T() {
        if (this.p != Modality.SEALED) {
            return y71.k();
        }
        p85 p85VarB = q85.b(TypeUsage.COMMON, false, false, null, 7, null);
        Collection collectionW = this.k.w();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionW.iterator();
        while (it.hasNext()) {
            px0 px0VarC = this.m.g().o((b75) it.next(), p85VarB).I0().c();
            qw0 qw0Var = px0VarC instanceof qw0 ? (qw0) px0VarC : null;
            if (qw0Var != null) {
                arrayList.add(qw0Var);
            }
        }
        return i81.T0(arrayList, new Comparator() {
            @Override
            public final int compare(T t, T t2) {
                return kotlin.comparisons.a.d(DescriptorUtilsKt.l((qw0) t).b(), DescriptorUtilsKt.l((qw0) t2).b());
            }
        });
    }

    @Override
    public inb c0() {
        return null;
    }

    @Override
    public boolean f0() {
        return false;
    }

    @Override
    public boolean g() {
        return this.r;
    }

    @Override
    public md getAnnotations() {
        return this.x;
    }

    @Override
    public ClassKind getKind() {
        return this.o;
    }

    @Override
    public c92 getVisibility() {
        if (!y45.e(this.q, b92.a) || this.k.m() != null) {
            return gmb.d(this.q);
        }
        c92 c92Var = j75.a;
        y45.i(c92Var, "{\n            JavaDescri…KAGE_VISIBILITY\n        }");
        return c92Var;
    }

    @Override
    public boolean h0() {
        return false;
    }

    @Override
    public boolean isInline() {
        return false;
    }

    @Override
    public Modality j() {
        return this.p;
    }

    @Override
    public boolean j0() {
        return false;
    }

    @Override
    public sbb m() {
        return this.s;
    }

    @Override
    public boolean m0() {
        return false;
    }

    @Override
    public MemberScope n0() {
        return this.w;
    }

    @Override
    public qw0 o0() {
        return null;
    }

    @Override
    public List r() {
        return (List) this.y.invoke();
    }

    @Override
    public boolean s() {
        return false;
    }

    public String toString() {
        return "Lazy Java class " + DescriptorUtilsKt.m(this);
    }

    @Override
    public kotlin.reflect.jvm.internal.impl.descriptors.b w() {
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor(gj5 gj5Var, xt1 xt1Var, s65 s65Var, qw0 qw0Var) {
        Modality modalityA;
        super(gj5Var.e(), xt1Var, s65Var.getName(), gj5Var.a().t().a(s65Var), false);
        y45.j(gj5Var, "outerContext");
        y45.j(xt1Var, "containingDeclaration");
        y45.j(s65Var, "jClass");
        this.j = gj5Var;
        this.k = s65Var;
        this.l = qw0Var;
        gj5 gj5VarD = ContextKt.d(gj5Var, this, s65Var, 0, 4, null);
        this.m = gj5VarD;
        gj5VarD.a().h().c(s65Var, this);
        s65Var.B();
        this.n = kotlin.b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final List<k65> invoke() {
                xw0 xw0VarK = DescriptorUtilsKt.k(this.this$0);
                if (xw0VarK != null) {
                    return this.this$0.M0().a().f().a(xw0VarK);
                }
                return null;
            }
        });
        this.o = s65Var.o() ? ClassKind.ANNOTATION_CLASS : s65Var.L() ? ClassKind.INTERFACE : s65Var.J() ? ClassKind.ENUM_CLASS : ClassKind.CLASS;
        if (s65Var.o() || s65Var.J()) {
            modalityA = Modality.FINAL;
        } else {
            modalityA = Modality.Companion.a(s65Var.i(), s65Var.i() || s65Var.isAbstract() || s65Var.L(), !s65Var.isFinal());
        }
        this.p = modalityA;
        this.q = s65Var.getVisibility();
        this.r = (s65Var.m() == null || s65Var.g()) ? false : true;
        this.s = new LazyJavaClassTypeConstructor();
        LazyJavaClassMemberScope lazyJavaClassMemberScope = new LazyJavaClassMemberScope(gj5VarD, this, s65Var, qw0Var != null, null, 16, null);
        this.t = lazyJavaClassMemberScope;
        this.u = ScopesHolderForClass.e.a(this, gj5VarD.e(), gj5VarD.a().k().d(), new e74() {
            {
                super(1);
            }

            @Override
            public final LazyJavaClassMemberScope invoke(c cVar) {
                y45.j(cVar, "it");
                gj5 gj5Var2 = this.this$0.m;
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.this$0;
                return new LazyJavaClassMemberScope(gj5Var2, lazyJavaClassDescriptor, lazyJavaClassDescriptor.K0(), this.this$0.l != null, this.this$0.t);
            }
        });
        this.v = new k05(lazyJavaClassMemberScope);
        this.w = new LazyJavaStaticClassScope(gj5VarD, s65Var, this);
        this.x = fj5.a(gj5VarD, s65Var);
        this.y = gj5VarD.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<hcb> invoke() {
                List<s85> typeParameters = this.this$0.K0().getTypeParameters();
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.this$0;
                ArrayList arrayList = new ArrayList(z71.v(typeParameters, 10));
                for (s85 s85Var : typeParameters) {
                    hcb hcbVarA = lazyJavaClassDescriptor.m.f().a(s85Var);
                    if (hcbVarA == null) {
                        throw new AssertionError("Parameter " + s85Var + " surely belongs to class " + lazyJavaClassDescriptor.K0() + ", so it must be resolved");
                    }
                    arrayList.add(hcbVarA);
                }
                return arrayList;
            }
        });
    }
}
