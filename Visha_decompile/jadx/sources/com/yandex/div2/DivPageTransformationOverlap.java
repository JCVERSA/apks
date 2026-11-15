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

public final class DivPageTransformationOverlap implements d65, ko4 {
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

        public final DivPageTransformationOverlap a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivPageTransformationOverlapJsonParser.b) ml0.a().q5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        i = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        Double dValueOf = Double.valueOf(1.0d);
        j = aVar.a(dValueOf);
        k = aVar.a(dValueOf);
        l = aVar.a(dValueOf);
        m = aVar.a(dValueOf);
        n = aVar.a(Boolean.FALSE);
        o = new s74() {
            @Override
            public final DivPageTransformationOverlap invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivPageTransformationOverlap.h.a(hx7Var, jSONObject);
            }
        };
    }

    public DivPageTransformationOverlap(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6) {
        y45.j(expression, "interpolator");
        y45.j(expression2, "nextPageAlpha");
        y45.j(expression3, "nextPageScale");
        y45.j(expression4, "previousPageAlpha");
        y45.j(expression5, "previousPageScale");
        y45.j(expression6, "reversedStackingOrder");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = expression5;
        this.f = expression6;
    }

    public final boolean a(DivPageTransformationOverlap divPageTransformationOverlap, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divPageTransformationOverlap != null && this.a.b(oj3Var) == divPageTransformationOverlap.a.b(oj3Var2) && ((Number) this.b.b(oj3Var)).doubleValue() == ((Number) divPageTransformationOverlap.b.b(oj3Var2)).doubleValue() && ((Number) this.c.b(oj3Var)).doubleValue() == ((Number) divPageTransformationOverlap.c.b(oj3Var2)).doubleValue() && ((Number) this.d.b(oj3Var)).doubleValue() == ((Number) divPageTransformationOverlap.d.b(oj3Var2)).doubleValue() && ((Number) this.e.b(oj3Var)).doubleValue() == ((Number) divPageTransformationOverlap.e.b(oj3Var2)).doubleValue() && ((Boolean) this.f.b(oj3Var)).booleanValue() == ((Boolean) divPageTransformationOverlap.f.b(oj3Var2)).booleanValue();
    }

    @Override
    public int hash() {
        Integer num = this.g;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPageTransformationOverlap.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hashCode() + this.e.hashCode() + this.f.hashCode();
        this.g = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivPageTransformationOverlapJsonParser.b) ml0.a().q5().getValue()).b(ml0.b(), this);
    }
}
