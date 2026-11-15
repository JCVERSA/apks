package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.zh;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class ArrayVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final ArrayVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return ArrayVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final JSONArray b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ArrayVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((zh) ml0.a().d().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public ArrayVariable(String str, JSONArray jSONArray) {
        y45.j(str, "name");
        y45.j(jSONArray, ES6Iterator.VALUE_PROPERTY);
        this.a = str;
        this.b = jSONArray;
    }

    public final boolean a(ArrayVariable arrayVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return arrayVariable != null && y45.e(this.a, arrayVariable.a) && y45.e(this.b, arrayVariable.b);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(ArrayVariable.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((zh) ml0.a().d().getValue()).b(ml0.b(), this);
    }
}
