package com.facebook.ads.redexgen.core;

import android.os.Handler;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;

public final class C06936r extends AbstractC1881hQ {
    public static byte[] A00;
    public static String[] A01 = {"vV6RQP0QGAizSnvHrhrEiTJKYqnkk7vR", "gVueu7WJkm8gI", "", "raAPQvYZN3qaAVuN8G4E0NVfm2Y0LRUe", "w5hc", "", "RHGb3VvP2c2qxldOqnFEpaAIYmVmOJg8", "ZdfM9COnhESAyQW1NqvAdN1Ku5n51qre"};

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 32);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A00 = new byte[]{-43, -45, -32, -110, -31, -32, -34, -21, -110, -27, -41, -26, -110, -31, -32, -110, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -41, -23, -45, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -42, -41, -42, -110, -24, -37, -42, -41, -31, -110, -45, -42, -27, -80, -79, 98, -93, -90, -93, -78, -74, -89, -76, 98, -76, -89, -93, -90, -69, 98, -74, -79, 98, -75, -89, -74, 98, -76, -89, -71, -93, -76, -90, 98, -79, -80};
    }

    static {
        A02();
    }

    public C06936r(C1635dL c1635dL, NT nt) {
        super(c1635dL, nt);
    }

    private C1873hH A00(Runnable runnable) {
        return new C1873hH(this, runnable);
    }

    @Override
    public final void A0P() {
        AbstractC1918iA abstractC1918iA = (AbstractC1918iA) this.A01;
        abstractC1918iA.A00(this.A08.A00);
        abstractC1918iA.A01(this.A08.A01);
        abstractC1918iA.A0J();
    }

    @Override
    public final void A0R(MP mp, TE te, TC tc, NU nu) {
        C7B c7b = (C7B) mp;
        C1874hJ c1874hJ = new C1874hJ(this, nu, c7b);
        if (U7.A2X(this.A0B)) {
            Handler handlerA0H = A0H();
            TF tfA05 = te.A05();
            String[] strArr = A01;
            if (strArr[3].charAt(31) != strArr[7].charAt(31)) {
                throw new RuntimeException();
            }
            String[] strArr2 = A01;
            strArr2[5] = "";
            strArr2[2] = "";
            handlerA0H.postDelayed(c1874hJ, tfA05.A05());
        }
        c7b.A0K(this.A0B, A00(c1874hJ), nu, this.A08.A06, this.A08.A04, this.A08.A05);
    }

    public final void A0a(RewardData rewardData) {
        if (this.A01 != null) {
            if (this.A01.A8c() == AdPlacementType.REWARDED_VIDEO) {
                AbstractC1918iA rewardedVideoAdapter = (AbstractC1918iA) this.A01;
                rewardedVideoAdapter.A02(rewardData);
                return;
            }
            throw new IllegalStateException(A01(0, 34, 82));
        }
        throw new IllegalStateException(A01(34, 33, 34));
    }
}
