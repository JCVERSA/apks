package com.google.net.cronet.okhttptransport;

import com.alibaba.sdk.android.oss.common.OSSConstants;
import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;

final class g {

    private final CronetEngine f31968a;

    private final Executor f31969b;

    private final i f31970c;

    private final d f31971d;

    private final com.google.net.cronet.okhttptransport.c f31972e;

    class a implements c {

        final Request f31973a;

        final OkHttpBridgeRequestCallback f31974b;

        a(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
            this.f31973a = request;
            this.f31974b = okHttpBridgeRequestCallback;
        }

        @Override
        public Response getResponse() {
            return g.this.f31970c.f(this.f31973a, this.f31974b);
        }
    }

    static final class b {

        private final UrlRequest f31976a;

        private final c f31977b;

        b(UrlRequest urlRequest, c cVar) {
            this.f31976a = urlRequest;
            this.f31977b = cVar;
        }

        public UrlRequest a() {
            return this.f31976a;
        }

        public Response b() {
            return this.f31977b.getResponse();
        }
    }

    private interface c {
        Response getResponse();
    }

    g(CronetEngine cronetEngine, Executor executor, d dVar, i iVar, com.google.net.cronet.okhttptransport.c cVar) {
        this.f31968a = cronetEngine;
        this.f31969b = executor;
        this.f31971d = dVar;
        this.f31970c = iVar;
        this.f31972e = cVar;
    }

    private c c(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        return new a(request, okHttpBridgeRequestCallback);
    }

    b b(Request request, int i10, int i11) {
        OkHttpBridgeRequestCallback okHttpBridgeRequestCallback = new OkHttpBridgeRequestCallback(i10, this.f31972e);
        UrlRequest.Builder builderAllowDirectExecutor = this.f31968a.newUrlRequestBuilder(request.url().getUrl(), okHttpBridgeRequestCallback, MoreExecutors.a()).allowDirectExecutor();
        builderAllowDirectExecutor.setHttpMethod(request.method());
        for (int i12 = 0; i12 < request.headers().size(); i12++) {
            builderAllowDirectExecutor.addHeader(request.headers().name(i12), request.headers().value(i12));
        }
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            if (request.header(HttpHeaders.CONTENT_LENGTH) == null && requestBodyBody.contentLength() != -1) {
                builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_LENGTH, String.valueOf(requestBodyBody.contentLength()));
            }
            if (requestBodyBody.contentLength() != 0) {
                if (request.header(HttpHeaders.CONTENT_TYPE) != null || requestBodyBody.get$contentType() == null) {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
                } else {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, requestBodyBody.get$contentType().getMediaType());
                }
                builderAllowDirectExecutor.setUploadDataProvider(this.f31971d.a(requestBodyBody, i11), this.f31969b);
            }
        }
        return new b(builderAllowDirectExecutor.build(), c(request, okHttpBridgeRequestCallback));
    }
}
