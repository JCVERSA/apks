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

public final class DivDefaultIndicatorItemPlacement implements d65, ko4 {
    public static final a c = new a(null);
    public static final DivFixedSize d = new DivFixedSize(null == true ? 1 : 0, Expression.a.a(15L), 1, null == true ? 1 : 0);
    public static final s74 e = new s74() {
        @Override
        public final DivDefaultIndicatorItemPlacement invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivDefaultIndicatorItemPlacement.c.a(hx7Var, jSONObject);
        }
    };
    public final DivFixedSize a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivDefaultIndicatorItemPlacement a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((x0.b) ml0.a().G2().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivDefaultIndicatorItemPlacement(DivFixedSize divFixedSize) {
        y45.j(divFixedSize, "spaceBetweenCenters");
        this.a = divFixedSize;
    }

    public final boolean a(DivDefaultIndicatorItemPlacement divDefaultIndicatorItemPlacement, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divDefaultIndicatorItemPlacement == null) {
            return false;
        }
        return this.a.a(divDefaultIndicatorItemPlacement.a, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivDefaultIndicatorItemPlacement.class).hashCode() + this.a.hash();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((x0.b) ml0.a().G2().getValue()).b(ml0.b(), this);
    }
}
