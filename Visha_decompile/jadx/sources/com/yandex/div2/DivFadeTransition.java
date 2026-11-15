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

public final class DivFadeTransition implements d65, ko4 {
    public static final a f = new a(null);
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final s74 k;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public Integer e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFadeTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivFadeTransitionJsonParser.b) ml0.a().b3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        g = aVar.a(Double.valueOf(0.0d));
        h = aVar.a(200L);
        i = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        j = aVar.a(0L);
        k = new s74() {
            @Override
            public final DivFadeTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivFadeTransition.f.a(hx7Var, jSONObject);
            }
        };
    }

    public DivFadeTransition(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        y45.j(expression, "alpha");
        y45.j(expression2, "duration");
        y45.j(expression3, "interpolator");
        y45.j(expression4, "startDelay");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
    }

    public final boolean a(DivFadeTransition divFadeTransition, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divFadeTransition != null && ((Number) this.a.b(oj3Var)).doubleValue() == ((Number) divFadeTransition.a.b(oj3Var2)).doubleValue() && ((Number) b().b(oj3Var)).longValue() == ((Number) divFadeTransition.b().b(oj3Var2)).longValue() && c().b(oj3Var) == divFadeTransition.c().b(oj3Var2) && ((Number) d().b(oj3Var)).longValue() == ((Number) divFadeTransition.d().b(oj3Var2)).longValue();
    }

    public Expression b() {
        return this.b;
    }

    public Expression c() {
        return this.c;
    }

    public Expression d() {
        return this.d;
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivFadeTransition.class).hashCode() + this.a.hashCode() + b().hashCode() + c().hashCode() + d().hashCode();
        this.e = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivFadeTransitionJsonParser.b) ml0.a().b3().getValue()).b(ml0.b(), this);
    }
}
