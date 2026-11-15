package defpackage;

import com.cloud.hisavana.protocol.okhttptransport.OkHttpBridgeRequestCallback;
import com.google.common.util.concurrent.MoreExecutors;
import java.util.concurrent.Executor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import org.chromium.net.CronetEngine;
import org.chromium.net.UrlRequest;

public final class it8 {
    public final CronetEngine a;
    public final Executor b;
    public final iu8 c;
    public final ys8 d;
    public final kp8 e;

    public class a implements c {
        public final Request a;
        public final OkHttpBridgeRequestCallback b;

        public a(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
            this.a = request;
            this.b = okHttpBridgeRequestCallback;
        }

        @Override
        public Response a() {
            return it8.this.c.g(this.a, this.b);
        }
    }

    public static final class b {
        public final UrlRequest a;
        public final c b;

        public b(UrlRequest urlRequest, c cVar) {
            this.a = urlRequest;
            this.b = cVar;
        }

        public UrlRequest a() {
            return this.a;
        }

        public Response b() {
            return this.b.a();
        }
    }

    public interface c {
        Response a();
    }

    public it8(CronetEngine cronetEngine, Executor executor, ys8 ys8Var, iu8 iu8Var, kp8 kp8Var) {
        this.a = cronetEngine;
        this.b = executor;
        this.d = ys8Var;
        this.c = iu8Var;
        this.e = kp8Var;
    }

    public b b(Request request, int i, int i2) {
        OkHttpBridgeRequestCallback okHttpBridgeRequestCallback = new OkHttpBridgeRequestCallback(i, this.e);
        UrlRequest.Builder builderAllowDirectExecutor = this.a.newUrlRequestBuilder(request.url().getUrl(), okHttpBridgeRequestCallback, MoreExecutors.a()).allowDirectExecutor();
        builderAllowDirectExecutor.addRequestAnnotation(request.headers());
        builderAllowDirectExecutor.setHttpMethod(request.method());
        for (int i3 = 0; i3 < request.headers().size(); i3++) {
            builderAllowDirectExecutor.addHeader(request.headers().name(i3), request.headers().value(i3));
        }
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null) {
            if (request.header("Content-Length") == null && requestBodyBody.contentLength() != -1) {
                builderAllowDirectExecutor.addHeader("Content-Length", String.valueOf(requestBodyBody.contentLength()));
            }
            if (requestBodyBody.contentLength() != 0) {
                if (requestBodyBody.getContentType() != null) {
                    builderAllowDirectExecutor.addHeader("Content-Type", requestBodyBody.getContentType().getMediaType());
                } else if (request.header("Content-Type") == null) {
                    builderAllowDirectExecutor.addHeader("Content-Type", "application/octet-stream");
                }
                builderAllowDirectExecutor.setUploadDataProvider(this.d.a(requestBodyBody, i2), this.b);
            }
        }
        return new b(builderAllowDirectExecutor.build(), c(request, okHttpBridgeRequestCallback));
    }

    public final c c(Request request, OkHttpBridgeRequestCallback okHttpBridgeRequestCallback) {
        return new a(request, okHttpBridgeRequestCallback);
    }
}
