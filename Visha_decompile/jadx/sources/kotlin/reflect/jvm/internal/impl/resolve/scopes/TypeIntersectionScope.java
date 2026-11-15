package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.bq9;
import defpackage.by6;
import defpackage.e74;
import defpackage.eh5;
import defpackage.i81;
import defpackage.or5;
import defpackage.ti8;
import defpackage.u82;
import defpackage.v3;
import defpackage.xt1;
import defpackage.y29;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtilsKt;

public final class TypeIntersectionScope extends v3 {
    public static final a d = new a(null);
    public final String b;
    public final MemberScope c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberScope a(String str, Collection collection) {
            y45.j(str, "message");
            y45.j(collection, "types");
            Collection collection2 = collection;
            ArrayList arrayList = new ArrayList(z71.v(collection2, 10));
            Iterator it = collection2.iterator();
            while (it.hasNext()) {
                arrayList.add(((eh5) it.next()).p());
            }
            bq9 bq9VarB = y29.b(arrayList);
            MemberScope memberScopeB = kotlin.reflect.jvm.internal.impl.resolve.scopes.a.d.b(str, bq9VarB);
            return bq9VarB.size() <= 1 ? memberScopeB : new TypeIntersectionScope(str, memberScopeB, null);
        }

        public a() {
        }
    }

    public TypeIntersectionScope(String str, MemberScope memberScope, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, memberScope);
    }

    public static final MemberScope j(String str, Collection collection) {
        return d.a(str, collection);
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return OverridingUtilsKt.a(super.b(by6Var, or5Var), new e74() {
            @Override
            public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(ti8 ti8Var) {
                y45.j(ti8Var, "$this$selectMostSpecificInEachOverridableGroup");
                return ti8Var;
            }
        });
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        return OverridingUtilsKt.a(super.c(by6Var, or5Var), new e74() {
            @Override
            public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(g gVar) {
                y45.j(gVar, "$this$selectMostSpecificInEachOverridableGroup");
                return gVar;
            }
        });
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        Collection collectionG = super.g(u82Var, e74Var);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : collectionG) {
            if (((xt1) obj) instanceof kotlin.reflect.jvm.internal.impl.descriptors.a) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        Pair pair = new Pair(arrayList, arrayList2);
        List list = (List) pair.component1();
        List list2 = (List) pair.component2();
        y45.h(list, "null cannot be cast to non-null type kotlin.collections.Collection<org.jetbrains.kotlin.descriptors.CallableDescriptor>");
        return i81.J0(OverridingUtilsKt.a(list, new e74() {
            @Override
            public final kotlin.reflect.jvm.internal.impl.descriptors.a invoke(kotlin.reflect.jvm.internal.impl.descriptors.a aVar) {
                y45.j(aVar, "$this$selectMostSpecificInEachOverridableGroup");
                return aVar;
            }
        }), list2);
    }

    @Override
    public MemberScope i() {
        return this.c;
    }

    public TypeIntersectionScope(String str, MemberScope memberScope) {
        this.b = str;
        this.c = memberScope;
    }
}
