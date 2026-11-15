package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.wd2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionArrayRemoveValue implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivActionArrayRemoveValue invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionArrayRemoveValue.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionArrayRemoveValue a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((wd2) ml0.a().T().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionArrayRemoveValue(Expression expression, Expression expression2) {
        y45.j(expression, "index");
        y45.j(expression2, "variableName");
        this.a = expression;
        this.b = expression2;
    }

    public final boolean a(DivActionArrayRemoveValue divActionArrayRemoveValue, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionArrayRemoveValue != null && ((Number) this.a.b(oj3Var)).longValue() == ((Number) divActionArrayRemoveValue.a.b(oj3Var2)).longValue() && y45.e(this.b.b(oj3Var), divActionArrayRemoveValue.b.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionArrayRemoveValue.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((wd2) ml0.a().T().getValue()).b(ml0.b(), this);
    }
}
