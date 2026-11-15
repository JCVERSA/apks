package com.mbridge.msdk.videocommon.setting;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class a {

    private Map<String, Integer> f39137a;

    private Map<String, com.mbridge.msdk.videocommon.entity.c> f39138b;

    private long f39139c;

    private long f39140d;

    private long f39141e;

    private long f39142f;

    private long f39143g;

    private long f39144h;

    private String f39146j;

    private int f39145i = 0;

    private String f39147k = "";

    private String f39148l = "";

    public String a() {
        return this.f39146j;
    }

    public void b(String str) {
        this.f39146j = str;
    }

    public void c(String str) {
        this.f39148l = str;
    }

    public void d(String str) {
        this.f39147k = str;
    }

    public void e(long j10) {
        this.f39140d = j10;
    }

    public String f() {
        return this.f39148l;
    }

    public Map<String, com.mbridge.msdk.videocommon.entity.c> g() {
        return this.f39138b;
    }

    public long h() {
        return this.f39140d * 1000;
    }

    public long i() {
        return this.f39143g;
    }

    public String j() {
        return this.f39147k;
    }

    public JSONObject k() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map<String, Integer> map = this.f39137a;
            if (map != null && map.size() > 0) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    for (Map.Entry<String, Integer> entry : this.f39137a.entrySet()) {
                        jSONObject2.put(entry.getKey(), entry.getValue().intValue());
                    }
                    jSONObject.put("caplist", jSONObject2);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            Map<String, com.mbridge.msdk.videocommon.entity.c> map2 = this.f39138b;
            if (map2 != null && map2.size() > 0) {
                try {
                    JSONArray jSONArray = new JSONArray();
                    for (Map.Entry<String, com.mbridge.msdk.videocommon.entity.c> entry2 : this.f39138b.entrySet()) {
                        JSONObject jSONObject3 = new JSONObject();
                        String key = entry2.getKey();
                        com.mbridge.msdk.videocommon.entity.c value = entry2.getValue();
                        if (value != null) {
                            jSONObject3.put("name", value.c());
                            jSONObject3.put(RewardPlus.AMOUNT, value.a());
                            jSONObject3.put("id", key);
                        }
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put("reward", jSONArray);
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            jSONObject.put("getpf", this.f39139c);
            jSONObject.put("ruct", this.f39140d);
            jSONObject.put(CampaignEx.JSON_KEY_PLCT, this.f39141e);
            jSONObject.put("dlct", this.f39142f);
            jSONObject.put("vcct", this.f39143g);
            jSONObject.put("current_time", this.f39144h);
            jSONObject.put("vtag", this.f39147k);
            jSONObject.put("isDefault", this.f39145i);
            return jSONObject;
        } catch (Exception e12) {
            e12.printStackTrace();
            return jSONObject;
        }
    }

    public void a(long j10) {
        this.f39144h = j10;
    }

    public void b(long j10) {
        this.f39142f = j10;
    }

    public void c(long j10) {
        this.f39139c = j10;
    }

    public long d() {
        return this.f39139c * 1000;
    }

    public long e() {
        return this.f39141e * 1000;
    }

    public void f(long j10) {
        this.f39143g = j10;
    }

    public void a(Map<String, Integer> map) {
        this.f39137a = map;
    }

    public long b() {
        return this.f39144h;
    }

    public long c() {
        return this.f39142f;
    }

    public void d(long j10) {
        this.f39141e = j10;
    }

    public void a(int i10) {
        this.f39145i = i10;
    }

    public void b(Map<String, com.mbridge.msdk.videocommon.entity.c> map) {
        this.f39138b = map;
    }

    public static a a(String str) {
        a aVar = null;
        if (!TextUtils.isEmpty(str)) {
            try {
                a aVar2 = new a();
                try {
                    JSONObject jSONObject = new JSONObject(str);
                    JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("caplist");
                    aVar2.b(jSONObject.optString("ab_id", ""));
                    aVar2.c(jSONObject.optString("rid", ""));
                    if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.length() > 0) {
                        HashMap map = new HashMap();
                        Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                        while (itKeys != null && itKeys.hasNext()) {
                            String next = itKeys.next();
                            int iOptInt = jSONObjectOptJSONObject.optInt(next, 1000);
                            if (!TextUtils.isEmpty(next)) {
                                if (!TextUtils.isEmpty(next) && iOptInt == 0) {
                                    map.put(next, 1000);
                                } else {
                                    map.put(next, Integer.valueOf(iOptInt));
                                }
                            }
                        }
                        aVar2.a(map);
                    }
                    aVar2.b(com.mbridge.msdk.videocommon.entity.c.a(jSONObject.optJSONArray("reward")));
                    aVar2.c(jSONObject.optLong("getpf", 43200L));
                    aVar2.e(jSONObject.optLong("ruct", 5400L));
                    aVar2.d(jSONObject.optLong(CampaignEx.JSON_KEY_PLCT, 3600L));
                    aVar2.b(jSONObject.optLong("dlct", 3600L));
                    aVar2.f(jSONObject.optLong("vcct", 5L));
                    aVar2.a(jSONObject.optLong("current_time"));
                    aVar2.d(jSONObject.optString("vtag", ""));
                    return aVar2;
                } catch (Exception e10) {
                    e = e10;
                    aVar = aVar2;
                    e.printStackTrace();
                    return aVar;
                }
            } catch (Exception e11) {
                e = e11;
            }
        }
        return aVar;
    }
}
