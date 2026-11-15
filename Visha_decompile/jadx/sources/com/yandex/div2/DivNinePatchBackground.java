package com.yandex.div2;

import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.um2;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivNinePatchBackground implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivNinePatchBackground invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivNinePatchBackground.d.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final DivAbsoluteEdgeInsets b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivNinePatchBackground a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((um2) ml0.a().b5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivNinePatchBackground(Expression expression, DivAbsoluteEdgeInsets divAbsoluteEdgeInsets) {
        y45.j(expression, "imageUrl");
        y45.j(divAbsoluteEdgeInsets, "insets");
        this.a = expression;
        this.b = divAbsoluteEdgeInsets;
    }

    public final boolean a(DivNinePatchBackground divNinePatchBackground, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divNinePatchBackground != null && y45.e(this.a.b(oj3Var), divNinePatchBackground.a.b(oj3Var2)) && this.b.a(divNinePatchBackground.b, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivNinePatchBackground.class).hashCode() + this.a.hashCode() + this.b.hash();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((um2) ml0.a().b5().getValue()).b(ml0.b(), this);
    }
}
