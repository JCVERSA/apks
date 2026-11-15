package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.th2;
import defpackage.xq8;
import defpackage.y45;
import defpackage.yl2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivCurrencyInputMask implements d65, ko4, yl2 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivCurrencyInputMask invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCurrencyInputMask.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final String b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivCurrencyInputMask a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((th2) ml0.a().v2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivCurrencyInputMask(Expression expression, String str) {
        y45.j(str, "rawTextVariable");
        this.a = expression;
        this.b = str;
    }

    @Override
    public String a() {
        return this.b;
    }

    public final boolean b(DivCurrencyInputMask divCurrencyInputMask, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divCurrencyInputMask == null) {
            return false;
        }
        Expression expression = this.a;
        String str = expression != null ? (String) expression.b(oj3Var) : null;
        Expression expression2 = divCurrencyInputMask.a;
        return y45.e(str, expression2 != null ? (String) expression2.b(oj3Var2) : null) && y45.e(a(), divCurrencyInputMask.a());
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivCurrencyInputMask.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + a().hashCode();
        this.c = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((th2) ml0.a().v2().getValue()).b(ml0.b(), this);
    }
}
