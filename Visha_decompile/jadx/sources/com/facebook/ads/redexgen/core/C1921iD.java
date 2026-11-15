package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.internal.protocol.AdPlacementType;
import java.util.Arrays;
import java.util.Map;
import javax.annotation.Nullable;

public final class C1921iD extends MR {
    public static byte[] A02;

    @Nullable
    public final C1919iB A00;
    public final US A01;

    static {
        A02();
    }

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 26);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A02 = new byte[]{70, 69, 74, 74, 65, 86};
    }

    public C1921iD(C1635dL c1635dL, MS ms, C1708eX c1708eX, US us, C1919iB c1919iB) {
        super(c1635dL, ms, c1708eX);
        this.A01 = us;
        this.A00 = c1919iB;
    }

    @Override
    public final void A08(Map<String, String> map) {
        if (this.A00 != null && !TextUtils.isEmpty(this.A00.A7G())) {
            this.A02.A0F().A3D();
            AbstractC1122Nw.A02(this.A00.A0X(), X0.A00(A01(0, 6, 62)));
            this.A01.AB5(this.A00.A7G(), map);
            if (U7.A19(this.A02)) {
                String string = AdPlacementType.MEDIUM_RECTANGLE.toString();
                W2 w2A00 = W2.A00(this.A02);
                String placementType = this.A00.A7G();
                w2A00.A0E(string, placementType);
            }
        }
    }
}
