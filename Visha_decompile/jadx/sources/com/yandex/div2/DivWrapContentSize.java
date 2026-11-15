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

public final class DivWrapContentSize implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivWrapContentSize invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivWrapContentSize.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final ConstraintSize b;
    public final ConstraintSize c;
    public Integer d;

    public static final class ConstraintSize implements d65, ko4 {
        public static final a d = new a(null);
        public static final Expression e = Expression.a.a(DivSizeUnit.DP);
        public static final s74 f = new s74() {
            @Override
            public final DivWrapContentSize.ConstraintSize invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivWrapContentSize.ConstraintSize.d.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final Expression b;
        public Integer c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final ConstraintSize a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivWrapContentSizeConstraintSizeJsonParser.b) ml0.a().t9().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public ConstraintSize(Expression expression, Expression expression2) {
            y45.j(expression, "unit");
            y45.j(expression2, ES6Iterator.VALUE_PROPERTY);
            this.a = expression;
            this.b = expression2;
        }

        public final boolean a(ConstraintSize constraintSize, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            return constraintSize != null && this.a.b(oj3Var) == constraintSize.a.b(oj3Var2) && ((Number) this.b.b(oj3Var)).longValue() == ((Number) constraintSize.b.b(oj3Var2)).longValue();
        }

        @Override
        public int hash() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(ConstraintSize.class).hashCode() + this.a.hashCode() + this.b.hashCode();
            this.c = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((DivWrapContentSizeConstraintSizeJsonParser.b) ml0.a().t9().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivWrapContentSize a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((m5) ml0.a().w9().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivWrapContentSize(Expression expression, ConstraintSize constraintSize, ConstraintSize constraintSize2) {
        this.a = expression;
        this.b = constraintSize;
        this.c = constraintSize2;
    }

    public final boolean a(DivWrapContentSize divWrapContentSize, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        boolean zA2;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divWrapContentSize == null) {
            return false;
        }
        Expression expression = this.a;
        Boolean bool = expression != null ? (Boolean) expression.b(oj3Var) : null;
        Expression expression2 = divWrapContentSize.a;
        if (!y45.e(bool, expression2 != null ? (Boolean) expression2.b(oj3Var2) : null)) {
            return false;
        }
        ConstraintSize constraintSize = this.b;
        if (constraintSize != null) {
            zA = constraintSize.a(divWrapContentSize.b, oj3Var, oj3Var2);
        } else {
            zA = divWrapContentSize.b == null;
        }
        if (!zA) {
            return false;
        }
        ConstraintSize constraintSize2 = this.c;
        if (constraintSize2 != null) {
            zA2 = constraintSize2.a(divWrapContentSize.c, oj3Var, oj3Var2);
        } else {
            zA2 = divWrapContentSize.c == null;
        }
        return zA2;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivWrapContentSize.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0);
        ConstraintSize constraintSize = this.b;
        int iHash = iHashCode2 + (constraintSize != null ? constraintSize.hash() : 0);
        ConstraintSize constraintSize2 = this.c;
        int iHash2 = iHash + (constraintSize2 != null ? constraintSize2.hash() : 0);
        this.d = Integer.valueOf(iHash2);
        return iHash2;
    }

    @Override
    public JSONObject s() {
        return ((m5) ml0.a().w9().getValue()).b(ml0.b(), this);
    }

    public DivWrapContentSize(Expression expression, ConstraintSize constraintSize, ConstraintSize constraintSize2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : expression, (i & 2) != 0 ? null : constraintSize, (i & 4) != 0 ? null : constraintSize2);
    }
}
