package com.mgtv.irouting.okhttp;

import com.mgtv.irouting.utils.e;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.net.InetAddress;
import java.util.regex.Pattern;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class a implements Interceptor {
    public static String b = "(\\d*\\.){3}\\d*";
    public static Pattern c = Pattern.compile("(\\d*\\.){3}\\d*");
    public c.a a;

    public a(c.a aVar) {
        this.a = aVar;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) throws IOException {
        long jCurrentTimeMillis = System.currentTimeMillis();
        c.a aVar = this.a;
        if (aVar != null) {
            aVar.a = jCurrentTimeMillis;
        }
        Request request = chain.request();
        String url = request.url().getUrl();
        String strHost = request.url().host();
        e.a("[httpdns-v1.0.7]", "[DefaultInterceptor]origin url:" + url + ", host:" + strHost);
        Request requestBuild = request.newBuilder().build();
        StringBuilder sb = new StringBuilder();
        sb.append("[DefaultInterceptor]newUrl:");
        sb.append(requestBuild.url());
        e.a("[httpdns-v1.0.7]", sb.toString());
        Response responseProceed = chain.proceed(requestBuild);
        if (!c.matcher(strHost).find()) {
            String hostAddress = InetAddress.getByName(strHost).getHostAddress();
            e.a("[httpdns-v1.0.7]", "[DefaultInterceptor]InetAddress:" + strHost + StringUtils.COMMA + hostAddress);
            c.a aVar2 = this.a;
            if (aVar2 != null) {
                aVar2.e = hostAddress;
            }
        }
        e.a("[httpdns-v1.0.7]", "[DefaultInterceptor]cost time : " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
        c.a aVar3 = this.a;
        if (aVar3 != null) {
            aVar3.b = System.currentTimeMillis();
        }
        return responseProceed;
    }
}
