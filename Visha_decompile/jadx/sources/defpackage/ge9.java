package defpackage;

import androidx.browser.trusted.sharing.ShareTarget;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.blankj.utilcode.util.LanguageUtils;
import com.transsion.utils.deviceinfo.a;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class ge9 implements Interceptor {
    public static final String b = "visha_" + ge9.class.getSimpleName();

    @Override
    public Response intercept(Interceptor.Chain chain) {
        Request request = chain.request();
        Request.Builder builderAddHeader = request.newBuilder().removeHeader("User-Agent").addHeader("User-Agent", ah8.b()).addHeader("Request-Id", UUID.randomUUID().toString()).addHeader("LanguageCode", LanguageUtils.b().getLanguage()).addHeader("version", ydc.b()).addHeader("versionCode", String.valueOf(ydc.a())).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").addHeader("gaid", a.j()).addHeader(RtspHeaders.TIMESTAMP, String.valueOf(System.currentTimeMillis())).addHeader("Referer", ah8.a()).addHeader("brand", a.k().f()).addHeader(CommonUrlParts.MODEL, a.k().m());
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
}
