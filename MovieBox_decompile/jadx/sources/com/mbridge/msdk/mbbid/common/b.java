package com.mbridge.msdk.mbbid.common;

import android.content.Context;
import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.same.DomainNameUtils;
import com.mbridge.msdk.foundation.same.report.metrics.d;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.foundation.tools.e0;
import com.mbridge.msdk.foundation.tools.f;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.j0;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.r0;
import com.mbridge.msdk.foundation.tools.t0;
import com.mbridge.msdk.foundation.tools.v0;
import com.mbridge.msdk.mbbid.out.BidConstants;
import com.mbridge.msdk.out.MBConfiguration;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import org.json.JSONArray;
import org.json.JSONObject;

public class b extends a {

    public static Map<String, String> f35365a = new HashMap();

    public static JSONArray f35366b;

    public static String a(Context context, String str) {
        HashMap map = new HashMap();
        map.put(BidConstants.BID_FILTER_KEY_UNIT_ID, str);
        return a(context, map);
    }

    public static boolean b(Context context, String str) {
        int i10;
        int i11;
        int i12;
        int i13;
        JSONArray jSONArray = f35366b;
        int i14 = 2;
        if (jSONArray == null || jSONArray.length() == 0) {
            a(str, 2);
            return false;
        }
        JSONObject jSONObject = new JSONObject();
        int i15 = 0;
        while (true) {
            try {
                if (i15 >= f35366b.length()) {
                    i11 = 0;
                    i10 = 0;
                    break;
                }
                JSONObject jSONObjectOptJSONObject = f35366b.optJSONObject(i15);
                if (jSONObjectOptJSONObject != null) {
                    String strOptString = jSONObjectOptJSONObject.optString("key_tpl");
                    String strOptString2 = jSONObjectOptJSONObject.optString("key_value");
                    long jLongValue = ((Long) v0.a(context, strOptString2, 0L)).longValue();
                    if (a(strOptString, strOptString2)) {
                        try {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            try {
                                if (jLongValue <= 0 || jCurrentTimeMillis - jLongValue >= ((long) jSONObjectOptJSONObject.optInt("ttl")) * 1000) {
                                    a(context, strOptString2, jCurrentTimeMillis);
                                    i11 = 0;
                                    i13 = 1;
                                } else {
                                    try {
                                        double dOptDouble = jSONObjectOptJSONObject.optDouble("rate");
                                        i11 = (dOptDouble == 0.0d || dOptDouble * 100.0d < ((double) new Random().nextInt(100))) ? 2 : 1;
                                        i14 = i11;
                                        i13 = 2;
                                    } catch (Exception e10) {
                                        e = e10;
                                        i12 = 2;
                                        i10 = i12;
                                        jSONObject = jSONObjectOptJSONObject;
                                        if (MBridgeConstans.DEBUG) {
                                            o0.b("BidCommon", e.getMessage());
                                        }
                                        i11 = 0;
                                    }
                                }
                                i10 = i13;
                                jSONObject = jSONObjectOptJSONObject;
                                break;
                            } catch (Exception e11) {
                                e = e11;
                                i12 = 1;
                            }
                        } catch (Exception e12) {
                            e = e12;
                            i12 = 0;
                        }
                    }
                }
                i15++;
            } catch (Exception e13) {
                e = e13;
                i10 = 0;
            }
        }
        a(i14, jSONObject, i10, i11);
        a(str, i14);
        return i14 == 1;
    }

    public static String a(Context context, Map<String, String> map) {
        String md5;
        String str;
        f35365a = map;
        try {
            if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                com.mbridge.msdk.foundation.controller.c.m().b(context);
            }
            if (f35366b == null) {
                f35366b = h.b().b(com.mbridge.msdk.foundation.controller.c.m().b()).i0();
            }
            md5 = SameMD5.getMD5(t0.d());
            try {
                if (b(context, md5)) {
                    return "";
                }
                Map<String, String> map2 = f35365a;
                if (map2 == null || !map2.containsKey(BidConstants.BID_FILTER_KEY_UNIT_ID)) {
                    str = "";
                } else {
                    str = f35365a.get(BidConstants.BID_FILTER_KEY_UNIT_ID);
                }
                return a(context, str, md5);
            } catch (Exception unused) {
                return a(context, "", md5);
            }
        } catch (Exception unused2) {
            md5 = "";
        }
    }

    public static String a(Context context, String str, String str2) {
        long jA;
        StringBuffer stringBuffer = new StringBuffer();
        if (context != null) {
            try {
                if (com.mbridge.msdk.foundation.controller.c.m().d() == null) {
                    com.mbridge.msdk.foundation.controller.c.m().b(context);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    o0.b("BidCommon", e10.getMessage());
                }
            }
        }
        g gVarD = h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        if (gVarD == null) {
            gVarD = h.b().a();
        }
        stringBuffer.append(f.d());
        stringBuffer.append("|");
        stringBuffer.append(a.a(1, gVarD, context));
        stringBuffer.append("|");
        stringBuffer.append(a.a(2, gVarD, context));
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append(k0.s());
        stringBuffer.append("|");
        stringBuffer.append(k0.t());
        stringBuffer.append("|");
        stringBuffer.append(k0.s(context));
        stringBuffer.append("|");
        stringBuffer.append(MBConfiguration.SDK_VERSION);
        stringBuffer.append("|");
        stringBuffer.append(k0.n(context));
        stringBuffer.append("x");
        stringBuffer.append(k0.m(context));
        stringBuffer.append("|");
        stringBuffer.append(k0.i());
        stringBuffer.append("|");
        stringBuffer.append(a.a(3, gVarD, context));
        stringBuffer.append("|");
        stringBuffer.append(t0.b(20));
        stringBuffer.append("|");
        stringBuffer.append(System.currentTimeMillis());
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.same.a.f34500d);
        stringBuffer.append("|");
        stringBuffer.append(k0.v());
        stringBuffer.append("|");
        stringBuffer.append(k0.h());
        stringBuffer.append("|");
        stringBuffer.append(a.a(4, gVarD, context));
        stringBuffer.append("|");
        stringBuffer.append(a.a(5, gVarD, context));
        stringBuffer.append("|");
        stringBuffer.append(a.a(6, gVarD, context));
        stringBuffer.append("|");
        stringBuffer.append(r0.c());
        stringBuffer.append("|");
        stringBuffer.append(r0.a());
        stringBuffer.append("|");
        try {
            jA = j0.a();
        } catch (Exception unused) {
            jA = 0;
        }
        if (jA > 0) {
            stringBuffer.append(jA);
            stringBuffer.append("|");
        } else {
            stringBuffer.append("");
            stringBuffer.append("|");
        }
        stringBuffer.append("|");
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a(DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B));
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.buffer.sharedperference.a.b().a("c"));
        stringBuffer.append("|");
        stringBuffer.append(k0.j());
        String strA = gVarD != null ? gVarD.a() : "";
        stringBuffer.append("|");
        stringBuffer.append(strA);
        stringBuffer.append("|");
        stringBuffer.append(t0.a());
        stringBuffer.append("|");
        String strC = t0.c();
        if (TextUtils.isEmpty(strC)) {
            strC = "";
        }
        stringBuffer.append(strC);
        stringBuffer.append("|");
        stringBuffer.append(t0.c(str));
        stringBuffer.append("|");
        if (gVarD != null && gVarD.s0() == 1 && com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
            stringBuffer.append(a.a(7, gVarD, context));
        }
        stringBuffer.append("|");
        stringBuffer.append(k0.D());
        stringBuffer.append("|");
        stringBuffer.append(k0.D(context));
        stringBuffer.append("|");
        stringBuffer.append(k0.B() + "");
        stringBuffer.append("|");
        stringBuffer.append(k0.e(com.mbridge.msdk.foundation.controller.c.m().i()) + "");
        stringBuffer.append("|");
        stringBuffer.append(k0.C());
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.controller.authoritycontroller.b.i() ? "1" : "2");
        stringBuffer.append("|");
        if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
            stringBuffer.append(a.a(8, gVarD, context));
        }
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append("1");
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c());
        stringBuffer.append("|");
        if (k0.y() != 0) {
            stringBuffer.append(k0.y() + "");
        }
        if (DomainNameUtils.getInstance().isExcludeCNDomain()) {
            stringBuffer.append("|");
            stringBuffer.append(1);
        } else {
            stringBuffer.append("|");
            stringBuffer.append("");
        }
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append(str2);
        stringBuffer.append("|");
        stringBuffer.append(k0.r(context));
        stringBuffer.append("|");
        stringBuffer.append(k0.q(context));
        stringBuffer.append("|");
        stringBuffer.append(f.e());
        stringBuffer.append("|");
        stringBuffer.append(f.a());
        stringBuffer.append("|");
        stringBuffer.append(com.mbridge.msdk.util.c.f37931b);
        stringBuffer.append("|");
        stringBuffer.append("");
        stringBuffer.append("|");
        stringBuffer.append(e0.a().b());
        stringBuffer.append("|");
        stringBuffer.append(k0.k(context));
        stringBuffer.append("|");
        stringBuffer.append(k0.u(context));
        stringBuffer.append("|");
        stringBuffer.append(k0.o(context));
        return i0.b(stringBuffer.toString());
    }

    public static void a(Context context, String str, long j10) {
        v0.b(context, str, Long.valueOf(j10));
    }

    public static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        if (str.equals(str2)) {
            return true;
        }
        for (String str3 : str.split("-")) {
            if (!TextUtils.isEmpty(str3) && str3.length() > 2 && str3.startsWith("{") && str3.endsWith("}")) {
                String strSubstring = str3.substring(1, str3.length() - 1);
                Map<String, String> map = f35365a;
                if (map != null && map.containsKey(strSubstring)) {
                    String strValueOf = String.valueOf(f35365a.get(strSubstring));
                    if (!TextUtils.isEmpty(strValueOf)) {
                        str = str.replace(str3, strValueOf + "");
                    }
                } else if (BidConstants.BID_FILTER_KEY_NETWORK.equals(str3)) {
                    str = str.replace(str3, k0.s(com.mbridge.msdk.foundation.controller.c.m().d()) + "");
                }
            }
        }
        return str.equals(str2);
    }

    private static void a(int i10, JSONObject jSONObject, int i11, int i12) {
        try {
            Context contextD = com.mbridge.msdk.foundation.controller.c.m().d();
            if (contextD != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("key", "2000122");
                jSONObject2.put("filter", i10);
                jSONObject2.put("network_type", k0.s(contextD));
                jSONObject2.put("timeout", i11);
                if (jSONObject != null && jSONObject.length() > 0) {
                    jSONObject2.put("hitNode", jSONObject);
                }
                jSONObject2.put("hitRate", i12);
                Map<String, String> map = f35365a;
                if (map != null) {
                    if (map.containsKey(BidConstants.BID_FILTER_KEY_UNIT_ID)) {
                        jSONObject2.put(MBridgeConstans.PROPERTIES_UNIT_ID, f35365a.get(BidConstants.BID_FILTER_KEY_UNIT_ID));
                    }
                    if (f35365a.containsKey(BidConstants.BID_FILTER_KEY_PLACEMENT_ID)) {
                        jSONObject2.put("placementId", f35365a.get(BidConstants.BID_FILTER_KEY_PLACEMENT_ID));
                    }
                    if (f35365a.containsKey(BidConstants.BID_FILTER_KEY_AD_TYPE)) {
                        jSONObject2.put("adType", f35365a.get(BidConstants.BID_FILTER_KEY_AD_TYPE));
                    }
                }
                d.b().a(jSONObject2);
            }
        } catch (Throwable th2) {
            o0.b("BidCommon", th2.getMessage());
        }
    }

    private static void a(String str, int i10) {
        e eVar = new e();
        eVar.a("filter", Integer.valueOf(i10));
        eVar.a("lrid", str);
        d.b().b("2000124", eVar);
    }
}
