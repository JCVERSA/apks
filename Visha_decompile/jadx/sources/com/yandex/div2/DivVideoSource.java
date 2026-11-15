package com.yandex.div2;

import com.lzy.okgo.model.Progress;
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

public final class DivVideoSource implements d65, ko4 {
    public static final a f = new a(null);
    public static final s74 g = new s74() {
        @Override
        public final DivVideoSource invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivVideoSource.f.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final Expression b;
    public final Resolution c;
    public final Expression d;
    public Integer e;

    public static final class Resolution implements d65, ko4 {
        public static final a d = new a(null);
        public static final s74 e = new s74() {
            @Override
            public final DivVideoSource.Resolution invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivVideoSource.Resolution.d.a(hx7Var, jSONObject);
            }
        };
        public final Expression a;
        public final Expression b;
        public Integer c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Resolution a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((k5.b) ml0.a().n9().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Resolution(Expression expression, Expression expression2) {
            y45.j(expression, "height");
            y45.j(expression2, "width");
            this.a = expression;
            this.b = expression2;
        }

        public final boolean a(Resolution resolution, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            return resolution != null && ((Number) this.a.b(oj3Var)).longValue() == ((Number) resolution.a.b(oj3Var2)).longValue() && ((Number) this.b.b(oj3Var)).longValue() == ((Number) resolution.b.b(oj3Var2)).longValue();
        }

        @Override
        public int hash() {
            Integer num = this.c;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Resolution.class).hashCode() + this.a.hashCode() + this.b.hashCode();
            this.c = Integer.valueOf(iHashCode);
            return iHashCode;
        }

        @Override
        public JSONObject s() {
            return ((k5.b) ml0.a().n9().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivVideoSource a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((i5) ml0.a().k9().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivVideoSource(Expression expression, Expression expression2, Resolution resolution, Expression expression3) {
        y45.j(expression2, Progress.MIMETYPE);
        y45.j(expression3, "url");
        this.a = expression;
        this.b = expression2;
        this.c = resolution;
        this.d = expression3;
    }

    public final boolean a(DivVideoSource divVideoSource, oj3 oj3Var, oj3 oj3Var2) {
        boolean zA;
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divVideoSource == null) {
            return false;
        }
        Expression expression = this.a;
        Long l = expression != null ? (Long) expression.b(oj3Var) : null;
        Expression expression2 = divVideoSource.a;
        if (!y45.e(l, expression2 != null ? (Long) expression2.b(oj3Var2) : null) || !y45.e(this.b.b(oj3Var), divVideoSource.b.b(oj3Var2))) {
            return false;
        }
        Resolution resolution = this.c;
        if (resolution != null) {
            zA = resolution.a(divVideoSource.c, oj3Var, oj3Var2);
        } else {
            zA = divVideoSource.c == null;
        }
        return zA && y45.e(this.d.b(oj3Var), divVideoSource.d.b(oj3Var2));
    }

    @Override
    public int hash() {
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivVideoSource.class).hashCode();
        Expression expression = this.a;
        int iHashCode2 = iHashCode + (expression != null ? expression.hashCode() : 0) + this.b.hashCode();
        Resolution resolution = this.c;
        int iHash = iHashCode2 + (resolution != null ? resolution.hash() : 0) + this.d.hashCode();
        this.e = Integer.valueOf(iHash);
        return iHash;
    }

    @Override
    public JSONObject s() {
        return ((i5) ml0.a().k9().getValue()).b(ml0.b(), this);
    }
}
