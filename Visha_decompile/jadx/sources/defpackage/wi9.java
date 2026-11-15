package defpackage;

import android.text.TextUtils;
import com.hisavana.common.tracking.TrackingKey;
import com.transsion.cloud_drive.base.network.RequestErrorCode;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.TreeMap;
import kotlin.jvm.internal.DefaultConstructorMarker;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.GzipSource;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class wi9 implements Interceptor {
    public static final a c = new a(null);
    public final yfb b;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public wi9(yfb yfbVar) {
        y45.j(yfbVar, "uniqueIdFetcher");
        this.b = yfbVar;
    }

    private final String a(RequestBody requestBody) throws IOException {
        Charset charset;
        Buffer buffer = new Buffer();
        requestBody.writeTo(buffer);
        MediaType contentType = requestBody.getContentType();
        if (y45.e(contentType != null ? contentType.type() : null, MultipartBody.FORM.type())) {
            return "";
        }
        if (contentType == null || (charset = contentType.charset(StandardCharsets.UTF_8)) == null) {
            charset = StandardCharsets.UTF_8;
            y45.i(charset, "UTF_8");
        }
        return buffer.readString(charset);
    }

    public final String b(Headers headers, ResponseBody responseBody) throws IOException {
        Charset charset;
        BufferedSource bodySource = responseBody.getBodySource();
        bodySource.request(Long.MAX_VALUE);
        Buffer buffer = bodySource.getBuffer();
        if (g1a.E("gzip", headers.get("Content-Encoding"), true)) {
            GzipSource gzipSource = new GzipSource(buffer.clone());
            try {
                buffer = new Buffer();
                buffer.writeAll(gzipSource);
                ly0.a(gzipSource, null);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ly0.a(gzipSource, th);
                    throw th2;
                }
            }
        }
        MediaType mediaType = responseBody.get$contentType();
        if (mediaType == null || (charset = mediaType.charset(StandardCharsets.UTF_8)) == null) {
            charset = StandardCharsets.UTF_8;
            y45.i(charset, "UTF_8");
        }
        return buffer.clone().readString(charset);
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws JSONException, IOException {
        String strOptString;
        y45.j(chain, "chain");
        Request request = chain.request();
        if (!kt8.b(request)) {
            return chain.proceed(chain.request());
        }
        na3 na3Var = na3.a;
        byte[] bArrA = na3Var.a(this.b.a());
        Request.Builder builderNewBuilder = request.newBuilder();
        RequestBody requestBodyBody = request.body();
        if (requestBodyBody != null && y45.e("POST", request.method())) {
            String strA = a(requestBodyBody);
            if (!j1a.o0(strA)) {
                String strB = h.a.b(strA, bArrA);
                if (strB.length() > 0) {
                    TreeMap treeMap = new TreeMap();
                    treeMap.put("encryptContent", strB);
                    builderNewBuilder.addHeader("Sign", na3Var.c(xi9.a.c(treeMap)));
                    JSONObject jSONObject = new JSONObject();
                    jSONObject.put("encryptContent", strB);
                    RequestBody.Companion companion = RequestBody.INSTANCE;
                    String string = jSONObject.toString();
                    y45.i(string, "toString(...)");
                    builderNewBuilder.post(companion.create(string, MediaType.INSTANCE.parse("application/json")));
                } else {
                    oq5.a.b("SignInterceptor", "加密" + strA + " 返回为空");
                }
            }
        }
        Response responseProceed = chain.proceed(builderNewBuilder.build());
        Response.Builder builderNewBuilder2 = responseProceed.newBuilder();
        ResponseBody responseBodyBody = responseProceed.body();
        String str = responseProceed.headers().get("Sign");
        if (responseBodyBody == null || str == null || str.length() == 0) {
            return responseProceed;
        }
        String strB2 = b(responseProceed.headers(), responseBodyBody);
        if (TextUtils.isEmpty(strB2)) {
            return responseProceed;
        }
        JSONObject jSONObject2 = new JSONObject(strB2);
        if (!jSONObject2.optBoolean("isEncrypt", false)) {
            return builderNewBuilder2.build();
        }
        if (!na3Var.d(xi9.a.d(jSONObject2), str)) {
            return builderNewBuilder2.code(404).message("验签失败").build();
        }
        if (jSONObject2.optInt(TrackingKey.CODE, 0) == RequestErrorCode.SUCCESS.getCode() && (strOptString = jSONObject2.optString("data")) != null) {
            String strA2 = h.a.a(strOptString, bArrA);
            try {
                jSONObject2.put("data", new JSONObject(strA2));
            } catch (Exception e) {
                oq5.a.b("SignInterceptor", "sign解密 转换jsonObject异常:", e);
                try {
                    jSONObject2.put("data", new JSONArray(strA2));
                } catch (Exception e2) {
                    oq5.a.b("SignInterceptor", "sign解密 转换jsonArray异常:", e2);
                }
            }
            String string2 = jSONObject2.toString();
            y45.i(string2, "toString(...)");
            builderNewBuilder2.body(ResponseBody.INSTANCE.create(string2, MediaType.INSTANCE.parse("application/json")));
        }
        return builderNewBuilder2.build();
    }
}
