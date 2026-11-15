package of;

import com.alibaba.sdk.android.oss.common.utils.HttpHeaders;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.tmc.network.log.LogLevel;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
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

public final class b implements Interceptor {

    private static final a f67817e = new a(null);

    private final InterfaceC0829b f67818a;

    private volatile Set f67819b;

    private volatile LogLevel f67820c;

    private volatile LogLevel f67821d;

    private static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Buffer buffer) {
            Intrinsics.h(buffer, "<this>");
            try {
                Buffer buffer2 = new Buffer();
                buffer.copyTo(buffer2, 0L, RangesKt.i(buffer.size(), 64L));
                int i10 = 0;
                do {
                    i10++;
                    if (buffer2.exhausted()) {
                        break;
                    }
                    int utf8CodePoint = buffer2.readUtf8CodePoint();
                    if (Character.isISOControl(utf8CodePoint) && !Character.isWhitespace(utf8CodePoint)) {
                        return false;
                    }
                } while (i10 < 16);
                return true;
            } catch (EOFException unused) {
                return false;
            }
        }

        public final boolean b(MediaType mediaType) {
            if (!Intrinsics.c(mediaType == null ? null : mediaType.type(), MimeTypes.BASE_TYPE_TEXT)) {
                if (!Intrinsics.c(mediaType == null ? null : mediaType.subtype(), "json")) {
                    if (!Intrinsics.c(mediaType != null ? mediaType.subtype() : null, "x-www-form-urlencoded")) {
                        return false;
                    }
                }
            }
            return true;
        }

        private a() {
        }
    }

    public interface InterfaceC0829b {

        public static final C0830b f67822a = C0830b.f67824a;

        public static final InterfaceC0829b f67823b = new a();

        public static final class a implements InterfaceC0829b {
            a() {
            }

            @Override
            public void log(String message) {
                Intrinsics.h(message, "message");
                Platform.INSTANCE.get().log(message, 4, null);
            }
        }

        public static final class C0830b {

            static final C0830b f67824a = new C0830b();

            private C0830b() {
            }
        }

        void log(String str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public b() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    private final boolean a(Headers headers) {
        String str = headers.get(HttpHeaders.CONTENT_ENCODING);
        return (str == null || StringsKt.H(str, "identity", true) || StringsKt.H(str, "gzip", true)) ? false : true;
    }

    private final void b(Headers headers, int i10) {
        String strValue = this.f67819b.contains(headers.name(i10)) ? "██" : headers.value(i10);
        this.f67818a.log(headers.name(i10) + ": " + strValue);
    }

    public final void c(LogLevel logLevel) {
        Intrinsics.h(logLevel, "<set-?>");
        this.f67820c = logLevel;
    }

    public final void d(LogLevel logLevel) {
        Intrinsics.h(logLevel, "<set-?>");
        this.f67821d = logLevel;
    }

    public final b e(LogLevel level) {
        Intrinsics.h(level, "level");
        c(level);
        return this;
    }

    public final b f(LogLevel level) {
        Intrinsics.h(level, "level");
        d(level);
        return this;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        String str;
        char c10;
        String string;
        String str2;
        Charset charset;
        Long lValueOf;
        Intrinsics.h(chain, "chain");
        LogLevel logLevel = this.f67820c;
        LogLevel logLevel2 = this.f67821d;
        Request request = chain.request();
        LogLevel logLevel3 = LogLevel.NONE;
        if (logLevel == logLevel3 && logLevel2 == logLevel3) {
            return chain.proceed(request);
        }
        boolean z10 = logLevel == LogLevel.BODY;
        boolean z11 = z10 || logLevel == LogLevel.HEADERS;
        RequestBody requestBodyBody = request.body();
        boolean zB = f67817e.b(requestBodyBody == null ? null : requestBodyBody.get$contentType());
        Connection connection = chain.connection();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("--> ");
        sb2.append(request.method());
        sb2.append(' ');
        sb2.append(request.url());
        sb2.append(connection != null ? Intrinsics.q(" ", connection.protocol()) : "");
        String string2 = sb2.toString();
        if (!z11 && requestBodyBody != null) {
            string2 = string2 + " (" + requestBodyBody.contentLength() + "-byte body)";
        }
        this.f67818a.log(string2);
        if (z11) {
            Headers headers = request.headers();
            if (requestBodyBody != null) {
                MediaType mediaType = requestBodyBody.get$contentType();
                if (mediaType != null && headers.get(HttpHeaders.CONTENT_TYPE) == null) {
                    this.f67818a.log(Intrinsics.q("Content-Type: ", mediaType));
                }
                if (requestBodyBody.contentLength() != -1 && headers.get(HttpHeaders.CONTENT_LENGTH) == null) {
                    this.f67818a.log(Intrinsics.q("Content-Length: ", Long.valueOf(requestBodyBody.contentLength())));
                }
            } else {
                z11 = z11;
            }
            int size = headers.size();
            if (size > 0) {
                int i10 = 0;
                while (true) {
                    int i11 = i10 + 1;
                    b(headers, i10);
                    if (i11 >= size) {
                        break;
                    }
                    i10 = i11;
                }
            }
            if (!z10 || requestBodyBody == null) {
                this.f67818a.log(Intrinsics.q("--> END ", request.method()));
            } else if (a(request.headers())) {
                this.f67818a.log("--> END " + request.method() + " (encoded body omitted)");
            } else if (requestBodyBody.isDuplex()) {
                this.f67818a.log("--> END " + request.method() + " (duplex request body omitted)");
            } else if (zB) {
                Buffer buffer = new Buffer();
                requestBodyBody.writeTo(buffer);
                MediaType mediaType2 = requestBodyBody.get$contentType();
                Charset UTF_8 = mediaType2 == null ? null : mediaType2.charset(StandardCharsets.UTF_8);
                if (UTF_8 == null) {
                    UTF_8 = StandardCharsets.UTF_8;
                    Intrinsics.g(UTF_8, "UTF_8");
                }
                this.f67818a.log("");
                if (f67817e.a(buffer)) {
                    this.f67818a.log(buffer.readString(UTF_8));
                    this.f67818a.log("--> END " + request.method() + " (" + requestBodyBody.contentLength() + "-byte body)");
                } else {
                    this.f67818a.log("--> END " + request.method() + " (binary " + requestBodyBody.contentLength() + "-byte body omitted)");
                }
            } else {
                this.f67818a.log("--> END " + request.method() + " (non text request body omitted.)");
            }
        } else {
            z11 = z11;
        }
        long jNanoTime = System.nanoTime();
        try {
            Response responseProceed = chain.proceed(request);
            boolean z12 = logLevel2 == LogLevel.BODY;
            boolean z13 = z12 || logLevel2 == LogLevel.HEADERS;
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            ResponseBody responseBodyBody = responseProceed.body();
            Intrinsics.e(responseBodyBody);
            long j10 = responseBodyBody.get$contentLength();
            if (j10 != -1) {
                str = j10 + "-byte";
            } else {
                str = "unknown-length";
            }
            InterfaceC0829b interfaceC0829b = this.f67818a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append("<-- ");
            sb3.append(responseProceed.code());
            if (responseProceed.message().length() == 0) {
                string = "";
                c10 = ' ';
            } else {
                String strMessage = responseProceed.message();
                StringBuilder sb4 = new StringBuilder();
                c10 = ' ';
                sb4.append(String.valueOf(' '));
                sb4.append(strMessage);
                string = sb4.toString();
            }
            sb3.append(string);
            sb3.append(c10);
            sb3.append(responseProceed.request().url());
            sb3.append(" (");
            sb3.append(millis);
            sb3.append("ms");
            if (z11) {
                str2 = "";
            } else {
                str2 = ", " + str + " body";
            }
            sb3.append(str2);
            sb3.append(')');
            interfaceC0829b.log(sb3.toString());
            boolean zB2 = f67817e.b(responseBodyBody.get$contentType());
            if (z13) {
                Headers headers2 = responseProceed.headers();
                int size2 = headers2.size();
                if (size2 > 0) {
                    int i12 = 0;
                    while (true) {
                        int i13 = i12 + 1;
                        b(headers2, i12);
                        if (i13 >= size2) {
                            break;
                        }
                        i12 = i13;
                    }
                }
                if (!z12 || !okhttp3.internal.http.HttpHeaders.promisesBody(responseProceed)) {
                    this.f67818a.log("<-- END HTTP");
                } else if (a(responseProceed.headers())) {
                    this.f67818a.log("<-- END HTTP (encoded body omitted)");
                } else if (zB2) {
                    BufferedSource bufferedSource = responseBodyBody.get$this_asResponseBody();
                    bufferedSource.request(Long.MAX_VALUE);
                    Buffer buffer2 = bufferedSource.getBuffer();
                    if (StringsKt.H("gzip", headers2.get(HttpHeaders.CONTENT_ENCODING), true)) {
                        lValueOf = Long.valueOf(buffer2.size());
                        GzipSource gzipSource = new GzipSource(buffer2.clone());
                        try {
                            buffer2 = new Buffer();
                            buffer2.writeAll(gzipSource);
                            charset = null;
                            CloseableKt.a(gzipSource, null);
                        } catch (Throwable th2) {
                            try {
                                throw th2;
                            } catch (Throwable th3) {
                                CloseableKt.a(gzipSource, th2);
                                throw th3;
                            }
                        }
                    } else {
                        charset = null;
                        lValueOf = null;
                    }
                    MediaType mediaType3 = responseBodyBody.get$contentType();
                    Charset UTF_9 = mediaType3 == null ? charset : mediaType3.charset(StandardCharsets.UTF_8);
                    if (UTF_9 == null) {
                        UTF_9 = StandardCharsets.UTF_8;
                        Intrinsics.g(UTF_9, "UTF_8");
                    }
                    if (!f67817e.a(buffer2)) {
                        this.f67818a.log("");
                        this.f67818a.log("<-- END HTTP (binary " + buffer2.size() + "-byte body omitted)");
                        return responseProceed;
                    }
                    if (j10 != 0) {
                        this.f67818a.log("");
                        this.f67818a.log(buffer2.clone().readString(UTF_9));
                    }
                    if (lValueOf != null) {
                        this.f67818a.log("<-- END HTTP (" + buffer2.size() + "-byte, " + lValueOf + "-gzipped-byte body)");
                    } else {
                        this.f67818a.log("<-- END HTTP (" + buffer2.size() + "-byte body)");
                    }
                } else {
                    this.f67818a.log("<-- END HTTP (non text response body omitted.)");
                }
            }
            return responseProceed;
        } catch (Exception e10) {
            this.f67818a.log(Intrinsics.q("<-- HTTP FAILED: ", e10));
            throw e10;
        }
    }

    public b(InterfaceC0829b logger) {
        Intrinsics.h(logger, "logger");
        this.f67818a = logger;
        this.f67819b = SetsKt.f();
        LogLevel logLevel = LogLevel.NONE;
        this.f67820c = logLevel;
        this.f67821d = logLevel;
    }

    public b(InterfaceC0829b interfaceC0829b, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? InterfaceC0829b.f67823b : interfaceC0829b);
    }
}
