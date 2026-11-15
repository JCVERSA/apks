package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.hisavana.sdk.sign.GatewayResponse;
import com.cloud.hisavana.sdk.sign.SignAlgorithm;
import com.cloud.hisavana.sdk.sign.TimeBean;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.tmc.kernel.utils.UrlUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLDecoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;

public class C0972f0 {

    public static boolean f21828b = false;

    private final v1 f21829a;

    class a implements Comparator<Map.Entry<String, String>> {
        a() {
        }

        @Override
        public int compare(Map.Entry<String, String> entry, Map.Entry<String, String> entry2) {
            return entry.getKey().compareTo(entry2.getKey());
        }
    }

    public C0972f0(v1 v1Var) {
        this.f21829a = v1Var;
    }

    public static String a() {
        return f21828b ? "Xqn2nnO41/L92o1iuXhSLHTbXvY4Z5ZZ62m8mSLA" : "76iRl07s0xSN9jqmEWAt79EBJZulIQIsV64FZr2O";
    }

    private String b(String str) {
        StringBuilder sb2 = new StringBuilder();
        try {
            URI uri = new URI(str);
            sb2.append(uri.getPath());
            if (!TextUtils.isEmpty(uri.getQuery())) {
                String strH = h(uri.getQuery());
                if (!TextUtils.isEmpty(strH)) {
                    b4.b().d("ssp", "formatedUrl" + strH);
                    sb2.append(UrlUtils.QUESTION_MARK);
                    sb2.append(strH);
                }
            }
            return sb2.toString();
        } catch (URISyntaxException e10) {
            b4.b().e(Log.getStackTraceString(e10));
            return "";
        }
    }

    public static String c(String str, String str2, String str3, String str4, String str5) {
        System.currentTimeMillis();
        long jCurrentTimeMillis = System.currentTimeMillis() + l7.a.e().h("time_offset");
        return jCurrentTimeMillis + "|2|" + new C0972f0(new p0(a())).i(str, str2, str3, str4, str5, jCurrentTimeMillis);
    }

    private String d(String str, String str2, String str3, String str4, String str5, long j10) {
        long length;
        String strA;
        StringBuilder sb2 = new StringBuilder();
        if (TextUtils.isEmpty(str5)) {
            b4.b().d("ssp", "request body is null");
            strA = "";
            length = 0;
        } else {
            try {
                length = str5.getBytes(StandardCharsets.UTF_8).length;
                try {
                    System.currentTimeMillis();
                    strA = str5.length() > 102400 ? com.transsion.infra.gateway.core.utils.b.a(str5.substring(0, 102400), "MD5") : com.transsion.infra.gateway.core.utils.b.a(str5, "MD5");
                } catch (Exception e10) {
                    e = e10;
                    b4.b().d("ssp", "generateContent exception" + e);
                    strA = "";
                }
            } catch (Exception e11) {
                e = e11;
                length = 0;
            }
        }
        sb2.append(TextUtils.isEmpty(str) ? "" : str.toUpperCase());
        sb2.append("\n");
        sb2.append(str2 == null ? "" : str2);
        sb2.append("\n");
        sb2.append(str3 == null ? "" : str3);
        sb2.append("\n");
        sb2.append(length == 0 ? "" : Long.valueOf(length));
        sb2.append("\n");
        sb2.append(j10);
        sb2.append("\n");
        sb2.append(TextUtils.isEmpty(strA) ? "" : strA);
        sb2.append("\n");
        sb2.append(b(str4));
        return sb2.toString();
    }

    private String e(Map map) {
        try {
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new a());
            StringBuilder sb2 = new StringBuilder();
            for (Map.Entry entry : arrayList) {
                if (!"".equals(entry.getKey())) {
                    String str = (String) entry.getKey();
                    String str2 = (String) entry.getValue();
                    sb2.append(str);
                    sb2.append(UrlUtils.EQUAL_MARK);
                    sb2.append(str2);
                    sb2.append(UrlUtils.AND_MARK);
                }
            }
            if (sb2.length() > 0) {
                sb2.deleteCharAt(sb2.length() - 1);
            }
            return sb2.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static void f(boolean z10) {
        f21828b = z10;
    }

    public static boolean g(int i10, String str) {
        if (i10 != 500 && TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            b4.b().d("ssp", "response" + str);
            GatewayResponse gatewayResponse = (GatewayResponse) GsonUtil.a(str, GatewayResponse.class);
            if ("GW.4410".equals(gatewayResponse.error_code)) {
                b4.b().d("ssp", "verify sign failed, retrying update time");
                TimeBean timeBean = (TimeBean) GsonUtil.a(p1.a(gatewayResponse.error_msg), TimeBean.class);
                if (timeBean.time > 0) {
                    l7.a.e().q("time_offset", timeBean.time - System.currentTimeMillis());
                    return true;
                }
            }
        } catch (Exception e10) {
            b4.b().e(Log.getStackTraceString(e10));
        }
        return false;
    }

    private String h(String str) {
        HashMap map = new HashMap();
        for (String str2 : str.split(UrlUtils.AND_MARK)) {
            if (str2 != null) {
                int iIndexOf = str2.indexOf(UrlUtils.EQUAL_MARK);
                try {
                    map.put(URLDecoder.decode(str2.substring(0, iIndexOf), "UTF-8"), URLDecoder.decode(str2.substring(iIndexOf + 1), "UTF-8"));
                } catch (Exception e10) {
                    b4.b().e(Log.getStackTraceString(e10));
                }
            }
        }
        return e(map);
    }

    public String i(String str, String str2, String str3, String str4, String str5, long j10) {
        String strD = d(str, str2, str3, str4, str5, j10);
        v1 v1Var = this.f21829a;
        return v1Var != null ? v1Var.a(SignAlgorithm.HmacMD5, strD) : "";
    }
}
