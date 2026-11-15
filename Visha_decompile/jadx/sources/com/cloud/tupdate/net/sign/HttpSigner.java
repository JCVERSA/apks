package com.cloud.tupdate.net.sign;

import android.text.TextUtils;
import com.cloud.tupdate.net.utils.LogUtil;
import com.google.gson.Gson;
import defpackage.ja3;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

public class HttpSigner {
    public static boolean b = false;
    public final Signer a;

    public HttpSigner(Signer signer) {
        this.a = signer;
    }

    public static String b(String str, String str2, String str3, String str4, String str5) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jCurrentTimeMillis2 = System.currentTimeMillis() + SharedPreferencesHelper.a().h("time_offset");
        String strH = new HttpSigner(new BasicSigner(e())).h(str, str2, str3, str4, str5, jCurrentTimeMillis2);
        LogUtil logUtil = LogUtil.a;
        logUtil.b("x-tr-signature: " + jCurrentTimeMillis2 + "|2|" + strH);
        StringBuilder sb = new StringBuilder();
        sb.append("doSign latency: ");
        sb.append(System.currentTimeMillis() - jCurrentTimeMillis);
        logUtil.b(sb.toString());
        return jCurrentTimeMillis2 + "|2|" + strH;
    }

    public static String e() {
        return b ? "Xqn2nnO41/L92o1iuXhSLHTbXvY4Z5ZZ62m8mSLA" : "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O";
    }

    public static boolean f(int i, String str) {
        if (i != 500 && TextUtils.isEmpty(str)) {
            return false;
        }
        Gson gson = new Gson();
        try {
            LogUtil logUtil = LogUtil.a;
            logUtil.b("response" + str);
            GatewayResponse gatewayResponse = (GatewayResponse) gson.fromJson(str, GatewayResponse.class);
            if ("GW.4410".equals(gatewayResponse.error_code)) {
                logUtil.b("verify sign failed, retrying update time");
                TimeBean timeBean = (TimeBean) gson.fromJson(Crypto.a(gatewayResponse.error_msg), TimeBean.class);
                if (timeBean.time > 0) {
                    SharedPreferencesHelper.a().q("time_offset", timeBean.time - System.currentTimeMillis());
                    return true;
                }
            }
        } catch (Exception e) {
            LogUtil.a.d(e);
        }
        return false;
    }

    public static void g(boolean z) {
        b = z;
    }

    public final String a(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            URI uri = new URI(str);
            sb.append(uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                String strI = i(uri.getQuery());
                if (!TextUtils.isEmpty(strI)) {
                    LogUtil.a.b("formatedUrl" + strI);
                    sb.append("?");
                    sb.append(strI);
                }
            }
            return sb.toString();
        } catch (URISyntaxException e) {
            LogUtil.a.d(e);
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
        String strB;
        long length;
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str5)) {
            LogUtil.a.b("request body is null");
            strB = "";
            length = 0;
        } else {
            LogUtil logUtil = LogUtil.a;
            logUtil.b("request body is not null");
            try {
                length = str5.getBytes("UTF-8").length;
                try {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    strB = str5.length() > 102400 ? ja3.b(str5.substring(0, 102400), "MD5") : ja3.b(str5, "MD5");
                    try {
                        logUtil.b("md5 duration" + (System.currentTimeMillis() - jCurrentTimeMillis));
                    } catch (Exception e) {
                        e = e;
                        LogUtil.a.b("generateContent exception" + e.toString());
                    }
                } catch (Exception e2) {
                    e = e2;
                    strB = "";
                }
            } catch (Exception e3) {
                e = e3;
                strB = "";
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
        sb.append(TextUtils.isEmpty(strB) ? "" : strB);
        sb.append("\n");
        sb.append(a(str4));
        LogUtil.a.b(sb.toString());
        return sb.toString();
    }

    public String h(String str, String str2, String str3, String str4, String str5, long j) {
        return this.a.a(SignAlgorithm.HmacMD5, d(str, str2, str3, str4, str5, j));
    }

    public final String i(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("&")) {
            int iIndexOf = str2.indexOf("=");
            try {
                map.put(URLDecoder.decode(str2.substring(0, iIndexOf), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf + 1), "UTF-8"));
            } catch (Exception e) {
                LogUtil.a.d(e);
            }
        }
        return c(map);
    }
}
