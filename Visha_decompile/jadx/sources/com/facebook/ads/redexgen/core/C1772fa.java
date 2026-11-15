package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import com.facebook.ads.NativeAdBase;
import com.transsion.vishatransfer.socket.TransferProtocol;
import java.util.Arrays;
import java.util.List;

public final class C1772fa implements NX {
    public static byte[] A03;
    public static String[] A04 = {"2TNZv5rtJTplZyjTIrSAFwUR6QP", "UjegX20Mk8HUIHIT", "Ti96PrkTuXG6IMzmEs5GDJe0LgUxYJn1", "WKFIsio5", "sT4eIPa9", "0D70Whi8Ioa2N41OWBvmw3gUZoSjgMHO", "iH11Sl", "erLbaj7N4o7d5mJ3hEM6"};
    public RO A00;
    public C1635dL A01;
    public final NativeAdBase.MediaCacheFlag A02;

    public static String A02(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A03, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A04[6].length() == 1) {
                throw new RuntimeException();
            }
            A04[0] = "MdmGKNh4C3mG92xgGyorPLR3SXO";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 88);
            i4++;
        }
    }

    public static void A03() {
        A03 = new byte[]{-26, -39, -20, -31, -18, -35, TransferProtocol.CLAZZ_TYPE_TRANSFER_CODE, -35, -38, -35, -34, -26, -35};
    }

    static {
        A03();
    }

    public C1772fa(RO ro, C1635dL c1635dL, NativeAdBase.MediaCacheFlag mediaCacheFlag) {
        this.A00 = ro;
        this.A01 = c1635dL;
        this.A02 = mediaCacheFlag;
    }

    @Override
    public final void ADB(V1 v1) {
        AbstractC1313Vk.A00(new C1775fd(this, v1));
    }

    @Override
    public final void AEJ(List<C1931iN> list) {
        SF manager = new SF(this.A01);
        String firstRequestId = A02(6, 7, 23);
        for (C1931iN c1931iN : list) {
            if (A02(6, 7, 23).equals(firstRequestId)) {
                firstRequestId = c1931iN.A0G();
            }
            if (this.A02.equals(NativeAdBase.MediaCacheFlag.ALL)) {
                if (c1931iN.A0E().A0F() != null) {
                    manager.A0c(new SD(c1931iN.A0E().A0F().getUrl(), c1931iN.A0E().A0F().getHeight(), c1931iN.A0E().A0F().getWidth(), c1931iN.A0G(), A02(0, 6, 32)));
                }
                if (c1931iN.A0E().A0E() != null) {
                    manager.A0c(new SD(c1931iN.A0E().A0E().getUrl(), c1931iN.A0E().A0E().getHeight(), c1931iN.A0E().A0E().getWidth(), c1931iN.A0G(), A02(0, 6, 32)));
                }
                if (!TextUtils.isEmpty(c1931iN.A0E().A0b())) {
                    manager.A0b(new SB(c1931iN.A0E().A0b(), c1931iN.A0G(), A02(0, 6, 32), c1931iN.A0E().A0A()));
                }
            }
        }
        manager.A0X(new C1773fb(this, list), new S8(firstRequestId, A02(0, 6, 32)));
    }
}
