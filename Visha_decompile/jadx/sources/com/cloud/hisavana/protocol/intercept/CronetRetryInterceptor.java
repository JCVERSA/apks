package com.cloud.hisavana.protocol.intercept;

import defpackage.c74;
import defpackage.gz6;
import defpackage.ja1;
import defpackage.ll1;
import defpackage.wq6;
import defpackage.wx2;
import defpackage.xq6;
import defpackage.y45;
import defpackage.zfb;
import defpackage.zx2;
import java.io.IOException;
import java.util.Map;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.chromium.net.CronetEngine;

public final class CronetRetryInterceptor implements Interceptor {
    public final ll1 b;
    public final wx2 c;
    public final Map d;
    public wq6 e;
    public zx2 f;

    public static final class a {
        public final ll1 a;
        public final wx2 b;
        public Map c;
        public wq6 d;
        public zx2 e;

        public a(CronetEngine cronetEngine) {
            y45.j(cronetEngine, "engine");
            Object objA = ll1.e(cronetEngine).a();
            y45.i(objA, "build(...)");
            this.a = (ll1) objA;
            this.b = new wx2();
        }

        public final CronetRetryInterceptor a() {
            return new CronetRetryInterceptor(this, null);
        }

        public final a b(wq6 wq6Var) {
            if (wq6Var == null) {
                return this;
            }
            wq6Var.b(true);
            this.d = wq6Var;
            return this;
        }

        public final ll1 c() {
            return this.a;
        }

        public final wx2 d() {
            return this.b;
        }

        public final zx2 e() {
            return this.e;
        }

        public final wq6 f() {
            return this.d;
        }

        public final Map g() {
            return this.c;
        }

        public final a h(zx2 zx2Var) {
            y45.j(zx2Var, "policy");
            this.e = zx2Var;
            return this;
        }

        public final a i(Map map) {
            this.c = map;
            return this;
        }
    }

    public CronetRetryInterceptor(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    public final Request b(Request request) {
        HttpUrl httpUrlUrl = request.url();
        String strHost = httpUrlUrl.host();
        Map map = this.d;
        String str = map != null ? (String) map.get(strHost) : null;
        if (str == null) {
            return request;
        }
        Request requestBuild = request.newBuilder().url(httpUrlUrl.newBuilder().host(str).build()).build();
        y45.g(requestBuild);
        return requestBuild;
    }

    public final Response c(Response response, int i, Interceptor.Chain chain) {
        if (gz6.a(response)) {
            h();
            if (i != -1) {
                return f(chain, i);
            }
        }
        return response;
    }

    public final Response d(Response response, Interceptor.Chain chain, int i, zx2 zx2Var) {
        if (i == -1 || !zx2Var.a(i)) {
            return response;
        }
        h();
        return f(chain, i);
    }

    public final Response e(Interceptor.Chain chain, int i) {
        h();
        return f(chain, i);
    }

    public final Response f(Interceptor.Chain chain, int i) throws IOException {
        Request request = chain.request();
        y45.i(request, "request(...)");
        Request requestB = b(request);
        xq6.a.a(chain, requestB, i);
        Response responseProceed = chain.proceed(requestB);
        y45.i(responseProceed, "proceed(...)");
        return responseProceed;
    }

    public final void g() {
        this.c.b();
    }

    public final void h() {
        this.c.c(new c74() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m68invoke();
                return zfb.a;
            }

            public final void m68invoke() {
                wq6 wq6Var = this.this$0.e;
                if (wq6Var != null) {
                    wq6Var.b(false);
                }
            }
        });
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        y45.j(chain, "chain");
        if (this.c.a()) {
            ja1.netLog("request downgrade, cause failed count exceed limit, failed url is:" + chain.request().url());
            Request request = chain.request();
            y45.i(request, "request(...)");
            Response responseProceed = chain.proceed(b(request));
            y45.i(responseProceed, "proceed(...)");
            return responseProceed;
        }
        try {
            Response responseIntercept = this.b.intercept(chain);
            if (responseIntercept.isSuccessful()) {
                g();
                y45.g(responseIntercept);
                return responseIntercept;
            }
            ja1.netLog("request downgrade, cause domain failed1, failed url is:" + chain.request().url());
            y45.g(responseIntercept);
            int iC = gz6.c(responseIntercept);
            zx2 zx2Var = this.f;
            return zx2Var != null ? d(responseIntercept, chain, iC, zx2Var) : c(responseIntercept, iC, chain);
        } catch (Exception e) {
            int iB = gz6.b(e);
            if (iB == -1) {
                throw e;
            }
            ja1.netLog("request downgrade, cause domain failed, failed url is:" + chain.request().url());
            zx2 zx2Var2 = this.f;
            if (zx2Var2 != null && !zx2Var2.a(iB)) {
                throw e;
            }
            return e(chain, iB);
        }
    }

    public CronetRetryInterceptor(a aVar) {
        this.b = aVar.c();
        this.c = aVar.d();
        this.d = aVar.g();
        this.e = aVar.f();
        this.f = aVar.e();
    }
}
