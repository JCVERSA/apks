package com.mbridge.msdk.foundation.same.report;

import android.text.TextUtils;
import android.util.Log;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.foundation.tools.k0;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class d implements com.mbridge.msdk.tracker.d {
    private static void a(Map<String, String> map, StringBuilder sb2) {
    }

    static String b(JSONObject jSONObject) {
        if (jSONObject == null) {
            return "";
        }
        StringBuilder sb2 = new StringBuilder();
        Iterator<String> itKeys = jSONObject.keys();
        int i10 = 0;
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            i10++;
            if (i10 <= jSONObject.length() - 1) {
                sb2.append(next);
                sb2.append(UrlUtils.EQUAL_MARK);
                sb2.append(a(String.valueOf(jSONObject.opt(next))));
                sb2.append(UrlUtils.AND_MARK);
            } else {
                sb2.append(next);
                sb2.append(UrlUtils.EQUAL_MARK);
                sb2.append(a(String.valueOf(jSONObject.opt(next))));
            }
        }
        return sb2.toString();
    }

    @Override
    public Map<String, String> a(com.mbridge.msdk.tracker.m mVar, List<com.mbridge.msdk.tracker.i> list, JSONObject jSONObject) {
        StringBuilder sbA;
        Map<String, String> mapA;
        if (list != null && !list.isEmpty()) {
            try {
                c.a(jSONObject);
                mapA = a(jSONObject);
                if (mapA == null) {
                    try {
                        mapA = new HashMap();
                    } catch (Exception unused) {
                        sbA = null;
                        a(mapA, sbA);
                        return null;
                    } catch (Throwable unused2) {
                        sbA = null;
                        a(mapA, sbA);
                        return null;
                    }
                }
                sbA = a(list);
                try {
                    mapA.put("tun", String.valueOf(k0.z()));
                    mapA.put("data", sbA.toString());
                    return mapA;
                } catch (Exception unused3) {
                    a(mapA, sbA);
                    return null;
                } catch (Throwable unused4) {
                    a(mapA, sbA);
                    return null;
                }
            } catch (Exception unused5) {
                sbA = null;
                mapA = null;
            } catch (Throwable unused6) {
                sbA = null;
                mapA = null;
            }
        }
        return null;
    }

    static Map<String, String> a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        HashMap map = new HashMap();
        Iterator<String> itKeys = jSONObject.keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            map.put(next, String.valueOf(jSONObject.opt(next)));
        }
        return map;
    }

    private static StringBuilder a(List<com.mbridge.msdk.tracker.i> list) {
        com.mbridge.msdk.tracker.e eVarA;
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < list.size(); i10++) {
            com.mbridge.msdk.tracker.i iVar = list.get(i10);
            if (iVar != null && (eVarA = iVar.a()) != null) {
                JSONObject jSONObjectD = eVarA.d();
                c.a(jSONObjectD);
                if (jSONObjectD == null) {
                    jSONObjectD = new JSONObject();
                }
                try {
                    try {
                        jSONObjectD.put("ts", eVarA.g());
                        jSONObjectD.put("rts", System.currentTimeMillis());
                        String strD = iVar.d();
                        if (!TextUtils.isEmpty(strD)) {
                            jSONObjectD.put("reason_lib", strD);
                        }
                        int iC = iVar.c() - 1;
                        if (iC >= 1) {
                            jSONObjectD.put("retryed", iC);
                        }
                        long jA = eVarA.a();
                        if (jA > 0) {
                            jSONObjectD.put("duration", jA);
                        }
                    } catch (Exception e10) {
                        if (com.mbridge.msdk.tracker.a.f37664a) {
                            Log.e("TrackManager", "decorateRequestParams: ", e10);
                        }
                    }
                    sb2.append(b(jSONObjectD));
                    if (i10 < list.size() - 1) {
                        sb2.append("\n");
                    }
                } catch (Throwable th2) {
                    sb2.append(b(jSONObjectD));
                    throw th2;
                }
            }
        }
        return sb2;
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "utf-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
