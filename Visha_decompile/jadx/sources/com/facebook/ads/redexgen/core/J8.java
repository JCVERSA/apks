package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;

public class J8 implements ZY {
    public static byte[] A01;
    public static String[] A02 = {"Lf", "nmAxyBcQYqE4UmHMsUF1rAa8zTrMAPgx", "yXHjwHYuNIdrzaXYLvaZZ8rDuk", "9P19JGz6dEYaA5InwGx6w36V1Sjc1fgT", "Uaeemoya7byMjdbMYqkdDOMCW0kva5u1", "a9sExJmhm07IJOfFlJQHVREgKDfvTtqT", "zS9IM7X0AIqJ7SZD2m", "JScTq5ptQGF6W5ukeGazDvn9iL3"};
    public final C0989Is A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 15);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{-29, -31, -45, -32, -51, -36, -49, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -41, -43, -49, -30, -41, -35, -36, -51, -41, -49, -48};
    }

    static {
        A01();
    }

    public J8(C0989Is c0989Is) {
        this.A00 = c0989Is;
    }

    @Override
    public final void AES(String str) {
        this.A00.A0K = false;
        this.A00.A07.setProgress(100);
        XP.A0L(this.A00.A07, 8);
        if (this.A00.A0Y.A1d() && this.A00.A08 != null) {
            String strA0y = this.A00.A0Y.A0y();
            if (!TextUtils.isEmpty(strA0y)) {
                this.A00.A08.loadUrl(strA0y);
            }
        }
    }

    @Override
    public final void AEU(String str) {
        this.A00.A0K = true;
        XP.A0L(this.A00.A07, 0);
        this.A00.A06.setUrl(str);
        if (!this.A00.A0I && this.A00.A00 > 1) {
            this.A00.A0I = true;
            C0989Is c0989Is = this.A00;
            String[] strArr = A02;
            if (strArr[4].charAt(17) == strArr[5].charAt(17)) {
                throw new RuntimeException();
            }
            A02[2] = "wX256yuF2";
            c0989Is.A0l(A00(0, 19, 95));
        }
        C0989Is.A02(this.A00);
    }

    @Override
    public final void AEq(int i) {
        if (this.A00.A0K) {
            this.A00.A07.setProgress(i);
        }
    }

    @Override
    public final void AEt(String str) {
        this.A00.A06.setTitle(str);
    }

    @Override
    public final void AEw() {
        this.A00.A0c.A0D().ACf(14);
    }
}
