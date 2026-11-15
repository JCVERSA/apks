package com.yandex.div2;

import defpackage.d65;
import defpackage.fo2;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yl2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivPhoneInputMask implements d65, ko4, yl2 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivPhoneInputMask invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPhoneInputMask.c.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPhoneInputMask a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((fo2) ml0.a().K5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivPhoneInputMask(String str) {
        y45.j(str, "rawTextVariable");
        this.a = str;
    }

    @Override
    public String a() {
        return this.a;
    }

    public final boolean b(DivPhoneInputMask divPhoneInputMask, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divPhoneInputMask == null) {
            return false;
        }
        return y45.e(a(), divPhoneInputMask.a());
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPhoneInputMask.class).hashCode() + a().hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((fo2) ml0.a().K5().getValue()).b(ml0.b(), this);
    }
}
