package com.facebook.ads.redexgen.core;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import java.util.Arrays;

public class RP extends AsyncTask<RR, Void, Drawable> {
    public static byte[] A03;
    public static String[] A04 = {"Er5x4Nf8UA9tVLePD2EX", "DtYF9X90t5u", "I941X6fzqWLmgCmjxes", "iBgQ7OI2DFUGAw4NUel9vSUdaaiAzSqO", "QcmiodlDN7oY3kgnmckrDpvdiERsjn9V", "z", "b", "KLyCCmbDECCjA8c7XM6gY8wQDdZdMwfW"};
    public final RQ A00;
    public final C1635dL A01;
    public final boolean A02;

    /* JADX WARN: Failed to parse debug info
    java.lang.ArrayIndexOutOfBoundsException
     */
    private final Drawable A00(RR... rrArr) throws Throwable {
        if (!AbstractC1314Vl.A02(this) && rrArr != null) {
            try {
                if (rrArr.length >= 1) {
                    String str = rrArr[0].A01;
                    String str2 = rrArr[0].A00;
                    Bitmap bitmapA0O = null;
                    try {
                        bitmapA0O = new SF(this.A01).A0O(str, -1, -1);
                    } catch (Throwable th) {
                        this.A01.A08().AAy(A01(0, 7, 4), AbstractC1248Sv.A1V, new C1249Sw(th));
                    }
                    if (bitmapA0O != null) {
                        return C1178Qc.A05(this.A01, bitmapA0O, this.A02, str2);
                    }
                    return null;
                }
            } catch (Throwable th2) {
                AbstractC1314Vl.A00(th2, this);
                return null;
            }
        }
        return null;
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            int i5 = (bArrCopyOfRange[i4] ^ i3) ^ 36;
            String[] strArr = A04;
            if (strArr[6].length() != strArr[5].length()) {
                throw new RuntimeException();
            }
            A04[2] = "XzO4PGfz9rpTObXE3Krp6";
            bArrCopyOfRange[i4] = (byte) i5;
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A03 = new byte[]{71, 69, 78, 69, 82, 73, 67};
    }

    static {
        A02();
    }

    public RP(C1635dL c1635dL, RQ rq, boolean z) {
        this.A01 = c1635dL;
        this.A00 = rq;
        this.A02 = z;
    }

    public RP(C1635dL c1635dL, RQ rq, boolean z, C1771fZ c1771fZ) {
        this(c1635dL, rq, z);
    }

    private final void A03(Drawable drawable) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.ADU(drawable);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }

    @Override
    public final Drawable doInBackground(RR[] rrArr) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return null;
        }
        try {
            return A00(rrArr);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            return null;
        }
    }

    @Override
    public final void onPostExecute(Drawable drawable) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            A03(drawable);
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
