package com.mgadplus.netlib.base;

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
import defpackage.hb0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.zip.GZIPOutputStream;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class f implements com.mgadplus.d.b {
    public f(@Nullable Context context) {
    }

    private boolean b() {
        return false;
    }

    @Override
    public boolean a() {
        return false;
    }

    public f() {
    }

    private boolean a(Exception exc) {
        return true;
    }

    @Override
    public e a(@NonNull d dVar, com.mgadplus.d.b.a aVar) {
        try {
            return a(dVar);
        } catch (Exception e) {
            e eVar = new e(dVar.b());
            eVar.a(e);
            return eVar;
        }
    }

    private e a(d dVar) {
        String str;
        if (dVar.b == null) {
            dVar.b = new c();
        }
        e eVar = new e(dVar.b());
        if (dVar.b.getMultiParts() == null && dVar.b.getParams(c.a.BODY).isEmpty() && TextUtils.isEmpty(dVar.b.getBodyJson())) {
            TextUtils.isEmpty(dVar.b.getBodyXml());
        }
        String strA = i.a(dVar.a, a(dVar.b.getParams()));
        Map<String, String> params = dVar.b.getParams(c.a.HEADER);
        Map<String, String> mapA = a(dVar.b.getParams(c.a.BODY));
        g multiParts = dVar.b.getMultiParts();
        if (!TextUtils.isEmpty(dVar.b.getBodyXml())) {
            str = "text/xml";
        } else if (!TextUtils.isEmpty(dVar.b.getBodyJson())) {
            str = "application/json";
        } else if (multiParts != null) {
            str = "multipart/form-data; boundary=" + multiParts.getBoundary();
        } else {
            str = ShareTarget.ENCODING_TYPE_URL_ENCODED;
        }
        byte[] bArrA = a(a(mapA, dVar.b.getBodyJson(), dVar.b.getBodyXml()), dVar.b.isBodyGZip());
        Response response = null;
        try {
            try {
                try {
                    OkHttpClient.Builder builderNewBuilder = a.b().newBuilder();
                    Request.Builder builderUrl = new Request.Builder().url(strA);
                    a(builderNewBuilder, dVar);
                    a(builderUrl, params);
                    if (multiParts != null) {
                        MultipartBody.Builder builder = new MultipartBody.Builder(multiParts.getBoundary());
                        multiParts.writeTo(builder);
                        builderUrl.post(builder.build());
                    } else if (bArrA.length > 0) {
                        builderUrl.post(RequestBody.create(MediaType.parse(str), bArrA));
                    }
                    Response responseExecute = builderNewBuilder.build().newCall(builderUrl.build()).execute();
                    eVar.a(responseExecute.code());
                    FzHttpResponseObject fzHttpResponseObjectA = a(responseExecute);
                    if (fzHttpResponseObjectA != null && fzHttpResponseObjectA.data != null) {
                        if (responseExecute.code() == 200) {
                            eVar.a(fzHttpResponseObjectA);
                            try {
                                responseExecute.body().close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            return eVar;
                        }
                        responseExecute.body().close();
                        b();
                        return eVar;
                    }
                    throw new IOException("响应数据解析错误");
                } catch (Exception e2) {
                    if (a(e2)) {
                        eVar.a(e2);
                        if (0 != 0) {
                            try {
                                response.body().close();
                            } catch (Exception e3) {
                                e3.printStackTrace();
                            }
                        }
                        return eVar;
                    }
                    if (0 != 0) {
                        response.body().close();
                    }
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    response.body().close();
                } catch (Exception e5) {
                    e5.printStackTrace();
                }
            }
            throw th;
        }
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

    private Map<String, String> a(Map<String, String> map) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (map != null && !map.isEmpty()) {
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                linkedHashMap.put(Uri.encode(key), value != null ? Uri.encode(value) : null);
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

    private void a(OkHttpClient.Builder builder, d dVar) {
        if (dVar.a() > 0) {
            builder.connectTimeout(dVar.a(), TimeUnit.SECONDS);
        } else {
            builder.connectTimeout(5L, TimeUnit.SECONDS);
        }
        if (dVar.c() > 0) {
            builder.readTimeout(dVar.c(), TimeUnit.SECONDS);
        } else {
            builder.readTimeout(5L, TimeUnit.SECONDS);
        }
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

    private FzHttpResponseObject a(Response response) throws Exception {
        if (response.code() != 200) {
            return null;
        }
        InputStream inputStreamByteStream = response.body().byteStream();
        try {
            try {
                byte[] bArr = new byte[2048];
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                int i = 0;
                do {
                    int i2 = inputStreamByteStream.read(bArr);
                    if (i2 != -1) {
                        byteArrayOutputStream.write(bArr, 0, i2);
                        i += i2;
                    } else {
                        String str = new String(byteArrayOutputStream.toByteArray(), Charset.forName("UTF-8"));
                        FzHttpResponseObject fzHttpResponseObject = new FzHttpResponseObject();
                        fzHttpResponseObject.data = com.mgadplus.netlib.json.b.a(str);
                        a(fzHttpResponseObject);
                        try {
                            inputStreamByteStream.close();
                            return fzHttpResponseObject;
                        } catch (Exception unused) {
                            return fzHttpResponseObject;
                        }
                    }
                } while (i < 10485760);
                throw new IOException("Response内容过长");
            } catch (Exception e) {
                throw e;
            }
        } catch (Throwable th) {
            if (inputStreamByteStream != null) {
                try {
                    inputStreamByteStream.close();
                } catch (Exception unused2) {
                }
            }
            throw th;
        }
    }

    private void a(FzHttpResponseObject fzHttpResponseObject) {
        JsonElement jsonElement = fzHttpResponseObject.data;
        if (jsonElement == null || !jsonElement.isJsonObject()) {
            return;
        }
        JsonObject asJsonObject = fzHttpResponseObject.data.getAsJsonObject();
        try {
            if (asJsonObject.has(TrackingKey.CODE)) {
                fzHttpResponseObject.setCode(asJsonObject.get(TrackingKey.CODE).getAsInt());
            }
            if (asJsonObject.has(hb0.KEY_NAME_ERROR_CODE)) {
                fzHttpResponseObject.setErrorCode(asJsonObject.get(hb0.KEY_NAME_ERROR_CODE).getAsInt());
            }
            if (asJsonObject.has(NotificationCompat.CATEGORY_MESSAGE)) {
                fzHttpResponseObject.setMsg(asJsonObject.get(NotificationCompat.CATEGORY_MESSAGE).getAsString());
            }
            if (asJsonObject.has("err_msg")) {
                fzHttpResponseObject.setErrorMsg(asJsonObject.get("err_msg").getAsString());
            }
        } catch (Exception unused) {
        }
    }
}
