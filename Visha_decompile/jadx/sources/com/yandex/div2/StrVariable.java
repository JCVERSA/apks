package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.jy9;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class StrVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final StrVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return StrVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final String b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StrVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((jy9) ml0.a().aa().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public StrVariable(String str, String str2) {
        y45.j(str, "name");
        y45.j(str2, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
        this.b = str2;
    }

    public final boolean a(StrVariable strVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return strVariable != null && y45.e(this.a, strVariable.a) && y45.e(this.b, strVariable.b);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(StrVariable.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((jy9) ml0.a().aa().getValue()).b(ml0.b(), this);
    }
}
