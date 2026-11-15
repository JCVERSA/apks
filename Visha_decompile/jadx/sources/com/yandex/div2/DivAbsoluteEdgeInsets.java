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

public final class DivAbsoluteEdgeInsets implements d65, ko4 {
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

        public final DivAbsoluteEdgeInsets a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((com.yandex.div2.a.b) ml0.a().E().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        g = aVar.a(0L);
        h = aVar.a(0L);
        i = aVar.a(0L);
        j = aVar.a(0L);
        k = new s74() {
            @Override
            public final DivAbsoluteEdgeInsets invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivAbsoluteEdgeInsets.f.a(hx7Var, jSONObject);
            }
        };
    }

    public DivAbsoluteEdgeInsets(Expression expression, Expression expression2, Expression expression3, Expression expression4) {
        y45.j(expression, "bottom");
        y45.j(expression2, TtmlNode.LEFT);
        y45.j(expression3, TtmlNode.RIGHT);
        y45.j(expression4, "top");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
    }

    public final boolean a(DivAbsoluteEdgeInsets divAbsoluteEdgeInsets, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divAbsoluteEdgeInsets != null && ((Number) this.a.b(oj3Var)).longValue() == ((Number) divAbsoluteEdgeInsets.a.b(oj3Var2)).longValue() && ((Number) this.b.b(oj3Var)).longValue() == ((Number) divAbsoluteEdgeInsets.b.b(oj3Var2)).longValue() && ((Number) this.c.b(oj3Var)).longValue() == ((Number) divAbsoluteEdgeInsets.c.b(oj3Var2)).longValue() && ((Number) this.d.b(oj3Var)).longValue() == ((Number) divAbsoluteEdgeInsets.d.b(oj3Var2)).longValue();
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivAbsoluteEdgeInsets.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hashCode();
        this.e = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((com.yandex.div2.a.b) ml0.a().E().getValue()).b(ml0.b(), this);
    }
}
