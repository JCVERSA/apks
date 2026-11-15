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

public final class DivTextRangeMaskParticles implements d65, ko4 {
    public static final a g = new a(null);
    public static final Expression h;
    public static final Expression i;
    public static final Expression j;
    public static final DivFixedSize k;
    public static final s74 l;
    public final Expression a;
    public final Expression b;
    public final Expression c;
    public final Expression d;
    public final DivFixedSize e;
    public Integer f;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivTextRangeMaskParticles a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((v4.b) ml0.a().A8().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    static {
        Expression.a aVar = Expression.a;
        h = aVar.a(Double.valueOf(0.8d));
        i = aVar.a(Boolean.FALSE);
        j = aVar.a(Boolean.TRUE);
        k = new DivFixedSize(null, aVar.a(1L), 1, null);
        l = new s74() {
            @Override
            public final DivTextRangeMaskParticles invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivTextRangeMaskParticles.g.a(hx7Var, jSONObject);
            }
        };
    }

    public DivTextRangeMaskParticles(Expression expression, Expression expression2, Expression expression3, Expression expression4, DivFixedSize divFixedSize) {
        y45.j(expression, "color");
        y45.j(expression2, "density");
        y45.j(expression3, "isAnimated");
        y45.j(expression4, "isEnabled");
        y45.j(divFixedSize, "particleSize");
        this.a = expression;
        this.b = expression2;
        this.c = expression3;
        this.d = expression4;
        this.e = divFixedSize;
    }

    public final boolean a(DivTextRangeMaskParticles divTextRangeMaskParticles, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divTextRangeMaskParticles != null && ((Number) this.a.b(oj3Var)).intValue() == ((Number) divTextRangeMaskParticles.a.b(oj3Var2)).intValue() && ((Number) this.b.b(oj3Var)).doubleValue() == ((Number) divTextRangeMaskParticles.b.b(oj3Var2)).doubleValue() && ((Boolean) this.c.b(oj3Var)).booleanValue() == ((Boolean) divTextRangeMaskParticles.c.b(oj3Var2)).booleanValue() && ((Boolean) this.d.b(oj3Var)).booleanValue() == ((Boolean) divTextRangeMaskParticles.d.b(oj3Var2)).booleanValue() && this.e.a(divTextRangeMaskParticles.e, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.f;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivTextRangeMaskParticles.class).hashCode() + this.a.hashCode() + this.b.hashCode() + this.c.hashCode() + this.d.hashCode() + this.e.hash();
        this.f = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((v4.b) ml0.a().A8().getValue()).b(ml0.b(), this);
    }
}
