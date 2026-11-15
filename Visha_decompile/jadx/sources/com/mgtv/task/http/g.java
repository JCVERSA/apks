package com.mgtv.task.http;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.core.app.NotificationCompat;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.hisavana.common.tracking.TrackingKey;
import com.mgtv.task.l;
import com.mgtv.task.n;
import defpackage.hb0;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.NoRouteToHostException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.SSLHandshakeException;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class g implements n<HttpRequestObject, HttpResponseObject> {
    private int a;
    private boolean b;
    private com.mgtv.task.http.retry.c c;
    private int d = 15000;
    private int e = 15000;

    public g(@Nullable Context context) {
    }

    private boolean c(int i) {
        return i < 200 || i >= 400;
    }

    public void b(int i) {
        if (i > 0) {
            this.e = i;
        }
    }

    /* JADX WARN: Code duplicated, block: B:115:0x02a0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x02bc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:125:0x02bd  */
    /* JADX WARN: Code duplicated, block: B:126:0x02be A[LOOP:0: B:137:0x014c->B:126:0x02be, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:135:0x02a2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:151:0x0293 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:159:0x0291 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:160:0x02b6 A[EDGE_INSN: B:160:0x02b6->B:122:0x02b6 BREAK  A[LOOP:0: B:137:0x014c->B:126:0x02be], SYNTHETIC] */
    private HttpResponseObject b(@Nullable com.mgtv.task.j jVar, HttpRequestObject httpRequestObject) throws Exception {
        String strA;
        Map<String, String> mapA;
        Throwable th;
        boolean z;
        Exception exception;
        if (httpRequestObject.params == null) {
            httpRequestObject.params = new HttpParams();
        }
        HttpTraceObject httpTraceObject = httpRequestObject.traceData;
        httpRequestObject.params.getMethod();
        String str = (httpRequestObject.params.getMultiParts() == null && httpRequestObject.params.getParams(HttpParams.Type.BODY).isEmpty() && TextUtils.isEmpty(httpRequestObject.params.getBodyJson()) && TextUtils.isEmpty(httpRequestObject.params.getBodyXml())) ? ShareTarget.METHOD_GET : "POST";
        boolean zNoAppendMap = httpRequestObject.params.noAppendMap();
        boolean z2 = true;
        int i = 0;
        if (zNoAppendMap) {
            strA = i.a(httpRequestObject.url, a(httpRequestObject.params.getParams(), false));
        } else {
            strA = i.a(httpRequestObject.url, a(httpRequestObject.params.getParams(), str == ShareTarget.METHOD_GET));
        }
        String str2 = strA;
        Map<String, String> params = httpRequestObject.params.getParams(HttpParams.Type.HEADER);
        if (zNoAppendMap) {
            mapA = new LinkedHashMap<>();
        } else {
            mapA = a(httpRequestObject.params.getParams(HttpParams.Type.BODY), str == "POST");
        }
        httpTraceObject.stepStart(1, 2);
        httpTraceObject.setUrl(str2);
        httpTraceObject.setHeader(params);
        httpTraceObject.setBody(mapA);
        httpTraceObject.setFinalUrl(str2);
        a(this.c, httpTraceObject);
        MultiParts multiParts = httpRequestObject.params.getMultiParts();
        String contentTypeS = httpRequestObject.params.getContentTypeS();
        if (TextUtils.isEmpty(contentTypeS)) {
            if (!TextUtils.isEmpty(httpRequestObject.params.getBodyXml())) {
                contentTypeS = "text/xml";
            } else if (!TextUtils.isEmpty(httpRequestObject.params.getBodyJson())) {
                contentTypeS = "application/json";
            } else if (multiParts != null) {
                contentTypeS = "multipart/form-data; boundary=" + multiParts.getBoundary();
            } else {
                contentTypeS = ShareTarget.ENCODING_TYPE_URL_ENCODED;
            }
        }
        String str3 = contentTypeS;
        httpTraceObject.setContentType(str3);
        String strA2 = a(mapA, httpRequestObject.params.getBodyJson(), httpRequestObject.params.getBodyXml());
        httpTraceObject.setBodyText(strA2);
        httpTraceObject.setBodyGZip(httpRequestObject.params.isBodyGZip());
        httpTraceObject.setMultiParts(httpRequestObject.params.getMultiParts());
        httpTraceObject.setMethod(str);
        byte[] bArrA = a(strA2, httpRequestObject.params.isBodyGZip());
        httpTraceObject.stepEnd(2);
        int i2 = 3;
        httpTraceObject.stepStart(3);
        Response response = null;
        HttpResponseObject httpResponseObjectA = null;
        while (true) {
            try {
                try {
                    com.mgtv.task.http.retry.c cVar = this.c;
                    if (cVar != null && cVar.b() != null) {
                        this.c.b().a(this.c.c(str2, str));
                    }
                    httpTraceObject.stepStart(4);
                    httpTraceObject.setHttpStatus(i);
                    OkHttpClient.Builder builderNewBuilder = d.a().newBuilder();
                    try {
                        Request.Builder builderUrl = new Request.Builder().url(httpTraceObject.getFinalUrl());
                        a(builderNewBuilder, httpTraceObject);
                        a(builderUrl, httpTraceObject.getHeader());
                        if (multiParts != null) {
                            MultipartBody.Builder builder = new MultipartBody.Builder(multiParts.getBoundary());
                            multiParts.writeTo(builder);
                            builderUrl.post(builder.build());
                        } else if (bArrA.length > 0) {
                            builderUrl.post(RequestBody.create(MediaType.parse(str3), bArrA));
                        }
                        Response responseExecute = builderNewBuilder.build().newCall(builderUrl.build()).execute();
                        try {
                            try {
                                httpTraceObject.stepEnd(4, i2);
                                if (jVar != null) {
                                    try {
                                        try {
                                            jVar.a(100, 0);
                                        } catch (Exception e) {
                                            e = e;
                                            response = responseExecute;
                                            z = true;
                                            if (a(httpTraceObject, e)) {
                                                if (response == null) {
                                                    break;
                                                }
                                                try {
                                                    response.body().close();
                                                    break;
                                                } catch (Exception e2) {
                                                    e2.printStackTrace();
                                                    break;
                                                }
                                            }
                                            if (response != null) {
                                                try {
                                                    response.body().close();
                                                } catch (Exception e3) {
                                                    e3.printStackTrace();
                                                }
                                            }
                                            exception = httpTraceObject.getException();
                                            if (exception == null) {
                                                return httpResponseObjectA;
                                            }
                                            throw exception;
                                        }
                                    } catch (Exception e4) {
                                        e = e4;
                                    }
                                }
                                httpTraceObject.stepStart(5);
                                i2 = i2;
                                bArrA = bArrA;
                                str3 = str3;
                                try {
                                    httpResponseObjectA = a(responseExecute, httpRequestObject.wholeResponse, httpRequestObject.channel, httpTraceObject, jVar);
                                    httpTraceObject.stepEnd(5);
                                    httpTraceObject.setException(null);
                                    if (httpTraceObject.getHttpStatus() == 200) {
                                        z = true;
                                        httpTraceObject.stepEnd(1);
                                        if (responseExecute != null) {
                                            try {
                                                responseExecute.body().close();
                                            } catch (Exception e5) {
                                                e5.printStackTrace();
                                            }
                                        }
                                        return httpResponseObjectA;
                                    }
                                    z = true;
                                    try {
                                        httpTraceObject.mRetryLogs.add(new com.mgtv.task.http.retry.b(httpTraceObject.getHttpStatus(), httpTraceObject.getFinalUrl(), httpTraceObject.getException()));
                                        if (responseExecute != null) {
                                            try {
                                                responseExecute.body().close();
                                            } catch (Exception e6) {
                                                e6.printStackTrace();
                                            }
                                        }
                                        response = responseExecute;
                                    } catch (Exception e7) {
                                        e = e7;
                                        response = responseExecute;
                                        if (a(httpTraceObject, e)) {
                                            if (response == null) {
                                                break;
                                            }
                                            response.body().close();
                                            break;
                                        }
                                        if (response != null) {
                                            response.body().close();
                                        }
                                        exception = httpTraceObject.getException();
                                        if (exception == null) {
                                            return httpResponseObjectA;
                                        }
                                        throw exception;
                                    }
                                    if (!a(httpTraceObject, this.c)) {
                                        break;
                                    }
                                    z2 = z;
                                    i2 = i2;
                                    bArrA = bArrA;
                                    str3 = str3;
                                    i = 0;
                                    e = e7;
                                } catch (Exception e8) {
                                    e = e8;
                                    z = true;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                response = responseExecute;
                                if (response == null) {
                                    throw th;
                                }
                                try {
                                    response.body().close();
                                    throw th;
                                } catch (Exception e9) {
                                    e9.printStackTrace();
                                    throw th;
                                }
                            }
                        } catch (Exception e10) {
                            e = e10;
                            i2 = i2;
                            bArrA = bArrA;
                            str3 = str3;
                            z = true;
                        }
                        response = responseExecute;
                    } catch (Exception e11) {
                        e = e11;
                    }
                } catch (Exception e12) {
                    e = e12;
                    i2 = i2;
                    bArrA = bArrA;
                    str3 = str3;
                    z = z2;
                }
                if (a(httpTraceObject, e)) {
                    if (response == null) {
                        break;
                    }
                    response.body().close();
                    break;
                }
                if (response != null) {
                    response.body().close();
                }
                if (!a(httpTraceObject, this.c)) {
                    break;
                    break;
                }
                z2 = z;
                i2 = i2;
                bArrA = bArrA;
                str3 = str3;
                i = 0;
            } catch (Throwable th3) {
                th = th3;
            }
        }
        exception = httpTraceObject.getException();
        if (exception == null) {
            return httpResponseObjectA;
        }
        throw exception;
    }

    public void a(com.mgtv.task.http.retry.c cVar) {
        this.c = cVar;
    }

    public void a(int i) {
        if (i > 0) {
            this.d = i;
        }
    }

    private void a(com.mgtv.task.http.retry.c cVar, HttpTraceObject httpTraceObject) {
        String strA;
        if (!(cVar instanceof com.mgtv.task.http.host.a) || (strA = ((com.mgtv.task.http.host.a) cVar).a(httpTraceObject.getFinalUrl())) == null) {
            return;
        }
        httpTraceObject.setFinalUrl(strA);
    }

    @NonNull
    private byte[] a(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        byte[] bytes = str.getBytes();
        if (z) {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                gZIPOutputStream.write(bytes);
                gZIPOutputStream.close();
                return byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return bytes;
    }

    private boolean a(HttpTraceObject httpTraceObject, com.mgtv.task.http.retry.c cVar) {
        if (httpTraceObject.getHttpStatus() != 302 && httpTraceObject.getHttpStatus() != 303) {
            if (cVar == null) {
                int i = this.a;
                if (i >= 1) {
                    return false;
                }
                this.a = i + 1;
            } else {
                try {
                    String strA = cVar.a(httpTraceObject.getUrl(), httpTraceObject.getMethod(), httpTraceObject.getException());
                    if (strA != null) {
                        httpTraceObject.setFinalUrl(strA);
                    } else {
                        int i2 = this.a;
                        if (i2 >= 1) {
                            return false;
                        }
                        this.a = i2 + 1;
                    }
                    int iD = cVar.d(httpTraceObject.getUrl(), httpTraceObject.getMethod());
                    if (iD > 0) {
                        Thread.sleep(iD);
                    }
                } catch (Exception unused) {
                }
            }
            return true;
        }
        return false;
    }

    private boolean a(HttpTraceObject httpTraceObject, Exception exc) {
        httpTraceObject.setException(exc);
        boolean z = true;
        if (!(exc instanceof InterruptedIOException) && !(exc instanceof InterruptedException)) {
            exc.printStackTrace();
            if (!(exc instanceof RuntimeException)) {
                int httpStatus = httpTraceObject.getHttpStatus();
                if (httpStatus == 0) {
                    if (exc instanceof UnknownHostException) {
                        httpTraceObject.setHttpStatus(-3);
                    } else if (exc instanceof ConnectException) {
                        httpTraceObject.setHttpStatus(-5);
                    } else if (exc instanceof NoRouteToHostException) {
                        httpTraceObject.setHttpStatus(-4);
                    } else if (exc instanceof SSLHandshakeException) {
                        httpTraceObject.setHttpStatus(-6);
                    } else {
                        httpTraceObject.setHttpStatus(-1);
                    }
                } else if (c(httpStatus)) {
                }
                z = false;
            }
        } else if (exc instanceof SocketTimeoutException) {
            exc.printStackTrace();
            httpTraceObject.setHttpStatus(-2);
            z = false;
        } else {
            httpTraceObject.setHttpStatus(0);
            this.b = true;
        }
        httpTraceObject.mRetryLogs.add(new com.mgtv.task.http.retry.b(httpTraceObject.getHttpStatus(), httpTraceObject.getFinalUrl(), httpTraceObject.getException()));
        return z;
    }

    private Map<String, String> a(Map<String, String> map, boolean z) {
        d.a aVarB;
        HashMap<String, String> mapD;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (z && (aVarB = d.b()) != null && (mapD = aVarB.d()) != null && !mapD.isEmpty()) {
            for (Map.Entry<String, String> entry : mapD.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                linkedHashMap.put(Uri.encode(key), value != null ? Uri.encode(value) : null);
            }
        }
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry2 : map.entrySet()) {
                String key2 = entry2.getKey();
                String value2 = entry2.getValue();
                linkedHashMap.put(Uri.encode(key2), value2 != null ? Uri.encode(value2) : null);
            }
        }
        return linkedHashMap;
    }

    private void a(Request.Builder builder, Map<String, String> map) {
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            builder.addHeader(entry.getKey(), entry.getValue());
        }
    }

    private void a(OkHttpClient.Builder builder, HttpTraceObject httpTraceObject) {
        com.mgtv.task.http.retry.c cVar = this.c;
        int iA = cVar != null ? cVar.a(httpTraceObject.getUrl(), httpTraceObject.getMethod()) : 0;
        int i = iA > 0 ? iA : this.e;
        if ((cVar != null ? cVar.b(httpTraceObject.getUrl(), httpTraceObject.getMethod()) : 0) <= 0) {
            iA = this.d;
        }
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        builder.connectTimeout(i, timeUnit).readTimeout(iA, timeUnit);
    }

    private static String a(Map<String, String> map, String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return str2;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (map != null) {
            boolean z = true;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                if (!z) {
                    sb.append('&');
                }
                String key = entry.getKey();
                String value = entry.getValue();
                sb.append(key);
                sb.append('=');
                if (TextUtils.isEmpty(value)) {
                    value = "";
                }
                sb.append(value);
                if (sb.capacity() > 1000000) {
                    return sb.toString();
                }
                z = false;
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v13 */
    /* JADX WARN: Type inference failed for: r9v3, types: [java.io.Closeable] */
    private HttpResponseObject a(Response response, boolean z, @Nullable a aVar, HttpTraceObject httpTraceObject, @Nullable com.mgtv.task.j jVar) throws Throwable {
        ?? r9;
        OutputStream outputStreamA;
        HttpResponseObject httpResponseObject;
        HttpResponseObject httpResponseObject2;
        InputStream inputStreamByteStream = null;
        try {
            try {
                int iCode = response.code();
                httpTraceObject.setHttpStatus(iCode);
                httpTraceObject.setResponseHeader(response.headers());
                if (iCode != 200) {
                    outputStreamA = null;
                    httpResponseObject = null;
                } else if (aVar != null) {
                    outputStreamA = aVar.a();
                    try {
                        inputStreamByteStream = response.body().byteStream();
                        long jA = a(response.header("content-length"));
                        byte[] bArr = new byte[16384];
                        int i = 0;
                        while (true) {
                            int i2 = inputStreamByteStream.read(bArr);
                            if (i2 != -1) {
                                if (!Thread.interrupted()) {
                                    outputStreamA.write(bArr, 0, i2);
                                    i += i2;
                                    if (jVar != null && i2 > 0 && jA >= i) {
                                        jVar.a(100, Integer.valueOf((int) (((long) (i * 100)) / jA)));
                                    }
                                } else {
                                    throw new IOException("task cancel");
                                }
                            } else {
                                httpResponseObject = new HttpResponseObject();
                                httpResponseObject.channel = aVar;
                                break;
                            }
                        }
                    } catch (IOException e) {
                        e = e;
                        httpTraceObject.setException(e);
                        throw e;
                    }
                } else {
                    InputStream inputStreamByteStream2 = response.body().byteStream();
                    byte[] bArr2 = new byte[2048];
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    int i3 = 0;
                    while (true) {
                        int i4 = inputStreamByteStream2.read(bArr2);
                        if (i4 != -1) {
                            byteArrayOutputStream.write(bArr2, 0, i4);
                            i3 += i4;
                            if (i3 >= 10485760) {
                                httpTraceObject.setResponse("mgnetwork>>>content larger than 10m!");
                                throw new HttpFormatException("Response内容过长");
                            }
                        } else {
                            String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8"));
                            httpTraceObject.setResponse(str);
                            if (z) {
                                httpResponseObject2 = new HttpResponseObject();
                                httpResponseObject2.data = com.mgtv.json.a.a(str);
                                a(iCode, httpResponseObject2);
                            } else {
                                httpResponseObject2 = (HttpResponseObject) com.mgtv.json.a.a(str, HttpResponseObject.class);
                            }
                            if (httpResponseObject2 == null) {
                                throw new HttpFormatException("响应数据解析错误");
                            }
                            httpResponseObject = httpResponseObject2;
                            outputStreamA = null;
                            break;
                        }
                    }
                }
                if (jVar != null) {
                    jVar.a(100, 100);
                }
                j.a((Closeable) inputStreamByteStream);
                j.a(outputStreamA);
                return httpResponseObject;
            } catch (Throwable th) {
                th = th;
                this = this;
                j.a((Closeable) null);
                j.a((Closeable) r9);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            r9 = 0;
            j.a((Closeable) null);
            j.a((Closeable) r9);
            throw th;
        }
    }

    private static long a(String str) {
        try {
            return Long.parseLong(str);
        } catch (Exception unused) {
            return -1L;
        }
    }

    private void a(int i, HttpResponseObject httpResponseObject) {
        JsonElement jsonElement = httpResponseObject.data;
        if (jsonElement == null || !jsonElement.isJsonObject()) {
            return;
        }
        JsonObject asJsonObject = httpResponseObject.data.getAsJsonObject();
        String[] strArr = {TrackingKey.CODE, hb0.KEY_NAME_ERROR_CODE};
        for (int i2 = 0; i2 < 2; i2++) {
            String str = strArr[i2];
            try {
                if (asJsonObject.has(str)) {
                    httpResponseObject.setCode(asJsonObject.get(str).getAsInt());
                }
            } catch (Exception unused) {
            }
        }
        String[] strArr2 = {NotificationCompat.CATEGORY_MESSAGE, "err_msg"};
        for (int i3 = 0; i3 < 2; i3++) {
            String str2 = strArr2[i3];
            try {
                if (asJsonObject.has(str2)) {
                    httpResponseObject.setMsg(asJsonObject.get(str2).getAsString());
                }
            } catch (Exception unused2) {
            }
        }
    }

    @Override
    public l<HttpResponseObject> a(@Nullable com.mgtv.task.j jVar, HttpRequestObject httpRequestObject) {
        if (httpRequestObject.traceData == null) {
            httpRequestObject.traceData = new HttpTraceObject();
        }
        try {
            HttpResponseObject httpResponseObjectB = b(jVar, httpRequestObject);
            if (this.b) {
                HttpTraceObject httpTraceObject = httpRequestObject.traceData;
                return new l<>(null, false, true, httpTraceObject, httpTraceObject.getException());
            }
            return new l<>(httpResponseObjectB, httpRequestObject.traceData.getHttpStatus() == 200, false, httpRequestObject.traceData);
        } catch (Exception e) {
            return new l<>(null, false, true, httpRequestObject.traceData, e);
        }
    }
}
