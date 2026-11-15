package com.yandex.div2;

import defpackage.d65;
import defpackage.g47;
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

public final class NumberVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final NumberVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return NumberVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final double b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final NumberVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((g47) ml0.a().O9().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public NumberVariable(String str, double d2) {
        y45.j(str, "name");
        this.a = str;
        this.b = d2;
    }

    public final boolean a(NumberVariable numberVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return numberVariable != null && y45.e(this.a, numberVariable.a) && this.b == numberVariable.b;
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(NumberVariable.class).hashCode() + this.a.hashCode() + Double.hashCode(this.b);
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((g47) ml0.a().O9().getValue()).b(ml0.b(), this);
    }
}
