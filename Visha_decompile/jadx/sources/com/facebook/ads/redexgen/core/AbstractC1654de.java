package com.facebook.ads.redexgen.core;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import com.hunantv.media.drm.IDrmSession;
import com.transsion.socket.pkgdata.SocketData;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class AbstractC1654de {
    public static byte[] A00;
    public static String[] A01 = {"m5Jty9nXe8L2gKLWEWc3vH5rHCR7lq15", "nXqLn2RrfIlx0c2v1RTl0CneHVNjUcek", "yIjJHM1120PmYi1BMLCe9caFimcQ2nFl", "mlpcJRY57Lt3u3e0DOF4Ze17XEKszIMh", "yNEzWcoMu1kvA6ly91E0yJELmkdnUTW9", "LQJ0sSZIBnjE3wRe9pGlPD4TX9Tbmis1", "3e9PCxJTK3pug342JyVCHaGplQMI3S8I", "kyVsWmEjdCkwx1v5lgIpAQohzDFxobhM"};

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static WebResourceResponse A00(C1635dL c1635dL, WebResourceRequest webResourceRequest, Uri uri, String str, HashMap<String, String> map) throws IOException {
        String strA02 = A02(85, 5, 1);
        InterfaceC06464w interfaceC06464wA0H = C1694eJ.A06(c1635dL.A02()).A0H(c1635dL);
        SF.A0H(c1635dL, uri.toString());
        try {
            C1655df c1655df = new C1655df(c1635dL.A02(), uri, interfaceC06464wA0H);
            int iAvailable = c1655df.available();
            if (iAvailable <= 0) {
                A05(c1635dL, 1, new Pair[]{new Pair(A02(61, 9, 46), String.valueOf(iAvailable))});
                return null;
            }
            String strA03 = A03(webResourceRequest.getRequestHeaders());
            if (strA03 == null) {
                c1635dL.A0F().A65();
                A06(map, iAvailable);
                return new WebResourceResponse(str, null, 200, A02(44, 2, 122), map, c1655df);
            }
            try {
                C1653dd c1653ddA01 = A01(strA03);
                if (!c1653ddA01.A03) {
                    A05(c1635dL, 0, new Pair[]{new Pair(A02(94, 5, 77), c1653ddA01.A02 != null ? c1653ddA01.A02 : A02(90, 4, 30))});
                    return null;
                }
                int i = c1653ddA01.A01;
                int i2 = c1653ddA01.A00 == -1 ? iAvailable - 1 : c1653ddA01.A00;
                A06(map, iAvailable);
                map.put(A02(31, 13, 93), A02(75, 6, 3) + i + A02(1, 1, 92) + i2 + A02(2, 1, 88) + iAvailable);
                c1635dL.A0F().A65();
                return new WebResourceResponse(str, null, IDrmSession.ERROR_SESSION_SELECT_DRM_NOT_SUPPORT, A02(46, 15, 10), map, c1655df);
            } catch (NumberFormatException e) {
                A05(c1635dL, 3, new Pair[]{new Pair(strA02, e.toString())});
                return null;
            }
        } catch (IOException e2) {
            A05(c1635dL, 2, new Pair[]{new Pair(strA02, e2.toString())});
            return null;
        }
    }

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A04() {
        A00 = new byte[]{SocketData.CLAZZ_TYPE_FILE, -93, -95, 100, -104, -70, -70, -68, -57, -53, -124, -87, -72, -59, -66, -68, -54, -70, -26, -27, -21, -36, -27, -21, -92, -61, -36, -27, -34, -21, -33, -70, -26, -27, -21, -36, -27, -21, -92, -55, -40, -27, -34, -36, -29, -33, 116, -123, -106, -104, SocketData.CLAZZ_TYPE_ERROR_CODE, -123, -112, 68, 103, -109, -110, -104, -119, -110, -104, -87, -66, -87, -79, -76, -87, -86, -76, -83, SocketData.CLAZZ_TYPE_HEART_BEAT, -104, -109, -124, -110, 127, -106, -111, SocketData.CLAZZ_TYPE_SEND_PACKAGE, -112, 61, -74, -62, -73, -72, SocketData.CLAZZ_TYPE_END_SOCKET, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_ERROR_CODE, SocketData.CLAZZ_TYPE_FILE_BLOCK, SocketData.CLAZZ_TYPE_ERROR_CODE, -90, -83, -92, -92, -39, -56, -43, -50, -52};
    }

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    public static void A05(C1635dL c1635dL, int i, Pair<String, String>[] pairArr) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(A02(81, 4, 57), i);
            for (Pair<String, String> pair : pairArr) {
                jSONObject.put((String) pair.first, pair.second);
            }
        } catch (JSONException unused) {
        }
        c1635dL.A0F().A64(jSONObject.toString());
    }

    static {
        A04();
    }

    public static C1653dd A01(String str) {
        if (str == null) {
            C1653dd parseResult = new C1653dd();
            parseResult.A03 = false;
            parseResult.A02 = null;
            return parseResult;
        }
        String[] strArr = A01;
        if (strArr[0].charAt(24) != strArr[1].charAt(24)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A01;
        strArr2[3] = "Dtu90aCnfjxtl3iZcl85ZURNtT9G66qF";
        strArr2[6] = "JBE4H6DVGxkCv3KpLfIzSFjkaXJMKyPO";
        String[] strArrSplit = str.split(A02(3, 1, 13));
        if (strArrSplit.length >= 2) {
            if (A02(70, 5, 5).equals(strArrSplit[0].toLowerCase(Locale.US).trim())) {
                if (strArrSplit[1].trim().split(A02(0, 1, 72)).length != 1) {
                    C1653dd c1653dd = new C1653dd();
                    c1653dd.A03 = false;
                    c1653dd.A02 = str;
                    return c1653dd;
                }
                String[] ranges = strArrSplit[1].trim().split(A02(1, 1, 92));
                C1653dd c1653dd2 = new C1653dd();
                c1653dd2.A03 = true;
                c1653dd2.A02 = str;
                c1653dd2.A01 = TextUtils.isEmpty(ranges[0]) ? 0 : Integer.parseInt(ranges[0]);
                if (ranges.length > 1) {
                    c1653dd2.A00 = TextUtils.isEmpty(ranges[1]) ? -1 : Integer.parseInt(ranges[1]);
                } else {
                    c1653dd2.A00 = -1;
                }
                return c1653dd2;
            }
        }
        C1653dd c1653dd3 = new C1653dd();
        c1653dd3.A03 = false;
        c1653dd3.A02 = str;
        return c1653dd3;
    }

    public static String A03(Map<String, String> map) {
        for (String str : map.keySet()) {
            Locale locale = Locale.US;
            String[] strArr = A01;
            String header = strArr[0];
            if (header.charAt(24) != strArr[1].charAt(24)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[3] = "WwPgvkKaNJbx73tjItPTyID0XOg3nGIt";
            strArr2[6] = "4YitGEy8BigPs3HGnT2LP2sfmluRsQ6B";
            if (A02(94, 5, 77).equals(str.toLowerCase(locale))) {
                return map.get(str);
            }
        }
        return null;
    }

    public static void A06(HashMap<String, String> map, int i) {
        map.put(A02(4, 13, 61), A02(70, 5, 5));
        map.put(A02(17, 14, 93), String.valueOf(i));
    }
}
