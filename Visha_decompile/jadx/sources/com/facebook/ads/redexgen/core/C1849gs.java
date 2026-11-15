package com.facebook.ads.redexgen.core;

import android.os.Bundle;
import android.os.Message;
import android.util.Log;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.facebook.ads.AdError;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdExtendedListener;
import com.facebook.ads.InterstitialAdListener;
import java.util.Arrays;
import okio.Utf8;
import org.mozilla.classfile.ByteCode;

public final class C1849gs implements InterfaceC1112Nm {
    public static byte[] A06;
    public static String[] A07 = {"41kFMkgYcMqjBdEAHWyZzQ9Q1YQDMkZo", "a1qrqbdzoLKte5dp2TdqsHV2Btmo8HIO", "VlRnhGghZyM7Xz", "WVmrs7jRPAo6ieNv", "abQhu9SgesOIRxLkCU6L7yAdrfeNFYXV", "iVqBhi5IkesALAcr", "e6wMTa30i0R6i9", "GTVyj1NjpD4uWxM1mBTnBnh1LH0X6W6g"};
    public boolean A00;
    public final AbstractC1869hD A01;
    public final InterfaceC1100Na A02;
    public final C1852gv A03;
    public final HandlerC1107Nh A04;
    public final C1635dL A05;

    public static String A00(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A06, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 112);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A01() {
        A06 = new byte[]{110, 75, 15, 64, 77, 69, 74, 76, 91, 15, 70, 92, 15, 65, 90, 67, 67, 9, 30, 5, 15, 7, 14, 20, 14, 19, 31, 25, 10, 24, 20, 0, 14, 18, 47, 43, 40, 28, 13, 0, 12, 7, 10, 12, 39, 12, 29, 30, 6, 27, 2, 87, 80, 74, 65, 91, 76, 76, 81, 76, 65, 93, 81, 90, 91, 65, 85, 91, 71, 14, 13, 12, 5, 29, ByteCode.T_LONG, 12, 20, 3, 14, ByteCode.T_LONG, 6, 3, 22, ByteCode.T_LONG, 13, 12, 29, 22, ByteCode.T_LONG, 15, 7, 29, 9, 7, 27, 39, 15, 25, 25, ByteCode.T_LONG, 13, 15, 80, 74, 118, 82, 72, 72, 82, 85, 92, 27, 89, 78, 85, 95, 87, 94, 27, 93, 84, 73, 27, 86, 94, 72, 72, 90, 92, 94, 21, 35, 36, 34, 47, 53, 34, 34, Utf8.REPLACEMENT_BYTE, 34, 47, 61, 53, 35, 35, 49, 55, 53, 47, 59, 53, 41, 72, 89, 64};
    }

    static {
        A01();
    }

    public C1849gs(C1635dL c1635dL, C1852gv c1852gv, InterfaceC1100Na interfaceC1100Na, AbstractC1869hD abstractC1869hD, HandlerC1107Nh handlerC1107Nh) {
        this.A05 = c1635dL;
        this.A03 = c1852gv;
        this.A02 = interfaceC1100Na;
        this.A01 = abstractC1869hD;
        this.A04 = handlerC1107Nh;
    }

    @Override
    public final Bundle A5J(String str) {
        return AbstractC1119Nt.A02(str, this.A03);
    }

    @Override
    public final void A5n() {
        this.A04.A0F(1012, null);
        this.A04.A0C();
        this.A03.A0D(null);
    }

    @Override
    public final int A8H() {
        return 1010;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:25:0x00db A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x0111  */
    /* JADX WARN: Code duplicated, block: B:34:0x0125  */
    /* JADX WARN: Code duplicated, block: B:35:0x0128 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x0129  */
    /* JADX WARN: Code duplicated, block: B:39:0x0139  */
    /* JADX WARN: Code duplicated, block: B:40:0x0143  */
    /* JADX WARN: Code duplicated, block: B:42:0x014d  */
    /* JADX WARN: Code duplicated, block: B:71:? A[RETURN, SYNTHETIC] */
    @Override
    public final void A9b(Message message) {
        int i;
        String[] strArr;
        InterstitialAd interstitialAdA6c = this.A03.A6c();
        String strA00 = A00(152, 3, 89);
        if (interstitialAdA6c == null) {
            this.A05.A08().AAy(strA00, AbstractC1248Sv.A0K, new C1249Sw(A00(0, 17, 95)));
            return;
        }
        int i2 = message.what;
        String strA01 = A00(95, 9, 26);
        String strA02 = A00(104, 27, 75);
        String strA03 = A00(17, 17, 59);
        switch (i2) {
            case 10:
            case AnalyticsListener.EVENT_DRM_KEYS_LOADED:
                Bundle bundle = message.getData().getBundle(strA03);
                if (bundle != null) {
                    int i3 = bundle.getInt(A00(51, 18, 110));
                    String string = bundle.getString(A00(131, 21, 0));
                    AdError adError = new AdError(i3, string);
                    this.A02.AIh(adError);
                    if (this.A03.A6g() != null) {
                        InterstitialAdListener interstitialAdListenerA6g = this.A03.A6g();
                        String[] strArr2 = A07;
                        String str = strArr2[1];
                        String str2 = strArr2[0];
                        int errorCode = str.charAt(1);
                        if (errorCode != str2.charAt(1)) {
                            throw new RuntimeException();
                        }
                        String[] strArr3 = A07;
                        strArr3[2] = "mejJWXlfs8BbYc";
                        strArr3[6] = "mZxW76dM1wQ3lj";
                        interstitialAdListenerA6g.onError(interstitialAdA6c, adError);
                    } else {
                        Log.e(A00(34, 17, 25), string);
                    }
                } else {
                    this.A02.AIc(NZ.A04);
                    this.A05.A08().AAy(strA00, AbstractC1248Sv.A0V, new C1249Sw(strA02, strA01 + message));
                }
                this.A03.A0D(null);
                return;
            case 1020:
                this.A02.AIm();
                Bundle bundle2 = message.getData().getBundle(strA03);
                if (bundle2 != null) {
                    this.A03.A0C(bundle2.getLong(A00(69, 26, 50)));
                } else {
                    this.A05.A08().AAy(strA00, AbstractC1248Sv.A0V, new C1249Sw(strA02, strA01 + message));
                }
                this.A03.A0D(null);
                break;
            case AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED:
                this.A02.AJ2();
                break;
        }
        if (this.A03.A6g() == null) {
            return;
        }
        int i4 = message.what;
        String[] strArr4 = A07;
        if (strArr4[4].charAt(13) == strArr4[7].charAt(13)) {
            String[] strArr5 = A07;
            strArr5[1] = "311XYum1gU07qORRQ11S6l3eVKorNtDz";
            strArr5[0] = "91xN7y0ETPjwD6LsGrgnzhnoOTtOTKl3";
            switch (i4) {
                case 1020:
                    if (!this.A00) {
                        this.A03.A6g().onAdLoaded(interstitialAdA6c);
                        return;
                    } else {
                        this.A00 = false;
                        return;
                    }
                case 1021:
                    this.A03.A6g().onInterstitialDisplayed(interstitialAdA6c);
                    return;
                case AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED:
                    this.A03.A6g().onInterstitialDismissed(interstitialAdA6c);
                    return;
                case AnalyticsListener.EVENT_DRM_KEYS_LOADED:
                default:
                    if (this.A03.A04() == null) {
                        return;
                    }
                    i = message.what;
                    strArr = A07;
                    if (strArr[5].length() != strArr[3].length()) {
                        switch (i) {
                            case 3000:
                                this.A03.A04().onRewardedAdCompleted();
                                return;
                            case 3001:
                                this.A03.A04().onRewardedAdServerSucceeded();
                                return;
                            case 3002:
                                this.A03.A04().onRewardedAdServerFailed();
                                return;
                            default:
                                return;
                        }
                    }
                    String[] strArr6 = A07;
                    strArr6[4] = "s5jamizIFVbotxZqKkKlcngcWbLxgQvF";
                    strArr6[7] = "aiBjTIjz8RGRWx4VpHoYFj9LDTOMQV9R";
                    switch (i) {
                        case 3000:
                            this.A03.A04().onRewardedAdCompleted();
                            return;
                        case 3001:
                            this.A03.A04().onRewardedAdServerSucceeded();
                            return;
                        case 3002:
                            this.A03.A04().onRewardedAdServerFailed();
                            return;
                        default:
                            return;
                    }
                case 1024:
                    this.A03.A6g().onAdClicked(interstitialAdA6c);
                    return;
                case 1025:
                    this.A03.A6g().onLoggingImpression(interstitialAdA6c);
                    return;
                case AnalyticsListener.EVENT_DRM_KEYS_REMOVED:
                    boolean z = this.A03.A6g() instanceof InterstitialAdExtendedListener;
                    String[] strArr7 = A07;
                    if (strArr7[2].length() == strArr7[6].length()) {
                        String[] strArr8 = A07;
                        strArr8[2] = "qw7ApZ7ipfHbwj";
                        strArr8[6] = "LJsV5SavG50yIX";
                        if (z) {
                            ((InterstitialAdExtendedListener) this.A03.A6g()).onInterstitialActivityDestroyed();
                        }
                        if (this.A03.A04() == null) {
                            return;
                        }
                        i = message.what;
                        strArr = A07;
                        if (strArr[5].length() != strArr[3].length()) {
                            switch (i) {
                                case 3000:
                                    this.A03.A04().onRewardedAdCompleted();
                                    return;
                                case 3001:
                                    this.A03.A04().onRewardedAdServerSucceeded();
                                    return;
                                case 3002:
                                    this.A03.A04().onRewardedAdServerFailed();
                                    return;
                                default:
                                    return;
                            }
                        }
                        String[] strArr9 = A07;
                        strArr9[4] = "s5jamizIFVbotxZqKkKlcngcWbLxgQvF";
                        strArr9[7] = "aiBjTIjz8RGRWx4VpHoYFj9LDTOMQV9R";
                        switch (i) {
                            case 3000:
                                this.A03.A04().onRewardedAdCompleted();
                                return;
                            case 3001:
                                this.A03.A04().onRewardedAdServerSucceeded();
                                return;
                            case 3002:
                                this.A03.A04().onRewardedAdServerFailed();
                                return;
                            default:
                                return;
                        }
                    }
                    break;
            }
        }
        throw new RuntimeException();
    }

    @Override
    public final void AJ3(boolean z) {
        this.A00 = z;
    }
}
