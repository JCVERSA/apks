package com.facebook.ads.redexgen.core;

import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.MediaViewVideoRenderer;
import com.facebook.ads.NativeAd;
import com.facebook.ads.VideoAutoplayBehavior;
import com.facebook.ads.VideoStartReason;
import com.facebook.ads.internal.api.AdComponentViewApi;
import com.facebook.ads.internal.api.AdViewConstructorParams;
import com.facebook.ads.internal.api.MediaViewVideoRendererApi;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.util.Arrays;
import okio.Utf8;

public final class RH implements MediaViewVideoRendererApi {
    public static byte[] A0G;
    public static String[] A0H = {"4Iqv8cTE9pbJV", "CYHnjvYzZ1Zp8VPlfffkEyqwlctrpQBL", "X8G7CA2UCcBTYjTzfkqICRpH9C9x48uG", "IuynGJFHahmt0", "YKtJTe5IUh", "gPGIa6LKGgSGxdMiTt4aCF2OLs57juUg", "T83", "DMaEshMk8cfihQw150z6d7U8VPkriS4i"};
    public static final String A0I;
    public MediaViewVideoRenderer A00;
    public VideoAutoplayBehavior A01;
    public C1635dL A03;
    public InterfaceC1290Um A04;
    public AnonymousClass64 A05;
    public boolean A06;
    public boolean A07;
    public NativeAd A08;
    public final DN A0D = new DN() {
        @Override
        public final void A03(DO r2) {
            this.A00.A00.onPrepared();
        }
    };
    public final DP A0C = new DP() {
        @Override
        public final void A03(DQ dq) {
            if (this.A00.A08 != null) {
                C1178Qc.A0L(this.A00.A08.getInternalNativeAd()).A1f(true, true);
            }
            this.A00.A00.onPlayed();
        }
    };
    public final DR A0B = new DR() {
        @Override
        public final void A03(C3Y c3y) {
            this.A00.A00.onPaused();
        }
    };
    public final DK A0E = new DK() {
        @Override
        public final void A03(DL dl) {
            this.A00.A00.onSeek();
        }
    };
    public final DX A09 = new DX() {
        @Override
        public final void A03(C06013d c06013d) {
            this.A00.A00.onCompleted();
            if (!U7.A1e(this.A00.A00.getContext())) {
                return;
            }
            this.A00.A00.play(VideoStartReason.AUTO_STARTED);
        }
    };
    public final DE A0F = new DE() {
        @Override
        public final void A03(DF df) {
            this.A00.A00.onVolumeChanged();
        }
    };
    public final DV A0A = new DV() {
        @Override
        public final void A03(DW dw) {
            if (this.A00.A08 != null) {
                C1178Qc.A0L(this.A00.A08.getInternalNativeAd()).A1f(false, true);
            }
            this.A00.A00.onError();
        }
    };
    public R8 A02 = new R8();

    public static String A01(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0G, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 3);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A02() {
        A0G = new byte[]{31, 56, 32, 55, 58, Utf8.REPLACEMENT_BYTE, 50, 118, 0, Utf8.REPLACEMENT_BYTE, 51, 33, 118, 53, 57, 56, 37, 34, 36, 35, 53, 34, 57, 36, 118, 38, 55, 36, 55, 59, 37, 118, 34, 47, 38, 51, 120, 126, 72, 72, 70, 68, 67, 74, 13, 64, 88, 94, 89, 13, 79, 72, 13, 93, 95, 72, 78, 72, 73, 72, 73, 13, 79, 84, 13, 76, 13, 78, 76, 65, 65, 13, 89, 66, 13, 72, 67, 74, 76, 74, 72, 126, 72, 72, 70, 1, 13, 76, 67, 73, 13, 75, 66, 65, 65, 66, 90, 72, 73, 13, 79, 84, 13, 76, 13, 78, 76, 65, 65, 13, 89, 66, 13, 73, 68, 94, 72, 67, 74, 76, 74, 72, 126, 72, 72, 70, 3, 38, 43, 49, 39, 44, 37, 35, 37, 39, 17, 39, 39, 41, 98, 33, 35, 46, 46, 39, 38, 98, 53, 43, 54, 42, 45, 55, 54, 98, 39, 44, 37, 35, 37, 39, 17, 39, 39, 41, 108, 108, 103, 110, 104, 110, 108, 90, 108, 108, 98, 41, 106, 104, 101, 101, 108, 109, 41, 126, 96, 125, 97, 102, 124, 125, 41, 109, 96, 122, 108, 103, 110, 104, 110, 108, 90, 108, 108, 98, 39};
    }

    static {
        A02();
        A0I = MediaViewVideoRenderer.class.getSimpleName();
    }

    public final void A03() {
        this.A00.pause(false);
        this.A05.setClientToken(null);
        this.A05.setVideoMPD(null);
        this.A05.setVideoURI((Uri) null);
        this.A05.setVideoCTA(null);
        this.A05.setNativeAd(null);
        this.A01 = VideoAutoplayBehavior.DEFAULT;
        if (this.A08 != null) {
            C1178Qc.A0L(this.A08.getInternalNativeAd()).A1f(false, false);
        }
        this.A08 = null;
        if (this.A04 != null) {
            InterfaceC1290Um interfaceC1290Um = this.A04;
            if (A0H[6].length() != 3) {
                throw new RuntimeException();
            }
            A0H[6] = "qaG";
            interfaceC1290Um.AJn();
        }
    }

    public final void A04(NativeAd nativeAd) {
        this.A08 = nativeAd;
        C1635dL c1635dLA12 = ((C1178Qc) nativeAd.getInternalNativeAd()).A12();
        C1635dL adObjectContext = this.A03;
        adObjectContext.A0L(c1635dLA12);
        RK rk = (RK) nativeAd.getNativeAdApi();
        this.A05.setClientToken(C1178Qc.A0L(nativeAd.getInternalNativeAd()).A1C());
        this.A05.setVideoMPD(rk.A01());
        this.A05.setVideoURI(rk.A02());
        C1931iN c1931iNA0z = C1178Qc.A0L(nativeAd.getInternalNativeAd()).A0z();
        if (c1931iNA0z != null) {
            this.A05.setVideoProgressReportIntervalMs(c1931iNA0z.A0B());
        }
        this.A05.setVideoCTA(nativeAd.getAdCallToAction());
        this.A05.setNativeAd(nativeAd);
        this.A01 = rk.getVideoAutoplayBehavior();
        if (this.A04 != null) {
            this.A04.AIp(nativeAd);
        }
    }

    public final void A05(US us) {
        this.A05.setAdEventManager(us);
    }

    public final void A06(InterfaceC1290Um interfaceC1290Um) {
        this.A04 = interfaceC1290Um;
    }

    public final void A07(Y1 y1) {
        this.A05.setListener(y1);
    }

    @Override
    public final void destroy() {
        this.A05.A0Z();
    }

    @Override
    public final void disengageSeek(VideoStartReason videoStartReason) {
        if (!this.A06) {
            if (AdInternalSettings.isDebugBuild()) {
                String str = A0I;
                String strA01 = A01(127, 40, 65);
                if (A0H[6].length() != 3) {
                    throw new RuntimeException();
                }
                String[] strArr = A0H;
                strArr[0] = "GDpgiWeynUT3r";
                strArr[4] = "Fcrjr5dO1W";
                Log.w(str, strA01);
                return;
            }
            return;
        }
        this.A06 = false;
        if (this.A07) {
            this.A05.A0h(XL.A00(videoStartReason), 3);
        }
        this.A00.onSeekDisengaged();
    }

    @Override
    public final void engageSeek() {
        if (this.A06) {
            if (AdInternalSettings.isDebugBuild()) {
                Log.w(A0I, A01(167, 40, 10));
            }
        } else {
            this.A06 = true;
            this.A07 = EnumC1705eU.A0A.equals(this.A05.getState());
            this.A05.A0l(false, 1);
            this.A00.onSeekEngaged();
        }
    }

    @Override
    public final AdComponentViewApi getAdComponentViewApi() {
        return this.A02;
    }

    @Override
    public final int getCurrentTimeMs() {
        return this.A05.getCurrentPositionInMillis();
    }

    @Override
    public final int getDuration() {
        return this.A05.getDuration();
    }

    @Override
    public final View getVideoView() {
        return this.A05.getVideoView();
    }

    @Override
    public final float getVolume() {
        return this.A05.getVolume();
    }

    @Override
    public final void initialize(AdViewConstructorParams adViewConstructorParams, MediaViewVideoRenderer mediaViewVideoRenderer) {
        C1635dL c1635dLA03;
        this.A00 = mediaViewVideoRenderer;
        Context context = adViewConstructorParams.getContext();
        if (context instanceof C1635dL) {
            c1635dLA03 = (C1635dL) context;
        } else {
            c1635dLA03 = RB.A03(context);
        }
        this.A03 = c1635dLA03;
        switch (adViewConstructorParams.getInitializationType()) {
            case 0:
                this.A05 = new AnonymousClass64(c1635dLA03);
                break;
            case 1:
                this.A05 = new AnonymousClass64(c1635dLA03, adViewConstructorParams.getAttributeSet());
                break;
            case 2:
                this.A05 = new AnonymousClass64(c1635dLA03, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleAttr());
                break;
            case 3:
                this.A05 = new AnonymousClass64(c1635dLA03, adViewConstructorParams.getAttributeSet(), adViewConstructorParams.getDefStyleRes());
                break;
            default:
                throw new IllegalArgumentException(A01(0, 37, 85));
        }
        this.A05.setEnableBackgroundVideo(mediaViewVideoRenderer.shouldAllowBackgroundPlayback());
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        this.A05.setLayoutParams(layoutParams);
        this.A02.addView(this.A05, -1, layoutParams);
        EnumC1343Wq.A04(this.A05, EnumC1343Wq.A0B);
        this.A05.getEventBus().A03(this.A0D, this.A0C, this.A0B, this.A0E, this.A09, this.A0F, this.A0A);
    }

    @Override
    public final void pause(boolean z) {
        this.A05.A0l(z, 2);
    }

    @Override
    public final void play(VideoStartReason videoStartReason) {
        this.A05.A0h(XL.A00(videoStartReason), 2);
    }

    @Override
    public final void seekTo(int i) {
        if (!this.A06) {
            boolean zIsDebugBuild = AdInternalSettings.isDebugBuild();
            String[] strArr = A0H;
            if (strArr[0].length() == strArr[4].length()) {
                throw new RuntimeException();
            }
            A0H[1] = "0wh1LQIbECU2tB2xLmMlqLa216eizCy3";
            if (zIsDebugBuild) {
                Log.w(A0I, A01(37, 90, 46));
                return;
            }
            return;
        }
        this.A05.A0d(i);
    }

    @Override
    public final void setVolume(float f) {
        this.A05.setVolume(f);
    }

    @Override
    public final boolean shouldAutoplay() {
        if (this.A05 == null || this.A05.getState() == EnumC1705eU.A06) {
            return false;
        }
        return this.A01 == VideoAutoplayBehavior.ON || this.A01 == VideoAutoplayBehavior.DEFAULT;
    }
}
