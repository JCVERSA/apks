package com.facebook.ads.redexgen.core;

import android.view.View;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import java.util.Arrays;
import okio.Utf8;

public class C1860h4 extends MQ {
    public static byte[] A01;
    public static String[] A02 = {"swComlxz6aoGHqKS8LOj1g5iAOstdInC", "iLoXwxITRpbgZFbT1koR1uJW4vvDXY2W", "MpkXHfR6HdYIg9t449R", "HQI6v11U6roDlbOuDHGyMjhCWVrAbgmk", "qsbQ14vrFuO8q1N0nwgFIOsRNgh3HWyt", "NXqrvE65RyYHWICx", "E9yzS8MfEszoKvwo", "osh9YHk0bwFUuMRHqHbnPk"};
    public final C1856gz A00;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A01, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 98);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A01 = new byte[]{97, 112, 105, 47, 35, 34, 56, 62, 35, 32, 32, 41, 62, 108, 37, Utf8.REPLACEMENT_BYTE, 108, 34, 57, 32, 32};
    }

    static {
        A01();
    }

    public C1860h4(C1856gz c1856gz) {
        this.A00 = c1856gz;
    }

    @Override
    public final void A02() {
        if (this.A00.A01 == null) {
            this.A00.A04 = false;
            this.A00.A07.onInterstitialActivityDestroyed();
        }
    }

    @Override
    public final void A04() {
        if (this.A00.A01 != null) {
            this.A00.A01.show();
            return;
        }
        this.A00.A04 = false;
        if (this.A00.A03 != null && U7.A26(this.A00.A06)) {
            this.A00.A03.A0S(new C1861h5(this));
            this.A00.A03.A0N();
            this.A00.A03.A0K();
            this.A00.A03 = null;
        }
        this.A00.A07.onInterstitialDismissed(this.A00.A08.A6c());
    }

    @Override
    public final void A05() {
        this.A00.A07.onInterstitialDisplayed(this.A00.A08.A6c());
    }

    @Override
    public final void A06() {
        this.A00.A07.onRewardedAdServerFailed();
    }

    @Override
    public final void A07() {
        this.A00.A07.onRewardedAdServerSucceeded();
    }

    @Override
    public final void A08() {
        this.A00.A07.onRewardedAdCompleted();
    }

    @Override
    public final void A0C() {
        this.A00.A06.A0F().A3C();
        this.A00.A07.onAdClicked(this.A00.A08.A6c());
    }

    @Override
    public final void A0D() {
        this.A00.A07.onLoggingImpression(this.A00.A08.A6c());
    }

    @Override
    public final void A0E(View view) {
    }

    @Override
    public final void A0F(MP mp) {
        if (this.A00.A03 != null) {
            this.A00.A05 = true;
            this.A00.A02 = this.A00.A03.A0I();
            if (!(this.A00.A02 instanceof AbstractC1910hy)) {
                InterstitialAdExtendedListener interstitialAdExtendedListener = this.A00.A07;
                String[] strArr = A02;
                if (strArr[0].charAt(8) == strArr[3].charAt(8)) {
                    String[] strArr2 = A02;
                    strArr2[6] = "JHAXxmwzHKs3NajX";
                    strArr2[5] = "FHZeNyejFCAXh3Vz";
                    interstitialAdExtendedListener.onAdLoaded(this.A00.A08.A6c());
                    return;
                }
            } else {
                AbstractC1910hy abstractC1910hy = (AbstractC1910hy) this.A00.A02;
                if (abstractC1910hy.A1x() > 0) {
                    WR wr = new WR();
                    if (wr.A09(this.A00.A06, this.A00.A08.A08(), abstractC1910hy.A1x())) {
                        wr.A08(this.A00.A06, true);
                        this.A00.A01 = wr.A06(this.A00.A06, this.A00.A08.A0A(), this.A00.A08.A08());
                    } else {
                        C1856gz c1856gz = this.A00;
                        if (A02[1].charAt(2) != 'w') {
                            A02[7] = "alFbtn3b1";
                            wr.A08(c1856gz.A06, false);
                        } else {
                            String[] strArr3 = A02;
                            strArr3[6] = "OkLAbmcEeyte5Vfo";
                            strArr3[5] = "zgaU15rF2mVDrexS";
                            wr.A08(c1856gz.A06, false);
                        }
                    }
                }
                C1856gz c1856gz2 = this.A00;
                if (A02[1].charAt(2) != 'w') {
                    A02[1] = "23I4hcZMgJ395X2lYna8PMjzW0ozt3hz";
                    if (c1856gz2.A01 != null) {
                        abstractC1910hy.A2A(true);
                        InterstitialAd.InterstitialLoadAdConfig loadAdConfig = this.A00.A01.buildLoadAdConfig().withAdListener(new C1103Nd(this, abstractC1910hy)).withCacheFlags(this.A00.A08.A0B()).withRewardData(this.A00.A08.A03()).build();
                        this.A00.A01.loadAd(loadAdConfig);
                        return;
                    }
                    C1856gz c1856gz3 = this.A00;
                    String[] strArr4 = A02;
                    if (strArr4[0].charAt(8) != strArr4[3].charAt(8)) {
                        c1856gz3.A07.onAdLoaded(this.A00.A08.A6c());
                        return;
                    } else {
                        A02[2] = "joZPUUFug9Ts";
                        c1856gz3.A07.onAdLoaded(this.A00.A08.A6c());
                        return;
                    }
                }
            }
            throw new RuntimeException();
        }
        this.A00.A06.A08().AAy(A00(0, 3, 98), AbstractC1248Sv.A0N, new C1249Sw(A00(3, 18, 46)));
    }

    @Override
    public final void A0G(V1 v1) {
        this.A00.A06.A0F().A3F(XG.A01(this.A00.A00), v1.A03().getErrorCode(), v1.A04());
        this.A00.A07.onError(this.A00.A08.A6c(), WT.A00(v1));
    }
}
