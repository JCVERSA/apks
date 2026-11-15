package com.transsion.vishaplayersdk.netservices;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.b;
import defpackage.la3;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.json.JSONObject;

public class PlayerServiceReqParamInterceptor implements Interceptor {
    private static final String TAG = "visha_" + PlayerServiceReqParamInterceptor.class.getSimpleName();

    public static void sortedParameters(String str, TreeMap<String, String> treeMap) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String string = itKeys.next().toString();
                treeMap.put(string, jSONObject.get(string).toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void appendGenericParameters(String str, Map<String, String> map) {
        map.put("platform", ConstantDeviceInfo.APP_PLATFORM);
        map.put("version", b.d());
        map.put("Request-Id", b.d());
        map.put("Client-Ip", b.d());
    }

    @Override
    @NonNull
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        Request.Builder builderAddHeader = request.newBuilder().removeHeader("User-Agent").addHeader("User-Agent", PlayerServiceConfig.getUserAgent()).addHeader("Request-Id", UUID.randomUUID().toString()).addHeader("CountryCode", PlayerServiceConfig.mCountryCode).addHeader("LanguageCode", LanguageUtils.b().getLanguage()).addHeader("Client-Ip", PlayerServiceConfig.mClientIP).addHeader("version", b.d()).addHeader("versionCode", String.valueOf(b.b())).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").addHeader("gaid", PlayerServiceConfig.mGAID).addHeader(RtspHeaders.TIMESTAMP, String.valueOf(System.currentTimeMillis())).addHeader("openid", PlayerServiceConfig.mOpenid).addHeader("Referer", PlayerServiceConfig.getReferer()).addHeader(RtspHeaders.AUTHORIZATION, PlayerServiceConfig.mTokenType + PlayerServiceConfig.mUserToken);
        if ("POST".equals(request.method())) {
            request = builderAddHeader.build();
        } else if (ShareTarget.METHOD_GET.equals(request.method())) {
            TreeMap treeMap = new TreeMap();
            HttpUrl.Builder builderNewBuilder = request.url().newBuilder();
            for (Map.Entry entry : treeMap.entrySet()) {
                builderNewBuilder.addEncodedQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
            request = builderAddHeader.method(request.method(), request.body()).url(builderNewBuilder.build()).build();
        }
        return chain.proceed(request);
    }

    public void sign(String str, Map<String, String> map) {
        appendGenericParameters(str, map);
        StringBuilder sb = new StringBuilder();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            sb.append(entry.getKey());
            sb.append(entry.getValue());
        }
        sb.append("kkLCdl3*p9mQPkZtOy");
        map.put("sign", la3.b(sb.toString()));
    }
}
