package com.facebook.ads.redexgen.core;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.facebook.ads.NativeAdScrollView;
import com.facebook.ads.NativeAdView;
import com.facebook.ads.NativeAdViewAttributes;
import com.facebook.ads.NativeAdsManager;
import com.facebook.ads.internal.api.NativeAdScrollViewApi;
import java.util.Arrays;
import okio.Utf8;

public final class RL implements NativeAdScrollViewApi {
    public static byte[] A07;
    public static String[] A08 = {"nVlKDJKKuSIwTlTd16ukFrbX3MHjOHdA", "", "ICm0nIVybe3UlAuBnNKxRWg2mc3pSWnS", "", "SSXPkfr4Ttu5KI5IplEjDPNbu7CwAkh6", "a5Au6kTC9kTmWkoQnewo7jq8", "NRpBzWywFD0YlyTuhproyOYpEldGp2Hb", CmcdData.OBJECT_TYPE_MANIFEST};
    public final int A00;
    public final NativeAdScrollView.AdViewProvider A01;
    public final NativeAdView.Type A02;
    public final NativeAdViewAttributes A03;
    public final NativeAdsManager A04;
    public final C1776fe A05;
    public final C1635dL A06;

    public static String A06(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A07, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 114);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A07() {
        byte[] bArr = {60, 4, 2, 5, 81, 1, 3, 30, 7, 24, 21, 20, 81, 16, 81, Utf8.REPLACEMENT_BYTE, 16, 5, 24, 7, 20, 48, 21, 39, 24, 20, 6, 95, 37, 8, 1, 20, 93, 81, 48, 21, 39, 24, 20, 6, 33, 3, 30, 7, 24, 21, 20, 3, 81, 30, 3, 81, 16, 81, 31, 16, 5, 24, 7, 20, 48, 21, 39, 24, 20, 6, 57, 20, 24, 22, 25, 5, 53, 1, 52, 27, 14, 19, 12, 31, 59, 30, 9, 55, 27, 20, 27, 29, 31, 8, 90, 20, 21, 14, 90, 22, 21, 27, 30, 31, 30};
        String[] strArr = A08;
        if (strArr[6].charAt(14) != strArr[0].charAt(14)) {
            throw new RuntimeException();
        }
        String[] strArr2 = A08;
        strArr2[2] = "Ml52sYoz4FZavAZNhfJ3fi3jnwDnZY4L";
        strArr2[4] = "tWqTcrLKFqppCUd7uCsjOJfAn0Jrdt0w";
        A07 = bArr;
    }

    static {
        A07();
    }

    public RL(NativeAdScrollView nativeAdScrollView, Context context, NativeAdsManager nativeAdsManager, NativeAdScrollView.AdViewProvider adViewProvider, int i, NativeAdView.Type type, NativeAdViewAttributes nativeAdViewAttributes, int i2) {
        if (nativeAdsManager.isLoaded()) {
            if (type != null || adViewProvider != null || i > 0) {
                this.A06 = RB.A03(context);
                this.A04 = nativeAdsManager;
                this.A03 = nativeAdViewAttributes;
                this.A01 = adViewProvider;
                this.A02 = type;
                this.A00 = i2;
                C1777ff c1777ff = new C1777ff(this);
                this.A05 = new C1776fe(context);
                if (this.A02 == null) {
                    if (i > 0) {
                        this.A05.A00(((int) AbstractC1338Wl.A02) * i);
                    }
                } else {
                    this.A05.A00((int) (AbstractC1338Wl.A02 * this.A02.getHeight()));
                }
                this.A05.setAdapter(c1777ff);
                setInset(20);
                c1777ff.A09();
                nativeAdScrollView.addView(this.A05);
                return;
            }
            throw new IllegalArgumentException(A06(0, 74, 3));
        }
        throw new IllegalStateException(A06(74, 27, 8));
    }

    @Override
    public final void setInset(int i) {
        if (i > 0) {
            float f = AbstractC1338Wl.A02;
            float density = i;
            int insetDp = Math.round(density * f);
            this.A05.setPadding(insetDp, 0, insetDp, 0);
            float density2 = i / 2;
            this.A05.setPageMargin(Math.round(density2 * f));
            this.A05.setClipToPadding(false);
        }
    }
}
