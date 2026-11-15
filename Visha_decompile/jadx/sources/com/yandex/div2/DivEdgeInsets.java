package com.yandex.div2;

import androidx.media3.extractor.text.ttml.TtmlNode;
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

public final class DivEdgeInsets implements d65, ko4 {
    public static final a i = new a(null);
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
    public final Expression g;
    public Integer h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivEdgeInsets a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((DivEdgeInsetsJsonParser.b) ml0.a().V2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        j = aVar.a(0L);
        k = aVar.a(0L);
        l = aVar.a(0L);
        m = aVar.a(0L);
        n = aVar.a(DivSizeUnit.DP);
        o = new s74() {
            @Override
            public final DivEdgeInsets invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivEdgeInsets.i.a(hx7Var, jSONObject);
            }
        };
    }

    public DivEdgeInsets(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7) {
        y45.j(expression, "bottom");
        y45.j(expression3, TtmlNode.LEFT);
        y45.j(expression4, TtmlNode.RIGHT);
        y45.j(expression6, "top");
        y45.j(expression7, "unit");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = expression5;
        this.f = expression6;
        this.g = expression7;
    }

    public final boolean a(DivEdgeInsets divEdgeInsets, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divEdgeInsets == null || ((Number) this.a.b(oj3Var)).longValue() != ((Number) divEdgeInsets.a.b(oj3Var2)).longValue()) {
            return false;
        }
        Expression expression = this.b;
        Long l2 = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divEdgeInsets.b;
        if (!y45.e(l2, expression2 != null ? (Long) expression2.b(oj3Var2) : null) || ((Number) this.c.b(oj3Var)).longValue() != ((Number) divEdgeInsets.c.b(oj3Var2)).longValue() || ((Number) this.d.b(oj3Var)).longValue() != ((Number) divEdgeInsets.d.b(oj3Var2)).longValue()) {
            return false;
        }
        Expression expression3 = this.e;
        Long l3 = expression3 != null ? (Long) expression3.b(oj3Var) : null;
        Expression expression4 = divEdgeInsets.e;
        return y45.e(l3, expression4 != null ? (Long) expression4.b(oj3Var2) : null) && ((Number) this.f.b(oj3Var)).longValue() == ((Number) divEdgeInsets.f.b(oj3Var2)).longValue() && this.g.b(oj3Var) == divEdgeInsets.g.b(oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.h;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivEdgeInsets.class).hashCode() + this.a.hashCode();
        Expression expression = this.b;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.c.hashCode() + this.d.hashCode();
        Expression expression2 = this.e;
        int iHashCode3 = iHashCode2 + (expression2 != null ? expression2.hashCode() : 0) + this.f.hashCode() + this.g.hashCode();
        this.h = Integer.valueOf(iHashCode3);
        return iHashCode3;
    }

    @Override
    public JSONObject s() {
        return ((DivEdgeInsetsJsonParser.b) ml0.a().V2().getValue()).b(ml0.b(), this);
    }

    public DivEdgeInsets(Expression expression, Expression expression2, Expression expression3, Expression expression4, Expression expression5, Expression expression6, Expression expression7, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? j : expression, (i2 & 2) != 0 ? null : expression2, (i2 & 4) != 0 ? k : expression3, (i2 & 8) != 0 ? l : expression4, (i2 & 16) == 0 ? expression5 : null, (i2 & 32) != 0 ? m : expression6, (i2 & 64) != 0 ? n : expression7);
    }
}
