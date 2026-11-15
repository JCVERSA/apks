package com.cloud.hisavana.protocol.okhttptransport;

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

    private final CronetEngine f20868a;

    private final Executor f20869b;

    private final i f20870c;

    private final d f20871d;

    private final com.cloud.hisavana.protocol.okhttptransport.c f20872e;

    class a implements c {

        final Request f20873a;

        final OkHttpBridgeRequestCallback f20874b;

        a(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
            this.f20873a = request;
            this.f20874b = okHttpBridgeRequestCallback;
        }

        @Override
        public Response getResponse() {
            return g.this.f20870c.g(this.f20873a, this.f20874b);
        }
    }

    static final class b {

        private final UrlRequest f20876a;

        private final c f20877b;

        b(UrlRequest urlRequest, c cVar) {
            this.f20876a = urlRequest;
            this.f20877b = cVar;
        }

        public UrlRequest a() {
            return this.f20876a;
        }

        public Response b() {
            return this.f20877b.getResponse();
        }
    }

    private interface c {
        Response getResponse();
    }

    g(CronetEngine cronetEngine, Executor executor, d dVar, i iVar, com.cloud.hisavana.protocol.okhttptransport.c cVar) {
        this.f20868a = cronetEngine;
        this.f20869b = executor;
        this.f20871d = dVar;
        this.f20870c = iVar;
        this.f20872e = cVar;
    }

    private c c(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        return new a(request, okHttpBridgeRequestCallback);
    }

    b b(Request request, int i10, int i11) {
        OkHttpBridgeRequestCallback okHttpBridgeRequestCallback = new OkHttpBridgeRequestCallback(i10, this.f20872e);
        UrlRequest.Builder builderAllowDirectExecutor = this.f20868a.newUrlRequestBuilder(request.url().getUrl(), okHttpBridgeRequestCallback, MoreExecutors.a()).allowDirectExecutor();
        builderAllowDirectExecutor.addRequestAnnotation(request.headers());
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
                if (requestBodyBody.get$contentType() != null) {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, requestBodyBody.get$contentType().getMediaType());
                } else if (request.header(HttpHeaders.CONTENT_TYPE) == null) {
                    builderAllowDirectExecutor.addHeader(HttpHeaders.CONTENT_TYPE, OSSConstants.DEFAULT_OBJECT_CONTENT_TYPE);
                }
                builderAllowDirectExecutor.setUploadDataProvider(this.f20871d.a(requestBodyBody, i11), this.f20869b);
            }
        }
        return new b(builderAllowDirectExecutor.build(), c(request, okHttpBridgeRequestCallback));
    }
}
