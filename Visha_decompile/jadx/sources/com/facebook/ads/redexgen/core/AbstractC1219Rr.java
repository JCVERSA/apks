package com.facebook.ads.redexgen.core;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

public abstract class AbstractC1219Rr {
    public static byte[] A00;
    public static String[] A01 = {"T8", "", "As3hIStO2xNa0GSSHrkEVjQu", "DXoFAMJTZKDaTyX0if7pZrkyLA7XvGsC", "niDMG5wZxQy0H8acRFWa8hH2XuraMrTN", "878XRXnWNCNw6FCwqGtfz4QO6Hd03tfb", "ID5FT62NpqbpmPra08cWCCHJVsi2pDHC", "txdj"};
    public static final AtomicReference<C1217Rp> A02;
    public static final AtomicReference<String> A03;

    public static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        while (true) {
            int length = bArrCopyOfRange.length;
            if (A01[7].length() != 4) {
                throw new RuntimeException();
            }
            A01[6] = "PcSdqCtN9qYKSfDsPVWrfTZjyuiu0dLa";
            if (i4 >= length) {
                return new String(bArrCopyOfRange);
            }
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) - 86);
            i4++;
        }
    }

    public static void A05() {
        A00 = new byte[]{19, 27, 22, 17, 33, 40, 23, 36, 36, 27, 22, 23, 17, 15, 24, 15, 28, 19, 13, 43, 38, 40, 35, 33, 49, 56, 39, 52, 52, 43, 38, 39};
    }

    static {
        A05();
        A02 = new AtomicReference<>();
        A03 = new AtomicReference<>(A04(0, 0, 12));
    }

    public static C1217Rp A00() {
        C1217Rp advertisingIdInfo = A02.get();
        if (advertisingIdInfo == null) {
            return C1217Rp.A00();
        }
        return advertisingIdInfo;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000a, code lost:
    
        if (android.text.TextUtils.isEmpty(r6.A03()) != false) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static C1217Rp A01(SQ sq, C1217Rp c1217Rp) {
        if (c1217Rp != null) {
            try {
            } catch (Throwable t) {
                sq.A08().AAy(A04(12, 7, 84), AbstractC1248Sv.A1Q, new C1249Sw(t));
            }
        }
        return AbstractC1224Rx.A00(sq);
        return c1217Rp;
    }

    public static C1217Rp A02(SQ sq, C1217Rp c1217Rp, C1218Rq c1218Rq) {
        C1220Rs c1220RsA00 = null;
        try {
            if (U6.A06(sq) && (c1217Rp == null || TextUtils.isEmpty(c1217Rp.A03()))) {
                c1220RsA00 = AbstractC1221Rt.A00(sq.getContentResolver());
            }
        } catch (Throwable th) {
            sq.A08().AAy(A04(12, 7, 84), AbstractC1248Sv.A1S, new C1249Sw(th));
        }
        if (c1220RsA00 != null && c1220RsA00.A01 != null) {
            A03.set(c1220RsA00.A01);
            c1218Rq.A05(c1220RsA00.A01);
        }
        if (c1217Rp == null && c1220RsA00 != null && !TextUtils.isEmpty(c1220RsA00.A00)) {
            return new C1217Rp(c1220RsA00.A00, c1220RsA00.A02, EnumC1216Ro.A04);
        }
        return c1217Rp;
    }

    public static String A03() {
        String attributionId = A03.get();
        if (attributionId == null) {
            return A04(0, 0, 12);
        }
        return attributionId;
    }

    public static void A06(C1218Rq c1218Rq) {
        A02.set(c1218Rq.A02());
        A03.set(c1218Rq.A03());
    }

    public static void A07(SQ sq) {
        long jA01;
        C1217Rp advertisingIdInfo;
        try {
            C1218Rq c1218Rq = new C1218Rq(sq);
            A06(c1218Rq);
            if (A08()) {
                return;
            }
            C1217Rp advertisingIdInfo2 = A02.get();
            if (advertisingIdInfo2 != null && !TextUtils.isEmpty(advertisingIdInfo2.A03())) {
                jA01 = advertisingIdInfo2.A01();
            } else {
                jA01 = -1;
            }
            if (jA01 > 0 && System.currentTimeMillis() - jA01 < U6.A00(sq)) {
                return;
            }
            if (U6.A07(sq)) {
                advertisingIdInfo = A01(sq, A02(sq, null, c1218Rq));
            } else {
                advertisingIdInfo = A02(sq, A01(sq, null), c1218Rq);
            }
            if (advertisingIdInfo != null && !TextUtils.isEmpty(advertisingIdInfo.A03())) {
                A02.set(advertisingIdInfo);
                c1218Rq.A04(advertisingIdInfo);
            }
        } catch (Throwable t) {
            sq.A08().AAy(A04(12, 7, 84), AbstractC1248Sv.A1R, new C1249Sw(t));
        }
    }

    public static boolean A08() {
        boolean z = false;
        boolean updated = WS.A04();
        if (updated) {
            String strA04 = A04(0, 12, 92);
            boolean updated2 = WS.A05(strA04);
            if (updated2) {
                A03.set(WS.A01(strA04));
                z = true;
            }
        }
        boolean zA04 = WS.A04();
        if (A01[7].length() != 4) {
            throw new RuntimeException();
        }
        A01[6] = "Cpq5b7Aomj18wFHDN8BPNJlk9AiHAVMm";
        if (!zA04) {
            return z;
        }
        String strA05 = A04(19, 13, 108);
        boolean updated3 = WS.A05(strA05);
        if (updated3) {
            String strA01 = WS.A01(strA05);
            AtomicReference<C1217Rp> atomicReference = A02;
            if (strA01 == null) {
                if (A01[7].length() != 4) {
                    A01[7] = "Ywke";
                    strA01 = A04(0, 0, 2);
                } else {
                    A01[5] = "aB8iQRCNNWTx0AWcZvgXlT81SikGsrWB";
                    strA01 = A04(0, 0, 12);
                }
            }
            atomicReference.set(new C1217Rp(strA01, false, EnumC1216Ro.A03));
            return true;
        }
        return z;
    }
}
