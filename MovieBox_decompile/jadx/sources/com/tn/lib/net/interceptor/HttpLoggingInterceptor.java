package com.tn.lib.net.interceptor;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import ig.d;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import yg.l;

public final class HttpLoggingInterceptor implements Interceptor {

    private final a f39867a;

    private volatile Set f39868b;

    private volatile Level f39869c;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lcom/tn/lib/net/interceptor/HttpLoggingInterceptor$Level;", "", "<init>", "(Ljava/lang/String;I)V", "NONE", "BASIC", "HEADERS", "BODY", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<Level> getEntries() {
            return $ENTRIES;
        }
    }

    public interface a {

        public static final C0557a f39870a = C0557a.f39872a;

        public static final a f39871b = new C0557a.C0558a();

        public static final class C0557a {

            static final C0557a f39872a = new C0557a();

            private static final class C0558a implements a {
                @Override
                public void log(String message) {
                    Intrinsics.h(message, "message");
                    Platform.log$default(Platform.INSTANCE.get(), message, 0, null, 6, null);
                }
            }

            private C0557a() {
            }
        }

        void log(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public HttpLoggingInterceptor() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean a(Headers headers) {
        String str = headers.get(HttpHeaders.CONTENT_ENCODING);
        return (str == null || StringsKt.H(str, "identity", true) || StringsKt.H(str, "gzip", true)) ? false : true;
    }

    private final void c(Headers headers, int i10) {
        String strValue = this.f39868b.contains(headers.name(i10)) ? "██" : headers.value(i10);
        this.f39867a.log(headers.name(i10) + ": " + strValue);
    }

    public final void b(Level level) {
        Intrinsics.h(level, "<set-?>");
        this.f39869c = level;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Charset UTF_8;
        Charset UTF_9;
        Intrinsics.h(chain, "chain");
        Level level = this.f39869c;
        Request request = chain.request();
        if (level == Level.NONE) {
            return chain.proceed(request);
        }
        boolean z10 = level == Level.BODY;
        boolean z11 = z10 || level == Level.HEADERS;
        RequestBody requestBodyBody = request.body();
        Connection connection = chain.connection();
        String str = " ";
        String str2 = "--> " + request.method() + " " + request.url() + (connection != null ? " " + connection.protocol() : "");
        if (!z11 && requestBodyBody != null) {
            str2 = str2 + " (" + requestBodyBody.contentLength() + "-byte body)";
        }
        this.f39867a.log(str2);
        if (z11) {
            Headers headers = request.headers();
            if (requestBodyBody != null) {
                MediaType mediaType = requestBodyBody.get$contentType();
                if (mediaType != null && headers.get(HttpHeaders.CONTENT_TYPE) == null) {
                    this.f39867a.log("Content-Type: " + mediaType);
                }
                if (requestBodyBody.contentLength() != -1 && headers.get(HttpHeaders.CONTENT_LENGTH) == null) {
                    this.f39867a.log("Content-Length: " + requestBodyBody.contentLength());
                }
            } else {
                str = " ";
            }
            int size = headers.size();
            for (int i10 = 0; i10 < size; i10++) {
                c(headers, i10);
            }
            if (!z10 || requestBodyBody == null) {
                this.f39867a.log("--> END " + request.method());
            } else if (a(request.headers())) {
                this.f39867a.log("--> END " + request.method() + " (encoded body omitted)");
            } else if (requestBodyBody.isDuplex()) {
                this.f39867a.log("--> END " + request.method() + " (duplex request body omitted)");
            } else if (requestBodyBody.isOneShot()) {
                this.f39867a.log("--> END " + request.method() + " (one-shot body omitted)");
            } else {
                Buffer buffer = new Buffer();
                requestBodyBody.writeTo(buffer);
                MediaType mediaType2 = requestBodyBody.get$contentType();
                if (mediaType2 == null || (UTF_9 = mediaType2.charset(StandardCharsets.UTF_8)) == null) {
                    UTF_9 = StandardCharsets.UTF_8;
                    Intrinsics.g(UTF_9, "UTF_8");
                }
                this.f39867a.log("");
                if (d.b(buffer)) {
                    this.f39867a.log(buffer.readString(UTF_9));
                    this.f39867a.log("--> END " + request.method() + " (" + requestBodyBody.contentLength() + "-byte body)");
                } else {
                    this.f39867a.log("--> END " + request.method() + " (binary " + requestBodyBody.contentLength() + "-byte body omitted)");
                }
            }
        } else {
            z11 = z11;
            str = " ";
        }
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ResponseBody responseBodyBody = responseProceed.body();
            Intrinsics.e(responseBodyBody);
            long j10 = responseBodyBody.get$contentLength();
            String str3 = j10 != -1 ? j10 + "-byte" : "unknown-length";
            this.f39867a.log("<-- " + responseProceed.code() + (responseProceed.message().length() == 0 ? "" : ' ' + responseProceed.message()) + str + responseProceed.request().url() + " (" + millis + "ms" + (z11 ? "" : ", " + str3 + " body") + ")");
            if (z11) {
                Headers headers2 = responseProceed.headers();
                int size2 = headers2.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    c(headers2, i11);
                }
                if (!z10 || !okhttp3.internal.http.HttpHeaders.promisesBody(responseProceed)) {
                    this.f39867a.log("<-- END HTTP");
                } else if (a(responseProceed.headers())) {
                    this.f39867a.log("<-- END HTTP (encoded body omitted)");
                } else {
                    BufferedSource bufferedSource = responseBodyBody.get$this_asResponseBody();
                    bufferedSource.request(Long.MAX_VALUE);
                    Buffer buffer2 = bufferedSource.getBuffer();
                    Long l10 = null;
                    if (StringsKt.H("gzip", headers2.get(HttpHeaders.CONTENT_ENCODING), true)) {
                        Long lValueOf = Long.valueOf(buffer2.size());
                        GzipSource gzipSource = new GzipSource(buffer2.clone());
                        try {
                            buffer2 = new Buffer();
                            buffer2.writeAll(gzipSource);
                            CloseableKt.a(gzipSource, null);
                            l10 = lValueOf;
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.a(gzipSource, th2);
                                throw th3;
                            }
                        }
                    }
                    MediaType mediaType3 = responseBodyBody.get$contentType();
                    if (mediaType3 == null || (UTF_8 = mediaType3.charset(StandardCharsets.UTF_8)) == null) {
                        UTF_8 = StandardCharsets.UTF_8;
                        Intrinsics.g(UTF_8, "UTF_8");
                    }
                    if (!d.b(buffer2)) {
                        this.f39867a.log("");
                        this.f39867a.log("<-- END HTTP (binary " + buffer2.size() + "-byte body omitted)");
                        return responseProceed;
                    }
                    if (j10 != 0) {
                        this.f39867a.log("");
                        this.f39867a.log(buffer2.clone().readString(UTF_8));
                    }
                    if (l10 != null) {
                        this.f39867a.log("<-- END HTTP (" + buffer2.size() + "-byte, " + l10 + "-gzipped-byte body)");
                    } else {
                        this.f39867a.log("<-- END HTTP (" + buffer2.size() + "-byte body)");
                    }
                }
            }
            return responseProceed;
        } catch (Exception e10) {
            wf.a.f74274a.i("HttpTag", "net_state:" + l.f76264a.b() + " url:" + request.url() + "<-- HTTP FAILED: " + e10, true);
            throw e10;
        }
    }

    public HttpLoggingInterceptor(a logger) {
        Intrinsics.h(logger, "logger");
        this.f39867a = logger;
        this.f39868b = SetsKt.f();
        this.f39869c = Level.NONE;
    }

    public HttpLoggingInterceptor(a aVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? a.f39871b : aVar);
    }
}
