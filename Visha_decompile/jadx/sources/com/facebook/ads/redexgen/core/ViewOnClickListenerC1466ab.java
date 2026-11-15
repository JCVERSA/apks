package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;

public class ViewOnClickListenerC1466ab implements View.OnClickListener {
    public static byte[] A01;
    public static String[] A02 = {"aUyhDgZzCxx0Fo0aLoCtiuJX5lt1Em7h", "IU9gnqoqDa2n7WEe3wiWby57KruBSWfN", "57fa1VpsBY39tHMgQ3Qgx4ZAKOvpZO", "l1cFWBsWpb1xIqaJVfDZzdeVbcwmQJ4W", "uLRqkE9KSQI", "XsB4rZ8TcHUkKOxnTnbB33RXLsHLV", "pJcUqIp9KWRXB2hM3LzKI8otqYa3cTkH", "iQ2u1wDEylPYZ9kZrZj99NoP6udHs7RH"};
    public final C1017Ju A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 51);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        byte[] bArr = {-85, -81, -93, -87, -89};
        if (A02[0].charAt(22) == '9') {
            throw new RuntimeException();
        }
        String[] strArr = A02;
        strArr[6] = "S9ialwmDFK349gex3NgP3vDabM3jB4SC";
        strArr[1] = "CB0B92gOKY82Q5M73UaMoIgaE8byLodA";
        A01 = bArr;
    }

    static {
        A01();
    }

    public ViewOnClickListenerC1466ab(C1017Ju c1017Ju) {
        this.A00 = c1017Ju;
    }

    @Override
    public final void onClick(View view) throws Throwable {
        if (AbstractC1314Vl.A02(this)) {
            return;
        }
        try {
            this.A00.getCtaButton().A0E(A00(0, 5, 15));
        } catch (Throwable th) {
            AbstractC1314Vl.A00(th, this);
        }
    }
}
