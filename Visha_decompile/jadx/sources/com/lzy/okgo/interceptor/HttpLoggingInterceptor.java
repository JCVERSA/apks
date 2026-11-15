package com.lzy.okgo.interceptor;

import defpackage.ie7;
import defpackage.mv4;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import okhttp3.Connection;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.HttpHeaders;
import okio.Buffer;
import org.apache.commons.text.lookup.StringLookupFactory;

public class HttpLoggingInterceptor implements Interceptor {
    public static final Charset e = StandardCharsets.UTF_8;
    public volatile Level b = Level.NONE;
    public java.util.logging.Level c;
    public final Logger d;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public HttpLoggingInterceptor(String str) {
        this.d = Logger.getLogger(str);
    }

    public static Charset b(MediaType mediaType) {
        Charset charset = mediaType != null ? mediaType.charset(e) : e;
        return charset == null ? e : charset;
    }

    public static boolean c(MediaType mediaType) {
        if (mediaType == null) {
            return false;
        }
        if (mediaType.type() != null && "text".equals(mediaType.type())) {
            return true;
        }
        String strSubtype = mediaType.subtype();
        if (strSubtype == null) {
            return false;
        }
        String lowerCase = strSubtype.toLowerCase();
        return lowerCase.contains("x-www-form-urlencoded") || lowerCase.contains("json") || lowerCase.contains(StringLookupFactory.KEY_XML) || lowerCase.contains("html");
    }

    public final void a(Request request) {
        try {
            RequestBody requestBodyBody = request.newBuilder().build().body();
            if (requestBodyBody == null) {
                return;
            }
            Buffer buffer = new Buffer();
            requestBodyBody.writeTo(buffer);
            d("\tbody:" + buffer.readString(b(requestBodyBody.getContentType())));
        } catch (Exception e2) {
            ie7.a(e2);
        }
    }

    public final void d(String str) {
        this.d.log(this.c, str);
    }

    public final void e(Request request, Connection connection) {
        StringBuilder sb;
        Level level = this.b;
        Level level2 = Level.BODY;
        boolean z = level == level2;
        boolean z2 = this.b == level2 || this.b == Level.HEADERS;
        RequestBody requestBodyBody = request.body();
        boolean z3 = requestBodyBody != null;
        try {
            d("--> " + request.method() + ' ' + request.url() + ' ' + (connection != null ? connection.protocol() : Protocol.HTTP_1_1));
            if (z2) {
                if (z3) {
                    if (requestBodyBody.getContentType() != null) {
                        d("\tContent-Type: " + requestBodyBody.getContentType());
                    }
                    if (requestBodyBody.contentLength() != -1) {
                        d("\tContent-Length: " + requestBodyBody.contentLength());
                    }
                }
                Headers headers = request.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String strName = headers.name(i);
                    if (!"Content-Type".equalsIgnoreCase(strName) && !"Content-Length".equalsIgnoreCase(strName)) {
                        d("\t" + strName + ": " + headers.value(i));
                    }
                }
                d(" ");
                if (z && z3) {
                    if (c(requestBodyBody.getContentType())) {
                        a(request);
                    } else {
                        d("\tbody: maybe [binary body], omitted!");
                    }
                }
            }
            sb = new StringBuilder();
        } catch (Exception e2) {
            ie7.a(e2);
            sb = new StringBuilder();
        } finally {
            d("--> END " + request.method());
        }
        sb.append("--> END ");
        sb.append(request.method());
        String string = sb.toString();
    }

    public final Response f(Response response, long j) {
        Response responseBuild = response.newBuilder().build();
        ResponseBody responseBodyBody = responseBuild.body();
        Level level = this.b;
        Level level2 = Level.BODY;
        boolean z = true;
        boolean z2 = level == level2;
        if (this.b != level2 && this.b != Level.HEADERS) {
            z = false;
        }
        try {
            try {
                d("<-- " + responseBuild.code() + ' ' + responseBuild.message() + ' ' + responseBuild.request().url() + " (" + j + "ms）");
                if (z) {
                    Headers headers = responseBuild.headers();
                    int size = headers.size();
                    for (int i = 0; i < size; i++) {
                        d("\t" + headers.name(i) + ": " + headers.value(i));
                    }
                    d(" ");
                    if (z2 && HttpHeaders.hasBody(responseBuild)) {
                        if (responseBodyBody == null) {
                            d("<-- END HTTP");
                            return response;
                        }
                        if (c(responseBodyBody.get$contentType())) {
                            byte[] bArrF = mv4.f(responseBodyBody.byteStream());
                            d("\tbody:" + new String(bArrF, b(responseBodyBody.get$contentType())));
                            ResponseBody responseBodyCreate = ResponseBody.create(responseBodyBody.get$contentType(), bArrF);
                            try {
                                Response responseBuild2 = response.newBuilder().body(responseBodyCreate).build();
                                if (responseBodyCreate != null) {
                                    responseBodyCreate.close();
                                }
                                d("<-- END HTTP");
                                return responseBuild2;
                            } catch (Throwable th) {
                                if (responseBodyCreate != null) {
                                    try {
                                        responseBodyCreate.close();
                                    } catch (Throwable th2) {
                                        th.addSuppressed(th2);
                                    }
                                }
                                throw th;
                            }
                        }
                        d("\tbody: maybe [binary body], omitted!");
                    }
                }
            } catch (Exception e2) {
                ie7.a(e2);
            }
            d("<-- END HTTP");
            return response;
        } catch (Throwable th3) {
            d("<-- END HTTP");
            throw th3;
        }
    }

    public void g(java.util.logging.Level level) {
        this.c = level;
    }

    public void h(Level level) {
        if (level == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.b = level;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Request request = chain.request();
        if (this.b == Level.NONE) {
            return chain.proceed(request);
        }
        e(request, chain.connection());
        try {
            return f(chain.proceed(request), TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - System.nanoTime()));
        } catch (Exception e2) {
            d("<-- HTTP FAILED: " + e2);
            throw e2;
        }
    }
}
