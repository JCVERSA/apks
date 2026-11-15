package com.bytedance.adsdk.ugeno.Sj;

import android.text.TextUtils;
import android.util.Pair;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONArray;
import org.json.JSONObject;

public class TKC {
    public static sP.Sj EjP(String str) {
        JSONArray jSONArraySj;
        if (TextUtils.isEmpty(str) || (jSONArraySj = com.bytedance.adsdk.ugeno.Jcg.sP.Sj(str, (JSONArray) null)) == null || jSONArraySj.length() != 2) {
            return null;
        }
        sP.Sj sj2 = new sP.Sj();
        sj2.Sj = jSONArraySj.optString(0);
        sj2.sP = jSONArraySj.optString(1);
        return sj2;
    }

    public static int Sj(int i10) {
        if (i10 < 0) {
            return -1;
        }
        if (i10 == 0) {
            return 1;
        }
        return i10 - 1;
    }

    public static float[] TKC(String str) {
        float[] fArr = {0.0f, 0.0f};
        JSONArray jSONArraySj = com.bytedance.adsdk.ugeno.Jcg.sP.Sj(str, (JSONArray) null);
        if (jSONArraySj != null && jSONArraySj.length() == 2) {
            fArr[0] = (float) jSONArraySj.optDouble(0);
            fArr[1] = (float) jSONArraySj.optDouble(1);
        }
        return fArr;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    public static Interpolator sP(String str) {
        byte b10;
        switch (str) {
            case "ease_in":
                b10 = 0;
                break;
            case "linear":
                b10 = 3;
                break;
            case "ease_out":
                b10 = 2;
                break;
            case "ease_in_out":
                b10 = 1;
                break;
            default:
                b10 = -1;
                break;
        }
        if (b10 == 0) {
            return new AccelerateInterpolator();
        }
        if (b10 != 1) {
            return b10 != 2 ? new LinearInterpolator() : new DecelerateInterpolator();
        }
        return new AccelerateDecelerateInterpolator();
    }

    public static sP Sj(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        sP sPVar = new sP();
        sPVar.sP(jSONObject.optLong("delay"));
        sPVar.Sj(jSONObject.optLong("duration"));
        sPVar.Sj(jSONObject.optInt("playCount", 1));
        sPVar.Sj(jSONObject.optString("playDirection"));
        sPVar.Sj(EjP(jSONObject.optString("transformOrigin")));
        sPVar.sP(jSONObject.optString("timingFunction", "linear"));
        sPVar.Sj(jSONObject.optJSONObject("effect"));
        sPVar.Sj(Sj(jSONObject.optJSONArray("keyframes")));
        return sPVar;
    }

    public static Map<String, TreeMap<Float, String>> Sj(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() <= 0) {
            return null;
        }
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < jSONArray.length(); i10++) {
            JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
            if (jSONObjectOptJSONObject != null) {
                float fOptDouble = (float) jSONObjectOptJSONObject.optDouble("offset");
                Iterator<String> itKeys = jSONObjectOptJSONObject.keys();
                while (itKeys.hasNext()) {
                    String next = itKeys.next();
                    TreeMap treeMap = (TreeMap) map.get(next);
                    if (!TextUtils.equals(next, "offset")) {
                        if (map.containsKey(next) && treeMap != null) {
                            treeMap.put(Float.valueOf(fOptDouble), jSONObjectOptJSONObject.optString(next));
                        } else {
                            TreeMap treeMap2 = new TreeMap();
                            new Pair(Float.valueOf(fOptDouble), jSONObjectOptJSONObject.optString(next));
                            treeMap2.put(Float.valueOf(fOptDouble), jSONObjectOptJSONObject.optString(next));
                            map.put(next, treeMap2);
                        }
                    }
                }
            }
        }
        return map;
    }

    public static int Sj(String str) {
        int iHashCode = str.hashCode();
        if (iHashCode == -1408024454) {
            return str.equals("alternate") ? 2 : 1;
        }
        if (iHashCode != -1039745817) {
            return 1;
        }
        str.equals("normal");
        return 1;
    }

    public static int Sj(String str, int i10) {
        byte b10 = 2;
        int i11 = i10 / 2;
        if (TextUtils.isEmpty(str)) {
            return i11;
        }
        str.hashCode();
        switch (str.hashCode()) {
            case -1383228885:
                b10 = !str.equals(IntegrationConstants.TAB_BAR_POSITION_DEFAULT) ? (byte) -1 : (byte) 0;
                break;
            case -1364013995:
                b10 = !str.equals(TtmlNode.CENTER) ? (byte) -1 : (byte) 1;
                break;
            case 115029:
                if (!str.equals(IntegrationConstants.TAB_BAR_POSITION_TOP)) {
                    b10 = -1;
                }
                break;
            case 3317767:
                b10 = !str.equals(TtmlNode.LEFT) ? (byte) -1 : (byte) 3;
                break;
            case 108511772:
                b10 = !str.equals(TtmlNode.RIGHT) ? (byte) -1 : (byte) 4;
                break;
            default:
                b10 = -1;
                break;
        }
        switch (b10) {
            case 0:
            case 4:
                return i10;
            case 1:
                return i11;
            case 2:
            case 3:
                return 0;
            default:
                if (str.endsWith("%")) {
                    try {
                        return (int) ((i10 * Float.parseFloat(str.substring(0, str.length() - 1))) / 100.0f);
                    } catch (NumberFormatException unused) {
                        return i11;
                    }
                }
                try {
                    return Integer.parseInt(str);
                } catch (NumberFormatException unused2) {
                    return i11;
                }
        }
    }
}
