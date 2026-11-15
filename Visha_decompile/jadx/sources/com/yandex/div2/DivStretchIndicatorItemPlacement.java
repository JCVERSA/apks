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

public final class DivStretchIndicatorItemPlacement implements d65, ko4 {
    public static final a d = new a(null);
    public static final DivFixedSize e;
    public static final Expression f;
    public static final s74 g;
    public final DivFixedSize a;
    public final Expression b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivStretchIndicatorItemPlacement a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((y3.b) ml0.a().t7().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        e = new DivFixedSize(null, aVar.a(5L), 1, null);
        f = aVar.a(10L);
        g = new s74() {
            @Override
            public final DivStretchIndicatorItemPlacement invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivStretchIndicatorItemPlacement.d.a(hx7Var, jSONObject);
            }
        };
    }

    public DivStretchIndicatorItemPlacement(DivFixedSize divFixedSize, Expression expression) {
        y45.j(divFixedSize, "itemSpacing");
        y45.j(expression, "maxVisibleItems");
        this.a = divFixedSize;
        this.b = expression;
    }

    public final boolean a(DivStretchIndicatorItemPlacement divStretchIndicatorItemPlacement, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divStretchIndicatorItemPlacement != null && this.a.a(divStretchIndicatorItemPlacement.a, oj3Var, oj3Var2) && ((Number) this.b.b(oj3Var)).longValue() == ((Number) divStretchIndicatorItemPlacement.b.b(oj3Var2)).longValue();
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivStretchIndicatorItemPlacement.class).hashCode() + this.a.hash() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((y3.b) ml0.a().t7().getValue()).b(ml0.b(), this);
    }
}
