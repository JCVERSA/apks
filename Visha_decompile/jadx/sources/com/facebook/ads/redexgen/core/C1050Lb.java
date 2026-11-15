package com.facebook.ads.redexgen.core;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import java.util.Arrays;

public final class C1050Lb implements InterfaceC1367Xo {
    public static byte[] A02;
    public static String[] A03 = {"NTFBcVe31dSo2GnU3Js6iiY0zks5LQys", "Ca9zWfFJkFyFOF3Godi91RgYkRzgzr2p", "cII4QPxWTYmVZfubYcNoLj9MPP8GF9tt", "PE9F3dLYBiF4JqqMXSdTSS6miGDS", "DZYdCvYuTuX3W9uqeE5C1IukMMXrX2Kv", "LDE71mkJxI8TxTUVwO2u55MEQLy5qptr", "oLxvrvG8qZvA3h0mNhA70cq5V56", "NZtOBPQowQq2"};
    public final R0 A00;
    public final C1635dL A01;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 25);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A02 = new byte[]{46, 41, 51, 56, 53, 49, 56, 38, 55, 55, 56, 40, 53, 46, 34, 41, 51, 38, 51, 46, 40, 41, 56, 44, 34, 62, 78, 73, 79, 66, 92, 89, 66, 84, 89, 66, 86, 88, 68, 69, 73, 75, 8, 64, 71, 69, 67, 68, 73, 73, 77, 8, 71, 66, 85, 8, 79, 72, 82, 67, 84, 72, 71, 74, 8, 79, 86, 69, 8, 103, 83, 66, 79, 67, 72, 69, 67, 104, 67, 82, 81, 73, 84, 77, 99, 94, 86, 73, 84, 82, 67, 66, 103, 69, 82, 79, 80, 79, 82, 95};
    }

    static {
        A01();
    }

    public C1050Lb(C1635dL c1635dL, R0 r0) {
        this.A01 = c1635dL;
        this.A00 = r0;
    }

    private final void A02() {
        SN snA0G = this.A01.A0G();
        if (snA0G != null) {
            Ad adA6c = snA0G.A6c();
            String[] strArr = A03;
            if (strArr[2].charAt(26) == strArr[4].charAt(26)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A03;
            strArr2[5] = "uggbWVrJrahsC4DgFI3QlP54yVqi59lG";
            strArr2[1] = "7cYKYqsJYjxuuUZE8o6LAtyu5uwrvd1J";
            if (adA6c != null && snA0G.A6g() != null) {
                snA0G.A6g().onError(adA6c, AdError.AD_PRESENTATION_ERROR);
            }
        }
        this.A00.A05().finish();
    }

    @Override
    public final void AAl(Intent intent, Bundle bundle, R0 r0) {
        ComponentName component = new ComponentName(UA.A05(UA.A02.get()), A00(39, 61, 63));
        Intent intent2 = new Intent();
        intent2.setComponent(component);
        String strA00 = A00(26, 13, 4);
        intent2.putExtra(strA00, intent.getStringExtra(strA00));
        String strA01 = A00(0, 26, 126);
        intent2.putExtra(strA01, intent.getIntExtra(strA01, -1));
        try {
            this.A01.A0F().AHT();
            WB.A09(r0.A05(), intent2);
        } catch (W9 unused) {
            A02();
        }
    }

    @Override
    public final void AEV(boolean z) {
    }

    @Override
    public final void AF0(boolean z) {
    }

    @Override
    public final void AIB(Bundle bundle) {
    }

    @Override
    public final String getCurrentClientToken() {
        return A00(0, 0, 70);
    }

    @Override
    public final boolean onActivityResult(int i, int i2, Intent intent) {
        this.A01.A0F().AH5();
        if (i2 != -1) {
            this.A01.A0F().AH4(i2);
            A02();
            return false;
        }
        R0 r0 = this.A00;
        String[] strArr = A03;
        if (strArr[6].length() == strArr[7].length()) {
            throw new RuntimeException();
        }
        String[] strArr2 = A03;
        strArr2[6] = "sxsZAXbczpYXyJjlUSCXbm3Rr92";
        strArr2[7] = "fqqSdoB1RgIi";
        r0.A05().finish();
        return false;
    }

    @Override
    public final void onDestroy() {
    }
}
