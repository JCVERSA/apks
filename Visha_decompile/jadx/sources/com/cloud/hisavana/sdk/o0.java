package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.sign.GatewayResponse;
import com.cloud.hisavana.sdk.sign.SignAlgorithm;
import com.cloud.hisavana.sdk.sign.TimeBean;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import defpackage.ia3;
import defpackage.ikd;
import defpackage.ked;
import defpackage.o9;
import defpackage.vzc;
import defpackage.yd5;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

public class o0 {
    public static boolean b = false;
    public final ked a;

    public class a implements Comparator<Map.Entry<String, String>> {
        public a() {
        }

        @Override
        public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
            return entry.getKey().compareTo(entry2.getKey());
        }
    }

    public o0(ked kedVar) {
        this.a = kedVar;
    }

    public static String a() {
        return b ? "Xqn2nnO41/L92o1iuXhSLHTbXvY4Z5ZZ62m8mSLA" : "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O";
    }

    public static String c(String str, String str2, String str3, String str4, String str5) {
        System.currentTimeMillis();
        long jCurrentTimeMillis = System.currentTimeMillis() + o9.e().h("time_offset");
        return jCurrentTimeMillis + "|2|" + new o0(new yd5(a())).i(str, str2, str3, str4, str5, jCurrentTimeMillis);
    }

    public static void f(boolean z) {
        b = z;
    }

    public static boolean g(int i, String str) {
        if (i != 500 && TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            ikd.b().d("ssp", "response" + str);
            GatewayResponse gatewayResponse = (GatewayResponse) GsonUtil.a(str, GatewayResponse.class);
            if ("GW.4410".equals(gatewayResponse.error_code)) {
                ikd.b().d("ssp", "verify sign failed, retrying update time");
                TimeBean timeBean = (TimeBean) GsonUtil.a(vzc.a(gatewayResponse.error_msg), TimeBean.class);
                if (timeBean.time > 0) {
                    o9.e().q("time_offset", timeBean.time - System.currentTimeMillis());
                    return true;
                }
            }
        } catch (Exception e) {
            ikd.b().e(Log.getStackTraceString(e));
        }
        return false;
    }

    public final String b(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            URI uri = new URI(str);
            sb.append(uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                String strH = h(uri.getQuery());
                if (!TextUtils.isEmpty(strH)) {
                    ikd.b().d("ssp", "formatedUrl" + strH);
                    sb.append("?");
                    sb.append(strH);
                }
            }
            return sb.toString();
        } catch (URISyntaxException e) {
            ikd.b().e(Log.getStackTraceString(e));
            return "";
        }
    }

    public final String d(String str, String str2, String str3, String str4, String str5, long j) {
        long length;
        String strB;
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str5)) {
            ikd.b().d("ssp", "request body is null");
            strB = "";
            length = 0;
        } else {
            try {
                length = str5.getBytes(StandardCharsets.UTF_8).length;
                try {
                    System.currentTimeMillis();
                    strB = str5.length() > 102400 ? ia3.b(str5.substring(0, 102400), "MD5") : ia3.b(str5, "MD5");
                } catch (Exception e) {
                    e = e;
                    ikd.b().d("ssp", "generateContent exception" + e);
                    strB = "";
                }
            } catch (Exception e2) {
                e = e2;
                length = 0;
            }
        }
        sb.append(TextUtils.isEmpty(str) ? "" : str.toUpperCase());
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
        sb.append(b(str4));
        return sb.toString();
    }

    public final String e(Map map) {
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new a());
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

    public final String h(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split("&")) {
            if (str2 != null) {
                int iIndexOf = str2.indexOf("=");
                try {
                    map.put(URLDecoder.decode(str2.substring(0, iIndexOf), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf + 1), "UTF-8"));
                } catch (Exception e) {
                    ikd.b().e(Log.getStackTraceString(e));
                }
            }
        }
        return e(map);
    }

    public String i(String str, String str2, String str3, String str4, String str5, long j) {
        String strD = d(str, str2, str3, str4, str5, j);
        ked kedVar = this.a;
        return kedVar != null ? kedVar.a(SignAlgorithm.HmacMD5, strD) : "";
    }
}
