package com.yandex.div2;

import com.lzy.okgo.model.Progress;
import com.yandex.div.json.expressions.Expression;
import defpackage.ac5;
import defpackage.d65;
import defpackage.hx7;
import defpackage.ml0;
import defpackage.pf2;
import defpackage.s74;
import defpackage.tp3;
import defpackage.y45;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivActionSubmitTemplate implements d65, ac5 {
    public static final a e = new a(null);
    public static final s74 f = new s74() {
        @Override
        public final DivActionSubmitTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return new DivActionSubmitTemplate(hx7Var, null, false, jSONObject, 6, null);
        }
    };
    public final tp3 a;
    public final tp3 b;
    public final tp3 c;
    public final tp3 d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public DivActionSubmitTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3, tp3 tp3Var4) {
        y45.j(tp3Var, "containerId");
        y45.j(tp3Var2, "onFailActions");
        y45.j(tp3Var3, "onSuccessActions");
        y45.j(tp3Var4, Progress.REQUEST);
        this.a = tp3Var;
        this.b = tp3Var2;
        this.c = tp3Var3;
        this.d = tp3Var4;
    }

    @Override
    public JSONObject s() {
        return ((pf2) ml0.a().W0().getValue()).b(ml0.b(), this);
    }

    public static final class RequestTemplate implements d65, ac5 {
        public static final a d = new a(null);
        public static final Expression e = Expression.a.a(DivActionSubmit.Request.Method.POST);
        public static final s74 f = new s74() {
            @Override
            public final DivActionSubmitTemplate.RequestTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return new DivActionSubmitTemplate.RequestTemplate(hx7Var, null, false, jSONObject, 6, null);
            }
        };
        public final tp3 a;
        public final tp3 b;
        public final tp3 c;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public a() {
            }
        }

        public RequestTemplate(tp3 tp3Var, tp3 tp3Var2, tp3 tp3Var3) {
            y45.j(tp3Var, "headers");
            y45.j(tp3Var2, "method");
            y45.j(tp3Var3, "url");
            this.a = tp3Var;
            this.b = tp3Var2;
            this.c = tp3Var3;
        }

        @Override
        public JSONObject s() {
            return ((DivActionSubmitRequestJsonParser.c) ml0.a().c1().getValue()).b(ml0.b(), this);
        }

        public static final class HeaderTemplate implements d65, ac5 {
            public static final a c = new a(null);
            public static final s74 d = new s74() {
                @Override
                public final DivActionSubmitTemplate.RequestTemplate.HeaderTemplate invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return new DivActionSubmitTemplate.RequestTemplate.HeaderTemplate(hx7Var, null, false, jSONObject, 6, null);
                }
            };
            public final tp3 a;
            public final tp3 b;

            public static final class a {
                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public a() {
                }
            }

            public HeaderTemplate(tp3 tp3Var, tp3 tp3Var2) {
                y45.j(tp3Var, "name");
                y45.j(tp3Var2, ES6Iterator.VALUE_PROPERTY);
                this.a = tp3Var;
                this.b = tp3Var2;
            }

            @Override
            public JSONObject s() {
                return ((p) ml0.a().Z0().getValue()).b(ml0.b(), this);
            }

            public HeaderTemplate(hx7 hx7Var, HeaderTemplate headerTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this(hx7Var, (i & 2) != 0 ? null : headerTemplate, (i & 4) != 0 ? false : z, jSONObject);
            }

            /* JADX WARN: Illegal instructions before constructor call */
            public HeaderTemplate(hx7 hx7Var, HeaderTemplate headerTemplate, boolean z, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                tp3.a aVar = tp3.c;
                this(aVar.a(false), aVar.a(false));
                throw new UnsupportedOperationException("Do not use this constructor directly.");
            }
        }

        public RequestTemplate(hx7 hx7Var, RequestTemplate requestTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(hx7Var, (i & 2) != 0 ? null : requestTemplate, (i & 4) != 0 ? false : z, jSONObject);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public RequestTemplate(hx7 hx7Var, RequestTemplate requestTemplate, boolean z, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            tp3.a aVar = tp3.c;
            this(aVar.a(false), aVar.a(false), aVar.a(false));
            throw new UnsupportedOperationException("Do not use this constructor directly.");
        }
    }

    public DivActionSubmitTemplate(hx7 hx7Var, DivActionSubmitTemplate divActionSubmitTemplate, boolean z, JSONObject jSONObject, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(hx7Var, (i & 2) != 0 ? null : divActionSubmitTemplate, (i & 4) != 0 ? false : z, jSONObject);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public DivActionSubmitTemplate(hx7 hx7Var, DivActionSubmitTemplate divActionSubmitTemplate, boolean z, JSONObject jSONObject) {
        y45.j(hx7Var, StringLookupFactory.KEY_ENV);
        y45.j(jSONObject, "json");
        tp3.a aVar = tp3.c;
        this(aVar.a(false), aVar.a(false), aVar.a(false), aVar.a(false));
        throw new UnsupportedOperationException("Do not use this constructor directly.");
    }
}
