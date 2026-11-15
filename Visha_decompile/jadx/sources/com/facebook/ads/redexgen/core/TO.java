package com.facebook.ads.redexgen.core;

import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class TO {
    public static byte[] A00;

    static {
        A03();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 65);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A03() {
        A00 = new byte[]{-74, -72, -85, -84, -59, -71, -86, -79, -59, -87, -89, -87, -82, -85, -35, -33, -46, -45, -20, -32, -47, -40, -20, -38, -50, -37, -50, -44, -46, -47, -20, -48, -50, -48, -43, -46, -54, -56, -54, -49, -52, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -31, -12, -27, -33, -13, -27, -12, 33, 52, 44, 37, 46, 33, 47, 27, 37, 42, -40, -61, -50, -41, -57};
    }

    public static String A01(C1609cu c1609cu) {
        return AbstractC1307Ve.A00(c1609cu).getString(A00(0, 14, 37), null);
    }

    public static Map<String, String> A02(C1609cu c1609cu) {
        String sdkCache = AbstractC1307Ve.A00(c1609cu).getString(A00(14, 22, 76), null);
        if (sdkCache == null) {
            return null;
        }
        try {
            JSONObject jSONObject = new JSONObject(sdkCache);
            HashSet hashSet = new HashSet();
            HashMap map = new HashMap();
            Iterator<String> itKeys = jSONObject.keys();
            while (itKeys.hasNext()) {
                String next = itKeys.next();
                JSONObject jSONObject2 = jSONObject.getJSONObject(next);
                if (jSONObject2.getLong(A00(41, 8, 63)) + ((long) (jSONObject2.getInt(A00(49, 10, 123)) * 1000)) < System.currentTimeMillis()) {
                    hashSet.add(next);
                } else {
                    map.put(next, jSONObject2.getString(A00(59, 5, 33)));
                }
            }
            if (!hashSet.isEmpty()) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    jSONObject.remove((String) it.next());
                }
                A06(c1609cu, jSONObject);
            }
            return map;
        } catch (JSONException e) {
            c1609cu.A08().AAy(A00(36, 5, 38), AbstractC1248Sv.A2U, new C1249Sw(e));
            return null;
        }
    }

    public static void A04(C1609cu c1609cu, String str) {
        AbstractC1307Ve.A00(c1609cu).edit().putString(A00(0, 14, 37), str).apply();
    }

    public static void A05(C1609cu c1609cu, String str) {
        if (str == null) {
            return;
        }
        String sdkCache = AbstractC1307Ve.A00(c1609cu).getString(A00(14, 22, 76), null);
        try {
            JSONObject jSONObject = sdkCache == null ? new JSONObject() : new JSONObject(sdkCache);
            JSONObject jSONObject2 = new JSONObject(str);
            Iterator<String> itKeys = jSONObject2.keys();
            while (itKeys.hasNext()) {
                String key = itKeys.next();
                JSONObject jSONObject3 = jSONObject2.getJSONObject(key);
                jSONObject3.put(A00(41, 8, 63), System.currentTimeMillis());
                jSONObject.put(key, jSONObject3);
            }
            A06(c1609cu, jSONObject);
        } catch (JSONException e) {
            c1609cu.A08().AAy(A00(36, 5, 38), AbstractC1248Sv.A2V, new C1249Sw(e));
        }
    }

    public static void A06(C1609cu c1609cu, JSONObject jSONObject) {
        AbstractC1307Ve.A00(c1609cu).edit().putString(A00(14, 22, 76), jSONObject.toString()).apply();
    }
}
