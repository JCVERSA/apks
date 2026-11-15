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

public final class DivRoundedRectangleShape implements d65, ko4 {
    public static final a g = new a(null);
    public static final DivFixedSize h;
    public static final DivFixedSize i;
    public static final DivFixedSize j;
    public static final s74 k;
    public final Expression a;
    public final DivFixedSize b;
    public final DivFixedSize c;
    public final DivFixedSize d;
    public final DivStroke e;
    public Integer f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivRoundedRectangleShape a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((h3.b) ml0.a().u6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        Expression.a aVar = Expression.a;
        int i2 = 1;
        h = new DivFixedSize(null == true ? 1 : 0, aVar.a(5L), i2, null == true ? 1 : 0);
        i = new DivFixedSize(null == true ? 1 : 0, aVar.a(10L), i2, null == true ? 1 : 0);
        j = new DivFixedSize(null == true ? 1 : 0, aVar.a(10L), i2, null == true ? 1 : 0);
        k = new s74() {
            @Override
            public final DivRoundedRectangleShape invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivRoundedRectangleShape.g.a(hx7Var, jSONObject);
            }
        };
    }

    public DivRoundedRectangleShape(Expression expression, DivFixedSize divFixedSize, DivFixedSize divFixedSize2, DivFixedSize divFixedSize3, DivStroke divStroke) {
        y45.j(divFixedSize, "cornerRadius");
        y45.j(divFixedSize2, "itemHeight");
        y45.j(divFixedSize3, "itemWidth");
        this.a = expression;
        this.b = divFixedSize;
        this.c = divFixedSize2;
        this.d = divFixedSize3;
        this.e = divStroke;
    }

    public final boolean a(DivRoundedRectangleShape divRoundedRectangleShape, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divRoundedRectangleShape == null) {
            return false;
        }
        Expression expression = this.a;
        Integer num = expression != null ? (Integer) expression.b(oj3Var) : null;
        Expression expression2 = divRoundedRectangleShape.a;
        if (!y45.e(num, expression2 != null ? (Integer) expression2.b(oj3Var2) : null) || !this.b.a(divRoundedRectangleShape.b, oj3Var, oj3Var2) || !this.c.a(divRoundedRectangleShape.c, oj3Var, oj3Var2) || !this.d.a(divRoundedRectangleShape.d, oj3Var, oj3Var2)) {
            return false;
        }
        DivStroke divStroke = this.e;
        if (divStroke != null) {
            zA = divStroke.a(divRoundedRectangleShape.e, oj3Var, oj3Var2);
        } else {
            zA = divRoundedRectangleShape.e == null;
        }
        return zA;
    }

    @Override
    public int hash() {
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivRoundedRectangleShape.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hash() + this.c.hash() + this.d.hash();
        DivStroke divStroke = this.e;
        int iHash = iHashCode2 + (divStroke != null ? divStroke.hash() : 0);
        this.f = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((h3.b) ml0.a().u6().getValue()).b(ml0.b(), this);
    }

    public DivRoundedRectangleShape(Expression expression, DivFixedSize divFixedSize, DivFixedSize divFixedSize2, DivFixedSize divFixedSize3, DivStroke divStroke, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? null : expression, (i2 & 2) != 0 ? h : divFixedSize, (i2 & 4) != 0 ? i : divFixedSize2, (i2 & 8) != 0 ? j : divFixedSize3, (i2 & 16) != 0 ? null : divStroke);
    }
}
