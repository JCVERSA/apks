package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.RewardedVideoAdExtendedListener;
import com.facebook.ads.S2SRewardedVideoAdListener;
import java.util.Arrays;

public final class C1844gn implements InterfaceC1112Nm {
    public static byte[] A06;
    public static String[] A07 = {"hwQkg6wydYZbPmHd9ra1rendlmZDH9o", "EZChF1CYxmcTUt5XULmCX0u1P", "cTSi58RkvxQZRZutX5Kpp639urCcNivT", "ILotitRaBN9o4fzRERLTj8sSXBTWlTTb", "JZvxvLc", "wZ48NZZ1KfL4Szkg73ZSFlGgbHtYLjcz", "R8pWvTFrbs0CFqCxyNRNjvJ5bjwX3", "qzEf3MAjBvJJtqQXUiJPrqpPaexFktRV"};
    public boolean A00;
    public final AbstractC1869hD A01;
    public final InterfaceC1100Na A02;
    public final HandlerC1107Nh A03;
    public final C1843gm A04;
    public final C1635dL A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 66);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{87, 114, 54, 121, 116, 124, 115, 117, 98, 54, 127, 101, 54, 120, 99, 122, 122, 3, 20, 15, 5, 13, 4, 30, 4, 25, 21, 19, 0, 18, 30, 10, 4, 24, 65, 69, 70, 114, 99, 110, 98, 105, 100, 98, 73, 98, 115, 112, 104, 117, 108, 94, 89, 67, 72, 82, 69, 69, 88, 69, 72, 84, 88, 83, 82, 72, 92, 82, 78, 96, 103, 125, 118, 123, 127, 118, 127, 96, 109, 108, 102, 118, 109, 124, 123, 104, 125, 96, 102, 103, 118, 98, 108, 112, 67, 64, 65, 72, 80, 70, 65, 89, 78, 67, 70, 75, 78, 91, 70, 64, 65, 80, 91, 70, 66, 74, 80, 68, 74, 86, 34, 10, 28, 28, 14, 8, 10, 85, 79, 127, 91, 65, 65, 91, 92, 85, 18, 80, 71, 92, 86, 94, 87, 18, 84, 93, 64, 18, 95, 87, 65, 65, 83, 85, 87, 9, 45, 55, 55, 45, 42, 35, 100, 38, 49, 42, 32, 40, 33, 100, 34, 43, 54, 100, 41, 33, 55, 55, 37, 35, 33, 106, 54, 49, 55, 58, 32, 55, 55, 42, 55, 58, 40, 32, 54, 54, 36, 34, 32, 58, 46, 32, 60, 5, 20, 13};
    }

    static {
        A01();
    }

    public C1844gn(C1635dL c1635dL, C1843gm c1843gm, InterfaceC1100Na interfaceC1100Na, AbstractC1869hD abstractC1869hD, HandlerC1107Nh handlerC1107Nh) {
        this.A05 = c1635dL;
        this.A04 = c1843gm;
        this.A02 = interfaceC1100Na;
        this.A01 = abstractC1869hD;
        this.A03 = handlerC1107Nh;
    }

    @Override
    public final Bundle A5J(String str) {
        return AbstractC1119Nt.A03(str, this.A04);
    }

    @Override
    public final void A5n() {
        this.A03.A0F(2002, null);
        this.A03.A0C();
        this.A04.A02(null);
    }

    @Override
    public final int A8H() {
        return 2000;
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x014a, code lost:
    
        if (r4 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x014c, code lost:
    
        r9.A04.A04.onAdLoaded(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0153, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x015b, code lost:
    
        if (r4 == false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x015e, code lost:
    
        r9.A00 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:?, code lost:
    
        return;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A9b(Message message) {
        Ad adA6c = this.A04.A6c();
        String strA00 = A00(203, 3, 38);
        if (adA6c == null) {
            this.A05.A08().AAy(strA00, AbstractC1248Sv.A0K, new C1249Sw(A00(0, 17, 84)));
            return;
        }
        int i = message.what;
        String strA01 = A00(120, 9, 45);
        String strA02 = A00(17, 17, 3);
        switch (i) {
            case 10:
            case 2103:
                Bundle bundle = message.getData().getBundle(strA02);
                if (bundle != null) {
                    int i2 = bundle.getInt(A00(51, 18, 85));
                    String string = bundle.getString(A00(182, 21, 39));
                    AdError adError = new AdError(i2, string);
                    this.A02.AIh(adError);
                    if (this.A04.A04 != null) {
                        this.A04.A04.onError(adA6c, adError);
                    } else {
                        Log.e(A00(34, 17, 69), string);
                    }
                } else {
                    this.A02.AIc(NZ.A04);
                    String errorMessage = strA01 + message;
                    this.A05.A08().AAy(strA00, AbstractC1248Sv.A0V, new C1249Sw(A00(155, 27, 6), errorMessage));
                }
                this.A04.A02(null);
                return;
            case 2100:
                this.A02.AIm();
                Bundle bundle2 = message.getData().getBundle(strA02);
                if (bundle2 != null) {
                    this.A04.A01 = bundle2.getLong(A00(94, 26, 77));
                    this.A04.A00 = bundle2.getInt(A00(69, 25, 107));
                } else {
                    this.A05.A08().AAy(strA00, AbstractC1248Sv.A0V, new C1249Sw(A00(129, 26, 112), strA01 + message));
                }
                C1843gm c1843gm = this.A04;
                if (A07[0].length() != 31) {
                    throw new RuntimeException();
                }
                A07[4] = "nZDiJI4iz";
                c1843gm.A02(null);
                break;
            case 2106:
                this.A04.A02(null);
                break;
            case 2110:
                this.A02.AJ2();
                break;
        }
        if (this.A04.A04 == null) {
            return;
        }
        switch (message.what) {
            case 2100:
                boolean z = this.A00;
                if (A07[7].charAt(6) == 'M') {
                    A07[3] = "qK0IooEpc5XoMFwfzvHEQuTBU9uHuwow";
                } else {
                    A07[4] = "TwWthT4PMcqNyudS0vukG";
                }
                break;
            case 2104:
                this.A04.A04.onAdClicked(adA6c);
                return;
            case 2105:
                this.A04.A04.onLoggingImpression(adA6c);
                return;
            case 2106:
                if (this.A04.A04 instanceof RewardedVideoAdExtendedListener) {
                    ((RewardedVideoAdExtendedListener) this.A04.A04).onRewardedVideoActivityDestroyed();
                    return;
                }
                return;
            case 2110:
                this.A04.A04.onRewardedVideoClosed();
                return;
            case 3000:
                this.A04.A04.onRewardedVideoCompleted();
                return;
            case 3001:
                if (this.A04.A04 instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) this.A04.A04).onRewardServerSuccess();
                    return;
                }
                return;
            case 3002:
                if (this.A04.A04 instanceof S2SRewardedVideoAdListener) {
                    ((S2SRewardedVideoAdListener) this.A04.A04).onRewardServerFailed();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override
    public final void AJ3(boolean z) {
        this.A00 = z;
    }
}
