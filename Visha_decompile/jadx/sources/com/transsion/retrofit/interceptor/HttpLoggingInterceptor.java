package com.transsion.retrofit.interceptor;

import defpackage.ie7;
import defpackage.mv4;
import java.io.IOException;
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
    private static final Charset UTF8 = StandardCharsets.UTF_8;
    private java.util.logging.Level colorLevel;
    private final Logger logger;
    private volatile Level printLevel = Level.NONE;

    public enum Level {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    public HttpLoggingInterceptor(String str) {
        this.logger = Logger.getLogger(str);
    }

    private void bodyToString(Request request) {
        try {
            RequestBody requestBodyBody = request.newBuilder().build().body();
            if (requestBodyBody == null) {
                return;
            }
            Buffer buffer = new Buffer();
            requestBodyBody.writeTo(buffer);
            log("\tbody:" + buffer.readString(getCharset(requestBodyBody.getContentType())));
        } catch (Exception e) {
            ie7.a(e);
        }
    }

    private static Charset getCharset(MediaType mediaType) {
        Charset charset = mediaType != null ? mediaType.charset(UTF8) : UTF8;
        return charset == null ? UTF8 : charset;
    }

    private static boolean isPlaintext(MediaType mediaType) {
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

    private void log(String str) {
        this.logger.log(this.colorLevel, str);
    }

    private void logForRequest(Request request, Connection connection) throws IOException {
        StringBuilder sb;
        Level level = this.printLevel;
        Level level2 = Level.BODY;
        boolean z = level == level2;
        boolean z2 = this.printLevel == level2 || this.printLevel == Level.HEADERS;
        RequestBody requestBodyBody = request.body();
        boolean z3 = requestBodyBody != null;
        try {
            log("--> " + request.method() + ' ' + request.url() + ' ' + (connection != null ? connection.protocol() : Protocol.HTTP_1_1));
            if (z2) {
                if (z3) {
                    if (requestBodyBody.getContentType() != null) {
                        log("\tContent-Type: " + requestBodyBody.getContentType());
                    }
                    if (requestBodyBody.contentLength() != -1) {
                        log("\tContent-Length: " + requestBodyBody.contentLength());
                    }
                }
                Headers headers = request.headers();
                int size = headers.size();
                for (int i = 0; i < size; i++) {
                    String strName = headers.name(i);
                    if (!"Content-Type".equalsIgnoreCase(strName) && !"Content-Length".equalsIgnoreCase(strName)) {
                        log("\t" + strName + ": " + headers.value(i));
                    }
                }
                log(" ");
                if (z && z3) {
                    if (isPlaintext(requestBodyBody.getContentType())) {
                        bodyToString(request);
                    } else {
                        log("\tbody: maybe [binary body], omitted!");
                    }
                }
            }
            sb = new StringBuilder();
        } catch (Exception e) {
            ie7.a(e);
            sb = new StringBuilder();
        } finally {
            log("--> END " + request.method());
        }
        sb.append("--> END ");
        sb.append(request.method());
        String string = sb.toString();
    }

    private Response logForResponse(Response response, long j) {
        Response responseBuild = response.newBuilder().build();
        ResponseBody responseBodyBody = responseBuild.body();
        Level level = this.printLevel;
        Level level2 = Level.BODY;
        boolean z = true;
        boolean z2 = level == level2;
        if (this.printLevel != level2 && this.printLevel != Level.HEADERS) {
            z = false;
        }
        try {
            try {
                log("<-- " + responseBuild.code() + ' ' + responseBuild.message() + ' ' + responseBuild.request().url() + " (" + j + "ms）");
                if (z) {
                    Headers headers = responseBuild.headers();
                    int size = headers.size();
                    for (int i = 0; i < size; i++) {
                        log("\t" + headers.name(i) + ": " + headers.value(i));
                    }
                    log(" ");
                    if (z2 && HttpHeaders.hasBody(responseBuild)) {
                        if (responseBodyBody == null) {
                            log("<-- END HTTP");
                            return response;
                        }
                        if (isPlaintext(responseBodyBody.get$contentType())) {
                            byte[] bArrF = mv4.f(responseBodyBody.byteStream());
                            log("\tbody:" + new String(bArrF, getCharset(responseBodyBody.get$contentType())));
                            ResponseBody responseBodyCreate = ResponseBody.create(responseBodyBody.get$contentType(), bArrF);
                            try {
                                Response responseBuild2 = response.newBuilder().body(responseBodyCreate).build();
                                if (responseBodyCreate != null) {
                                    responseBodyCreate.close();
                                }
                                log("<-- END HTTP");
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
                        log("\tbody: maybe [binary body], omitted!");
                    }
                }
            } catch (Exception e) {
                ie7.a(e);
            }
            log("<-- END HTTP");
            return response;
        } catch (Throwable th3) {
            log("<-- END HTTP");
            throw th3;
        }
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws Exception {
        Request request = chain.request();
        if (this.printLevel == Level.NONE) {
            return chain.proceed(request);
        }
        logForRequest(request, chain.connection());
        try {
            return logForResponse(chain.proceed(request), TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - System.nanoTime()));
        } catch (Exception e) {
            log("<-- HTTP FAILED: " + e);
            throw e;
        }
    }

    public void setColorLevel(java.util.logging.Level level) {
        this.colorLevel = level;
    }

    public void setPrintLevel(Level level) {
        if (level == null) {
            throw new NullPointerException("level == null. Use Level.NONE instead.");
        }
        this.printLevel = level;
    }
}
