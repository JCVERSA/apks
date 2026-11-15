package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivTextRangeMaskBase implements d65, ko4 {
    public static final a c = new a(null);
    public static final Expression d = Expression.a.a(Boolean.TRUE);
    public static final s74 e = new s74() {
        @Override
        public final DivTextRangeMaskBase invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivTextRangeMaskBase.c.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTextRangeMaskBase a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((r4.b) ml0.a().v8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivTextRangeMaskBase(Expression expression) {
        y45.j(expression, "isEnabled");
        this.a = expression;
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTextRangeMaskBase.class).hashCode() + this.a.hashCode();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((r4.b) ml0.a().v8().getValue()).b(ml0.b(), this);
    }
}
