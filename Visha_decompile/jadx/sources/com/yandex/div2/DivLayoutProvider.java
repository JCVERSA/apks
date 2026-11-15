package com.yandex.div2;

import defpackage.d65;
import defpackage.gm2;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivLayoutProvider implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivLayoutProvider invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivLayoutProvider.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final String b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivLayoutProvider a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((gm2) ml0.a().M4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivLayoutProvider(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public final boolean a(DivLayoutProvider divLayoutProvider, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divLayoutProvider != null && y45.e(this.a, divLayoutProvider.a) && y45.e(this.b, divLayoutProvider.b);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivLayoutProvider.class).hashCode();
        String str = this.a;
        int iHashCode2 = iHashCode + (str != null ? str.hashCode() : 0);
        String str2 = this.b;
        int iHashCode3 = iHashCode2 + (str2 != null ? str2.hashCode() : 0);
        this.c = Integer.valueOf(iHashCode3);
        return iHashCode3;
    }

    @Override
    public JSONObject s() {
        return ((gm2) ml0.a().M4().getValue()).b(ml0.b(), this);
    }
}
