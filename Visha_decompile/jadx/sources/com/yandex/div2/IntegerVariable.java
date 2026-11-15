package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.z25;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class IntegerVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final IntegerVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return IntegerVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final long b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IntegerVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((z25) ml0.a().I9().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public IntegerVariable(String str, long j) {
        y45.j(str, "name");
        this.a = str;
        this.b = j;
    }

    public final boolean a(IntegerVariable integerVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return integerVariable != null && y45.e(this.a, integerVariable.a) && this.b == integerVariable.b;
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(IntegerVariable.class).hashCode() + this.a.hashCode() + Long.hashCode(this.b);
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((z25) ml0.a().I9().getValue()).b(ml0.b(), this);
    }
}
