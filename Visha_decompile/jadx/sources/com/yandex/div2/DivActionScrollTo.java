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

public final class DivActionScrollTo implements d65, ko4 {
    public static final a e = new a(null);
    public static final Expression f = Expression.a.a(Boolean.TRUE);
    public static final s74 g = new s74() {
        @Override
        public final DivActionScrollTo invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionScrollTo.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivActionScrollDestination b;
    public final Expression c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionScrollTo a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((k.b) ml0.a().G0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionScrollTo(Expression expression, DivActionScrollDestination divActionScrollDestination, Expression expression2) {
        y45.j(expression, "animated");
        y45.j(divActionScrollDestination, "destination");
        y45.j(expression2, TtmlNode.ATTR_ID);
        this.a = expression;
        this.b = divActionScrollDestination;
        this.c = expression2;
    }

    public final boolean a(DivActionScrollTo divActionScrollTo, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divActionScrollTo != null && ((Boolean) this.a.b(oj3Var)).booleanValue() == ((Boolean) divActionScrollTo.a.b(oj3Var2)).booleanValue() && this.b.a(divActionScrollTo.b, oj3Var, oj3Var2) && y45.e(this.c.b(oj3Var), divActionScrollTo.c.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionScrollTo.class).hashCode() + this.a.hashCode() + this.b.hash() + this.c.hashCode();
        this.d = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((k.b) ml0.a().G0().getValue()).b(ml0.b(), this);
    }
}
