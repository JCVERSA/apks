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
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class IndexDestination implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final IndexDestination invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return IndexDestination.c.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final IndexDestination a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((o5.b) ml0.a().C9().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public IndexDestination(Expression expression) {
        y45.j(expression, ES6Iterator.VALUE_PROPERTY);
        this.a = expression;
    }

    public final boolean a(IndexDestination indexDestination, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return indexDestination != null && ((Number) this.a.b(oj3Var)).longValue() == ((Number) indexDestination.a.b(oj3Var2)).longValue();
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(IndexDestination.class).hashCode() + this.a.hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((o5.b) ml0.a().C9().getValue()).b(ml0.b(), this);
    }
}
