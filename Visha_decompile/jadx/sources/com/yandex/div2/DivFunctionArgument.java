package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.nj2;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivFunctionArgument implements d65, ko4 {
    public static final a d = new a(null);
    public static final s74 e = new s74() {
        @Override
        public final DivFunctionArgument invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivFunctionArgument.d.a(hx7Var, jSONObject);
        }
    };
    public final String a;
    public final DivEvaluableType b;
    public Integer c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivFunctionArgument a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((nj2) ml0.a().C3().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivFunctionArgument(String str, DivEvaluableType divEvaluableType) {
        y45.j(str, "name");
        y45.j(divEvaluableType, "type");
        this.a = str;
        this.b = divEvaluableType;
    }

    public final boolean a(DivFunctionArgument divFunctionArgument, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        return divFunctionArgument != null && y45.e(this.a, divFunctionArgument.a) && this.b == divFunctionArgument.b;
    }

    @Override
    public int hash() {
        Integer num = this.c;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivFunctionArgument.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        this.c = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((nj2) ml0.a().C3().getValue()).b(ml0.b(), this);
    }
}
