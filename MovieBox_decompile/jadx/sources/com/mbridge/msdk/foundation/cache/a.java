package com.mbridge.msdk.foundation.cache;

import android.text.TextUtils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.kernel.framework.FrameworkConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.j;
import com.mbridge.msdk.foundation.same.report.metrics.e;
import com.mbridge.msdk.foundation.tools.i0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.z0;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a {

    private static String f34130e = "BaseCandidateCache";

    public static int f34131f = 4;

    protected com.mbridge.msdk.foundation.db.c f34132a;

    private JSONArray f34133b;

    private JSONObject f34134c;

    private String f34135d;

    class C0454a implements Comparator<b> {
        C0454a() {
        }

        @Override
        public int compare(b bVar, b bVar2) {
            return Double.compare(bVar.f34138b, bVar2.f34138b);
        }
    }

    public static class b {

        private com.mbridge.msdk.foundation.cache.b f34137a;

        private double f34138b;

        public b(double d10, com.mbridge.msdk.foundation.cache.b bVar) {
            this.f34138b = d10;
            this.f34137a = bVar;
        }

        public com.mbridge.msdk.foundation.cache.b a() {
            return this.f34137a;
        }
    }

    public void a(int i10) {
        com.mbridge.msdk.foundation.db.c cVar = this.f34132a;
        if (cVar != null) {
            cVar.a(this.f34135d, i10);
            a(f34131f, 1, null, true, "", "", i10, this.f34135d);
        }
    }

    public double b(String str) {
        c cVarA = a(str);
        if (cVarA != null && cVarA.g() != c.f34151k && cVarA.g() != c.f34149i) {
            try {
                String[] strArrSplit = i0.a(str.split("_")[3]).split("\\|");
                if (strArrSplit.length > 0) {
                    return Double.parseDouble(strArrSplit[0]);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return -1.0d;
    }

    public JSONObject c(String str) {
        JSONArray jSONArray = this.f34133b;
        if (jSONArray == null) {
            return null;
        }
        if (jSONArray.length() <= 1) {
            return this.f34133b.optJSONObject(0);
        }
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        for (int i10 = 0; i10 < this.f34133b.length(); i10++) {
            try {
                JSONObject jSONObjectOptJSONObject = this.f34133b.optJSONObject(i10);
                if (jSONObjectOptJSONObject != null && str.equals(jSONObjectOptJSONObject.getString("g"))) {
                    this.f34134c = jSONObjectOptJSONObject;
                    return jSONObjectOptJSONObject;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public String d(String str) {
        c cVarA = a(str);
        if (cVarA != null && cVarA.g() != c.f34151k && cVarA.g() != c.f34149i) {
            String[] strArrSplit = i0.a(str.split("_")[3]).split("\\|");
            if (strArrSplit.length > 1) {
                return strArrSplit[1];
            }
        }
        return "";
    }

    public void e(String str) {
        this.f34135d = str;
    }

    public c a(String str) {
        c cVar = new c();
        if (!TextUtils.isEmpty(str) && str.split("_").length > 3 && !TextUtils.isEmpty(str.split("_")[3])) {
            JSONArray jSONArray = this.f34133b;
            if (jSONArray != null && jSONArray.length() != 0) {
                String strA = i0.a(str.split("_")[3]);
                if (TextUtils.isEmpty(strA)) {
                    cVar.d("bid token exception:decode error");
                    cVar.a(c.f34149i);
                    return cVar;
                }
                String[] strArrSplit = strA.split("\\|");
                if (strArrSplit.length == 0) {
                    cVar.d("bid token can not get bid price");
                    cVar.a(c.f34149i);
                    return cVar;
                }
                if (strArrSplit.length > 0) {
                    try {
                        Double.parseDouble(strArrSplit[0]);
                    } catch (Exception unused) {
                        cVar.d("bid token can not cast bid price");
                        cVar.a(c.f34149i);
                        return cVar;
                    }
                }
                if (TextUtils.isEmpty(this.f34135d)) {
                    cVar.d("unitId is empty");
                    cVar.a(c.f34151k);
                }
                return cVar;
            }
            cVar.d("config is empty");
            cVar.a(c.f34149i);
            return cVar;
        }
        cVar.d("bid token exception");
        cVar.a(c.f34149i);
        return cVar;
    }

    private List<Map<Integer, String>> b(List<Map<Integer, String>> list, int i10, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            Map<Integer, String> map = list.get(i11);
            if (map != null && map.size() > 0) {
                for (Map.Entry<Integer, String> entry : map.entrySet()) {
                    map.put(entry.getKey(), a(entry.getValue(), i10, str, str2));
                }
                arrayList.add(map);
            }
        }
        return arrayList;
    }

    public void a(JSONArray jSONArray) {
        this.f34133b = jSONArray;
    }

    public void a(List<CampaignEx> list, com.mbridge.msdk.foundation.same.report.metrics.c cVar, String str, int i10, String str2, int i11, double d10) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    for (int i12 = 0; i12 < list.size(); i12++) {
                        CampaignEx campaignEx = list.get(i12);
                        campaignEx.setReadyState(0);
                        if (cVar != null) {
                            campaignEx.setNLRid(cVar.o());
                        }
                        campaignEx.setNRid(str);
                        campaignEx.setReasond(str2);
                        campaignEx.setTyped(i10);
                        String strB = i0.b(d10 + "");
                        campaignEx.setNoticeUrl(a(campaignEx.getNoticeUrl(), i11, str, strB));
                        campaignEx.setClickURL(a(campaignEx.getClickURL(), i11, str, strB));
                        campaignEx.setImpressionURL(a(campaignEx.getImpressionURL(), i11, str, strB));
                        campaignEx.setOnlyImpressionURL(a(campaignEx.getOnlyImpressionURL(), i11, str, strB));
                        campaignEx.setAdvImp(a(campaignEx.getAdvImpList(), i11, str, strB));
                        j nativeVideoTracking = campaignEx.getNativeVideoTracking();
                        if (nativeVideoTracking != null) {
                            nativeVideoTracking.d(a(nativeVideoTracking.d(), i11, str, strB));
                            nativeVideoTracking.c(a(nativeVideoTracking.c(), i11, str, strB));
                            nativeVideoTracking.k(a(nativeVideoTracking.k(), i11, str, strB));
                            nativeVideoTracking.s(a(nativeVideoTracking.t(), i11, str, strB));
                            nativeVideoTracking.a(a(nativeVideoTracking.a(), i11, str, strB));
                            nativeVideoTracking.b(a(nativeVideoTracking.b(), i11, str, strB));
                            nativeVideoTracking.e(a(nativeVideoTracking.e(), i11, str, strB));
                            nativeVideoTracking.t(a(nativeVideoTracking.u(), i11, str, strB));
                            nativeVideoTracking.u(a(nativeVideoTracking.u(), i11, str, strB));
                            nativeVideoTracking.v(a(nativeVideoTracking.w(), i11, str, strB));
                            nativeVideoTracking.f(a(nativeVideoTracking.f(), i11, str, strB));
                            nativeVideoTracking.g(a(nativeVideoTracking.g(), i11, str, strB));
                            nativeVideoTracking.h(a(nativeVideoTracking.h(), i11, str, strB));
                            nativeVideoTracking.i(a(nativeVideoTracking.i(), i11, str, strB));
                            nativeVideoTracking.j(a(nativeVideoTracking.j(), i11, str, strB));
                            nativeVideoTracking.l(a(nativeVideoTracking.l(), i11, str, strB));
                            nativeVideoTracking.q(a(nativeVideoTracking.r(), i11, str, strB));
                            nativeVideoTracking.m(a(nativeVideoTracking.m(), i11, str, strB));
                            nativeVideoTracking.r(a(nativeVideoTracking.s(), i11, str, strB));
                            nativeVideoTracking.n(a(nativeVideoTracking.n(), i11, str, strB));
                            nativeVideoTracking.a(b(nativeVideoTracking.o(), i11, str, strB));
                            nativeVideoTracking.p(a(nativeVideoTracking.q(), i11, str, strB));
                            nativeVideoTracking.o(a(nativeVideoTracking.p(), i11, str, strB));
                            campaignEx.setNativeVideoTracking(nativeVideoTracking);
                            campaignEx.setNativeVideoTrackingString(CampaignEx.object2TrackingStr(nativeVideoTracking));
                        }
                        campaignEx.setPv_urls(a(campaignEx.getPv_urls(), i11, str, strB));
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public c a() {
        c cVar = new c();
        try {
            JSONArray jSONArray = this.f34133b;
            if (jSONArray != null && jSONArray.length() != 0) {
                if (this.f34132a == null) {
                    cVar.d("db error");
                    cVar.a(c.f34151k);
                    return cVar;
                }
                return cVar;
            }
            cVar.d("setting config is null");
            cVar.a(c.f34149i);
            return cVar;
        } catch (Exception unused) {
            cVar.d("checkConfigAndDB exception");
            cVar.a(c.f34151k);
        }
    }

    public List<com.mbridge.msdk.foundation.cache.b> a(int i10, long j10) {
        if (i10 >= 0) {
            a(i10);
        }
        com.mbridge.msdk.foundation.db.c cVar = this.f34132a;
        if (cVar != null) {
            return cVar.a(this.f34135d, j10);
        }
        return null;
    }

    public void a(List<b> list, int i10) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    Collections.sort(list, new C0454a());
                    int size = list.size() - i10;
                    if (size > 0) {
                        List<b> listSubList = list.subList(0, size);
                        if (this.f34132a == null || listSubList.size() <= 0) {
                            return;
                        }
                        for (int i11 = 0; i11 < listSubList.size(); i11++) {
                            com.mbridge.msdk.foundation.cache.b bVar = listSubList.get(i11).f34137a;
                            this.f34132a.a(this.f34135d, bVar.e(), bVar.d());
                            a(f34131f, 1, null, true, bVar.e(), bVar.d(), -1, this.f34135d);
                        }
                    }
                }
            } catch (Exception e10) {
                o0.a(f34130e, e10);
            }
        }
    }

    private String a(String str, int i10, String str2, String str3) {
        if (TextUtils.isEmpty(str) || str.contains("ca_sce") || str.contains("real_rid") || str.contains("real_bp")) {
            return str;
        }
        if (z0.c(str) > 0) {
            return str + "&ca_sce=" + i10 + "&real_rid=" + str2 + "&real_bp=" + str3;
        }
        return str + "?ca_sce=" + i10 + "&real_rid=" + str2 + "&real_bp=" + str3;
    }

    private String a(Map<Integer, String> map, int i10, String str, String str2) {
        if (map == null || map.size() == 0) {
            return null;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Map.Entry<Integer, String> entry : map.entrySet()) {
                String value = entry.getValue();
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CampaignEx.JSON_AD_IMP_KEY, entry.getKey());
                jSONObject.put("url", a(value, i10, str, str2));
                jSONArray.put(jSONObject);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (jSONArray.length() == 0) {
            return null;
        }
        return jSONArray.toString();
    }

    private String[] a(String[] strArr, int i10, String str, String str2) {
        if (strArr == null || strArr.length == 0) {
            return strArr;
        }
        String[] strArr2 = new String[strArr.length];
        for (int i11 = 0; i11 < strArr.length; i11++) {
            strArr2[i11] = a(strArr[i11], i10, str, str2);
        }
        return strArr2;
    }

    private List<String> a(List<String> list, int i10, String str, String str2) {
        if (list == null || list.size() == 0) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            arrayList.add(a(list.get(i11), i10, str, str2));
        }
        return arrayList;
    }

    public long a(List<CampaignEx> list, String str) {
        if (list == null || list.size() == 0) {
            return 0L;
        }
        String ecppv = list.get(0).getEcppv();
        if (TextUtils.isEmpty(ecppv)) {
            return 0L;
        }
        String strA = i0.a(ecppv);
        if (TextUtils.isEmpty(strA)) {
            return 0L;
        }
        try {
            if (Double.parseDouble(strA) <= 0.0d) {
                return 0L;
            }
            JSONObject jSONObjectC = c(d(str));
            int iOptInt = jSONObjectC != null ? jSONObjectC.optInt("max_cache_num", 20) : 20;
            com.mbridge.msdk.foundation.db.c cVar = this.f34132a;
            if (cVar == null || iOptInt <= 0) {
                return -1L;
            }
            return cVar.a(list, this.f34135d);
        } catch (Exception e10) {
            e10.printStackTrace();
            return -1L;
        }
    }

    public void a(String str, String str2, int i10, String str3) {
        try {
            if (this.f34132a == null || TextUtils.isEmpty(str3)) {
                return;
            }
            if (i10 == 1) {
                this.f34132a.a(str2, str, this.f34135d, i10);
                a(f34131f, 3, null, true, str2, str, -1, this.f34135d);
            } else if (i10 == 2) {
                this.f34132a.a(this.f34135d, str2, str);
                a(f34131f, 1, null, true, str2, str, -1, this.f34135d);
            } else if (i10 == 3) {
                this.f34132a.b(str2, str, this.f34135d);
                a(f34131f, 4, null, true, str2, str, -1, this.f34135d);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(int i10, int i11, List<CampaignEx> list, boolean z10, String str, String str2, int i12, String str3) {
        String currentLocalRid;
        com.mbridge.msdk.foundation.db.c cVar;
        JSONArray jSONArray;
        e eVar = new e();
        try {
            eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, i11 + "");
            eVar.a("result", z10 ? "1" : "2");
            eVar.a("max_usage_limit", i12 + "");
            eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, str3 + "");
            eVar.a(FrameworkConstants.GLOBAL_DATA_KEY_SCENE, "db");
            JSONObject jSONObject = this.f34134c;
            if (jSONObject != null) {
                eVar.a(XLogUtil.TAG, jSONObject.toString());
            }
            if (i11 == 1 && TextUtils.isEmpty(str2) && (cVar = this.f34132a) != null) {
                try {
                    List<com.mbridge.msdk.foundation.cache.b> listA = cVar.a(str3, -1, -1L);
                    JSONArray jSONArray2 = new JSONArray();
                    if (listA != null && listA.size() > 0) {
                        int i13 = 0;
                        while (i13 < listA.size()) {
                            com.mbridge.msdk.foundation.cache.b bVar = listA.get(i13);
                            if (bVar != null) {
                                JSONObject jSONObject2 = new JSONObject();
                                jSONObject2.put("rid", bVar.e());
                                jSONObject2.put("ts", bVar.h());
                                jSONObject2.put("lrid", bVar.d());
                                jSONObject2.put("ecppv", i0.b(bVar.b() + ""));
                                jSONObject2.put("state", bVar.g());
                                jSONObject2.put("showCount", bVar.f());
                                jSONObject2.put("interval_ts", bVar.c());
                                jSONArray = jSONArray2;
                                jSONArray.put(jSONObject2);
                            } else {
                                jSONArray = jSONArray2;
                            }
                            i13++;
                            jSONArray2 = jSONArray;
                        }
                    }
                    eVar.a("cache", jSONArray2.toString());
                } catch (JSONException e10) {
                    e10.printStackTrace();
                }
            }
            com.mbridge.msdk.foundation.same.report.metrics.c cVar2 = null;
            if (list == null || list.size() <= 0) {
                currentLocalRid = str2;
            } else {
                try {
                    JSONArray jSONArray3 = new JSONArray();
                    CampaignEx campaignEx = list.get(0);
                    if (campaignEx != null) {
                        currentLocalRid = campaignEx.getCurrentLocalRid();
                        try {
                            cVar2 = com.mbridge.msdk.foundation.same.report.metrics.d.b().a(currentLocalRid);
                        } catch (JSONException e11) {
                            e = e11;
                            e.printStackTrace();
                        }
                    } else {
                        currentLocalRid = str2;
                    }
                    for (int i14 = 0; i14 < list.size(); i14++) {
                        CampaignEx campaignEx2 = list.get(i14);
                        if (campaignEx2 != null) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("rid", campaignEx2.getRequestId());
                            jSONObject3.put("rid_n", campaignEx2.getRequestIdNotice());
                            jSONArray3.put(jSONObject3);
                        }
                    }
                    eVar.a("c_info", jSONArray3.toString());
                } catch (JSONException e12) {
                    e = e12;
                    currentLocalRid = str2;
                }
            }
            eVar.a("rid", str);
            eVar.a("lrid", currentLocalRid);
            if (cVar2 == null) {
                cVar2 = new com.mbridge.msdk.foundation.same.report.metrics.c();
            }
            cVar2.m(str3);
            cVar2.a("m_candidate_db", eVar);
            com.mbridge.msdk.foundation.same.report.metrics.d.b().a("m_candidate_db", cVar2);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }
}
