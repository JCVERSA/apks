package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.a85;
import defpackage.abb;
import defpackage.af5;
import defpackage.by6;
import defpackage.c74;
import defpackage.dn6;
import defpackage.e74;
import defpackage.eh5;
import defpackage.fj5;
import defpackage.fn6;
import defpackage.gj5;
import defpackage.gmb;
import defpackage.gn6;
import defpackage.hcb;
import defpackage.i81;
import defpackage.ko6;
import defpackage.ky5;
import defpackage.m75;
import defpackage.md;
import defpackage.mz4;
import defpackage.o37;
import defpackage.o85;
import defpackage.or5;
import defpackage.p85;
import defpackage.pf1;
import defpackage.q65;
import defpackage.q85;
import defpackage.ro8;
import defpackage.s75;
import defpackage.s82;
import defpackage.s85;
import defpackage.t82;
import defpackage.ti8;
import defpackage.u82;
import defpackage.ui8;
import defpackage.ux9;
import defpackage.v71;
import defpackage.vx9;
import defpackage.x17;
import defpackage.x85;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.n;

public abstract class LazyJavaScope extends dn6 {
    public static final af5[] m = {xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaScope.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaScope.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), xq8.j(new PropertyReference1Impl(xq8.b(LazyJavaScope.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    public final gj5 b;
    public final LazyJavaScope c;
    public final x17 d;
    public final x17 e;
    public final fn6 f;
    public final gn6 g;
    public final fn6 h;
    public final x17 i;
    public final x17 j;
    public final x17 k;
    public final fn6 l;

    public static final class a {
        public final eh5 a;
        public final eh5 b;
        public final List c;
        public final List d;
        public final boolean e;
        public final List f;

        public a(eh5 eh5Var, eh5 eh5Var2, List list, List list2, boolean z, List list3) {
            y45.j(eh5Var, "returnType");
            y45.j(list, "valueParameters");
            y45.j(list2, "typeParameters");
            y45.j(list3, "errors");
            this.a = eh5Var;
            this.b = eh5Var2;
            this.c = list;
            this.d = list2;
            this.e = z;
            this.f = list3;
        }

        public final List a() {
            return this.f;
        }

        public final boolean b() {
            return this.e;
        }

        public final eh5 c() {
            return this.b;
        }

        public final eh5 d() {
            return this.a;
        }

        public final List e() {
            return this.d;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return y45.e(this.a, aVar.a) && y45.e(this.b, aVar.b) && y45.e(this.c, aVar.c) && y45.e(this.d, aVar.d) && this.e == aVar.e && y45.e(this.f, aVar.f);
        }

        public final List f() {
            return this.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v9, types: [int] */
        /* JADX WARN: Type inference failed for: r1v11 */
        /* JADX WARN: Type inference failed for: r1v8, types: [int] */
        /* JADX WARN: Type inference failed for: r1v9 */
        public int hashCode() {
            int iHashCode = this.a.hashCode() * 31;
            eh5 eh5Var = this.b;
            int iHashCode2 = (((((iHashCode + (eh5Var == null ? 0 : eh5Var.hashCode())) * 31) + this.c.hashCode()) * 31) + this.d.hashCode()) * 31;
            boolean z = this.e;
            ?? r1 = z;
            if (z) {
                r1 = 1;
            }
            return ((iHashCode2 + r1) * 31) + this.f.hashCode();
        }

        public String toString() {
            return "MethodSignatureData(returnType=" + this.a + ", receiverType=" + this.b + ", valueParameters=" + this.c + ", typeParameters=" + this.d + ", hasStableParameterNames=" + this.e + ", errors=" + this.f + ')';
        }
    }

    public static final class b {
        public final List a;
        public final boolean b;

        public b(List list, boolean z) {
            y45.j(list, "descriptors");
            this.a = list;
            this.b = z;
        }

        public final List a() {
            return this.a;
        }

        public final boolean b() {
            return this.b;
        }
    }

    public LazyJavaScope(gj5 gj5Var, LazyJavaScope lazyJavaScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gj5Var, (i & 2) != 0 ? null : lazyJavaScope);
    }

    public final Set A() {
        return (Set) ux9.a(this.i, this, m[0]);
    }

    public final LazyJavaScope B() {
        return this.c;
    }

    public abstract xt1 C();

    public final Set D() {
        return (Set) ux9.a(this.j, this, m[1]);
    }

    public final eh5 E(m75 m75Var) {
        eh5 eh5VarO = this.b.g().o(m75Var.getType(), q85.b(TypeUsage.COMMON, false, false, null, 7, null));
        if ((!d.s0(eh5VarO) && !d.v0(eh5VarO)) || !F(m75Var) || !m75Var.C()) {
            return eh5VarO;
        }
        eh5 eh5VarN = n.n(eh5VarO);
        y45.i(eh5VarN, "makeNotNullable(propertyType)");
        return eh5VarN;
    }

    public final boolean F(m75 m75Var) {
        return m75Var.isFinal() && m75Var.g();
    }

    public boolean G(JavaMethodDescriptor javaMethodDescriptor) {
        y45.j(javaMethodDescriptor, "<this>");
        return true;
    }

    public abstract a H(s75 s75Var, List list, eh5 eh5Var, List list2);

    public final JavaMethodDescriptor I(s75 s75Var) {
        y45.j(s75Var, "method");
        JavaMethodDescriptor javaMethodDescriptorK1 = JavaMethodDescriptor.k1(C(), fj5.a(this.b, s75Var), s75Var.getName(), this.b.a().t().a(s75Var), ((kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a) this.e.invoke()).f(s75Var.getName()) != null && s75Var.f().isEmpty());
        y45.i(javaMethodDescriptorK1, "createJavaMethod(\n      …eters.isEmpty()\n        )");
        gj5 gj5VarF = ContextKt.f(this.b, javaMethodDescriptorK1, s75Var, 0, 4, null);
        List typeParameters = s75Var.getTypeParameters();
        List arrayList = new ArrayList(z71.v(typeParameters, 10));
        Iterator it = typeParameters.iterator();
        while (it.hasNext()) {
            hcb hcbVarA = gj5VarF.f().a((s85) it.next());
            y45.g(hcbVarA);
            arrayList.add(hcbVarA);
        }
        b bVarK = K(gj5VarF, javaMethodDescriptorK1, s75Var.f());
        a aVarH = H(s75Var, arrayList, q(s75Var, gj5VarF), bVarK.a());
        eh5 eh5VarC = aVarH.c();
        javaMethodDescriptorK1.j1(eh5VarC != null ? s82.i(javaMethodDescriptorK1, eh5VarC, md.u1.b()) : null, z(), y71.k(), aVarH.e(), aVarH.f(), aVarH.d(), Modality.Companion.a(false, s75Var.isAbstract(), !s75Var.isFinal()), gmb.d(s75Var.getVisibility()), aVarH.c() != null ? ky5.h(abb.a(JavaMethodDescriptor.H, i81.o0(bVarK.a()))) : kotlin.collections.a.l());
        javaMethodDescriptorK1.n1(aVarH.b(), bVarK.b());
        if (!aVarH.a().isEmpty()) {
            gj5VarF.a().s().a(javaMethodDescriptorK1, aVarH.a());
        }
        return javaMethodDescriptorK1;
    }

    public final ti8 J(final m75 m75Var) {
        final ui8 ui8VarU = u(m75Var);
        ui8VarU.Q0(null, null, null, null);
        ui8VarU.W0(E(m75Var), y71.k(), z(), null, y71.k());
        if (y82.K(ui8VarU, ui8VarU.getType())) {
            ui8VarU.G0(new c74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override
                public final o37 invoke() {
                    vx9 vx9VarE = this.this$0.w().e();
                    final LazyJavaScope lazyJavaScope = this.this$0;
                    final m75 m75Var2 = m75Var;
                    final ui8 ui8Var = ui8VarU;
                    return vx9VarE.b(new c74() {
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(0);
                        }

                        @Override
                        public final pf1 invoke() {
                            return lazyJavaScope.w().a().g().a(m75Var2, ui8Var);
                        }
                    });
                }
            });
        }
        this.b.a().h().d(m75Var, ui8VarU);
        return ui8VarU;
    }

    public final b K(gj5 gj5Var, e eVar, List list) {
        Pair pairA;
        by6 name;
        gj5 gj5Var2 = gj5Var;
        y45.j(gj5Var2, "c");
        y45.j(eVar, "function");
        y45.j(list, "jValueParameters");
        Iterable<mz4> iterableJ1 = i81.j1(list);
        ArrayList arrayList = new ArrayList(z71.v(iterableJ1, 10));
        boolean z = false;
        for (mz4 mz4Var : iterableJ1) {
            int iA = mz4Var.a();
            x85 x85Var = (x85) mz4Var.b();
            md mdVarA = fj5.a(gj5Var2, x85Var);
            p85 p85VarB = q85.b(TypeUsage.COMMON, false, false, null, 7, null);
            if (x85Var.b()) {
                o85 type = x85Var.getType();
                q65 q65Var = type instanceof q65 ? (q65) type : null;
                if (q65Var == null) {
                    throw new AssertionError("Vararg parameter should be an array: " + x85Var);
                }
                eh5 eh5VarK = gj5Var.g().k(q65Var, p85VarB, true);
                pairA = abb.a(eh5VarK, gj5Var.d().o().k(eh5VarK));
            } else {
                pairA = abb.a(gj5Var.g().o(x85Var.getType(), p85VarB), null);
            }
            eh5 eh5Var = (eh5) pairA.component1();
            eh5 eh5Var2 = (eh5) pairA.component2();
            if (y45.e(eVar.getName().b(), "equals") && list.size() == 1 && y45.e(gj5Var.d().o().I(), eh5Var)) {
                name = by6.g("other");
            } else {
                name = x85Var.getName();
                if (name == null) {
                    z = true;
                }
                if (name == null) {
                    StringBuilder sb = new StringBuilder();
                    sb.append('p');
                    sb.append(iA);
                    name = by6.g(sb.toString());
                    y45.i(name, "identifier(\"p$index\")");
                }
            }
            boolean z2 = z;
            by6 by6Var = name;
            y45.i(by6Var, "if (function.name.asStri…(\"p$index\")\n            }");
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new ValueParameterDescriptorImpl(eVar, null, iA, mdVarA, by6Var, eh5Var, false, false, false, eh5Var2, gj5Var.a().t().a(x85Var)));
            arrayList = arrayList2;
            z = z2;
            gj5Var2 = gj5Var;
        }
        return new b(i81.b1(arrayList), z);
    }

    public final void L(Set set) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : set) {
            String strC = ko6.c((g) obj, false, false, 2, null);
            Object arrayList = linkedHashMap.get(strC);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(strC, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        for (List list : linkedHashMap.values()) {
            if (list.size() != 1) {
                List list2 = list;
                Collection collectionA = OverridingUtilsKt.a(list2, new e74() {
                    @Override
                    public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(g gVar) {
                        y45.j(gVar, "$this$selectMostSpecificInEachOverridableGroup");
                        return gVar;
                    }
                });
                set.removeAll(list2);
                set.addAll(collectionA);
            }
        }
    }

    @Override
    public Set a() {
        return A();
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return !d().contains(by6Var) ? y71.k() : (Collection) this.l.invoke(by6Var);
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return !a().contains(by6Var) ? y71.k() : (Collection) this.h.invoke(by6Var);
    }

    @Override
    public Set d() {
        return D();
    }

    @Override
    public Set e() {
        return x();
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        return (Collection) this.d.invoke();
    }

    public abstract Set l(u82 u82Var, e74 e74Var);

    public final List m(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        NoLookupLocation noLookupLocation = NoLookupLocation.WHEN_GET_ALL_DESCRIPTORS;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        if (u82Var.a(u82.c.c())) {
            for (by6 by6Var : l(u82Var, e74Var)) {
                if (((Boolean) e74Var.invoke(by6Var)).booleanValue()) {
                    v71.a(linkedHashSet, f(by6Var, noLookupLocation));
                }
            }
        }
        if (u82Var.a(u82.c.d()) && !u82Var.l().contains(t82.a.a)) {
            for (by6 by6Var2 : n(u82Var, e74Var)) {
                if (((Boolean) e74Var.invoke(by6Var2)).booleanValue()) {
                    linkedHashSet.addAll(c(by6Var2, noLookupLocation));
                }
            }
        }
        if (u82Var.a(u82.c.i()) && !u82Var.l().contains(t82.a.a)) {
            for (by6 by6Var3 : t(u82Var, e74Var)) {
                if (((Boolean) e74Var.invoke(by6Var3)).booleanValue()) {
                    linkedHashSet.addAll(b(by6Var3, noLookupLocation));
                }
            }
        }
        return i81.b1(linkedHashSet);
    }

    public abstract Set n(u82 u82Var, e74 e74Var);

    public void o(Collection collection, by6 by6Var) {
        y45.j(collection, "result");
        y45.j(by6Var, "name");
    }

    public abstract kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a p();

    public final eh5 q(s75 s75Var, gj5 gj5Var) {
        y45.j(s75Var, "method");
        y45.j(gj5Var, "c");
        return gj5Var.g().o(s75Var.getReturnType(), q85.b(TypeUsage.COMMON, s75Var.D().o(), false, null, 6, null));
    }

    public abstract void r(Collection collection, by6 by6Var);

    public abstract void s(by6 by6Var, Collection collection);

    public abstract Set t(u82 u82Var, e74 e74Var);

    public String toString() {
        return "Lazy scope for " + C();
    }

    public final ui8 u(m75 m75Var) {
        a85 a85VarA1 = a85.a1(C(), fj5.a(this.b, m75Var), Modality.FINAL, gmb.d(m75Var.getVisibility()), !m75Var.isFinal(), m75Var.getName(), this.b.a().t().a(m75Var), F(m75Var));
        y45.i(a85VarA1, "create(\n            owne…d.isFinalStatic\n        )");
        return a85VarA1;
    }

    public final x17 v() {
        return this.d;
    }

    public final gj5 w() {
        return this.b;
    }

    public final Set x() {
        return (Set) ux9.a(this.k, this, m[2]);
    }

    public final x17 y() {
        return this.e;
    }

    public abstract ro8 z();

    public LazyJavaScope(gj5 gj5Var, LazyJavaScope lazyJavaScope) {
        y45.j(gj5Var, "c");
        this.b = gj5Var;
        this.c = lazyJavaScope;
        this.d = gj5Var.e().h(new c74() {
            {
                super(0);
            }

            @Override
            public final Collection<xt1> invoke() {
                return this.this$0.m(u82.o, MemberScope.a.a());
            }
        }, y71.k());
        this.e = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final a invoke() {
                return this.this$0.p();
            }
        });
        this.f = gj5Var.e().i(new e74() {
            {
                super(1);
            }

            @Override
            public final Collection<g> invoke(by6 by6Var) {
                y45.j(by6Var, "name");
                if (this.this$0.B() != null) {
                    return (Collection) this.this$0.B().f.invoke(by6Var);
                }
                ArrayList arrayList = new ArrayList();
                for (s75 s75Var : ((a) this.this$0.y().invoke()).d(by6Var)) {
                    JavaMethodDescriptor javaMethodDescriptorI = this.this$0.I(s75Var);
                    if (this.this$0.G(javaMethodDescriptorI)) {
                        this.this$0.w().a().h().e(s75Var, javaMethodDescriptorI);
                        arrayList.add(javaMethodDescriptorI);
                    }
                }
                this.this$0.o(arrayList, by6Var);
                return arrayList;
            }
        });
        this.g = gj5Var.e().a(new e74() {
            {
                super(1);
            }

            @Override
            public final ti8 invoke(by6 by6Var) {
                y45.j(by6Var, "name");
                if (this.this$0.B() != null) {
                    return (ti8) this.this$0.B().g.invoke(by6Var);
                }
                m75 m75VarB = ((a) this.this$0.y().invoke()).b(by6Var);
                if (m75VarB == null || m75VarB.K()) {
                    return null;
                }
                return this.this$0.J(m75VarB);
            }
        });
        this.h = gj5Var.e().i(new e74() {
            {
                super(1);
            }

            @Override
            public final Collection<g> invoke(by6 by6Var) {
                y45.j(by6Var, "name");
                LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) this.this$0.f.invoke(by6Var));
                this.this$0.L(linkedHashSet);
                this.this$0.r(linkedHashSet, by6Var);
                return i81.b1(this.this$0.w().a().r().g(this.this$0.w(), linkedHashSet));
            }
        });
        this.i = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                return this.this$0.n(u82.v, null);
            }
        });
        this.j = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                return this.this$0.t(u82.w, null);
            }
        });
        this.k = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                return this.this$0.l(u82.t, null);
            }
        });
        this.l = gj5Var.e().i(new e74() {
            {
                super(1);
            }

            @Override
            public final List<ti8> invoke(by6 by6Var) {
                y45.j(by6Var, "name");
                ArrayList arrayList = new ArrayList();
                v71.a(arrayList, this.this$0.g.invoke(by6Var));
                this.this$0.s(by6Var, arrayList);
                return y82.t(this.this$0.C()) ? i81.b1(arrayList) : i81.b1(this.this$0.w().a().r().g(this.this$0.w(), arrayList));
            }
        });
    }
}
