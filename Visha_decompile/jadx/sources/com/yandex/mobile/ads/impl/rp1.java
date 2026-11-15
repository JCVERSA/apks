package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public final class rp1 {
    public static je a(op1.b bVar, Map map, String str, t4 t4Var) {
        je jeVar;
        y45.j(bVar, "reportType");
        y45.j(map, "reportData");
        try {
            int iOrdinal = bVar.ordinal();
            if (iOrdinal == 0) {
                jeVar = new je(ke.e, c(str, map));
            } else if (iOrdinal == 4) {
                jeVar = new je(ke.d, a(str, map));
            } else if (iOrdinal == 8) {
                jeVar = new je(ke.c, a(map));
            } else if (iOrdinal == 21) {
                jeVar = new je(ke.f, a(map, t4Var, str));
            } else if (iOrdinal == 26) {
                jeVar = new je(ke.g, b(str, map));
            } else {
                if (iOrdinal != 37) {
                    return null;
                }
                jeVar = new je(ke.h, d(str, map));
            }
            return jeVar;
        } catch (Throwable unused) {
            sp0.c(new Object[0]);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    private static JSONObject b(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get(TrackingKey.AD_TYPE);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put(TrackingKey.AD_TYPE, obj);
        Object obj2 = map.get("block_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("block_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = JSONObject.NULL;
            }
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        Object obj4 = map.get("ad_id");
        if (obj4 != null) {
            jSONObject.put("banner_id", obj4);
        }
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    private static JSONObject c(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get(TrackingKey.AD_TYPE);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put(TrackingKey.AD_TYPE, obj);
        Object obj2 = map.get("block_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("block_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = JSONObject.NULL;
            }
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        Object obj4 = map.get("ad_id");
        if (obj4 != null) {
            jSONObject.put("banner_id", obj4);
        }
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    private static JSONObject d(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get(TrackingKey.AD_TYPE);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put(TrackingKey.AD_TYPE, obj);
        Object obj2 = map.get("block_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("block_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = JSONObject.NULL;
            }
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    private static JSONObject a(String str, Map map) throws JSONException {
        Object lowerCase;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get(TrackingKey.AD_TYPE);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put(TrackingKey.AD_TYPE, obj);
        Object obj2 = map.get("block_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("block_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = JSONObject.NULL;
            }
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        return jSONObject;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x003b  */
    private static JSONObject a(Map map, t4 t4Var, String str) throws JSONException {
        Object lowerCase;
        Object objOptString;
        Object objOptString2;
        Object objOptString3;
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get(TrackingKey.AD_TYPE);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put(TrackingKey.AD_TYPE, obj);
        Object obj2 = map.get("block_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("block_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        if (str != null) {
            lowerCase = str.toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
            if (lowerCase == null) {
                lowerCase = JSONObject.NULL;
            }
        } else {
            lowerCase = JSONObject.NULL;
        }
        jSONObject.put("ad_network", lowerCase);
        Object obj4 = map.get("ad_id");
        if (obj4 != null) {
            jSONObject.put("banner_id", obj4);
        }
        JSONObject jSONObject2 = null;
        String strC = t4Var != null ? t4Var.c() : null;
        if (strC != null) {
            try {
                jSONObject2 = new JSONObject(strC);
            } catch (Throwable unused) {
                int i = sp0.b;
                y45.j(new Object[0], "args");
            }
        }
        if (jSONObject2 == null || (objOptString = jSONObject2.optString("revenue")) == null) {
            objOptString = JSONObject.NULL;
        }
        jSONObject.put("ad_revenue", objOptString);
        if (jSONObject2 == null || (objOptString2 = jSONObject2.optString("currency")) == null) {
            objOptString2 = JSONObject.NULL;
        }
        jSONObject.put("currency", objOptString2);
        if (jSONObject2 == null || (objOptString3 = jSONObject2.optString("precision")) == null) {
            objOptString3 = JSONObject.NULL;
        }
        jSONObject.put("precision", objOptString3);
        return jSONObject;
    }

    private static JSONObject a(Map map) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        Object obj = map.get(TrackingKey.AD_TYPE);
        if (obj == null) {
            obj = JSONObject.NULL;
        }
        jSONObject.put(TrackingKey.AD_TYPE, obj);
        Object obj2 = map.get("block_id");
        if (obj2 == null) {
            obj2 = JSONObject.NULL;
        }
        jSONObject.put("block_id", obj2);
        Object obj3 = map.get("sdk_version");
        if (obj3 == null) {
            obj3 = JSONObject.NULL;
        }
        jSONObject.put("sdk_version", obj3);
        return jSONObject;
    }
}
