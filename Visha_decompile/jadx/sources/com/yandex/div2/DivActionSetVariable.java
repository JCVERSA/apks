package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.jf2;
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

public final class DivActionSetVariable implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivActionSetVariable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionSetVariable.d.a(hx7Var, jSONObject);
        }
    };
    public final DivTypedValue a;
    public final Expression b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionSetVariable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((jf2) ml0.a().P0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionSetVariable(DivTypedValue divTypedValue, Expression expression) {
        y45.j(divTypedValue, ES6Iterator.VALUE_PROPERTY);
        y45.j(expression, "variableName");
        this.a = divTypedValue;
        this.b = expression;
    }

    public final boolean a(DivActionSetVariable divActionSetVariable, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionSetVariable != null && this.a.a(divActionSetVariable.a, oj3Var, oj3Var2) && y45.e(this.b.b(oj3Var), divActionSetVariable.b.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionSetVariable.class).hashCode() + this.a.hash() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((jf2) ml0.a().P0().getValue()).b(ml0.b(), this);
    }
}
