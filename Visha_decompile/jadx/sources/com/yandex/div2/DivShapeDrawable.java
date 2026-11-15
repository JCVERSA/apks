package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.tp2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivShapeDrawable implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivShapeDrawable invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivShapeDrawable.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivShape b;
    public final DivStroke c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivShapeDrawable a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((tp2) ml0.a().P6().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivShapeDrawable(Expression expression, DivShape divShape, DivStroke divStroke) {
        y45.j(expression, "color");
        y45.j(divShape, "shape");
        this.a = expression;
        this.b = divShape;
        this.c = divStroke;
    }

    public final boolean a(DivShapeDrawable divShapeDrawable, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divShapeDrawable == null || ((Number) this.a.b(oj3Var)).intValue() != ((Number) divShapeDrawable.a.b(oj3Var2)).intValue() || !this.b.a(divShapeDrawable.b, oj3Var, oj3Var2)) {
            return false;
        }
        DivStroke divStroke = this.c;
        if (divStroke != null) {
            zA = divStroke.a(divShapeDrawable.c, oj3Var, oj3Var2);
        } else {
            zA = divShapeDrawable.c == null;
        }
        return zA;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivShapeDrawable.class).hashCode() + this.a.hashCode() + this.b.hash();
        DivStroke divStroke = this.c;
        int iHash = iHashCode + (divStroke != null ? divStroke.hash() : 0);
        this.d = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((tp2) ml0.a().P6().getValue()).b(ml0.b(), this);
    }
}
