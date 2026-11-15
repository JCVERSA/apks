package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import defpackage.af5;
import defpackage.bq9;
import defpackage.by6;
import defpackage.c74;
import defpackage.d81;
import defpackage.dn6;
import defpackage.e74;
import defpackage.eh5;
import defpackage.i81;
import defpackage.or5;
import defpackage.q17;
import defpackage.qw0;
import defpackage.ti8;
import defpackage.u82;
import defpackage.ux9;
import defpackage.v71;
import defpackage.vx9;
import defpackage.x17;
import defpackage.xq8;
import defpackage.xt1;
import defpackage.y45;
import defpackage.y71;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.e;
import kotlin.reflect.jvm.internal.impl.descriptors.g;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;

public abstract class GivenFunctionsMemberScope extends dn6 {
    public static final af5[] d = {xq8.j(new PropertyReference1Impl(xq8.b(GivenFunctionsMemberScope.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};
    public final qw0 b;
    public final x17 c;

    public static final class a extends q17 {
        public final ArrayList a;
        public final GivenFunctionsMemberScope b;

        public a(ArrayList arrayList, GivenFunctionsMemberScope givenFunctionsMemberScope) {
            this.a = arrayList;
            this.b = givenFunctionsMemberScope;
        }

        @Override
        public void a(CallableMemberDescriptor callableMemberDescriptor) {
            y45.j(callableMemberDescriptor, "fakeOverride");
            OverridingUtil.K(callableMemberDescriptor, null);
            this.a.add(callableMemberDescriptor);
        }

        @Override
        public void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
            y45.j(callableMemberDescriptor, "fromSuper");
            y45.j(callableMemberDescriptor2, "fromCurrent");
            throw new IllegalStateException(("Conflict in scope of " + this.b.l() + ": " + callableMemberDescriptor + " vs " + callableMemberDescriptor2).toString());
        }
    }

    public GivenFunctionsMemberScope(vx9 vx9Var, qw0 qw0Var) {
        y45.j(vx9Var, "storageManager");
        y45.j(qw0Var, "containingClass");
        this.b = qw0Var;
        this.c = vx9Var.c(new c74() {
            {
                super(0);
            }

            @Override
            public final List<xt1> invoke() {
                List listI = this.this$0.i();
                return i81.J0(listI, this.this$0.j(listI));
            }
        });
    }

    @Override
    public Collection b(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        List listK = k();
        bq9 bq9Var = new bq9();
        for (Object obj : listK) {
            if ((obj instanceof ti8) && y45.e(((ti8) obj).getName(), by6Var)) {
                bq9Var.add(obj);
            }
        }
        return bq9Var;
    }

    @Override
    public Collection c(by6 by6Var, or5 or5Var) {
        y45.j(by6Var, "name");
        y45.j(or5Var, "location");
        List listK = k();
        bq9 bq9Var = new bq9();
        for (Object obj : listK) {
            if ((obj instanceof g) && y45.e(((g) obj).getName(), by6Var)) {
                bq9Var.add(obj);
            }
        }
        return bq9Var;
    }

    @Override
    public Collection g(u82 u82Var, e74 e74Var) {
        y45.j(u82Var, "kindFilter");
        y45.j(e74Var, "nameFilter");
        return !u82Var.a(u82.p.m()) ? y71.k() : k();
    }

    public abstract List i();

    public final List j(List list) {
        Collection collectionK;
        ArrayList arrayList = new ArrayList(3);
        Collection collectionK2 = this.b.m().k();
        y45.i(collectionK2, "containingClass.typeConstructor.supertypes");
        ArrayList arrayList2 = new ArrayList();
        Iterator it = collectionK2.iterator();
        while (it.hasNext()) {
            d81.C(arrayList2, c.a.a(((eh5) it.next()).p(), null, null, 3, null));
        }
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : arrayList2) {
            if (obj instanceof CallableMemberDescriptor) {
                arrayList3.add(obj);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj2 : arrayList3) {
            by6 name = ((CallableMemberDescriptor) obj2).getName();
            Object arrayList4 = linkedHashMap.get(name);
            if (arrayList4 == null) {
                arrayList4 = new ArrayList();
                linkedHashMap.put(name, arrayList4);
            }
            ((List) arrayList4).add(obj2);
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            by6 by6Var = (by6) entry.getKey();
            List list2 = (List) entry.getValue();
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj3 : list2) {
                Boolean boolValueOf = Boolean.valueOf(((CallableMemberDescriptor) obj3) instanceof e);
                Object arrayList5 = linkedHashMap2.get(boolValueOf);
                if (arrayList5 == null) {
                    arrayList5 = new ArrayList();
                    linkedHashMap2.put(boolValueOf, arrayList5);
                }
                ((List) arrayList5).add(obj3);
            }
            for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                boolean zBooleanValue = ((Boolean) entry2.getKey()).booleanValue();
                List list3 = (List) entry2.getValue();
                OverridingUtil overridingUtil = OverridingUtil.f;
                List list4 = list3;
                if (zBooleanValue) {
                    collectionK = new ArrayList();
                    for (Object obj4 : list) {
                        if (y45.e(((e) obj4).getName(), by6Var)) {
                            collectionK.add(obj4);
                        }
                    }
                } else {
                    collectionK = y71.k();
                }
                overridingUtil.v(by6Var, list4, collectionK, this.b, new a(arrayList, this));
            }
        }
        return v71.c(arrayList);
    }

    public final List k() {
        return (List) ux9.a(this.c, this, d[0]);
    }

    public final qw0 l() {
        return this.b;
    }
}
