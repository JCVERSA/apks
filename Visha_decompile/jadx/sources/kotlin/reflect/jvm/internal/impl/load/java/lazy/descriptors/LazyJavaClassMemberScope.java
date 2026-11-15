package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.a85;
import defpackage.aj9;
import defpackage.b92;
import defpackage.bm9;
import defpackage.by6;
import defpackage.c74;
import defpackage.c75;
import defpackage.c85;
import defpackage.c92;
import defpackage.cq9;
import defpackage.d81;
import defpackage.dlb;
import defpackage.e74;
import defpackage.eb3;
import defpackage.ed3;
import defpackage.eh5;
import defpackage.fj5;
import defpackage.fmb;
import defpackage.gj5;
import defpackage.gmb;
import defpackage.gn6;
import defpackage.hcb;
import defpackage.i75;
import defpackage.i81;
import defpackage.j75;
import defpackage.ko6;
import defpackage.ky5;
import defpackage.m75;
import defpackage.mcb;
import defpackage.md;
import defpackage.nw0;
import defpackage.o54;
import defpackage.o75;
import defpackage.o85;
import defpackage.or5;
import defpackage.p54;
import defpackage.p85;
import defpackage.px0;
import defpackage.q65;
import defpackage.q85;
import defpackage.qw0;
import defpackage.r75;
import defpackage.ri8;
import defpackage.ro8;
import defpackage.s65;
import defpackage.s75;
import defpackage.s82;
import defpackage.s85;
import defpackage.t65;
import defpackage.ti8;
import defpackage.u82;
import defpackage.v71;
import defpackage.v82;
import defpackage.vi8;
import defpackage.vx9;
import defpackage.wi8;
import defpackage.wn8;
import defpackage.x17;
import defpackage.x65;
import defpackage.x71;
import defpackage.xc5;
import defpackage.xw0;
import defpackage.y45;
import defpackage.y71;
import defpackage.y82;
import defpackage.yc5;
import defpackage.yi8;
import defpackage.z71;
import defpackage.ze9;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.builtins.d;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.c;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.descriptors.h;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithDifferentJvmName;
import kotlin.reflect.jvm.internal.impl.load.java.BuiltinMethodsWithSpecialGenericSignature;
import kotlin.reflect.jvm.internal.impl.load.java.ClassicBuiltinSpecialProperties;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialBuiltinMembers;
import kotlin.reflect.jvm.internal.impl.load.java.SpecialGenericSignatures;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.JavaMethodDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.SignatureEnhancement;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeUsage;
import kotlin.reflect.jvm.internal.impl.types.n;

public final class LazyJavaClassMemberScope extends LazyJavaScope {
    public final qw0 n;
    public final s65 o;
    public final boolean p;
    public final x17 q;
    public final x17 r;
    public final x17 s;
    public final x17 t;
    public final gn6 u;

    public LazyJavaClassMemberScope(gj5 gj5Var, qw0 qw0Var, s65 s65Var, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(gj5Var, qw0Var, s65Var, z, (i & 16) != 0 ? null : lazyJavaClassMemberScope);
    }

    public static a85 k0(LazyJavaClassMemberScope lazyJavaClassMemberScope, s75 s75Var, eh5 eh5Var, Modality modality, int i, Object obj) {
        if ((i & 2) != 0) {
            eh5Var = null;
        }
        return lazyJavaClassMemberScope.j0(s75Var, eh5Var, modality);
    }

    public final Set A0(by6 by6Var) {
        Collection collectionC0 = c0();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionC0.iterator();
        while (it.hasNext()) {
            Collection collectionB = ((eh5) it.next()).p().b(by6Var, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(z71.v(collectionB, 10));
            Iterator it2 = collectionB.iterator();
            while (it2.hasNext()) {
                arrayList2.add((ti8) it2.next());
            }
            d81.C(arrayList, arrayList2);
        }
        return i81.g1(arrayList);
    }

    public final boolean B0(g gVar, e eVar) {
        String strC = ko6.c(gVar, false, false, 2, null);
        e eVarA = eVar.a();
        y45.i(eVarA, "builtinWithErasedParameters.original");
        return y45.e(strC, ko6.c(eVarA, false, false, 2, null)) && !p0(gVar, eVar);
    }

    public final boolean C0(final g gVar) {
        by6 name = gVar.getName();
        y45.i(name, "function.name");
        List listA = ri8.a(name);
        if (!(listA instanceof Collection) || !listA.isEmpty()) {
            Iterator it = listA.iterator();
            while (it.hasNext()) {
                Set<ti8> setA0 = A0((by6) it.next());
                if (!(setA0 instanceof Collection) || !setA0.isEmpty()) {
                    for (ti8 ti8Var : setA0) {
                        if (o0(ti8Var, new e74() {
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(1);
                            }

                            @Override
                            public final Collection<g> invoke(by6 by6Var) {
                                y45.j(by6Var, "accessorName");
                                return y45.e(gVar.getName(), by6Var) ? x71.e(gVar) : i81.J0(this.J0(by6Var), this.K0(by6Var));
                            }
                        })) {
                            if (!ti8Var.y()) {
                                String strB = gVar.getName().b();
                                y45.i(strB, "function.name.asString()");
                                if (!xc5.d(strB)) {
                                }
                            }
                            return false;
                        }
                    }
                }
            }
        }
        return (q0(gVar) || L0(gVar) || s0(gVar)) ? false : true;
    }

    public final g D0(g gVar, e74 e74Var, Collection collection) {
        g gVarH0;
        e eVarK = BuiltinMethodsWithSpecialGenericSignature.k(gVar);
        if (eVarK == null || (gVarH0 = h0(eVarK, e74Var)) == null) {
            return null;
        }
        if (!C0(gVarH0)) {
            gVarH0 = null;
        }
        if (gVarH0 != null) {
            return g0(gVarH0, eVarK, collection);
        }
        return null;
    }

    public final g E0(g gVar, e74 e74Var, by6 by6Var, Collection collection) {
        g gVar2 = (g) SpecialBuiltinMembers.d(gVar);
        if (gVar2 == null) {
            return null;
        }
        String strB = SpecialBuiltinMembers.b(gVar2);
        y45.g(strB);
        by6 by6VarG = by6.g(strB);
        y45.i(by6VarG, "identifier(nameInJava)");
        Iterator it = ((Collection) e74Var.invoke(by6VarG)).iterator();
        while (it.hasNext()) {
            g gVarM0 = m0((g) it.next(), by6Var);
            if (r0(gVar2, gVarM0)) {
                return g0(gVarM0, gVar2, collection);
            }
        }
        return null;
    }

    public final g F0(g gVar, e74 e74Var) {
        if (!gVar.isSuspend()) {
            return null;
        }
        by6 name = gVar.getName();
        y45.i(name, "descriptor.name");
        Iterator it = ((Iterable) e74Var.invoke(name)).iterator();
        while (it.hasNext()) {
            g gVarN0 = n0((g) it.next());
            if (gVarN0 == null || !p0(gVarN0, gVar)) {
                gVarN0 = null;
            }
            if (gVarN0 != null) {
                return gVarN0;
            }
        }
        return null;
    }

    @Override
    public boolean G(JavaMethodDescriptor javaMethodDescriptor) {
        y45.j(javaMethodDescriptor, "<this>");
        if (this.o.o()) {
            return false;
        }
        return C0(javaMethodDescriptor);
    }

    public void G0(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        fmb.a(w().a().l(), or5Var, C(), by6Var);
    }

    @Override
    public LazyJavaScope.a H(s75 s75Var, List list, eh5 eh5Var, List list2) {
        y45.j(s75Var, "method");
        y45.j(list, "methodTypeParameters");
        y45.j(eh5Var, "returnType");
        y45.j(list2, "valueParameters");
        aj9.b bVarB = w().a().s().b(s75Var, C(), eh5Var, null, list2, list);
        y45.i(bVarB, "c.components.signaturePr…dTypeParameters\n        )");
        eh5 eh5VarD = bVarB.d();
        y45.i(eh5VarD, "propagated.returnType");
        eh5 eh5VarC = bVarB.c();
        List listF = bVarB.f();
        y45.i(listF, "propagated.valueParameters");
        List listE = bVarB.e();
        y45.i(listE, "propagated.typeParameters");
        boolean zG = bVarB.g();
        List listB = bVarB.b();
        y45.i(listB, "propagated.errors");
        return new LazyJavaScope.a(eh5VarD, eh5VarC, listF, listE, zG, listB);
    }

    public final t65 H0(c75 c75Var) {
        qw0 qw0VarC = C();
        t65 t65VarO1 = t65.o1(qw0VarC, fj5.a(w(), c75Var), false, w().a().t().a(c75Var));
        y45.i(t65VarO1, "createJavaConstructor(\n …ce(constructor)\n        )");
        gj5 gj5VarE = ContextKt.e(w(), t65VarO1, c75Var, qw0VarC.r().size());
        LazyJavaScope.b bVarK = K(gj5VarE, t65VarO1, c75Var.f());
        List listR = qw0VarC.r();
        y45.i(listR, "classDescriptor.declaredTypeParameters");
        List list = listR;
        List typeParameters = c75Var.getTypeParameters();
        ArrayList arrayList = new ArrayList(z71.v(typeParameters, 10));
        Iterator it = typeParameters.iterator();
        while (it.hasNext()) {
            hcb hcbVarA = gj5VarE.f().a((s85) it.next());
            y45.g(hcbVarA);
            arrayList.add(hcbVarA);
        }
        t65VarO1.m1(bVarK.a(), gmb.d(c75Var.getVisibility()), i81.J0(list, arrayList));
        t65VarO1.T0(false);
        t65VarO1.U0(bVarK.b());
        t65VarO1.b1(qw0VarC.q());
        gj5VarE.a().h().b(c75Var, t65VarO1);
        return t65VarO1;
    }

    public final JavaMethodDescriptor I0(c85 c85Var) {
        JavaMethodDescriptor javaMethodDescriptorK1 = JavaMethodDescriptor.k1(C(), fj5.a(w(), c85Var), c85Var.getName(), w().a().t().a(c85Var), true);
        y45.i(javaMethodDescriptorK1, "createJavaMethod(\n      …omponent), true\n        )");
        javaMethodDescriptorK1.j1(null, z(), y71.k(), y71.k(), y71.k(), w().g().o(c85Var.getType(), q85.b(TypeUsage.COMMON, false, false, null, 6, null)), Modality.Companion.a(false, false, true), b92.e, null);
        javaMethodDescriptorK1.n1(false, false);
        w().a().h().e(c85Var, javaMethodDescriptorK1);
        return javaMethodDescriptorK1;
    }

    public final Collection J0(by6 by6Var) {
        Collection collectionD = ((a) y().invoke()).d(by6Var);
        ArrayList arrayList = new ArrayList(z71.v(collectionD, 10));
        Iterator it = collectionD.iterator();
        while (it.hasNext()) {
            arrayList.add(I((s75) it.next()));
        }
        return arrayList;
    }

    public final Collection K0(by6 by6Var) {
        Set setY0 = y0(by6Var);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setY0) {
            g gVar = (g) obj;
            if (!SpecialBuiltinMembers.a(gVar) && BuiltinMethodsWithSpecialGenericSignature.k(gVar) == null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final boolean L0(g gVar) {
        BuiltinMethodsWithSpecialGenericSignature builtinMethodsWithSpecialGenericSignature = BuiltinMethodsWithSpecialGenericSignature.n;
        by6 name = gVar.getName();
        y45.i(name, "name");
        if (!builtinMethodsWithSpecialGenericSignature.l(name)) {
            return false;
        }
        by6 name2 = gVar.getName();
        y45.i(name2, "name");
        Set setY0 = y0(name2);
        ArrayList arrayList = new ArrayList();
        Iterator it = setY0.iterator();
        while (it.hasNext()) {
            e eVarK = BuiltinMethodsWithSpecialGenericSignature.k((g) it.next());
            if (eVarK != null) {
                arrayList.add(eVarK);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (B0(gVar, (e) it2.next())) {
                return true;
            }
        }
        return false;
    }

    public final void V(List list, c cVar, int i, s75 s75Var, eh5 eh5Var, eh5 eh5Var2) {
        md mdVarB = md.u1.b();
        by6 name = s75Var.getName();
        eh5 eh5VarN = n.n(eh5Var);
        y45.i(eh5VarN, "makeNotNullable(returnType)");
        list.add(new ValueParameterDescriptorImpl(cVar, null, i, mdVarB, name, eh5VarN, s75Var.N(), false, false, eh5Var2 != null ? n.n(eh5Var2) : null, w().a().t().a(s75Var)));
    }

    public final void W(Collection collection, by6 by6Var, Collection collection2, boolean z) {
        Collection collectionD = v82.d(by6Var, collection2, collection, C(), w().a().c(), w().a().k().a());
        y45.i(collectionD, "resolveOverridesForNonSt….overridingUtil\n        )");
        if (!z) {
            collection.addAll(collectionD);
            return;
        }
        Collection<g> collection3 = collectionD;
        List listJ0 = i81.J0(collection, collection3);
        ArrayList arrayList = new ArrayList(z71.v(collection3, 10));
        for (g gVarG0 : collection3) {
            g gVar = (g) SpecialBuiltinMembers.e(gVarG0);
            if (gVar == null) {
                y45.i(gVarG0, "resolvedOverride");
            } else {
                y45.i(gVarG0, "resolvedOverride");
                gVarG0 = g0(gVarG0, gVar, listJ0);
            }
            arrayList.add(gVarG0);
        }
        collection.addAll(arrayList);
    }

    public final void X(by6 by6Var, Collection collection, Collection collection2, Collection collection3, e74 e74Var) {
        Iterator it = collection2.iterator();
        while (it.hasNext()) {
            g gVar = (g) it.next();
            v71.a(collection3, E0(gVar, e74Var, by6Var, collection));
            v71.a(collection3, D0(gVar, e74Var, collection));
            v71.a(collection3, F0(gVar, e74Var));
        }
    }

    public final void Y(Set set, Collection collection, Set set2, e74 e74Var) {
        Iterator it = set.iterator();
        while (it.hasNext()) {
            ti8 ti8Var = (ti8) it.next();
            a85 a85VarI0 = i0(ti8Var, e74Var);
            if (a85VarI0 != null) {
                collection.add(a85VarI0);
                if (set2 != null) {
                    set2.add(ti8Var);
                    return;
                }
                return;
            }
        }
    }

    public final void Z(by6 by6Var, Collection collection) {
        s75 s75Var = (s75) i81.P0(((a) y().invoke()).d(by6Var));
        if (s75Var == null) {
            return;
        }
        collection.add(k0(this, s75Var, null, Modality.FINAL, 2, null));
    }

    @Override
    public LinkedHashSet n(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        Collection collectionK = C().m().k();
        y45.i(collectionK, "ownerDescriptor.typeConstructor.supertypes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = collectionK.iterator();
        while (it.hasNext()) {
            d81.C(linkedHashSet, ((eh5) it.next()).p().a());
        }
        linkedHashSet.addAll(((a) y().invoke()).a());
        linkedHashSet.addAll(((a) y().invoke()).c());
        linkedHashSet.addAll(l(u82Var, e74Var));
        linkedHashSet.addAll(w().a().w().a(w(), C()));
        return linkedHashSet;
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        G0(by6Var, or5Var);
        return super.b(by6Var, or5Var);
    }

    @Override
    public ClassDeclaredMemberIndex p() {
        return new ClassDeclaredMemberIndex(this.o, new e74() {
            @Override
            public final Boolean invoke(r75 r75Var) {
                y45.j(r75Var, "it");
                return Boolean.valueOf(!r75Var.g());
            }
        });
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        G0(by6Var, or5Var);
        return super.c(by6Var, or5Var);
    }

    public final Collection c0() {
        if (!this.p) {
            return w().a().k().d().g(C());
        }
        Collection collectionK = C().m().k();
        y45.i(collectionK, "ownerDescriptor.typeConstructor.supertypes");
        return collectionK;
    }

    public final List d0(nw0 nw0Var) {
        Pair pair;
        Collection collectionV = this.o.v();
        ArrayList arrayList = new ArrayList(collectionV.size());
        p85 p85VarB = q85.b(TypeUsage.COMMON, true, false, null, 6, null);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : collectionV) {
            if (y45.e(((s75) obj).getName(), yc5.c)) {
                arrayList2.add(obj);
            } else {
                arrayList3.add(obj);
            }
        }
        Pair pair2 = new Pair(arrayList2, arrayList3);
        List list = (List) pair2.component1();
        List<s75> list2 = (List) pair2.component2();
        list.size();
        s75 s75Var = (s75) i81.q0(list);
        if (s75Var != null) {
            o85 returnType = s75Var.getReturnType();
            if (returnType instanceof q65) {
                q65 q65Var = (q65) returnType;
                pair = new Pair(w().g().k(q65Var, p85VarB, true), w().g().o(q65Var.h(), p85VarB));
            } else {
                pair = new Pair(w().g().o(returnType, p85VarB), null);
            }
            V(arrayList, nw0Var, 0, s75Var, (eh5) pair.component1(), (eh5) pair.component2());
        }
        int i = 0;
        int i2 = s75Var == null ? 0 : 1;
        for (s75 s75Var2 : list2) {
            V(arrayList, nw0Var, i + i2, s75Var2, w().g().o(s75Var2.getReturnType(), p85VarB), null);
            i++;
        }
        return arrayList;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.b e0() {
        boolean zO = this.o.o();
        if ((this.o.L() || !this.o.G()) && !zO) {
            return null;
        }
        qw0 qw0VarC = C();
        t65 t65VarO1 = t65.o1(qw0VarC, md.u1.b(), true, w().a().t().a(this.o));
        y45.i(t65VarO1, "createJavaConstructor(\n ….source(jClass)\n        )");
        List listD0 = zO ? d0(t65VarO1) : Collections.emptyList();
        t65VarO1.U0(false);
        t65VarO1.l1(listD0, w0(qw0VarC));
        t65VarO1.T0(true);
        t65VarO1.b1(qw0VarC.q());
        w().a().h().b(this.o, t65VarO1);
        return t65VarO1;
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        gn6 gn6Var;
        qw0 qw0Var;
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        G0(by6Var, or5Var);
        LazyJavaClassMemberScope lazyJavaClassMemberScope = (LazyJavaClassMemberScope) B();
        return (lazyJavaClassMemberScope == null || (gn6Var = lazyJavaClassMemberScope.u) == null || (qw0Var = (qw0) gn6Var.invoke(by6Var)) == null) ? (px0) this.u.invoke(by6Var) : qw0Var;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.b f0() {
        qw0 qw0VarC = C();
        t65 t65VarO1 = t65.o1(qw0VarC, md.u1.b(), true, w().a().t().a(this.o));
        y45.i(t65VarO1, "createJavaConstructor(\n ….source(jClass)\n        )");
        List listL0 = l0(t65VarO1);
        t65VarO1.U0(false);
        t65VarO1.l1(listL0, w0(qw0VarC));
        t65VarO1.T0(false);
        t65VarO1.b1(qw0VarC.q());
        return t65VarO1;
    }

    public final g g0(g gVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar, Collection collection) {
        Collection<g> collection2 = collection;
        if ((collection2 instanceof Collection) && collection2.isEmpty()) {
            return gVar;
        }
        for (g gVar2 : collection2) {
            if (!y45.e(gVar, gVar2) && gVar2.v0() == null && p0(gVar2, aVar)) {
                e eVarBuild = gVar.l().e().build();
                y45.g(eVarBuild);
                return (g) eVarBuild;
            }
        }
        return gVar;
    }

    public final g h0(e eVar, e74 e74Var) {
        Object next;
        by6 name = eVar.getName();
        y45.i(name, "overridden.name");
        Iterator it = ((Iterable) e74Var.invoke(name)).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!B0((g) next, eVar));
        g gVar = (g) next;
        if (gVar == null) {
            return null;
        }
        e.a aVarL = gVar.l();
        List listF = eVar.f();
        y45.i(listF, "overridden.valueParameters");
        List list = listF;
        ArrayList arrayList = new ArrayList(z71.v(list, 10));
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            arrayList.add(((h) it2.next()).getType());
        }
        List listF2 = gVar.f();
        y45.i(listF2, "override.valueParameters");
        aVarL.m(dlb.a(arrayList, listF2, eVar));
        aVarL.t();
        aVarL.f();
        aVarL.d(JavaMethodDescriptor.I, Boolean.TRUE);
        return (g) aVarL.build();
    }

    public final a85 i0(ti8 ti8Var, e74 e74Var) {
        g gVarV0;
        yi8 yi8VarM = null;
        if (!o0(ti8Var, e74Var)) {
            return null;
        }
        g gVarU0 = u0(ti8Var, e74Var);
        y45.g(gVarU0);
        if (ti8Var.y()) {
            gVarV0 = v0(ti8Var, e74Var);
            y45.g(gVarV0);
        } else {
            gVarV0 = null;
        }
        if (gVarV0 != null) {
            gVarV0.j();
            gVarU0.j();
        }
        o75 o75Var = new o75(C(), gVarU0, gVarV0, ti8Var);
        eh5 returnType = gVarU0.getReturnType();
        y45.g(returnType);
        o75Var.W0(returnType, y71.k(), z(), null, y71.k());
        wi8 wi8VarK = s82.k(o75Var, gVarU0.getAnnotations(), false, false, false, gVarU0.getSource());
        wi8VarK.H0(gVarU0);
        wi8VarK.K0(o75Var.getType());
        y45.i(wi8VarK, "createGetter(\n          …escriptor.type)\n        }");
        if (gVarV0 != null) {
            List listF = gVarV0.f();
            y45.i(listF, "setterMethod.valueParameters");
            h hVar = (h) i81.q0(listF);
            if (hVar == null) {
                throw new AssertionError("No parameter found for " + gVarV0);
            }
            yi8VarM = s82.m(o75Var, gVarV0.getAnnotations(), hVar.getAnnotations(), false, false, false, gVarV0.getVisibility(), gVarV0.getSource());
            yi8VarM.H0(gVarV0);
        }
        o75Var.P0(wi8VarK, yi8VarM);
        return o75Var;
    }

    public final a85 j0(s75 s75Var, eh5 eh5Var, Modality modality) {
        a85 a85VarA1 = a85.a1(C(), fj5.a(w(), s75Var), modality, gmb.d(s75Var.getVisibility()), false, s75Var.getName(), w().a().t().a(s75Var), false);
        y45.i(a85VarA1, "create(\n            owne…inal = */ false\n        )");
        wi8 wi8VarD = s82.d(a85VarA1, md.u1.b());
        y45.i(wi8VarD, "createDefaultGetter(prop…iptor, Annotations.EMPTY)");
        a85VarA1.P0(wi8VarD, null);
        eh5 eh5VarQ = eh5Var == null ? q(s75Var, ContextKt.f(w(), a85VarA1, s75Var, 0, 4, null)) : eh5Var;
        a85VarA1.W0(eh5VarQ, y71.k(), z(), null, y71.k());
        wi8VarD.K0(eh5VarQ);
        return a85VarA1;
    }

    @Override
    public Set l(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        return ze9.m((Set) this.r.invoke(), ((Map) this.t.invoke()).keySet());
    }

    public final List l0(nw0 nw0Var) {
        Collection collectionE = this.o.E();
        ArrayList arrayList = new ArrayList(collectionE.size());
        p85 p85VarB = q85.b(TypeUsage.COMMON, false, false, null, 6, null);
        Iterator it = collectionE.iterator();
        int i = 0;
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return arrayList;
            }
            i = i2 + 1;
            c85 c85Var = (c85) it.next();
            eh5 eh5VarO = w().g().o(c85Var.getType(), p85VarB);
            arrayList.add(new ValueParameterDescriptorImpl(nw0Var, null, i2, md.u1.b(), c85Var.getName(), eh5VarO, false, false, false, c85Var.b() ? w().a().m().o().k(eh5VarO) : null, w().a().t().a(c85Var)));
        }
    }

    public final g m0(g gVar, by6 by6Var) {
        e.a aVarL = gVar.l();
        aVarL.k(by6Var);
        aVarL.t();
        aVarL.f();
        e eVarBuild = aVarL.build();
        y45.g(eVarBuild);
        return (g) eVarBuild;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    public final g n0(g gVar) {
        o54 o54VarL;
        p54 p54VarM;
        List listF = gVar.f();
        y45.i(listF, "valueParameters");
        h hVar = (h) i81.C0(listF);
        if (hVar != null) {
            px0 px0VarC = hVar.getType().I0().c();
            if (px0VarC == null || (p54VarM = DescriptorUtilsKt.m(px0VarC)) == null) {
                o54VarL = null;
            } else {
                if (!p54VarM.f()) {
                    p54VarM = null;
                }
                if (p54VarM != null) {
                    o54VarL = p54VarM.l();
                } else {
                    o54VarL = null;
                }
            }
            if (!y45.e(o54VarL, kotlin.reflect.jvm.internal.impl.builtins.e.q)) {
                hVar = null;
            }
            if (hVar != null) {
                e.a aVarL = gVar.l();
                List listF2 = gVar.f();
                y45.i(listF2, "valueParameters");
                g gVar2 = (g) aVarL.m(i81.g0(listF2, 1)).j(((mcb) hVar.getType().G0().get(0)).getType()).build();
                bm9 bm9Var = (bm9) gVar2;
                if (bm9Var != null) {
                    bm9Var.c1(true);
                }
                return gVar2;
            }
        }
        return null;
    }

    @Override
    public void o(Collection collection, by6 by6Var) {
        y45.j(collection, "result");
        y45.j(by6Var, "name");
        if (this.o.F() && ((a) y().invoke()).f(by6Var) != null) {
            Collection collection2 = collection;
            if (collection2.isEmpty()) {
                c85 c85VarF = ((a) y().invoke()).f(by6Var);
                y45.g(c85VarF);
                collection.add(I0(c85VarF));
            } else {
                Iterator it = collection2.iterator();
                while (it.hasNext()) {
                    if (((g) it.next()).f().isEmpty()) {
                    }
                }
                c85 c85VarF2 = ((a) y().invoke()).f(by6Var);
                y45.g(c85VarF2);
                collection.add(I0(c85VarF2));
            }
        }
        w().a().w().d(w(), C(), by6Var, collection);
    }

    public final boolean o0(ti8 ti8Var, e74 e74Var) {
        if (i75.a(ti8Var)) {
            return false;
        }
        g gVarU0 = u0(ti8Var, e74Var);
        g gVarV0 = v0(ti8Var, e74Var);
        if (gVarU0 == null) {
            return false;
        }
        if (ti8Var.y()) {
            return gVarV0 != null && gVarV0.j() == gVarU0.j();
        }
        return true;
    }

    public final boolean p0(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.descriptors.a aVar2) {
        OverridingUtil.OverrideCompatibilityInfo.Result resultC = OverridingUtil.f.F(aVar2, aVar, true).c();
        y45.i(resultC, "DEFAULT.isOverridableByW…iptor, this, true).result");
        return resultC == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE && !kotlin.reflect.jvm.internal.impl.load.java.a.a.a(aVar2, aVar);
    }

    public final boolean q0(g gVar) {
        SpecialGenericSignatures.a aVar = SpecialGenericSignatures.a;
        by6 name = gVar.getName();
        y45.i(name, "name");
        by6 by6VarB = aVar.b(name);
        if (by6VarB == null) {
            return false;
        }
        Set setY0 = y0(by6VarB);
        ArrayList arrayList = new ArrayList();
        for (Object obj : setY0) {
            if (SpecialBuiltinMembers.a((g) obj)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        g gVarM0 = m0(gVar, by6VarB);
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (r0((g) it.next(), gVarM0)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void r(Collection collection, by6 by6Var) {
        y45.j(collection, "result");
        y45.j(by6Var, "name");
        Set setY0 = y0(by6Var);
        if (!SpecialGenericSignatures.a.k(by6Var) && !BuiltinMethodsWithSpecialGenericSignature.n.l(by6Var)) {
            Set set = setY0;
            if (!(set instanceof Collection) || !set.isEmpty()) {
                Iterator it = set.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (((e) it.next()).isSuspend()) {
                        }
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            for (Object obj : set) {
                if (C0((g) obj)) {
                    arrayList.add(obj);
                }
            }
            W(collection, by6Var, arrayList, false);
            return;
        }
        cq9 cq9VarA = cq9.d.a();
        Collection collectionD = v82.d(by6Var, setY0, y71.k(), C(), ed3.a, w().a().k().a());
        y45.i(collectionD, "resolveOverridesForNonSt….overridingUtil\n        )");
        X(by6Var, collection, collectionD, collection, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$3(this));
        X(by6Var, collection, collectionD, cq9VarA, new LazyJavaClassMemberScope$computeNonDeclaredFunctions$4(this));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : setY0) {
            if (C0((g) obj2)) {
                arrayList2.add(obj2);
            }
        }
        W(collection, by6Var, i81.J0(arrayList2, cq9VarA), true);
    }

    public final boolean r0(g gVar, e eVar) {
        if (BuiltinMethodsWithDifferentJvmName.n.k(gVar)) {
            eVar = eVar.a();
        }
        y45.i(eVar, "if (superDescriptor.isRe…iginal else subDescriptor");
        return p0(eVar, gVar);
    }

    @Override
    public void s(by6 by6Var, Collection collection) {
        y45.j(by6Var, "name");
        y45.j(collection, "result");
        if (this.o.o()) {
            Z(by6Var, collection);
        }
        Set setA0 = A0(by6Var);
        if (setA0.isEmpty()) {
            return;
        }
        cq9.b bVar = cq9.d;
        cq9 cq9VarA = bVar.a();
        cq9 cq9VarA2 = bVar.a();
        Y(setA0, collection, cq9VarA, new e74() {
            {
                super(1);
            }

            @Override
            public final Collection<g> invoke(by6 by6Var2) {
                y45.j(by6Var2, "it");
                return this.this$0.J0(by6Var2);
            }
        });
        Y(ze9.k(setA0, cq9VarA), cq9VarA2, null, new e74() {
            {
                super(1);
            }

            @Override
            public final Collection<g> invoke(by6 by6Var2) {
                y45.j(by6Var2, "it");
                return this.this$0.K0(by6Var2);
            }
        });
        Collection collectionD = v82.d(by6Var, ze9.m(setA0, cq9VarA2), collection, C(), w().a().c(), w().a().k().a());
        y45.i(collectionD, "resolveOverridesForNonSt…rridingUtil\n            )");
        collection.addAll(collectionD);
    }

    public final boolean s0(g gVar) {
        g gVarN0 = n0(gVar);
        if (gVarN0 == null) {
            return false;
        }
        by6 name = gVar.getName();
        y45.i(name, "name");
        Set<g> setY0 = y0(name);
        if ((setY0 instanceof Collection) && setY0.isEmpty()) {
            return false;
        }
        for (g gVar2 : setY0) {
            if (gVar2.isSuspend() && p0(gVarN0, gVar2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public Set t(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        if (this.o.o()) {
            return a();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(((a) y().invoke()).e());
        Collection collectionK = C().m().k();
        y45.i(collectionK, "ownerDescriptor.typeConstructor.supertypes");
        Iterator it = collectionK.iterator();
        while (it.hasNext()) {
            d81.C(linkedHashSet, ((eh5) it.next()).p().d());
        }
        return linkedHashSet;
    }

    public final g t0(ti8 ti8Var, String str, e74 e74Var) {
        g gVar;
        by6 by6VarG = by6.g(str);
        y45.i(by6VarG, "identifier(getterName)");
        Iterator it = ((Iterable) e74Var.invoke(by6VarG)).iterator();
        do {
            gVar = null;
            if (!it.hasNext()) {
                break;
            }
            g gVar2 = (g) it.next();
            if (gVar2.f().size() == 0) {
                kotlin.reflect.jvm.internal.impl.types.checker.b bVar = kotlin.reflect.jvm.internal.impl.types.checker.b.a;
                eh5 returnType = gVar2.getReturnType();
                if (returnType == null ? false : bVar.c(returnType, ti8Var.getType())) {
                    gVar = gVar2;
                }
            }
        } while (gVar == null);
        return gVar;
    }

    @Override
    public String toString() {
        return "Lazy Java member scope for " + this.o.d();
    }

    public final g u0(ti8 ti8Var, e74 e74Var) {
        vi8 getter = ti8Var.getGetter();
        vi8 vi8Var = getter != null ? (vi8) SpecialBuiltinMembers.d(getter) : null;
        String strA = vi8Var != null ? ClassicBuiltinSpecialProperties.a.a(vi8Var) : null;
        if (strA != null && !SpecialBuiltinMembers.f(C(), vi8Var)) {
            return t0(ti8Var, strA, e74Var);
        }
        String strB = ti8Var.getName().b();
        y45.i(strB, "name.asString()");
        return t0(ti8Var, xc5.b(strB), e74Var);
    }

    public final g v0(ti8 ti8Var, e74 e74Var) {
        g gVar;
        eh5 returnType;
        String strB = ti8Var.getName().b();
        y45.i(strB, "name.asString()");
        by6 by6VarG = by6.g(xc5.e(strB));
        y45.i(by6VarG, "identifier(JvmAbi.setterName(name.asString()))");
        Iterator it = ((Iterable) e74Var.invoke(by6VarG)).iterator();
        do {
            gVar = null;
            if (!it.hasNext()) {
                break;
            }
            g gVar2 = (g) it.next();
            if (gVar2.f().size() == 1 && (returnType = gVar2.getReturnType()) != null && d.C0(returnType)) {
                kotlin.reflect.jvm.internal.impl.types.checker.b bVar = kotlin.reflect.jvm.internal.impl.types.checker.b.a;
                List listF = gVar2.f();
                y45.i(listF, "descriptor.valueParameters");
                if (bVar.b(((h) i81.O0(listF)).getType(), ti8Var.getType())) {
                    gVar = gVar2;
                }
            }
        } while (gVar == null);
        return gVar;
    }

    public final c92 w0(qw0 qw0Var) {
        c92 visibility = qw0Var.getVisibility();
        y45.i(visibility, "classDescriptor.visibility");
        if (!y45.e(visibility, j75.b)) {
            return visibility;
        }
        c92 c92Var = j75.c;
        y45.i(c92Var, "PROTECTED_AND_PACKAGE");
        return c92Var;
    }

    public final x17 x0() {
        return this.q;
    }

    public final Set y0(by6 by6Var) {
        Collection collectionC0 = c0();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = collectionC0.iterator();
        while (it.hasNext()) {
            d81.C(linkedHashSet, ((eh5) it.next()).p().c(by6Var, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
        }
        return linkedHashSet;
    }

    @Override
    public ro8 z() {
        return y82.l(C());
    }

    @Override
    public qw0 C() {
        return this.n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassMemberScope(final gj5 gj5Var, qw0 qw0Var, s65 s65Var, boolean z, LazyJavaClassMemberScope lazyJavaClassMemberScope) {
        super(gj5Var, lazyJavaClassMemberScope);
        y45.j(gj5Var, "c");
        y45.j(qw0Var, "ownerDescriptor");
        y45.j(s65Var, "jClass");
        this.n = qw0Var;
        this.o = s65Var;
        this.p = z;
        this.q = gj5Var.e().c(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final List<kotlin.reflect.jvm.internal.impl.descriptors.b> invoke() {
                Collection collectionN = this.this$0.o.n();
                ArrayList arrayList = new ArrayList(collectionN.size());
                Iterator it = collectionN.iterator();
                while (it.hasNext()) {
                    arrayList.add(this.this$0.H0((c75) it.next()));
                }
                if (this.this$0.o.F()) {
                    kotlin.reflect.jvm.internal.impl.descriptors.b bVarF0 = this.this$0.f0();
                    String strC = ko6.c(bVarF0, false, false, 2, null);
                    if (!arrayList.isEmpty()) {
                        Iterator it2 = arrayList.iterator();
                        do {
                            if (!it2.hasNext()) {
                                arrayList.add(bVarF0);
                                gj5Var.a().h().b(this.this$0.o, bVarF0);
                                break;
                            }
                        } while (!y45.e(ko6.c((kotlin.reflect.jvm.internal.impl.descriptors.b) it2.next(), false, false, 2, null), strC));
                    } else {
                        arrayList.add(bVarF0);
                        gj5Var.a().h().b(this.this$0.o, bVarF0);
                        break;
                    }
                }
                gj5 gj5Var2 = gj5Var;
                gj5Var2.a().w().b(gj5Var2, this.this$0.C(), arrayList);
                SignatureEnhancement signatureEnhancementR = gj5Var.a().r();
                gj5 gj5Var3 = gj5Var;
                LazyJavaClassMemberScope lazyJavaClassMemberScope2 = this.this$0;
                boolean zIsEmpty = arrayList.isEmpty();
                List listO = arrayList;
                if (zIsEmpty) {
                    listO = y71.o(lazyJavaClassMemberScope2.e0());
                }
                return i81.b1(signatureEnhancementR.g(gj5Var3, listO));
            }
        });
        this.r = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                return i81.g1(this.this$0.o.u());
            }
        });
        this.s = gj5Var.e().c(new c74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final Set<by6> invoke() {
                gj5 gj5Var2 = gj5Var;
                return i81.g1(gj5Var2.a().w().c(gj5Var2, this.C()));
            }
        });
        this.t = gj5Var.e().c(new c74() {
            {
                super(0);
            }

            @Override
            public final Map<by6, m75> invoke() {
                Collection fields = this.this$0.o.getFields();
                ArrayList arrayList = new ArrayList();
                for (Object obj : fields) {
                    if (((m75) obj).K()) {
                        arrayList.add(obj);
                    }
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(wn8.d(ky5.g(z71.v(arrayList, 10)), 16));
                for (Object obj2 : arrayList) {
                    linkedHashMap.put(((m75) obj2).getName(), obj2);
                }
                return linkedHashMap;
            }
        });
        this.u = gj5Var.e().a(new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public final qw0 invoke(by6 by6Var) {
                y45.j(by6Var, "name");
                if (((Set) this.this$0.r.invoke()).contains(by6Var)) {
                    x65 x65VarD = gj5Var.a().d();
                    xw0 xw0VarK = DescriptorUtilsKt.k(this.this$0.C());
                    y45.g(xw0VarK);
                    xw0 xw0VarD = xw0VarK.d(by6Var);
                    y45.i(xw0VarD, "ownerDescriptor.classId!…createNestedClassId(name)");
                    s65 s65VarB = x65VarD.b(new x65.a(xw0VarD, null, this.this$0.o, 2, null));
                    if (s65VarB == null) {
                        return null;
                    }
                    gj5 gj5Var2 = gj5Var;
                    LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(gj5Var2, this.this$0.C(), s65VarB, null, 8, null);
                    gj5Var2.a().e().a(lazyJavaClassDescriptor);
                    return lazyJavaClassDescriptor;
                }
                if (!((Set) this.this$0.s.invoke()).contains(by6Var)) {
                    m75 m75Var = (m75) ((Map) this.this$0.t.invoke()).get(by6Var);
                    if (m75Var == null) {
                        return null;
                    }
                    vx9 vx9VarE = gj5Var.e();
                    final LazyJavaClassMemberScope lazyJavaClassMemberScope2 = this.this$0;
                    return eb3.G0(gj5Var.e(), this.this$0.C(), by6Var, vx9VarE.c(new c74() {
                        {
                            super(0);
                        }

                        @Override
                        public final Set<by6> invoke() {
                            return ze9.m(lazyJavaClassMemberScope2.a(), lazyJavaClassMemberScope2.d());
                        }
                    }), fj5.a(gj5Var, m75Var), gj5Var.a().t().a(m75Var));
                }
                gj5 gj5Var3 = gj5Var;
                LazyJavaClassMemberScope lazyJavaClassMemberScope3 = this.this$0;
                List listC = x71.c();
                gj5Var3.a().w().f(gj5Var3, lazyJavaClassMemberScope3.C(), by6Var, listC);
                List listA = x71.a(listC);
                int size = listA.size();
                if (size == 0) {
                    return null;
                }
                if (size == 1) {
                    return (qw0) i81.O0(listA);
                }
                throw new IllegalStateException(("Multiple classes with same name are generated: " + listA).toString());
            }
        });
    }
}
