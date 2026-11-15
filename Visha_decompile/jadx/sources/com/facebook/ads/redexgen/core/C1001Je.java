package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import androidx.media3.common.PlaybackException;
import java.util.Arrays;

public class C1001Je implements ZY {
    public static byte[] A01;
    public final JU A00;

    static {
        A01();
    }

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_CONCURRENT_STREAM_LIMIT);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{73, 71, 57, 70, 51, 66, 53, 74, 61, 59, 53, 72, 61, 67, 66, 51, 61, 53, 54};
    }

    public C1001Je(JU ju) {
        this.A00 = ju;
    }

    @Override
    public final void AES(String str) {
        this.A00.A0X = false;
        this.A00.A0K.setProgress(100);
        XP.A0L(this.A00.A0K, 8);
        if (this.A00.A0H.A1d() && this.A00.A0L != null) {
            String strA0y = this.A00.A0H.A0y();
            if (!TextUtils.isEmpty(strA0y)) {
                this.A00.A0L.loadUrl(strA0y);
            }
        }
    }

    @Override
    public final void AEU(String str) {
        this.A00.A0X = true;
        XP.A0L(this.A00.A0K, 0);
        this.A00.A0J.setUrl(str);
        if (!this.A00.A0V && this.A00.A01 > 1) {
            this.A00.A0V = true;
            this.A00.A0h(A00(0, 19, 108));
        }
        JU.A03(this.A00);
    }

    @Override
    public final void AEq(int i) {
        if (this.A00.A0X) {
            this.A00.A0K.setProgress(i);
        }
    }

    @Override
    public final void AEt(String str) {
        this.A00.A0J.setTitle(str);
    }

    @Override
    public final void AEw() {
        this.A00.A0N.A0D().ACf(14);
    }
}
