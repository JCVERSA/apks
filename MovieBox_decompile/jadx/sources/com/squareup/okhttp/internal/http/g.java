package com.squareup.okhttp.internal.http;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.squareup.okhttp.Address;
import com.squareup.okhttp.CertificatePinner;
import com.squareup.okhttp.Connection;
import com.squareup.okhttp.Headers;
import com.squareup.okhttp.HttpUrl;
import com.squareup.okhttp.Interceptor;
import com.squareup.okhttp.MediaType;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import com.squareup.okhttp.Route;
import com.squareup.okhttp.internal.InternalCache;
import java.io.IOException;
import java.net.CookieHandler;
import java.net.ProtocolException;
import java.net.Proxy;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Sink;
import okio.Source;
import okio.Timeout;

public final class g {

    private static final ResponseBody f39668r = new a();

    final OkHttpClient f39669a;

    public final n f39670b;

    private final Response f39671c;

    private HttpStream f39672d;

    long f39673e = -1;

    private boolean f39674f;

    public final boolean f39675g;

    private final Request f39676h;

    private Request f39677i;

    private Response f39678j;

    private Response f39679k;

    private Sink f39680l;

    private BufferedSink f39681m;

    private final boolean f39682n;

    private final boolean f39683o;

    private CacheRequest f39684p;

    private com.squareup.okhttp.internal.http.b f39685q;

    static class a extends ResponseBody {
        a() {
        }

        @Override
        public long contentLength() {
            return 0L;
        }

        @Override
        public MediaType contentType() {
            return null;
        }

        @Override
        public BufferedSource source() {
            return new Buffer();
        }
    }

    class b implements Source {

        boolean f39686a;

        final BufferedSource f39687b;

        final CacheRequest f39688c;

        final BufferedSink f39689d;

        b(BufferedSource bufferedSource, CacheRequest cacheRequest, BufferedSink bufferedSink) {
            this.f39687b = bufferedSource;
            this.f39688c = cacheRequest;
            this.f39689d = bufferedSink;
        }

        @Override
        public void close() throws IOException {
            if (!this.f39686a && !com.squareup.okhttp.internal.g.g(this, 100, TimeUnit.MILLISECONDS)) {
                this.f39686a = true;
                this.f39688c.abort();
            }
            this.f39687b.close();
        }

        @Override
        public long read(Buffer buffer, long j10) throws IOException {
            try {
                long j11 = this.f39687b.read(buffer, j10);
                if (j11 != -1) {
                    buffer.copyTo(this.f39689d.getBufferField(), buffer.size() - j11, j11);
                    this.f39689d.emitCompleteSegments();
                    return j11;
                }
                if (!this.f39686a) {
                    this.f39686a = true;
                    this.f39689d.close();
                }
                return -1L;
            } catch (IOException e10) {
                if (!this.f39686a) {
                    this.f39686a = true;
                    this.f39688c.abort();
                }
                throw e10;
            }
        }

        @Override
        public Timeout timeout() {
            return this.f39687b.timeout();
        }
    }

    class c implements Interceptor.Chain {

        private final int f39691a;

        private final Request f39692b;

        private int f39693c;

        c(int i10, Request request) {
            this.f39691a = i10;
            this.f39692b = request;
        }

        @Override
        public Connection connection() {
            return g.this.f39670b.c();
        }

        @Override
        public Response proceed(Request request) throws IOException {
            this.f39693c++;
            if (this.f39691a > 0) {
                Interceptor interceptor = g.this.f39669a.networkInterceptors().get(this.f39691a - 1);
                Address address = connection().getRoute().getAddress();
                if (!request.httpUrl().host().equals(address.getUriHost()) || request.httpUrl().port() != address.getUriPort()) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must retain the same host and port");
                }
                if (this.f39693c > 1) {
                    throw new IllegalStateException("network interceptor " + interceptor + " must call proceed() exactly once");
                }
            }
            if (this.f39691a < g.this.f39669a.networkInterceptors().size()) {
                c cVar = g.this.new c(this.f39691a + 1, request);
                Interceptor interceptor2 = g.this.f39669a.networkInterceptors().get(this.f39691a);
                Response responseIntercept = interceptor2.intercept(cVar);
                if (cVar.f39693c != 1) {
                    throw new IllegalStateException("network interceptor " + interceptor2 + " must call proceed() exactly once");
                }
                if (responseIntercept != null) {
                    return responseIntercept;
                }
                throw new NullPointerException("network interceptor " + interceptor2 + " returned null");
            }
            g.this.f39672d.writeRequestHeaders(request);
            g.this.f39677i = request;
            if (g.this.q(request) && request.body() != null) {
                BufferedSink bufferedSinkBuffer = Okio.buffer(g.this.f39672d.createRequestBody(request, request.body().contentLength()));
                request.body().writeTo(bufferedSinkBuffer);
                bufferedSinkBuffer.close();
            }
            Response responseR = g.this.r();
            int iCode = responseR.code();
            if ((iCode != 204 && iCode != 205) || responseR.body().contentLength() <= 0) {
                return responseR;
            }
            throw new ProtocolException("HTTP " + iCode + " had non-zero Content-Length: " + responseR.body().contentLength());
        }

        @Override
        public Request request() {
            return this.f39692b;
        }
    }

    public g(OkHttpClient okHttpClient, Request request, boolean z10, boolean z11, boolean z12, n nVar, k kVar, Response response) {
        this.f39669a = okHttpClient;
        this.f39676h = request;
        this.f39675g = z10;
        this.f39682n = z11;
        this.f39683o = z12;
        this.f39670b = nVar == null ? new n(okHttpClient.getConnectionPool(), i(okHttpClient, request)) : nVar;
        this.f39680l = kVar;
        this.f39671c = response;
    }

    private Response A(Response response) {
        if (!this.f39674f || !"gzip".equalsIgnoreCase(this.f39679k.header(HttpHeaders.CONTENT_ENCODING)) || response.body() == null) {
            return response;
        }
        GzipSource gzipSource = new GzipSource(response.body().source());
        Headers headersBuild = response.headers().newBuilder().removeAll(HttpHeaders.CONTENT_ENCODING).removeAll(HttpHeaders.CONTENT_LENGTH).build();
        return response.newBuilder().headers(headersBuild).body(new i(headersBuild, Okio.buffer(gzipSource))).build();
    }

    private static boolean B(Response response, Response response2) {
        Date date;
        if (response2.code() == 304) {
            return true;
        }
        Date date2 = response.headers().getDate("Last-Modified");
        return (date2 == null || (date = response2.headers().getDate("Last-Modified")) == null || date.getTime() >= date2.getTime()) ? false : true;
    }

    private Response d(CacheRequest cacheRequest, Response response) {
        Sink sinkBody;
        return (cacheRequest == null || (sinkBody = cacheRequest.body()) == null) ? response : response.newBuilder().body(new i(response.headers(), Okio.buffer(new b(response.body().source(), cacheRequest, Okio.buffer(sinkBody))))).build();
    }

    private static Headers g(Headers headers, Headers headers2) {
        Headers.Builder builder = new Headers.Builder();
        int size = headers.size();
        for (int i10 = 0; i10 < size; i10++) {
            String strName = headers.name(i10);
            String strValue = headers.value(i10);
            if ((!"Warning".equalsIgnoreCase(strName) || !strValue.startsWith("1")) && (!OkHeaders.h(strName) || headers2.get(strName) == null)) {
                builder.add(strName, strValue);
            }
        }
        int size2 = headers2.size();
        for (int i11 = 0; i11 < size2; i11++) {
            String strName2 = headers2.name(i11);
            if (!HttpHeaders.CONTENT_LENGTH.equalsIgnoreCase(strName2) && OkHeaders.h(strName2)) {
                builder.add(strName2, headers2.value(i11));
            }
        }
        return builder.build();
    }

    private HttpStream h() {
        return this.f39670b.k(this.f39669a.getConnectTimeout(), this.f39669a.getReadTimeout(), this.f39669a.getWriteTimeout(), this.f39669a.getRetryOnConnectionFailure(), !this.f39677i.method().equals("GET"));
    }

    private static Address i(OkHttpClient okHttpClient, Request request) {
        SSLSocketFactory sslSocketFactory;
        HostnameVerifier hostnameVerifier;
        CertificatePinner certificatePinner;
        if (request.isHttps()) {
            sslSocketFactory = okHttpClient.getSslSocketFactory();
            hostnameVerifier = okHttpClient.getHostnameVerifier();
            certificatePinner = okHttpClient.getCertificatePinner();
        } else {
            sslSocketFactory = null;
            hostnameVerifier = null;
            certificatePinner = null;
        }
        return new Address(request.httpUrl().host(), request.httpUrl().port(), okHttpClient.getDns(), okHttpClient.getSocketFactory(), sslSocketFactory, hostnameVerifier, certificatePinner, okHttpClient.getAuthenticator(), okHttpClient.getProxy(), okHttpClient.getProtocols(), okHttpClient.getConnectionSpecs(), okHttpClient.getProxySelector());
    }

    public static boolean n(Response response) {
        if (response.request().method().equals("HEAD")) {
            return false;
        }
        int iCode = response.code();
        return (((iCode >= 100 && iCode < 200) || iCode == 204 || iCode == 304) && OkHeaders.e(response) == -1 && !"chunked".equalsIgnoreCase(response.header("Transfer-Encoding"))) ? false : true;
    }

    private void o() {
        InternalCache internalCache = com.squareup.okhttp.internal.c.instance.internalCache(this.f39669a);
        if (internalCache == null) {
            return;
        }
        if (com.squareup.okhttp.internal.http.b.a(this.f39679k, this.f39677i)) {
            this.f39684p = internalCache.put(z(this.f39679k));
        } else if (h.a(this.f39677i.method())) {
            try {
                internalCache.remove(this.f39677i);
            } catch (IOException unused) {
            }
        }
    }

    private Request p(Request request) {
        Request.Builder builderNewBuilder = request.newBuilder();
        if (request.header(HttpHeaders.HOST) == null) {
            builderNewBuilder.header(HttpHeaders.HOST, com.squareup.okhttp.internal.g.i(request.httpUrl()));
        }
        if (request.header("Connection") == null) {
            builderNewBuilder.header("Connection", "Keep-Alive");
        }
        if (request.header("Accept-Encoding") == null) {
            this.f39674f = true;
            builderNewBuilder.header("Accept-Encoding", "gzip");
        }
        CookieHandler cookieHandler = this.f39669a.getCookieHandler();
        if (cookieHandler != null) {
            OkHeaders.a(builderNewBuilder, cookieHandler.get(request.uri(), OkHeaders.l(builderNewBuilder.build().headers(), null)));
        }
        if (request.header("User-Agent") == null) {
            builderNewBuilder.header("User-Agent", com.squareup.okhttp.internal.h.a());
        }
        return builderNewBuilder.build();
    }

    public Response r() throws IOException {
        this.f39672d.finishRequest();
        Response responseBuild = this.f39672d.readResponseHeaders().request(this.f39677i).handshake(this.f39670b.c().getHandshake()).header(OkHeaders.f39605c, Long.toString(this.f39673e)).header(OkHeaders.f39606d, Long.toString(System.currentTimeMillis())).build();
        if (!this.f39683o) {
            responseBuild = responseBuild.newBuilder().body(this.f39672d.openResponseBody(responseBuild)).build();
        }
        if ("close".equalsIgnoreCase(responseBuild.request().header("Connection")) || "close".equalsIgnoreCase(responseBuild.header("Connection"))) {
            this.f39670b.l();
        }
        return responseBuild;
    }

    private static Response z(Response response) {
        return (response == null || response.body() == null) ? response : response.newBuilder().body(null).build();
    }

    public void C() {
        if (this.f39673e != -1) {
            throw new IllegalStateException();
        }
        this.f39673e = System.currentTimeMillis();
    }

    public void e() {
        this.f39670b.b();
    }

    public n f() {
        BufferedSink bufferedSink = this.f39681m;
        if (bufferedSink != null) {
            com.squareup.okhttp.internal.g.c(bufferedSink);
        } else {
            Sink sink = this.f39680l;
            if (sink != null) {
                com.squareup.okhttp.internal.g.c(sink);
            }
        }
        Response response = this.f39679k;
        if (response != null) {
            com.squareup.okhttp.internal.g.c(response.body());
        } else {
            this.f39670b.d();
        }
        return this.f39670b;
    }

    public Request j() throws ProtocolException {
        String strHeader;
        HttpUrl httpUrlResolve;
        if (this.f39679k == null) {
            throw new IllegalStateException();
        }
        hf.a aVarC = this.f39670b.c();
        Route route = aVarC != null ? aVarC.getRoute() : null;
        Proxy proxy = route != null ? route.getProxy() : this.f39669a.getProxy();
        int iCode = this.f39679k.code();
        String strMethod = this.f39676h.method();
        if (iCode != 307 && iCode != 308) {
            if (iCode != 401) {
                if (iCode != 407) {
                    switch (iCode) {
                        case 300:
                        case MRAID_ERROR_VALUE:
                        case INVALID_IFA_STATUS_VALUE:
                        case 303:
                            break;
                        default:
                            return null;
                    }
                } else if (proxy.type() != Proxy.Type.HTTP) {
                    throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                }
            }
            return OkHeaders.j(this.f39669a.getAuthenticator(), this.f39679k, proxy);
        }
        if (!strMethod.equals("GET") && !strMethod.equals("HEAD")) {
            return null;
        }
        if (!this.f39669a.getFollowRedirects() || (strHeader = this.f39679k.header(HttpHeaders.LOCATION)) == null || (httpUrlResolve = this.f39676h.httpUrl().resolve(strHeader)) == null) {
            return null;
        }
        if (!httpUrlResolve.scheme().equals(this.f39676h.httpUrl().scheme()) && !this.f39669a.getFollowSslRedirects()) {
            return null;
        }
        Request.Builder builderNewBuilder = this.f39676h.newBuilder();
        if (h.b(strMethod)) {
            if (h.c(strMethod)) {
                builderNewBuilder.method("GET", null);
            } else {
                builderNewBuilder.method(strMethod, null);
            }
            builderNewBuilder.removeHeader("Transfer-Encoding");
            builderNewBuilder.removeHeader(HttpHeaders.CONTENT_LENGTH);
            builderNewBuilder.removeHeader(HttpHeaders.CONTENT_TYPE);
        }
        if (!x(httpUrlResolve)) {
            builderNewBuilder.removeHeader(HttpHeaders.AUTHORIZATION);
        }
        return builderNewBuilder.url(httpUrlResolve).build();
    }

    public Connection k() {
        return this.f39670b.c();
    }

    public Request l() {
        return this.f39676h;
    }

    public Response m() {
        Response response = this.f39679k;
        if (response != null) {
            return response;
        }
        throw new IllegalStateException();
    }

    boolean q(Request request) {
        return h.b(request.method());
    }

    public void s() throws IOException {
        Response responseR;
        if (this.f39679k != null) {
            return;
        }
        Request request = this.f39677i;
        if (request == null && this.f39678j == null) {
            throw new IllegalStateException("call sendRequest() first!");
        }
        if (request == null) {
            return;
        }
        if (this.f39683o) {
            this.f39672d.writeRequestHeaders(request);
            responseR = r();
        } else if (this.f39682n) {
            BufferedSink bufferedSink = this.f39681m;
            if (bufferedSink != null && bufferedSink.getBufferField().size() > 0) {
                this.f39681m.emit();
            }
            if (this.f39673e == -1) {
                if (OkHeaders.d(this.f39677i) == -1) {
                    Sink sink = this.f39680l;
                    if (sink instanceof k) {
                        this.f39677i = this.f39677i.newBuilder().header(HttpHeaders.CONTENT_LENGTH, Long.toString(((k) sink).d())).build();
                    }
                }
                this.f39672d.writeRequestHeaders(this.f39677i);
            }
            Sink sink2 = this.f39680l;
            if (sink2 != null) {
                BufferedSink bufferedSink2 = this.f39681m;
                if (bufferedSink2 != null) {
                    bufferedSink2.close();
                } else {
                    sink2.close();
                }
                Sink sink3 = this.f39680l;
                if (sink3 instanceof k) {
                    this.f39672d.writeRequestBody((k) sink3);
                }
            }
            responseR = r();
        } else {
            responseR = new c(0, request).proceed(this.f39677i);
        }
        t(responseR.headers());
        Response response = this.f39678j;
        if (response != null) {
            if (B(response, responseR)) {
                this.f39679k = this.f39678j.newBuilder().request(this.f39676h).priorResponse(z(this.f39671c)).headers(g(this.f39678j.headers(), responseR.headers())).cacheResponse(z(this.f39678j)).networkResponse(z(responseR)).build();
                responseR.body().close();
                w();
                InternalCache internalCache = com.squareup.okhttp.internal.c.instance.internalCache(this.f39669a);
                internalCache.trackConditionalCacheHit();
                internalCache.update(this.f39678j, z(this.f39679k));
                this.f39679k = A(this.f39679k);
                return;
            }
            com.squareup.okhttp.internal.g.c(this.f39678j.body());
        }
        Response responseBuild = responseR.newBuilder().request(this.f39676h).priorResponse(z(this.f39671c)).cacheResponse(z(this.f39678j)).networkResponse(z(responseR)).build();
        this.f39679k = responseBuild;
        if (n(responseBuild)) {
            o();
            this.f39679k = A(d(this.f39684p, this.f39679k));
        }
    }

    public void t(Headers headers) throws IOException {
        CookieHandler cookieHandler = this.f39669a.getCookieHandler();
        if (cookieHandler != null) {
            cookieHandler.put(this.f39676h.uri(), OkHeaders.l(headers, null));
        }
    }

    public g u(RouteException routeException) {
        if (!this.f39670b.m(routeException) || !this.f39669a.getRetryOnConnectionFailure()) {
            return null;
        }
        return new g(this.f39669a, this.f39676h, this.f39675g, this.f39682n, this.f39683o, f(), (k) this.f39680l, this.f39671c);
    }

    public g v(IOException iOException, Sink sink) {
        if (!this.f39670b.n(iOException, sink) || !this.f39669a.getRetryOnConnectionFailure()) {
            return null;
        }
        return new g(this.f39669a, this.f39676h, this.f39675g, this.f39682n, this.f39683o, f(), (k) sink, this.f39671c);
    }

    public void w() {
        this.f39670b.o();
    }

    public boolean x(HttpUrl httpUrl) {
        HttpUrl httpUrl2 = this.f39676h.httpUrl();
        return httpUrl2.host().equals(httpUrl.host()) && httpUrl2.port() == httpUrl.port() && httpUrl2.scheme().equals(httpUrl.scheme());
    }

    public void y() throws IOException {
        if (this.f39685q != null) {
            return;
        }
        if (this.f39672d != null) {
            throw new IllegalStateException();
        }
        Request requestP = p(this.f39676h);
        InternalCache internalCache = com.squareup.okhttp.internal.c.instance.internalCache(this.f39669a);
        Response response = internalCache != null ? internalCache.get(requestP) : null;
        com.squareup.okhttp.internal.http.b bVarC = new com.squareup.okhttp.internal.http.b.C0555b(System.currentTimeMillis(), requestP, response).c();
        this.f39685q = bVarC;
        this.f39677i = bVarC.f39610a;
        this.f39678j = bVarC.f39611b;
        if (internalCache != null) {
            internalCache.trackResponse(bVarC);
        }
        if (response != null && this.f39678j == null) {
            com.squareup.okhttp.internal.g.c(response.body());
        }
        if (this.f39677i == null) {
            Response response2 = this.f39678j;
            if (response2 != null) {
                this.f39679k = response2.newBuilder().request(this.f39676h).priorResponse(z(this.f39671c)).cacheResponse(z(this.f39678j)).build();
            } else {
                this.f39679k = new Response.Builder().request(this.f39676h).priorResponse(z(this.f39671c)).protocol(Protocol.HTTP_1_1).code(504).message("Unsatisfiable Request (only-if-cached)").body(f39668r).build();
            }
            this.f39679k = A(this.f39679k);
            return;
        }
        HttpStream httpStreamH = h();
        this.f39672d = httpStreamH;
        httpStreamH.setHttpEngine(this);
        if (this.f39682n && q(this.f39677i) && this.f39680l == null) {
            long jD = OkHeaders.d(requestP);
            if (!this.f39675g) {
                this.f39672d.writeRequestHeaders(this.f39677i);
                this.f39680l = this.f39672d.createRequestBody(this.f39677i, jD);
            } else {
                if (jD > 2147483647L) {
                    throw new IllegalStateException("Use setFixedLengthStreamingMode() or setChunkedStreamingMode() for requests larger than 2 GiB.");
                }
                if (jD == -1) {
                    this.f39680l = new k();
                } else {
                    this.f39672d.writeRequestHeaders(this.f39677i);
                    this.f39680l = new k((int) jD);
                }
            }
        }
    }
}
