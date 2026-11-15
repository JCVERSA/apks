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

public final class DivScaleTransition implements d65, ko4 {
    public static final a h = new a(null);
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final Expression l;
    public static final Expression m;
    public static final Expression n;
    public static final s74 o;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final Expression e;
    public final Expression f;
    public Integer g;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivScaleTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivScaleTransitionJsonParser.b) ml0.a().x6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        i = aVar.a(200L);
        j = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        Double dValueOf = Double.valueOf(0.5d);
        k = aVar.a(dValueOf);
        l = aVar.a(dValueOf);
        m = aVar.a(Double.valueOf(0.0d));
        n = aVar.a(0L);
        o = new s74() {
            @Override
            public final DivScaleTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivScaleTransition.h.a(hx7Var, jSONObject);
            }
        };
    }

    public DivScaleTransition(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6) {
        y45.j(expression, "duration");
        y45.j(expression2, "interpolator");
        y45.j(expression3, "pivotX");
        y45.j(expression4, "pivotY");
        y45.j(expression5, "scale");
        y45.j(expression6, "startDelay");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = expression5;
        this.f = expression6;
    }

    public final boolean a(DivScaleTransition divScaleTransition, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divScaleTransition != null && ((Number) b().b(oj3Var)).longValue() == ((Number) divScaleTransition.b().b(oj3Var2)).longValue() && c().b(oj3Var) == divScaleTransition.c().b(oj3Var2) && ((Number) this.c.b(oj3Var)).doubleValue() == ((Number) divScaleTransition.c.b(oj3Var2)).doubleValue() && ((Number) this.d.b(oj3Var)).doubleValue() == ((Number) divScaleTransition.d.b(oj3Var2)).doubleValue() && ((Number) this.e.b(oj3Var)).doubleValue() == ((Number) divScaleTransition.e.b(oj3Var2)).doubleValue() && ((Number) d().b(oj3Var)).longValue() == ((Number) divScaleTransition.d().b(oj3Var2)).longValue();
    }

    public Expression b() {
        return this.a;
    }

    public Expression c() {
        return this.b;
    }

    public Expression d() {
        return this.f;
    }

    @Override
    public int hash() {
        Integer num = this.g;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivScaleTransition.class).hashCode() + b().hashCode() + c().hashCode() + this.c.hashCode() + this.d.hashCode() + this.e.hashCode() + d().hashCode();
        this.g = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivScaleTransitionJsonParser.b) ml0.a().x6().getValue()).b(ml0.b(), this);
    }
}
