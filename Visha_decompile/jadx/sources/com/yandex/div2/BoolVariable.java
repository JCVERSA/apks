package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.rh0;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class BoolVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final BoolVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return BoolVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final boolean b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BoolVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((rh0) ml0.a().j().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public BoolVariable(String str, boolean z) {
        y45.j(str, "name");
        this.a = str;
        this.b = z;
    }

    public final boolean a(BoolVariable boolVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return boolVariable != null && y45.e(this.a, boolVariable.a) && this.b == boolVariable.b;
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(BoolVariable.class).hashCode() + this.a.hashCode() + Boolean.hashCode(this.b);
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((rh0) ml0.a().j().getValue()).b(ml0.b(), this);
    }
}
