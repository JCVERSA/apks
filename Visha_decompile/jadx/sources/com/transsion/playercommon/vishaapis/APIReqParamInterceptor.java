package com.transsion.playercommon.vishaapis;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.b;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.adstrategy.AdStrategyApi;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiConfig;
import com.transsion.utils.deviceinfo.a;
import defpackage.la3;
import defpackage.pp3;
import defpackage.r0a;
import defpackage.ydc;
import defpackage.zdc;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
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

public class APIReqParamInterceptor implements Interceptor {
    private static final String TAG = "visha_" + APIReqParamInterceptor.class.getSimpleName();

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
        try {
            Request.Builder builderAddHeader = request.newBuilder().removeHeader("User-Agent").addHeader("User-Agent", APIServiceConfig.getUserAgent()).addHeader("Request-Id", UUID.randomUUID().toString()).addHeader("CountryCode", CountryInfoUtil.i()).addHeader("RegionId", CountryInfoUtil.m() + "").addHeader("LanguageCode", LanguageUtils.b().getLanguage()).addHeader("Client-Ip", CountryInfoUtil.k()).addHeader("version", ydc.b()).addHeader("versionCode", String.valueOf(ydc.a())).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").addHeader("gaid", r0a.c(a.j())).addHeader("Client-ID", zdc.b()).addHeader("App-ID", zdc.a()).addHeader(RtspHeaders.TIMESTAMP, String.valueOf(System.currentTimeMillis())).addHeader("openid", zdc.c()).addHeader("Referer", r0a.c(APIServiceConfig.getReferer())).addHeader("brand", a.k().f()).addHeader("osVersionCode", pp3.b()).addHeader(CommonUrlParts.MODEL, a.k().m());
            String path = request.url().uri().getPath();
            if (OnlineVideoApiConfig.API.API_GET_VISHA_OAUTH_TOKEN.equalsIgnoreCase(path)) {
                builderAddHeader.addHeader(CommonUrlParts.MODEL, a.k().m());
                builderAddHeader.addHeader("Trans-token", zdc.d());
            } else if (OnlineVideoApiConfig.API.API_GET_REFRESH_VISHA_TOKEN.equalsIgnoreCase(path)) {
                builderAddHeader.addHeader(CommonUrlParts.MODEL, a.k().m());
                builderAddHeader.addHeader("Refresh-token", zdc.i());
            } else if (OnlineVideoApiConfig.API.API_GET_VISHA_ADS.equalsIgnoreCase(path)) {
                builderAddHeader.addHeader(CommonUrlParts.MODEL, pp3.a());
            } else if (AdStrategyApi.API_VISHA_AD_STRATEGY.equalsIgnoreCase(path)) {
                builderAddHeader.addHeader(CommonUrlParts.MODEL, a.k().m());
            } else {
                if (path.contains("/visha/api/cloud-storage")) {
                    builderAddHeader.addHeader("uniqueId", zdc.e());
                    builderAddHeader.addHeader("Trans-token", zdc.d());
                }
                if (!r0a.g(zdc.g())) {
                    builderAddHeader.addHeader(RtspHeaders.AUTHORIZATION, zdc.h() + zdc.g());
                }
            }
            if ("POST".equals(request.method()) || "PUT".equals(request.method())) {
                request = builderAddHeader.build();
            } else if (ShareTarget.METHOD_GET.equals(request.method())) {
                TreeMap treeMap = new TreeMap();
                HttpUrl.Builder builderNewBuilder = request.url().newBuilder();
                for (Map.Entry entry : treeMap.entrySet()) {
                    builderNewBuilder.addEncodedQueryParameter((String) entry.getKey(), (String) entry.getValue());
                }
                request = builderAddHeader.method(request.method(), request.body()).url(builderNewBuilder.build()).build();
            }
        } catch (Exception e) {
            Log.e(TAG, "intercept: ", e);
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
