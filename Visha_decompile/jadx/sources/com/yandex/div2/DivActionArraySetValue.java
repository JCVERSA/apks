package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.zd2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivActionArraySetValue implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivActionArraySetValue invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionArraySetValue.e.a(hx7Var, jSONObject);
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

        public final DivActionArraySetValue a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((zd2) ml0.a().W().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionArraySetValue(Expression expression, DivTypedValue divTypedValue, Expression expression2) {
        y45.j(expression, "index");
        y45.j(divTypedValue, ES6Iterator.VALUE_PROPERTY);
        y45.j(expression2, "variableName");
        this.a = expression;
        this.b = divTypedValue;
        this.c = expression2;
    }

    public final boolean a(DivActionArraySetValue divActionArraySetValue, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionArraySetValue != null && ((Number) this.a.b(oj3Var)).longValue() == ((Number) divActionArraySetValue.a.b(oj3Var2)).longValue() && this.b.a(divActionArraySetValue.b, oj3Var, oj3Var2) && y45.e(this.c.b(oj3Var), divActionArraySetValue.c.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionArraySetValue.class).hashCode() + this.a.hashCode() + this.b.hash() + this.c.hashCode();
        this.d = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((zd2) ml0.a().W().getValue()).b(ml0.b(), this);
    }
}
