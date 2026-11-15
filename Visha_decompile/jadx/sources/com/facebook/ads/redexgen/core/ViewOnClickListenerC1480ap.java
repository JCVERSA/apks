package com.facebook.ads.redexgen.core;

import android.view.View;
import androidx.media3.common.PlaybackException;
import java.util.Arrays;

public class ViewOnClickListenerC1480ap implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"QT04eFLa9mjEfMLd", "wn7Oy4ZvyPX", "JdVOIkh1rweljXiNlmOrPPxbj76ouIw4", "8", "HoYvJWyWnzW9xQrMEDuDE8k", "", "4NNWhWDRRxnZXe7GAIP6Nv2mv9IaX8G8", "Hy00I9bleYebYRTE8UzaGRkCp9A9i8E3"};
    public final C1012Jp A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_SETUP_REQUIRED);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{26, 30, 18, 24, 22};
    }

    static {
        A01();
    }

    public ViewOnClickListenerC1480ap(C1012Jp c1012Jp) {
        this.A00 = c1012Jp;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 69));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
            String[] strArr = A02;
            if (strArr[1].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            String[] strArr2 = A02;
            strArr2[2] = "gqn3ITnmd8SVLq3knr5xxRJ0pveQ6sYL";
            strArr2[7] = "MdUyII5PUBg9MBmNc1g4VKtuuD0LDq6P";
        }
    }
}
