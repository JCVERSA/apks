package com.mgtv.irouting.okhttp;

import com.mgtv.irouting.utils.JniHttpdns;
import com.mgtv.irouting.utils.e;
import java.util.regex.Pattern;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;

public class b extends a {
    public static String d = "(\\d*\\.){3}\\d*";
    public static String e;
    public static Pattern f = Pattern.compile("(\\d*\\.){3}\\d*");

    public b(c.a aVar) {
        super(aVar);
    }

    public static String a(String str, String str2, String str3) throws HttpDnsException {
        if (str == null) {
            e.b("[httpdns-v1.0.7]", "URL NULL");
            throw new HttpDnsException("url is null");
        }
        if (str2 == null) {
            e.b("[httpdns-v1.0.7]", "host NULL");
            throw new HttpDnsException("host is null");
        }
        if (str3 == null) {
            e.b("[httpdns-v1.0.7]", "ip NULL");
            throw new HttpDnsException("ip is null");
        }
        String strReplaceFirst = str.replaceFirst(str2, str3);
        e.a("[httpdns-v1.0.7]", "ipUrl : " + strReplaceFirst);
        return strReplaceFirst;
    }

    @Override
    public Response intercept(Interceptor.Chain chain) {
        Response responseProceed;
        c.a aVar = this.a;
        if (aVar != null) {
            aVar.a = System.currentTimeMillis();
        }
        Request request = chain.request();
        String url = request.url().getUrl();
        String strHost = request.url().host();
        com.mgtv.irouting.a.a(strHost);
        e.a("[httpdns-v1.0.7]", "origin url:" + url + ", origin host:" + strHost);
        Request.Builder builderNewBuilder = request.newBuilder();
        if (!f.matcher(strHost).find()) {
            String str = new String(JniHttpdns.a().http_query_bestip(strHost, com.mgtv.irouting.net.b.a().d, com.mgtv.irouting.net.b.a().b));
            c.a aVar2 = this.a;
            if (aVar2 != null) {
                aVar2.e = str;
            }
            e.a("[httpdns-v1.0.7]", "use hostIp:" + str);
            if (f.matcher(str).find()) {
                try {
                    String strA = a(url, strHost, str);
                    e = strA;
                    builderNewBuilder.url(strA);
                    builderNewBuilder.header("Host", strHost);
                    e.a("[httpdns-v1.0.7]", "the host has replaced with ip " + str);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            } else {
                e.b("[httpdns-v1.0.7]", "can't get the ip , can't replace the host");
            }
        }
        Request requestBuild = builderNewBuilder.build();
        e.a("[httpdns-v1.0.7]", "newUrl:" + requestBuild.url());
        try {
            responseProceed = chain.proceed(requestBuild);
        } catch (Exception e3) {
            e3.printStackTrace();
            responseProceed = null;
        }
        c.a aVar3 = this.a;
        if (aVar3 != null) {
            aVar3.b = System.currentTimeMillis();
            e.a("[httpdns-v1.0.7]", "[HttpDNSInterceptor]cost time : " + this.a.a() + "ms");
        }
        return responseProceed;
    }
}
