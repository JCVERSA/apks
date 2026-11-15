package com.facebook.ads.redexgen.core;

import com.facebook.ads.ExtraHints;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.RewardedVideoAd;
import com.transsion.socket.pkgdata.SocketData;
import java.util.Arrays;
import org.json.JSONException;
import org.json.JSONObject;

public final class WR {
    public static byte[] A00;

    static {
        A04();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{-92, -90, -103, -102, -77, -94, -87, -95, -77, -107, -104, -89, -77, -94, -93, -77, -105, -100, -107, -99, -94, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_STRING, -99, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_FILE, SocketData.CLAZZ_TYPE_URI, SocketData.CLAZZ_TYPE_FILE, -119, SocketData.CLAZZ_TYPE_STRING, SocketData.CLAZZ_TYPE_FILE, -68, -49, -53, -55, -72, -74, -69, -72, -53, -72, -15, -14, -9, -3, -4, -60, -59, -60, -71, -66, -73, -65, -60, -69, -70, -75, -73, -70, -55, -8, -6};
    }

    public static int A00(C1635dL c1635dL, int i) {
        return AbstractC1307Ve.A00(c1635dL).getInt(A01(0, 21, 52), i);
    }

    public static String A02(C1635dL c1635dL, String str) {
        int iA00 = A00(c1635dL, -1);
        if (iA00 == -1) {
            return null;
        }
        try {
            return new ExtraHints.Builder().extraData(A03(str, A01(47, 14, 54), Integer.valueOf(iA00))).build().getHints();
        } catch (JSONException unused) {
            return null;
        }
    }

    public static String A03(String str, String str2, Object obj) throws JSONException {
        String strA01 = A01(61, 2, 93);
        if (str != null) {
            JSONObject jSONObject = new JSONObject(str);
            String extraData = A01(42, 5, 105);
            JSONObject jSONObject2 = jSONObject.getJSONObject(extraData);
            String extraData2 = A01(32, 10, 55);
            strA01 = jSONObject2.optString(extraData2, strA01);
        }
        JSONObject jSONObject3 = new JSONObject(strA01);
        jSONObject3.put(str2, obj);
        String extraData3 = jSONObject3.toString();
        return extraData3;
    }

    public static boolean A05(String str) throws JSONException {
        return str != null && new JSONObject(new JSONObject(str).getJSONObject(A01(42, 5, 105)).optString(A01(32, 10, 55), A01(61, 2, 93))).optBoolean(A01(21, 11, 10), false);
    }

    public final InterstitialAd A06(C1635dL c1635dL, String str, String str2) {
        if (c1635dL == null) {
            return null;
        }
        try {
            InterstitialAd interstitialAd = new InterstitialAd(c1635dL, str);
            interstitialAd.setExtraHints(new ExtraHints.Builder().extraData(A03(str2, A01(21, 11, 10), true)).build());
            return interstitialAd;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final RewardedVideoAd A07(C1635dL c1635dL, String str, String str2) {
        if (c1635dL == null) {
            return null;
        }
        try {
            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(c1635dL, str);
            rewardedVideoAd.setExtraHints(new ExtraHints.Builder().extraData(A03(str2, A01(21, 11, 10), true)).build());
            return rewardedVideoAd;
        } catch (JSONException unused) {
            return null;
        }
    }

    public final void A08(C1635dL c1635dL, boolean z) {
        int i = 0;
        String strA01 = A01(0, 21, 52);
        if (!z) {
            int lastNonChainedAds = AbstractC1307Ve.A00(c1635dL).getInt(strA01, 0);
            i = lastNonChainedAds + 1;
        }
        AbstractC1307Ve.A00(c1635dL).edit().putInt(strA01, i).apply();
    }

    public final boolean A09(C1635dL c1635dL, String str, int i) {
        if (i <= 0) {
            return false;
        }
        try {
            if (!A05(str)) {
                int lastNonChainedAds = A00(c1635dL, i - 1);
                return lastNonChainedAds >= i + (-1);
            }
        } catch (JSONException unused) {
        }
        return false;
    }
}
