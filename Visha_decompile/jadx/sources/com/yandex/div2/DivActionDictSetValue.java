package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.te2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivActionDictSetValue implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivActionDictSetValue invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionDictSetValue.e.a(hx7Var, jSONObject);
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

        public final DivActionDictSetValue a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((te2) ml0.a().i0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionDictSetValue(Expression expression, DivTypedValue divTypedValue, Expression expression2) {
        y45.j(expression, "key");
        y45.j(expression2, "variableName");
        this.a = expression;
        this.b = divTypedValue;
        this.c = expression2;
    }

    public final boolean a(DivActionDictSetValue divActionDictSetValue, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionDictSetValue == null || !y45.e(this.a.b(oj3Var), divActionDictSetValue.a.b(oj3Var2))) {
            return false;
        }
        DivTypedValue divTypedValue = this.b;
        if (divTypedValue != null) {
            zA = divTypedValue.a(divActionDictSetValue.b, oj3Var, oj3Var2);
        } else {
            zA = divActionDictSetValue.b == null;
        }
        return zA && y45.e(this.c.b(oj3Var), divActionDictSetValue.c.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionDictSetValue.class).hashCode() + this.a.hashCode();
        DivTypedValue divTypedValue = this.b;
        int iHash = iHashCode + (divTypedValue != null ? divTypedValue.hash() : 0) + this.c.hashCode();
        this.d = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((te2) ml0.a().i0().getValue()).b(ml0.b(), this);
    }
}
