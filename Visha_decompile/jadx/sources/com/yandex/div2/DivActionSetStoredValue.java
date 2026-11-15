package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.gf2;
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
import org.mozilla.javascript.ES6Iterator;

public final class DivActionSetStoredValue implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivActionSetStoredValue invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionSetStoredValue.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final DivTypedValue c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionSetStoredValue a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((gf2) ml0.a().M0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionSetStoredValue(Expression expression, Expression expression2, DivTypedValue divTypedValue) {
        y45.j(expression, "lifetime");
        y45.j(expression2, "name");
        y45.j(divTypedValue, ES6Iterator.VALUE_PROPERTY);
        this.a = expression;
        this.b = expression2;
        this.c = divTypedValue;
    }

    public final boolean a(DivActionSetStoredValue divActionSetStoredValue, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionSetStoredValue != null && ((Number) this.a.b(oj3Var)).longValue() == ((Number) divActionSetStoredValue.a.b(oj3Var2)).longValue() && y45.e(this.b.b(oj3Var), divActionSetStoredValue.b.b(oj3Var2)) && this.c.a(divActionSetStoredValue.c, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionSetStoredValue.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hash();
        this.d = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((gf2) ml0.a().M0().getValue()).b(ml0.b(), this);
    }
}
