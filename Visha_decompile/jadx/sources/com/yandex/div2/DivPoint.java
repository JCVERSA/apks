package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.no2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivPoint implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivPoint invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivPoint.d.a(hx7Var, jSONObject);
        }
    };
    public final DivDimension a;
    public final DivDimension b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivPoint a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((no2) ml0.a().W5().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivPoint(DivDimension divDimension, DivDimension divDimension2) {
        y45.j(divDimension, "x");
        y45.j(divDimension2, "y");
        this.a = divDimension;
        this.b = divDimension2;
    }

    public final boolean a(DivPoint divPoint, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divPoint != null && this.a.a(divPoint.a, oj3Var, oj3Var2) && this.b.a(divPoint.b, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivPoint.class).hashCode() + this.a.hash() + this.b.hash();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((no2) ml0.a().W5().getValue()).b(ml0.b(), this);
    }
}
