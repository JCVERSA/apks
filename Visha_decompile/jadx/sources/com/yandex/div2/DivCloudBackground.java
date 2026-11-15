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

public final class DivCloudBackground implements d65, ko4 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivCloudBackground invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivCloudBackground.e.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final DivEdgeInsets c;
    public Integer d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivCloudBackground a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((m0.b) ml0.a().X1().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivCloudBackground(Expression expression, Expression expression2, DivEdgeInsets divEdgeInsets) {
        y45.j(expression, "color");
        y45.j(expression2, "cornerRadius");
        this.a = expression;
        this.b = expression2;
        this.c = divEdgeInsets;
    }

    public final boolean a(DivCloudBackground divCloudBackground, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divCloudBackground == null || ((Number) this.a.b(oj3Var)).intValue() != ((Number) divCloudBackground.a.b(oj3Var2)).intValue() || ((Number) this.b.b(oj3Var)).longValue() != ((Number) divCloudBackground.b.b(oj3Var2)).longValue()) {
            return false;
        }
        DivEdgeInsets divEdgeInsets = this.c;
        if (divEdgeInsets != null) {
            zA = divEdgeInsets.a(divCloudBackground.c, oj3Var, oj3Var2);
        } else {
            zA = divCloudBackground.c == null;
        }
        return zA;
    }

    @Override
    public int hash() {
        Integer num = this.d;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivCloudBackground.class).hashCode() + this.a.hashCode() + this.b.hashCode();
        DivEdgeInsets divEdgeInsets = this.c;
        int iHash = iHashCode + (divEdgeInsets != null ? divEdgeInsets.hash() : 0);
        this.d = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((m0.b) ml0.a().X1().getValue()).b(ml0.b(), this);
    }
}
