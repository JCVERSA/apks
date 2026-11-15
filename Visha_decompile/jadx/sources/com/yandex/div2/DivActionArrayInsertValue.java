package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.td2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivActionArrayInsertValue implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivActionArrayInsertValue invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionArrayInsertValue.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivTypedValue b;
    public final Expression c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionArrayInsertValue a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((td2) ml0.a().Q().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionArrayInsertValue(Expression expression, DivTypedValue divTypedValue, Expression expression2) {
        y45.j(divTypedValue, ES6Iterator.VALUE_PROPERTY);
        y45.j(expression2, "variableName");
        this.a = expression;
        this.b = divTypedValue;
        this.c = expression2;
    }

    public final boolean a(DivActionArrayInsertValue divActionArrayInsertValue, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionArrayInsertValue == null) {
            return false;
        }
        Expression expression = this.a;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divActionArrayInsertValue.a;
        return y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null) && this.b.a(divActionArrayInsertValue.b, oj3Var, oj3Var2) && y45.e(this.c.b(oj3Var), divActionArrayInsertValue.c.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionArrayInsertValue.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hash() + this.c.hashCode();
        this.d = Integer.valueOf(iHashCode2);
        return iHashCode2;
    }

    @Override
    public JSONObject s() {
        return ((td2) ml0.a().Q().getValue()).b(ml0.b(), this);
    }
}
