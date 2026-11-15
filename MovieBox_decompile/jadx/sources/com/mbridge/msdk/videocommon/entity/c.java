package com.mbridge.msdk.videocommon.entity;

import android.text.TextUtils;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class c {

    private String f39127a;

    private int f39128b;

    public c(String str, int i10) {
        this.f39127a = str;
        this.f39128b = i10;
    }

    public int a() {
        return this.f39128b;
    }

    public void b(String str) {
        this.f39127a = str;
    }

    public String c() {
        return this.f39127a;
    }

    public String toString() {
        return "Reward{name='" + this.f39127a + "', amount=" + this.f39128b + '}';
    }

    public static c b() {
        return new c("Virtual Item", 1);
    }

    public void a(int i10) {
        this.f39128b = i10;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x002c A[Catch: Exception -> 0x0015, TRY_LEAVE, TryCatch #0 {Exception -> 0x0015, blocks: (B:3:0x0001, B:5:0x000f, B:14:0x002c, B:10:0x0019, B:12:0x001f), top: B:18:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public static c a(String str) {
        c cVarB;
        c cVar = null;
        try {
            com.mbridge.msdk.videocommon.setting.a aVarC = com.mbridge.msdk.videocommon.setting.b.b().c();
            if (TextUtils.isEmpty(str)) {
                cVarB = b();
            } else {
                if (aVarC != null && aVarC.g() != null) {
                    cVarB = aVarC.g().get(str);
                }
                if (cVar == null) {
                    return b();
                }
                return cVar;
            }
            cVar = cVarB;
            if (cVar == null) {
                return b();
            }
            return cVar;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Map<String, c> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                map.put(jSONObjectOptJSONObject.optString("id"), new c(jSONObjectOptJSONObject.optString("name"), jSONObjectOptJSONObject.optInt(RewardPlus.AMOUNT)));
            }
            return map;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static c a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        try {
            String strOptString = jSONObject.optString("name");
            int iOptInt = jSONObject.optInt(RewardPlus.AMOUNT);
            jSONObject.optString("id");
            return new c(strOptString, iOptInt);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
