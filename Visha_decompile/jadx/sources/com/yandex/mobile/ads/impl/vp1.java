package com.yandex.mobile.ads.impl;

import androidx.browser.trusted.sharing.ShareTarget;
import com.lzy.okgo.model.Progress;
import defpackage.y45;
import java.net.URL;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import org.mozilla.javascript.ES6Iterator;

public final class vp1 {
    private final gi0 a;
    private final String b;
    private final qf0 c;
    private final yp1 d;
    private final Map<Class<?>, Object> e;
    private um f;

    public vp1(gi0 gi0Var, String str, qf0 qf0Var, yp1 yp1Var, Map<Class<?>, ? extends Object> map) {
        y45.j(gi0Var, "url");
        y45.j(str, "method");
        y45.j(qf0Var, "headers");
        y45.j(map, "tags");
        this.a = gi0Var;
        this.b = str;
        this.c = qf0Var;
        this.d = yp1Var;
        this.e = map;
    }

    public final yp1 a() {
        return this.d;
    }

    public final um b() {
        um umVar = this.f;
        if (umVar != null) {
            return umVar;
        }
        int i = um.n;
        um umVarA = um.b.a(this.c);
        this.f = umVarA;
        return umVarA;
    }

    public final Map<Class<?>, Object> c() {
        return this.e;
    }

    public final qf0 d() {
        return this.c;
    }

    public final boolean e() {
        return this.a.h();
    }

    public final String f() {
        return this.b;
    }

    public final gi0 g() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.a);
        if (this.c.size() != 0) {
            sb.append(", headers=[");
            int i = 0;
            for (Pair<? extends String, ? extends String> pair : this.c) {
                int i2 = i + 1;
                if (i < 0) {
                    defpackage.y71.u();
                }
                Pair<? extends String, ? extends String> pair2 = pair;
                String strComponent1 = pair2.component1();
                String strComponent2 = pair2.component2();
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append(strComponent1);
                sb.append(':');
                sb.append(strComponent2);
                i = i2;
            }
            sb.append(']');
        }
        if (!this.e.isEmpty()) {
            sb.append(", tags=");
            sb.append(this.e);
        }
        sb.append('}');
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final String a(String str) {
        y45.j(str, "name");
        return this.c.a(str);
    }

    public static class a {
        private gi0 a;
        private String b;
        private qf0.a c;
        private yp1 d;
        private Map<Class<?>, Object> e;

        public a() {
            this.e = new LinkedHashMap();
            this.b = ShareTarget.METHOD_GET;
            this.c = new qf0.a();
        }

        public final void a(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            qf0.a aVar = this.c;
            aVar.getClass();
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            qf0.b.b(str);
            qf0.b.b(str2, str);
            aVar.a(str, str2);
        }

        public final a b(String str, String str2) {
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            qf0.a aVar = this.c;
            aVar.getClass();
            y45.j(str, "name");
            y45.j(str2, ES6Iterator.VALUE_PROPERTY);
            qf0.b.b(str);
            qf0.b.b(str2, str);
            aVar.a(str);
            aVar.a(str, str2);
            return this;
        }

        public a(vp1 vp1Var) {
            Map<Class<?>, Object> mapC;
            y45.j(vp1Var, Progress.REQUEST);
            this.e = new LinkedHashMap();
            this.a = vp1Var.g();
            this.b = vp1Var.f();
            this.d = vp1Var.a();
            if (vp1Var.c().isEmpty()) {
                mapC = new LinkedHashMap<>();
            } else {
                mapC = kotlin.collections.a.C(vp1Var.c());
            }
            this.e = mapC;
            this.c = vp1Var.d().b();
        }

        public final vp1 a() {
            Map mapUnmodifiableMap;
            gi0 gi0Var = this.a;
            if (gi0Var != null) {
                String str = this.b;
                qf0 qf0VarA = this.c.a();
                yp1 yp1Var = this.d;
                Map<Class<?>, Object> map = this.e;
                byte[] bArr = g92.a;
                y45.j(map, "<this>");
                if (map.isEmpty()) {
                    mapUnmodifiableMap = kotlin.collections.a.l();
                } else {
                    mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
                    y45.g(mapUnmodifiableMap);
                }
                return new vp1(gi0Var, str, qf0VarA, yp1Var, mapUnmodifiableMap);
            }
            throw new IllegalStateException("url == null");
        }

        public final void a(um umVar) {
            y45.j(umVar, "cacheControl");
            String string = umVar.toString();
            if (string.length() == 0) {
                y45.j("Cache-Control", "name");
                this.c.a("Cache-Control");
                return;
            }
            y45.j("Cache-Control", "name");
            y45.j(string, ES6Iterator.VALUE_PROPERTY);
            qf0.a aVar = this.c;
            aVar.getClass();
            y45.j("Cache-Control", "name");
            y45.j(string, ES6Iterator.VALUE_PROPERTY);
            qf0.b.b("Cache-Control");
            qf0.b.b(string, "Cache-Control");
            aVar.a("Cache-Control");
            aVar.a("Cache-Control", string);
        }

        public final a a(qf0 qf0Var) {
            y45.j(qf0Var, "headers");
            this.c = qf0Var.b();
            return this;
        }

        public final a a(String str, yp1 yp1Var) {
            y45.j(str, "method");
            if (str.length() > 0) {
                if (yp1Var == null) {
                    if (ai0.b(str)) {
                        throw new IllegalArgumentException(("method " + str + " must have a request body.").toString());
                    }
                } else if (!ai0.a(str)) {
                    throw new IllegalArgumentException(("method " + str + " must not have a request body.").toString());
                }
                this.b = str;
                this.d = yp1Var;
                return this;
            }
            throw new IllegalArgumentException("method.isEmpty() == true");
        }

        public final void a(String str) {
            y45.j(str, "name");
            this.c.a(str);
        }

        public final a a(gi0 gi0Var) {
            y45.j(gi0Var, "url");
            this.a = gi0Var;
            return this;
        }

        public final a a(URL url) {
            y45.j(url, "url");
            String string = url.toString();
            y45.i(string, "toString(...)");
            y45.j(string, "<this>");
            gi0 gi0VarA = new gi0.a().a(null, string).a();
            y45.j(gi0VarA, "url");
            this.a = gi0VarA;
            return this;
        }
    }
}
