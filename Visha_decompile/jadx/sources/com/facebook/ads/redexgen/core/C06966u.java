package com.facebook.ads.redexgen.core;

import com.facebook.video.heroplayer.exocustom.MetaExoPlayerCustomization;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import okio.Utf8;
import org.json.JSONArray;
import org.json.JSONObject;
import org.mozilla.classfile.ByteCode;

@MetaExoPlayerCustomization(type = {"NEW_CLASS"}, value = "D63737392: Class for performance negative testing")
public final class C06966u {
    public static byte[] A01;
    public static String[] A02 = {"uumaDejXtY9QuA71Txc6KqwcrEMmZNPm", "", "Dsya3x18X7BukkIokO15GhTYLGiL2hRr", "RNehmKATQ4InJCkQYMjQTj", "eAq9FO9dhgnzxwHSxHo7MGMv1ckJfF3W", "", "rfJrIe", ""};
    public Map<Integer, C06956t> A00 = new HashMap();

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = bArrCopyOfRange[i4] ^ i3;
            String[] strArr = A02;
            if (strArr[2].charAt(3) != strArr[0].charAt(3)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[1] = "";
            strArr2[7] = "";
            bArrCopyOfRange[i4] = (byte) (i5 ^ 1);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{42, 9, 27, 13, 36, 9, 28, 13, 6, ByteCode.T_LONG, 17, 28, Utf8.REPLACEMENT_BYTE, 34, 34, 51, 36, 95, 96, 124, 102, 123, 102, 96, 97, 12, 62, 50, 47, 51, 54, 49, 56, 13, 62, 43, 58};
    }

    static {
        A01();
    }

    public C06966u(String str) {
        if (str != null) {
            try {
                if (!str.isEmpty()) {
                    JSONArray jSONArray = new JSONArray(str);
                    for (int jitter = 0; jitter < jSONArray.length(); jitter++) {
                        JSONObject jSONObject = jSONArray.getJSONObject(jitter);
                        int i = jSONObject.getInt(A00(17, 8, 14));
                        int samplingRate = jSONObject.getInt(A00(0, 11, 105));
                        int position = jSONObject.getInt(A00(11, 6, 87));
                        this.A00.put(Integer.valueOf(i), new C06956t(this, samplingRate, position, jSONObject.getInt(A00(25, 12, 94))));
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    public final C06956t A02() {
        if (this.A00.containsKey(0)) {
            return this.A00.get(0);
        }
        return null;
    }
}
