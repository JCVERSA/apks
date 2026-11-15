package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.ml2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivInputFilterRegex implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivInputFilterRegex invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivInputFilterRegex.c.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivInputFilterRegex a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((ml2) ml0.a().m4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivInputFilterRegex(Expression expression) {
        y45.j(expression, "pattern");
        this.a = expression;
    }

    public final boolean a(DivInputFilterRegex divInputFilterRegex, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divInputFilterRegex == null) {
            return false;
        }
        return y45.e(this.a.b(oj3Var), divInputFilterRegex.a.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivInputFilterRegex.class).hashCode() + this.a.hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((ml2) ml0.a().m4().getValue()).b(ml0.b(), this);
    }
}
