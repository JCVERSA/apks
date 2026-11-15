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

public final class DivPageTransformationSlide implements d65, ko4 {
    public static final a g = new a(null);
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final Expression k;
    public static final Expression l;
    public static final s74 m;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final Expression e;
    public Integer f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPageTransformationSlide a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivPageTransformationSlideJsonParser.b) ml0.a().t5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        h = aVar.a(DivAnimationInterpolator.EASE_IN_OUT);
        Double dValueOf = Double.valueOf(1.0d);
        i = aVar.a(dValueOf);
        j = aVar.a(dValueOf);
        k = aVar.a(dValueOf);
        l = aVar.a(dValueOf);
        m = new s74() {
            @Override
            public final DivPageTransformationSlide invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivPageTransformationSlide.g.a(hx7Var, jSONObject);
            }
        };
    }

    public DivPageTransformationSlide(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5) {
        y45.j(expression, "interpolator");
        y45.j(expression2, "nextPageAlpha");
        y45.j(expression3, "nextPageScale");
        y45.j(expression4, "previousPageAlpha");
        y45.j(expression5, "previousPageScale");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = expression5;
    }

    public final boolean a(DivPageTransformationSlide divPageTransformationSlide, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divPageTransformationSlide != null && this.a.b(oj3Var) == divPageTransformationSlide.a.b(oj3Var2) && ((Number) this.b.b(oj3Var)).doubleValue() == ((Number) divPageTransformationSlide.b.b(oj3Var2)).doubleValue() && ((Number) this.c.b(oj3Var)).doubleValue() == ((Number) divPageTransformationSlide.c.b(oj3Var2)).doubleValue() && ((Number) this.d.b(oj3Var)).doubleValue() == ((Number) divPageTransformationSlide.d.b(oj3Var2)).doubleValue() && ((Number) this.e.b(oj3Var)).doubleValue() == ((Number) divPageTransformationSlide.e.b(oj3Var2)).doubleValue();
    }

    @Override
    public int hash() {
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPageTransformationSlide.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hashCode() + this.e.hashCode();
        this.f = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivPageTransformationSlideJsonParser.b) ml0.a().t5().getValue()).b(ml0.b(), this);
    }
}
