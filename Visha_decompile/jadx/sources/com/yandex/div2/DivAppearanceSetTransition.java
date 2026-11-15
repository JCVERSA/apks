package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivAppearanceSetTransition implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivAppearanceSetTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivAppearanceSetTransition.d.a(hx7Var, jSONObject);
        }
    };
    public final List a;
    public Integer b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivAppearanceSetTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((x.b) ml0.a().t1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivAppearanceSetTransition(List list) {
        y45.j(list, "items");
        this.a = list;
    }

    public final boolean a(DivAppearanceSetTransition divAppearanceSetTransition, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divAppearanceSetTransition == null) {
            return false;
        }
        List list = this.a;
        List list2 = divAppearanceSetTransition.a;
        if (list.size() != list2.size()) {
            return false;
        }
        int i = 0;
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            if (!((DivAppearanceTransition) obj).a((DivAppearanceTransition) list2.get(i), oj3Var, oj3Var2)) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iL = l();
        Iterator it = this.a.iterator();
        int iHash = 0;
        while (it.hasNext()) {
            iHash += ((DivAppearanceTransition) it.next()).hash();
        }
        int i = iL + iHash;
        this.c = Integer.valueOf(i);
        return i;
    }

    @Override
    public int l() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivAppearanceSetTransition.class).hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((x.b) ml0.a().t1().getValue()).b(ml0.b(), this);
    }
}
