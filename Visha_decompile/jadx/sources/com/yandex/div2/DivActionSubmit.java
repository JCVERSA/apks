package com.yandex.div2;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.lzy.okgo.model.Progress;
import com.yandex.div.json.expressions.Expression;
import defpackage.d65;
import defpackage.e74;
import defpackage.hx7;
import defpackage.ko4;
import defpackage.ml0;
import defpackage.oj3;
import defpackage.s74;
import defpackage.xq8;
import defpackage.y45;
import defpackage.y71;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.lookup.StringLookupFactory;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class DivActionSubmit implements d65, ko4 {
    public static final a f = new a(null);
    public static final s74 g = new s74() {
        @Override
        public final DivActionSubmit invoke(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "it");
            return DivActionSubmit.f.a(hx7Var, jSONObject);
        }
    };
    public final Expression a;
    public final List b;
    public final List c;
    public final Request d;
    public Integer e;

    public static final class Request implements d65, ko4 {
        public static final a e = new a(null);
        public static final Expression f = Expression.a.a(Method.POST);
        public static final s74 g = new s74() {
            @Override
            public final DivActionSubmit.Request invoke(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "it");
                return DivActionSubmit.Request.e.a(hx7Var, jSONObject);
            }
        };
        public final List a;
        public final Expression b;
        public final Expression c;
        public Integer d;

        public static final class Header implements d65, ko4 {
            public static final a d = new a(null);
            public static final s74 e = new s74() {
                @Override
                public final DivActionSubmit.Request.Header invoke(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "it");
                    return DivActionSubmit.Request.Header.d.a(hx7Var, jSONObject);
                }
            };
            public final Expression a;
            public final Expression b;
            public Integer c;

            public static final class a {
                public a(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final Header a(hx7 hx7Var, JSONObject jSONObject) {
                    y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                    y45.j(jSONObject, "json");
                    return ((o) ml0.a().Y0().getValue()).a(hx7Var, jSONObject);
                }

                public a() {
                }
            }

            public Header(Expression expression, Expression expression2) {
                y45.j(expression, "name");
                y45.j(expression2, ES6Iterator.VALUE_PROPERTY);
                this.a = expression;
                this.b = expression2;
            }

            public final boolean a(Header header, oj3 oj3Var, oj3 oj3Var2) {
                y45.j(oj3Var, "resolver");
                y45.j(oj3Var2, "otherResolver");
                return header != null && y45.e(this.a.b(oj3Var), header.a.b(oj3Var2)) && y45.e(this.b.b(oj3Var), header.b.b(oj3Var2));
            }

            @Override
            public int hash() {
                Integer num = this.c;
                if (num != null) {
                    return num.intValue();
                }
                int iHashCode = xq8.b(Header.class).hashCode() + this.a.hashCode() + this.b.hashCode();
                this.c = Integer.valueOf(iHashCode);
                return iHashCode;
            }

            @Override
            public JSONObject s() {
                return ((o) ml0.a().Y0().getValue()).b(ml0.b(), this);
            }
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018\u0000 \u00072\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\bB\u0011\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0006j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, d2 = {"Lcom/yandex/div2/DivActionSubmit$Request$Method;", "", "", ES6Iterator.VALUE_PROPERTY, MethodDecl.initName, "(Ljava/lang/String;ILjava/lang/String;)V", "Ljava/lang/String;", "Converter", CmcdData.OBJECT_TYPE_AUDIO_ONLY, ShareTarget.METHOD_GET, "POST", "PUT", "PATCH", "DELETE", "HEAD", "OPTIONS", "div-data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public enum Method {
            GET("get"),
            POST("post"),
            PUT("put"),
            PATCH("patch"),
            DELETE("delete"),
            HEAD("head"),
            OPTIONS("options");

            private final String value;

            public static final Companion INSTANCE = new Companion(null);
            public static final e74 TO_STRING = new e74() {
                @Override
                public final String invoke(DivActionSubmit.Request.Method method) {
                    y45.j(method, ES6Iterator.VALUE_PROPERTY);
                    return DivActionSubmit.Request.Method.INSTANCE.b(method);
                }
            };
            public static final e74 FROM_STRING = new e74() {
                @Override
                public final DivActionSubmit.Request.Method invoke(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    return DivActionSubmit.Request.Method.INSTANCE.a(str);
                }
            };

            public static final class Companion {
                public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                    this();
                }

                public final Method a(String str) {
                    y45.j(str, ES6Iterator.VALUE_PROPERTY);
                    Method method = Method.GET;
                    if (y45.e(str, method.value)) {
                        return method;
                    }
                    Method method2 = Method.POST;
                    if (y45.e(str, method2.value)) {
                        return method2;
                    }
                    Method method3 = Method.PUT;
                    if (y45.e(str, method3.value)) {
                        return method3;
                    }
                    Method method4 = Method.PATCH;
                    if (y45.e(str, method4.value)) {
                        return method4;
                    }
                    Method method5 = Method.DELETE;
                    if (y45.e(str, method5.value)) {
                        return method5;
                    }
                    Method method6 = Method.HEAD;
                    if (y45.e(str, method6.value)) {
                        return method6;
                    }
                    Method method7 = Method.OPTIONS;
                    if (y45.e(str, method7.value)) {
                        return method7;
                    }
                    return null;
                }

                public final String b(Method method) {
                    y45.j(method, "obj");
                    return method.value;
                }

                public Companion() {
                }
            }

            Method(String str) {
                this.value = str;
            }
        }

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Request a(hx7 hx7Var, JSONObject jSONObject) {
                y45.j(hx7Var, StringLookupFactory.KEY_ENV);
                y45.j(jSONObject, "json");
                return ((DivActionSubmitRequestJsonParser.b) ml0.a().b1().getValue()).a(hx7Var, jSONObject);
            }

            public a() {
            }
        }

        public Request(List list, Expression expression, Expression expression2) {
            y45.j(expression, "method");
            y45.j(expression2, "url");
            this.a = list;
            this.b = expression;
            this.c = expression2;
        }

        public final boolean a(Request request, oj3 oj3Var, oj3 oj3Var2) {
            y45.j(oj3Var, "resolver");
            y45.j(oj3Var2, "otherResolver");
            if (request == null) {
                return false;
            }
            List list = this.a;
            if (list != null) {
                List list2 = request.a;
                if (list2 == null || list.size() != list2.size()) {
                    return false;
                }
                int i = 0;
                for (Object obj : list) {
                    int i2 = i + 1;
                    if (i < 0) {
                        y71.u();
                    }
                    if (!((Header) obj).a((Header) list2.get(i), oj3Var, oj3Var2)) {
                        return false;
                    }
                    i = i2;
                }
            } else if (request.a != null) {
                return false;
            }
            return this.b.b(oj3Var) == request.b.b(oj3Var2) && y45.e(this.c.b(oj3Var), request.c.b(oj3Var2));
        }

        @Override
        public int hash() {
            Integer num = this.d;
            if (num != null) {
                return num.intValue();
            }
            int iHashCode = xq8.b(Request.class).hashCode();
            List list = this.a;
            int iHash = 0;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    iHash += ((Header) it.next()).hash();
                }
            }
            int iHashCode2 = iHashCode + iHash + this.b.hashCode() + this.c.hashCode();
            this.d = Integer.valueOf(iHashCode2);
            return iHashCode2;
        }

        @Override
        public JSONObject s() {
            return ((DivActionSubmitRequestJsonParser.b) ml0.a().b1().getValue()).b(ml0.b(), this);
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final DivActionSubmit a(hx7 hx7Var, JSONObject jSONObject) {
            y45.j(hx7Var, StringLookupFactory.KEY_ENV);
            y45.j(jSONObject, "json");
            return ((m) ml0.a().V0().getValue()).a(hx7Var, jSONObject);
        }

        public a() {
        }
    }

    public DivActionSubmit(Expression expression, List list, List list2, Request request) {
        y45.j(expression, "containerId");
        y45.j(request, Progress.REQUEST);
        this.a = expression;
        this.b = list;
        this.c = list2;
        this.d = request;
    }

    public final boolean a(DivActionSubmit divActionSubmit, oj3 oj3Var, oj3 oj3Var2) {
        y45.j(oj3Var, "resolver");
        y45.j(oj3Var2, "otherResolver");
        if (divActionSubmit == null || !y45.e(this.a.b(oj3Var), divActionSubmit.a.b(oj3Var2))) {
            return false;
        }
        List list = this.b;
        if (list != null) {
            List list2 = divActionSubmit.b;
            if (list2 == null || list.size() != list2.size()) {
                return false;
            }
            int i = 0;
            for (Object obj : list) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                if (!((DivAction) obj).a((DivAction) list2.get(i), oj3Var, oj3Var2)) {
                    return false;
                }
                i = i2;
            }
        } else if (divActionSubmit.b != null) {
            return false;
        }
        List list3 = this.c;
        if (list3 != null) {
            List list4 = divActionSubmit.c;
            if (list4 == null || list3.size() != list4.size()) {
                return false;
            }
            int i3 = 0;
            for (Object obj2 : list3) {
                int i4 = i3 + 1;
                if (i3 < 0) {
                    y71.u();
                }
                if (!((DivAction) obj2).a((DivAction) list4.get(i3), oj3Var, oj3Var2)) {
                    return false;
                }
                i3 = i4;
            }
        } else if (divActionSubmit.c != null) {
            return false;
        }
        return this.d.a(divActionSubmit.d, oj3Var, oj3Var2);
    }

    @Override
    public int hash() {
        int iHash;
        Integer num = this.e;
        if (num != null) {
            return num.intValue();
        }
        int iHashCode = xq8.b(DivActionSubmit.class).hashCode() + this.a.hashCode();
        List list = this.b;
        int iHash2 = 0;
        if (list != null) {
            Iterator it = list.iterator();
            iHash = 0;
            while (it.hasNext()) {
                iHash += ((DivAction) it.next()).hash();
            }
        } else {
            iHash = 0;
        }
        int i = iHashCode + iHash;
        List list2 = this.c;
        if (list2 != null) {
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                iHash2 += ((DivAction) it2.next()).hash();
            }
        }
        int iHash3 = i + iHash2 + this.d.hash();
        this.e = Integer.valueOf(iHash3);
        return iHash3;
    }

    @Override
    public JSONObject s() {
        return ((m) ml0.a().V0().getValue()).b(ml0.b(), this);
    }
}
