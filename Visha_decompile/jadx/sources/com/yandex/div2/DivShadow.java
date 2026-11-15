package com.yandex.div2;

import androidx.constraintlayout.core.motion.utils.TypedValues;
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

public final class DivShadow implements d65, ko4 {
    public static final a f = new a(null);
    public static final Expression g;
    public static final Expression h;
    public static final Expression i;
    public static final s74 j;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final DivPoint d;
    public Integer e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivShadow a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((l3.b) ml0.a().M6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        g = aVar.a(Double.valueOf(0.19d));
        h = aVar.a(2L);
        i = aVar.a(0);
        j = new s74() {
            @Override
            public final DivShadow invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivShadow.f.a(hx7Var, jSONObject);
            }
        };
    }

    public DivShadow(Expression expression, Expression expression2, Expression expression3, DivPoint divPoint) {
        y45.j(expression, "alpha");
        y45.j(expression2, "blur");
        y45.j(expression3, "color");
        y45.j(divPoint, TypedValues.CycleType.S_WAVE_OFFSET);
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = divPoint;
    }

    public final boolean a(DivShadow divShadow, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divShadow != null && ((Number) this.a.b(oj3Var)).doubleValue() == ((Number) divShadow.a.b(oj3Var2)).doubleValue() && ((Number) this.b.b(oj3Var)).longValue() == ((Number) divShadow.b.b(oj3Var2)).longValue() && ((Number) this.c.b(oj3Var)).intValue() == ((Number) divShadow.c.b(oj3Var2)).intValue() && this.d.a(divShadow.d, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivShadow.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hash();
        this.e = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((l3.b) ml0.a().M6().getValue()).b(ml0.b(), this);
    }
}
