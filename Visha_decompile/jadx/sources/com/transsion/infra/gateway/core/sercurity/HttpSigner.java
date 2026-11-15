package com.transsion.infra.gateway.core.sercurity;

import android.text.TextUtils;
import com.transsion.infra.gateway.core.bean.RequestBean;
import com.transsion.infra.gateway.core.utils.a;
import defpackage.c19;
import defpackage.ej9;
import defpackage.ia3;
import defpackage.kd0;
import defpackage.vh1;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

public class HttpSigner {
    public final ej9 a;

    public HttpSigner(ej9 ej9Var) {
        this.a = ej9Var;
    }

    public static String b(RequestBean requestBean) {
        if (requestBean == null) {
            a.a.g("request bean is null");
            return null;
        }
        if (requestBean.getMethod() == null) {
            a.a.g("request method is null");
            return null;
        }
        if (TextUtils.isEmpty(requestBean.getUrl())) {
            a.a.g("request url is null");
            return null;
        }
        if (requestBean.getKey() == null) {
            a.a.g("request key is null");
            return null;
        }
        if (requestBean.getKey().getKey() == null) {
            a.a.g("request key is null");
            return null;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() + c19.a(vh1.a()).b("time_offset");
        String str = jCurrentTimeMillis + "|" + requestBean.getKey().getKeyVersion() + "|" + new HttpSigner(new kd0(requestBean.getKey().getKey())).e(requestBean.getMethod(), requestBean.getAccept(), requestBean.getContentType(), requestBean.getUrl(), requestBean.getBody(), jCurrentTimeMillis, requestBean.getKey().getAlgorithm());
        a.a.g("x-tr-signature: " + str);
        return str;
    }

    public final String a(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            URI uri = new URI(str);
            sb.append(uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                String strF = f(uri.getQuery());
                if (!TextUtils.isEmpty(strF)) {
                    sb.append("?");
                    sb.append(strF);
                }
            }
            return sb.toString();
        } catch (URISyntaxException e) {
            e.printStackTrace();
            return "";
        }
    }

    public final String c(Map map) {
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new Comparator<Map.Entry<String, String>>() {
                @Override
                public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
                    return entry.getKey().compareTo(entry2.getKey());
                }
            });
            StringBuilder sb = new StringBuilder();
            for (Map.Entry entry : arrayList) {
                if (!"".equals(entry.getKey())) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    sb.append(str);
                    sb.append("=");
                    sb.append(str2);
                    sb.append("&");
                }
            }
            if (sb.length() > 0) {
                sb.deleteCharAt(sb.length() - 1);
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public final String d(String str, String str2, String str3, String str4, String str5, long j) {
        long length;
        String strD;
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str5)) {
            a.a.g("request body is null");
            strD = "";
            length = 0;
        } else {
            try {
                length = str5.length();
                try {
                    System.currentTimeMillis();
                    strD = str5.length() > 102400 ? ia3.d(str5.substring(0, 102400)) : ia3.d(str5);
                } catch (Exception e) {
                    e = e;
                    a.a.i("generateContent exception" + e.toString());
                    strD = "";
                }
            } catch (Exception e2) {
                e = e2;
                length = 0;
            }
        }
        sb.append(str.toUpperCase());
        sb.append("\n");
        sb.append(str2 == null ? "" : str2);
        sb.append("\n");
        sb.append(str3 == null ? "" : str3);
        sb.append("\n");
        sb.append(length == 0 ? "" : Long.valueOf(length));
        sb.append("\n");
        sb.append(j);
        sb.append("\n");
        sb.append(TextUtils.isEmpty(strD) ? "" : strD);
        sb.append("\n");
        sb.append(a(str4));
        a.a.g(sb.toString());
        return sb.toString();
    }

    public String e(String str, String str2, String str3, String str4, String str5, long j, SignAlgorithm signAlgorithm) {
        return this.a.a(signAlgorithm, d(str, str2, str3, str4, str5, j));
    }

    public final String f(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("&")) {
            int iIndexOf = str2.indexOf("=");
            try {
                map.put(URLDecoder.decode(str2.substring(0, iIndexOf), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf + 1), "UTF-8"));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return c(map);
    }
}
