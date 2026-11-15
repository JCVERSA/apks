package com.mbridge.msdk.thrid.okhttp;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

public final class w {

    final q f37545a;

    final String f37546b;

    final p f37547c;

    final x f37548d;

    final Map<Class<?>, Object> f37549e;

    private volatile c f37550f;

    public static class a {

        q f37551a;

        String f37552b;

        p.a f37553c;

        x f37554d;

        Map<Class<?>, Object> f37555e;

        public a() {
            this.f37555e = Collections.emptyMap();
            this.f37552b = "GET";
            this.f37553c = new p.a();
        }

        public a a(q qVar) {
            if (qVar == null) {
                throw new NullPointerException("url == null");
            }
            this.f37551a = qVar;
            return this;
        }

        public a b(String str) {
            if (str == null) {
                throw new NullPointerException("url == null");
            }
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            return a(q.b(str));
        }

        public a c() {
            return a("GET", (x) null);
        }

        public a d() {
            return a("HEAD", (x) null);
        }

        public a c(x xVar) {
            return a("POST", xVar);
        }

        public a d(x xVar) {
            return a("PUT", xVar);
        }

        public a a(String str, String str2) {
            this.f37553c.a(str, str2);
            return this;
        }

        public a a(String str) {
            this.f37553c.b(str);
            return this;
        }

        a(w wVar) {
            this.f37555e = Collections.emptyMap();
            this.f37551a = wVar.f37545a;
            this.f37552b = wVar.f37546b;
            this.f37554d = wVar.f37548d;
            this.f37555e = wVar.f37549e.isEmpty() ? Collections.emptyMap() : new LinkedHashMap<>(wVar.f37549e);
            this.f37553c = wVar.f37547c.a();
        }

        public a a(p pVar) {
            this.f37553c = pVar.a();
            return this;
        }

        public a a(c cVar) {
            String string = cVar.toString();
            return string.isEmpty() ? a(HttpHeaders.CACHE_CONTROL) : b(HttpHeaders.CACHE_CONTROL, string);
        }

        public a b(String str, String str2) {
            this.f37553c.c(str, str2);
            return this;
        }

        public a b() {
            return a(com.mbridge.msdk.thrid.okhttp.internal.c.f37072d);
        }

        public a a(x xVar) {
            return a("DELETE", xVar);
        }

        public a b(x xVar) {
            return a("PATCH", xVar);
        }

        public a a(String str, x xVar) {
            if (str != null) {
                if (str.length() != 0) {
                    if (xVar != null && !com.mbridge.msdk.thrid.okhttp.internal.http.f.a(str)) {
                        throw new IllegalArgumentException("method " + str + " must not have a request body.");
                    }
                    if (xVar == null && com.mbridge.msdk.thrid.okhttp.internal.http.f.d(str)) {
                        throw new IllegalArgumentException("method " + str + " must have a request body.");
                    }
                    this.f37552b = str;
                    this.f37554d = xVar;
                    return this;
                }
                throw new IllegalArgumentException("method.length() == 0");
            }
            throw new NullPointerException("method == null");
        }

        public w a() {
            if (this.f37551a != null) {
                return new w(this);
            }
            throw new IllegalStateException("url == null");
        }
    }

    w(a aVar) {
        this.f37545a = aVar.f37551a;
        this.f37546b = aVar.f37552b;
        this.f37547c = aVar.f37553c.a();
        this.f37548d = aVar.f37554d;
        this.f37549e = com.mbridge.msdk.thrid.okhttp.internal.c.a(aVar.f37555e);
    }

    public String a(String str) {
        return this.f37547c.b(str);
    }

    public c b() {
        c cVar = this.f37550f;
        if (cVar != null) {
            return cVar;
        }
        c cVarA = c.a(this.f37547c);
        this.f37550f = cVarA;
        return cVarA;
    }

    public p c() {
        return this.f37547c;
    }

    public boolean d() {
        return this.f37545a.h();
    }

    public String e() {
        return this.f37546b;
    }

    public a f() {
        return new a(this);
    }

    public q g() {
        return this.f37545a;
    }

    public String toString() {
        return "Request{method=" + this.f37546b + ", url=" + this.f37545a + ", tags=" + this.f37549e + '}';
    }

    public x a() {
        return this.f37548d;
    }
}
