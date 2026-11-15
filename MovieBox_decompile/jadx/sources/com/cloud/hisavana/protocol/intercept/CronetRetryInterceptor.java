package com.cloud.hisavana.protocol.intercept;

import com.cloud.sdk.commonutil.util.c;
import java.io.IOException;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import mh.g;
import mh.h;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.chromium.net.CronetEngine;
import y6.b;

public final class CronetRetryInterceptor implements Interceptor {

    private final com.cloud.hisavana.protocol.okhttptransport.a f20814a;

    private final y6.a f20815b;

    private final Map f20816c;

    private g f20817d;

    private b f20818e;

    public static final class a {

        private final com.cloud.hisavana.protocol.okhttptransport.a f20819a;

        private final y6.a f20820b;

        private Map f20821c;

        private g f20822d;

        private b f20823e;

        public a(CronetEngine engine) {
            Intrinsics.h(engine, "engine");
            Object objA = com.cloud.hisavana.protocol.okhttptransport.a.j(engine).a();
            Intrinsics.g(objA, "build(...)");
            this.f20819a = (com.cloud.hisavana.protocol.okhttptransport.a) objA;
            this.f20820b = new y6.a();
        }

        public final CronetRetryInterceptor a() {
            return new CronetRetryInterceptor(this, null);
        }

        public final a b(g gVar) {
            if (gVar == null) {
                return this;
            }
            gVar.b(true);
            this.f20822d = gVar;
            return this;
        }

        public final com.cloud.hisavana.protocol.okhttptransport.a c() {
            return this.f20819a;
        }

        public final y6.a d() {
            return this.f20820b;
        }

        public final b e() {
            return this.f20823e;
        }

        public final g f() {
            return this.f20822d;
        }

        public final Map g() {
            return this.f20821c;
        }

        public final a h(b policy) {
            Intrinsics.h(policy, "policy");
            this.f20823e = policy;
            return this;
        }

        public final a i(Map map) {
            this.f20821c = map;
            return this;
        }
    }

    public CronetRetryInterceptor(a aVar, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar);
    }

    private final Request b(Request request) {
        HttpUrl httpUrlUrl = request.url();
        String strHost = httpUrlUrl.host();
        Map map = this.f20816c;
        String str = map != null ? (String) map.get(strHost) : null;
        if (str == null) {
            return request;
        }
        Request requestBuild = request.newBuilder().url(httpUrlUrl.newBuilder().host(str).build()).build();
        Intrinsics.e(requestBuild);
        return requestBuild;
    }

    private final Response c(Response response, int i10, Interceptor.Chain chain) {
        if (!z6.a.a(response)) {
            return response;
        }
        h();
        return i10 != -1 ? f(chain, i10) : response;
    }

    private final Response d(Response response, Interceptor.Chain chain, int i10, b bVar) {
        if (i10 == -1 || !bVar.a(i10)) {
            return response;
        }
        h();
        return f(chain, i10);
    }

    private final Response e(Interceptor.Chain chain, int i10) {
        h();
        return f(chain, i10);
    }

    private final Response f(Interceptor.Chain chain, int i10) throws IOException {
        Request request = chain.request();
        Intrinsics.g(request, "request(...)");
        Request requestB = b(request);
        h.f66466a.a(chain, requestB, i10);
        Response responseProceed = chain.proceed(requestB);
        Intrinsics.g(responseProceed, "proceed(...)");
        return responseProceed;
    }

    private final void g() {
        this.f20815b.b();
    }

    private final void h() {
        this.f20815b.c(new Function0<Unit>() {
            {
                super(0);
            }

            @Override
            public Object invoke() {
                m232invoke();
                return Unit.f64096a;
            }

            public final void m232invoke() {
                g gVar = this.this$0.f20817d;
                if (gVar != null) {
                    gVar.b(false);
                }
            }
        });
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Intrinsics.h(chain, "chain");
        if (this.f20815b.a()) {
            c.netLog("request downgrade, cause failed count exceed limit, failed url is:" + chain.request().url());
            Request request = chain.request();
            Intrinsics.g(request, "request(...)");
            Response responseProceed = chain.proceed(b(request));
            Intrinsics.g(responseProceed, "proceed(...)");
            return responseProceed;
        }
        try {
            Response responseIntercept = this.f20814a.intercept(chain);
            if (responseIntercept.isSuccessful()) {
                g();
                Intrinsics.e(responseIntercept);
                return responseIntercept;
            }
            c.netLog("request downgrade, cause domain failed1, failed url is:" + chain.request().url());
            Intrinsics.e(responseIntercept);
            int iC = z6.a.c(responseIntercept);
            b bVar = this.f20818e;
            return bVar != null ? d(responseIntercept, chain, iC, bVar) : c(responseIntercept, iC, chain);
        } catch (Exception e10) {
            int iB = z6.a.b(e10);
            if (iB == -1) {
                throw e10;
            }
            c.netLog("request downgrade, cause domain failed, failed url is:" + chain.request().url());
            b bVar2 = this.f20818e;
            if (bVar2 == null) {
                return e(chain, iB);
            }
            if (bVar2.a(iB)) {
                return e(chain, iB);
            }
            throw e10;
        }
    }

    private CronetRetryInterceptor(a aVar) {
        this.f20814a = aVar.c();
        this.f20815b = aVar.d();
        this.f20816c = aVar.g();
        this.f20817d = aVar.f();
        this.f20818e = aVar.e();
    }
}
