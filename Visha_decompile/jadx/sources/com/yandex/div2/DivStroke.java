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

public final class DivStroke implements d65, ko4 {
    public static final a f = new a(null);
    public static final DivStrokeStyle.c g = new DivStrokeStyle.c(new DivStrokeStyleSolid());
    public static final Expression h;
    public static final Expression i;
    public static final s74 j;
    public final Expression a;
    public final DivStrokeStyle b;
    public final Expression c;
    public final Expression d;
    public Integer e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivStroke a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivStrokeJsonParser.b) ml0.a().w7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        h = aVar.a(DivSizeUnit.DP);
        i = aVar.a(Double.valueOf(1.0d));
        j = new s74() {
            @Override
            public final DivStroke invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivStroke.f.a(hx7Var, jSONObject);
            }
        };
    }

    public DivStroke(Expression expression, DivStrokeStyle divStrokeStyle, Expression expression2, Expression expression3) {
        y45.j(expression, "color");
        y45.j(divStrokeStyle, "style");
        y45.j(expression2, "unit");
        y45.j(expression3, "width");
        this.a = expression;
        this.b = divStrokeStyle;
        this.c = expression2;
        this.d = expression3;
    }

    public final boolean a(DivStroke divStroke, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divStroke != null && ((Number) this.a.b(oj3Var)).intValue() == ((Number) divStroke.a.b(oj3Var2)).intValue() && this.b.a(divStroke.b, oj3Var, oj3Var2) && this.c.b(oj3Var) == divStroke.c.b(oj3Var2) && ((Number) this.d.b(oj3Var)).doubleValue() == ((Number) divStroke.d.b(oj3Var2)).doubleValue();
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivStroke.class).hashCode() + this.a.hashCode() + this.b.hash() + this.c.hashCode() + this.d.hashCode();
        this.e = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((DivStrokeJsonParser.b) ml0.a().w7().getValue()).b(ml0.b(), this);
    }
}
