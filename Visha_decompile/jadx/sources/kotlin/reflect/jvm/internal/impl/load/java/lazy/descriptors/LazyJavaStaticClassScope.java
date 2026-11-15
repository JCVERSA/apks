package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import defpackage.by6;
import defpackage.d81;
import defpackage.dlb;
import defpackage.e74;
import defpackage.eh5;
import defpackage.gj5;
import defpackage.hj5;
import defpackage.i81;
import defpackage.jq1;
import defpackage.or5;
import defpackage.px0;
import defpackage.qw0;
import defpackage.r75;
import defpackage.s65;
import defpackage.s82;
import defpackage.ti8;
import defpackage.u82;
import defpackage.v65;
import defpackage.v71;
import defpackage.v82;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.ye9;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.builtins.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class LazyJavaStaticClassScope extends b {
    public final s65 n;
    public final v65 o;

    public static final class a extends jq1.b {
        public final qw0 a;
        public final Set b;
        public final e74 c;

        public a(qw0 qw0Var, Set set, e74 e74Var) {
            this.a = qw0Var;
            this.b = set;
            this.c = e74Var;
        }

        @Override
        public Object a() {
            e();
            return zfb.a;
        }

        @Override
        public boolean b(qw0 qw0Var) {
            y45.j(qw0Var, "current");
            if (qw0Var == this.a) {
                return true;
            }
            MemberScope memberScopeN0 = qw0Var.n0();
            y45.i(memberScopeN0, "current.staticScope");
            if (!(memberScopeN0 instanceof b)) {
                return true;
            }
            this.b.addAll((Collection) this.c.invoke(memberScopeN0));
            return false;
        }

        public void e() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaStaticClassScope(gj5 gj5Var, s65 s65Var, v65 v65Var) {
        super(gj5Var);
        y45.j(gj5Var, "c");
        y45.j(s65Var, "jClass");
        y45.j(v65Var, "ownerDescriptor");
        this.n = s65Var;
        this.o = v65Var;
    }

    public static final Iterable P(qw0 qw0Var) {
        Collection collectionK = qw0Var.m().k();
        y45.i(collectionK, "it.typeConstructor.supertypes");
        return SequencesKt___SequencesKt.y(SequencesKt___SequencesKt.S(i81.b0(collectionK), new e74() {
            @Override
            public final qw0 invoke(eh5 eh5Var) {
                px0 px0VarC = eh5Var.I0().c();
                if (px0VarC instanceof qw0) {
                    return (qw0) px0VarC;
                }
                return null;
            }
        }));
    }

    @Override
    public ClassDeclaredMemberIndex p() {
        return new ClassDeclaredMemberIndex(this.n, new e74() {
            @Override
            public final Boolean invoke(r75 r75Var) {
                y45.j(r75Var, "it");
                return Boolean.valueOf(r75Var.g());
            }
        });
    }

    public final Set O(qw0 qw0Var, Set set, e74 e74Var) {
        jq1.b(x71.e(qw0Var), hj5.a, new a(qw0Var, set, e74Var));
        return set;
    }

    @Override
    public v65 C() {
        return this.o;
    }

    public final ti8 R(ti8 ti8Var) {
        if (ti8Var.getKind().isReal()) {
            return ti8Var;
        }
        Collection collectionE = ti8Var.e();
        y45.i(collectionE, "this.overriddenDescriptors");
        Collection<ti8> collection = collectionE;
        ArrayList arrayList = new ArrayList(z71.v(collection, 10));
        for (ti8 ti8Var2 : collection) {
            y45.i(ti8Var2, "it");
            arrayList.add(R(ti8Var2));
        }
        return (ti8) i81.O0(i81.e0(arrayList));
    }

    public final Set S(by6 by6Var, qw0 qw0Var) {
        LazyJavaStaticClassScope lazyJavaStaticClassScopeB = dlb.b(qw0Var);
        return lazyJavaStaticClassScopeB == null ? ye9.f() : i81.g1(lazyJavaStaticClassScopeB.c(by6Var, NoLookupLocation.WHEN_GET_SUPER_MEMBERS));
    }

    @Override
    public px0 f(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return null;
    }

    @Override
    public Set l(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        return ye9.f();
    }

    @Override
    public Set n(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        Set setF1 = i81.f1(((kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a) y().invoke()).a());
        LazyJavaStaticClassScope lazyJavaStaticClassScopeB = dlb.b(C());
        Set setA = lazyJavaStaticClassScopeB != null ? lazyJavaStaticClassScopeB.a() : null;
        if (setA == null) {
            setA = ye9.f();
        }
        setF1.addAll(setA);
        if (this.n.J()) {
            setF1.addAll(y71.n(e.f, e.d));
        }
        setF1.addAll(w().a().w().g(w(), C()));
        return setF1;
    }

    @Override
    public void o(Collection collection, by6 by6Var) {
        y45.j(collection, "result");
        y45.j(by6Var, "name");
        w().a().w().e(w(), C(), by6Var, collection);
    }

    @Override
    public void r(Collection collection, by6 by6Var) {
        y45.j(collection, "result");
        y45.j(by6Var, "name");
        Collection collectionE = v82.e(by6Var, S(by6Var, C()), collection, C(), w().a().c(), w().a().k().a());
        y45.i(collectionE, "resolveOverridesForStati…rridingUtil\n            )");
        collection.addAll(collectionE);
        if (this.n.J()) {
            if (y45.e(by6Var, e.f)) {
                g gVarG = s82.g(C());
                y45.i(gVarG, "createEnumValueOfMethod(ownerDescriptor)");
                collection.add(gVarG);
            } else if (y45.e(by6Var, e.d)) {
                g gVarH = s82.h(C());
                y45.i(gVarH, "createEnumValuesMethod(ownerDescriptor)");
                collection.add(gVarH);
            }
        }
    }

    @Override
    public void s(final by6 by6Var, Collection collection) {
        y45.j(by6Var, "name");
        y45.j(collection, "result");
        Set setO = O(C(), new LinkedHashSet(), new e74() {
            {
                super(1);
            }

            @Override
            public final Collection<? extends ti8> invoke(MemberScope memberScope) {
                y45.j(memberScope, "it");
                return memberScope.b(by6Var, NoLookupLocation.WHEN_GET_SUPER_MEMBERS);
            }
        });
        if (collection.isEmpty()) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : setO) {
                ti8 ti8VarR = R((ti8) obj);
                Object arrayList = linkedHashMap.get(ti8VarR);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(ti8VarR, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            ArrayList arrayList2 = new ArrayList();
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                Collection collectionE = v82.e(by6Var, (Collection) ((Map.Entry) it.next()).getValue(), collection, C(), w().a().c(), w().a().k().a());
                y45.i(collectionE, "resolveOverridesForStati…ingUtil\n                )");
                d81.C(arrayList2, collectionE);
            }
            collection.addAll(arrayList2);
        } else {
            Collection collectionE2 = v82.e(by6Var, setO, collection, C(), w().a().c(), w().a().k().a());
            y45.i(collectionE2, "resolveOverridesForStati…ingUtil\n                )");
            collection.addAll(collectionE2);
        }
        if (this.n.J() && y45.e(by6Var, e.e)) {
            v71.a(collection, s82.f(C()));
        }
    }

    @Override
    public Set t(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        Set setF1 = i81.f1(((kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a) y().invoke()).e());
        O(C(), setF1, new e74() {
            @Override
            public final Collection<by6> invoke(MemberScope memberScope) {
                y45.j(memberScope, "it");
                return memberScope.d();
            }
        });
        if (this.n.J()) {
            setF1.add(e.e);
        }
        return setF1;
    }
}
