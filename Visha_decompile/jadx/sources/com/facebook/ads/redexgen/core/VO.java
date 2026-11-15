package com.facebook.ads.redexgen.core;

import android.view.View;
import java.util.Arrays;
import org.mozilla.classfile.ByteCode;

public final class VO implements InterfaceC1282Ue {
    public static byte[] A04;
    public static String[] A05 = {"HMqNF3eSIzlMBYXVNU3nP1NvWYo5", "x1o785RKTr7Jq0RcU0BPUyycJ3fBjUeE", "GBfmO3K", "Po", "VaaklUluHJvo1XkXnH3kavV5L6d7gpHG", "rG9SvJ3uZ6", "s9MPDvRc6n", "AU4sbnw7bsTTRuLyXll9UaPcK28fS"};
    public static final String A06;
    public ViewOnAttachStateChangeListenerC1304Va A00;
    public C2359pu<UE, UJ> A01;
    public final C1609cu A02;
    public final A8 A03 = A8.A01();

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A04, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A05[1].length() == 18) {
                throw new RuntimeException();
            }
            A05[1] = "YaUcq3PJYQGMSsmKTTLasxzUL6lFeW7O";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 121);
            i4++;
        }
    }

    public static void A02() {
        A04 = new byte[]{79, 115, 126, 59, 118, 126, 127, 114, 122, 59, 120, 105, 126, 122, 111, 114, 109, 126, 59, 109, 114, 126, 108, 59, 114, 104, 59, 117, 110, 119, 119, 53, 121, 66, 94, 73, 75, 69, 95, 88, 73, 94, 69, 66, 75, 12, 77, 12, 66, 89, 64, 64, 12, 79, 94, 73, 77, 88, 69, 90, 73, 12, 90, 69, 73, 91, 13, 83, 108, 96, 114, 117, 106, 108, 107, 113, 65, 100, 113, 100, 37, 108, 118, 37, 107, 112, 105, 105, 36, 25, 15, 9, 5, 4, 14, 53, 9, 2, ByteCode.T_LONG, 4, 4, 15, 6};
    }

    static {
        A02();
        A06 = VO.class.getSimpleName();
    }

    public VO(C1609cu c1609cu) {
        this.A02 = c1609cu;
    }

    private void A01() {
        this.A02.A08().AAy(A00(89, 14, 19), 3600, new C1249Sw(A00(67, 22, 124)));
    }

    @Override
    public final void ACx() {
        if (this.A01 != null) {
            this.A01.A07.A00();
        } else {
            A01();
        }
    }

    @Override
    public final void AFs() {
        if (this.A01 != null) {
            this.A01.A07.A03();
        } else {
            A01();
        }
    }

    @Override
    public final void AJj(View view) {
        if (this.A01 == null) {
            this.A02.A08().AAy(A00(89, 14, 19), 3600, new C1249Sw(A00(32, 35, 85)));
            return;
        }
        this.A03.A08(view);
    }

    @Override
    public final void AK2(View view, String str, boolean z) {
        AK3(view, str, z, false);
    }

    @Override
    public final void AK3(View view, String str, boolean z, boolean z2) {
        AK4(view, str, z, z2, false);
    }

    @Override
    public final void AK4(View view, String str, boolean z, boolean z2, boolean z3) {
        if (view != null) {
            this.A00 = new ViewOnAttachStateChangeListenerC1304Va(view, this.A02);
            this.A03.A0A(this.A00, view);
            if (z2) {
                this.A00.A04();
            }
            this.A01 = C2359pu.A00(new UE(this.A02, view, str, z, z3), new UJ(), A06).A06(new C1308Vf(new VN())).A07();
            this.A03.A09(view, this.A01);
            return;
        }
        this.A02.A08().AAy(A00(89, 14, 19), 3600, new C1249Sw(A00(0, 32, 98)));
    }
}
