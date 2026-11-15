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

public final class DivChangeBoundsTransition implements d65, ko4 {
    public static final a e = new a(null);
    public static final Expression f;
    public static final Expression g;
    public static final Expression h;
    public static final s74 i;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivChangeBoundsTransition a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivChangeBoundsTransitionJsonParser.b) ml0.a().L1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        f = aVar.a(200L);
        g = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        h = aVar.a(0L);
        i = new s74() {
            @Override
            public final DivChangeBoundsTransition invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivChangeBoundsTransition.e.a(hx7Var, jSONObject);
            }
        };
    }

    public DivChangeBoundsTransition(Expression expression, Expression expression2, Expression expression3) {
        y45.j(expression, "duration");
        y45.j(expression2, "interpolator");
        y45.j(expression3, "startDelay");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
    }

    public final boolean a(DivChangeBoundsTransition divChangeBoundsTransition, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divChangeBoundsTransition != null && ((Number) b().b(oj3Var)).longValue() == ((Number) divChangeBoundsTransition.b().b(oj3Var2)).longValue() && c().b(oj3Var) == divChangeBoundsTransition.c().b(oj3Var2) && ((Number) d().b(oj3Var)).longValue() == ((Number) divChangeBoundsTransition.d().b(oj3Var2)).longValue();
    }

    public Expression b() {
        return this.a;
    }

    public Expression c() {
        return this.b;
    }

    public Expression d() {
        return this.c;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivChangeBoundsTransition.class).hashCode() + b().hashCode() + c().hashCode() + d().hashCode();
        this.d = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivChangeBoundsTransitionJsonParser.b) ml0.a().L1().getValue()).b(ml0.b(), this);
    }
}
