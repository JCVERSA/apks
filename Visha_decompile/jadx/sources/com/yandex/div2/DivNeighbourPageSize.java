package com.yandex.div2;

import defpackage.d65;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.rm2;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;

public final class DivNeighbourPageSize implements d65, ko4 {
    public static final a c = new a(null);
    public static final s74 d = new s74() {
        @Override
        public final DivNeighbourPageSize invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivNeighbourPageSize.c.a(hx7Var, jSONObject);
        }
    };
    public final DivFixedSize a;
    public Integer b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivNeighbourPageSize a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((rm2) ml0.a().Y4().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivNeighbourPageSize(DivFixedSize divFixedSize) {
        y45.j(divFixedSize, "neighbourPageWidth");
        this.a = divFixedSize;
    }

    public final boolean a(DivNeighbourPageSize divNeighbourPageSize, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divNeighbourPageSize == null) {
            return false;
        }
        return this.a.a(divNeighbourPageSize.a, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        Integer num = this.b;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivNeighbourPageSize.class).hashCode() + this.a.hash();
        this.b = Integer.valueOf(iHashCode);
        return iHashCode;
    }

    @Override
    public JSONObject s() {
        return ((rm2) ml0.a().Y4().getValue()).b(ml0.b(), this);
    }
}
