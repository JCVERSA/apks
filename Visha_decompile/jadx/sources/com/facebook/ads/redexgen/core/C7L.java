package com.facebook.ads.redexgen.core;

import android.content.res.Resources;
import android.net.Uri;
import android.util.Log;
import android.widget.LinearLayout;
import androidx.media3.common.PlaybackException;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.facebook.ads.internal.protocol.AdPlacementType;
import com.facebook.ads.internal.settings.AdInternalSettings;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Map;
import java.util.UUID;
import org.json.JSONObject;

public final class C7L<NativeViewabilityLogger> implements InterfaceC1947id {
    public static byte[] A0J;
    public static String[] A0K = {"NhwOmA8H17maQr2Thm3XPPVG1xwEsLhZ", "rranxCubAcBFDRhPr2LDrxoK3htxcyeL", "LmhV8", "ZLGOK7uKxyyp5W3sNEqoBEODv8zXcPE1", "dNK0bBZMrDk2YJmjrhSzlk1RMTFmUAsD", "q33l17MPfjO0fzYSahPh7EE95Ux5x03H", "4VfBn9Mh4W5rafl7A4va0uDeREUgOp63", "NLrbv196ww605txiYhOndsfSQjY"};
    public static final String A0L;
    public MX A00;
    public MY A01;
    public C1922iE A02;
    public AnonymousClass78 A03;
    public C6M A04;
    public US A05;
    public V4 A06;
    public InterfaceC1412Zh A08;
    public C1031Ki A09;
    public C5G A0A;
    public AbstractC1707eW A0B;
    public C1708eX A0C;
    public String A0E;
    public final String A0I = UUID.randomUUID().toString();
    public boolean A0F = false;
    public boolean A0G = false;
    public boolean A0H = false;
    public XH A07 = new XH();
    public Boolean A0D = false;

    public static String A08(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A0J, i, i + i2);
        for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
            bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] - i3) + PlaybackException.ERROR_CODE_NOT_AVAILABLE_IN_REGION);
        }
        return new String(bArrCopyOfRange);
    }

    public static void A0B() {
        A0J = new byte[]{28, 40, 38, -25, 31, 26, 28, 30, 27, 40, 40, 36, -25, 26, 29, 44, -25, 27, 26, 39, 39, 30, 43, -25, 28, 37, 34, 28, 36, 30, 29, -15, -30, -11, -15, -84, -27, -15, -22, -23, -21, -22, -36, -93, -82};
    }

    static {
        A0B();
        A0L = C7L.class.getSimpleName();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    public void A0A() {
        if (this.A00 != null && this.A0A != null && this.A03 != null && this.A03.A1Y()) {
            this.A00.ACc(this, this.A0A);
        }
        if (this.A00 != null) {
            boolean z = this.A0F;
            if (A0K[1].charAt(21) == 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A0K;
            strArr[6] = "pcQhCrMOoUvf1wSUiS8eXhj7G6bioSrh";
            strArr[4] = "JWZBC7ZhFf7k7YrTz5pa22tV9NT1Mc4w";
            if (z && (this.A0G || !this.A0H)) {
                MX mx = this.A00;
                if (A0K[3].charAt(25) != 'G') {
                    A0K[3] = "irPj8aYnTZH6GsdLYSbTyVfXBLXHQnPh";
                    mx.ACc(this, this.A09);
                } else {
                    A0K[3] = "5PA9hoTjlgD01Tr6eTkR8jxCvDfXc2RO";
                    mx.ACc(this, this.A09);
                }
            }
        }
        this.A04.A0F().A4G(this.A00 != null);
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    public void A0C(int i, TF tf) {
        C1943iZ c1943iZ = new C1943iZ(this);
        this.A0A = new C5G(this.A04, this.A05, c1943iZ, this.A03, A08(0, 31, 79), 2, this.A07);
        this.A0B = new C1938iU(this);
        this.A0C = new C1708eX(this.A0A, tf.A04(), tf.A09(), true, new WeakReference(this.A0B), this.A04);
        this.A0C.A0W(this.A03.A0i());
        this.A0C.A0X(this.A03.A0j());
        this.A0A.setVisibility(0);
        this.A04.getResources();
        this.A0A.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        this.A0A.AJS();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    private void A0F(TF tf, JSONObject jSONObject, V4 v4) {
        this.A0G = false;
        final C1924iG c1924iGA00 = C1924iG.A00(this.A04, jSONObject);
        this.A0E = c1924iGA00.A7G();
        if (ML.A06(this.A04, c1924iGA00, this.A05)) {
            this.A04.A0F().A4u();
            this.A00.ADj(this, V1.A00(AdErrorType.NO_FILL));
            return;
        }
        this.A08 = new AbstractC1042Kt() {
            public static byte[] A02;
            public static String[] A03 = {"dvnbyrX9L5Wlup6c2JnWkpTYBAz3QIun", "ITj", "KqeTcLSx6Zay5vtxcnHqZ", "bGeXa7nDz1byFpBCq22utpLnb", "UYph9iPsD3jee8BOLuPQ6r57rjKJpmVb", "DfaYbRSw6X21pxGApii0qweOJ64z1eNB", "52vckdype7aS5lLwU46sLHF0XTMQAze7", "uuBWL9In1wjj"};

            public static String A00(int i, int i2, int i3) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(A02, i, i + i2);
                for (int i4 = 0; i4 < bArrCopyOfRange.length; i4++) {
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 105);
                }
                return new String(bArrCopyOfRange);
            }

            public static void A01() {
                A02 = new byte[]{67, 116, 116, 105, 116, 38, 99, 126, 99, 101, 115, 114, 111, 104, 97, 38, 103, 101, 114, 111, 105, 104, 119, 117, 120, 120, 113, 102, 64, 109, 100, 113, 116, 112, 115, 118, 81, 74, 77, 85, 81, 65, 109, 64};
            }

            static {
                A01();
            }

            @Override
            public final void ACO() {
                this.A00.A0G = true;
                if (this.A00.A0H) {
                    this.A00.A0A();
                }
            }

            @Override
            public final void ACj(String str, Map<String, String> map) {
                N3 n3A21;
                this.A00.A04.A0F().A4H();
                Uri uriA00 = WQ.A00(str);
                map.put(A00(22, 10, 125), AdPlacementType.BANNER.name());
                map.put(A00(36, 8, 77), this.A00.A0I);
                C6M c6m = this.A00.A04;
                US us = this.A00.A05;
                String strA7G = c1924iGA00.A7G();
                if (this.A00.A03 == null) {
                    n3A21 = null;
                } else {
                    C7L c7l = this.A00;
                    if (A03[7].length() == 4) {
                        throw new RuntimeException();
                    }
                    A03[2] = "7FoTEC4l3Pv3ceMVIqf";
                    n3A21 = c7l.A03.A21();
                }
                MH adAction = MI.A00(c6m, us, strA7G, uriA00, map, n3A21);
                ME meA0G = ME.A09;
                if (adAction != null) {
                    try {
                        this.A00.A04.A0F().A4E();
                        meA0G = adAction.A0G(null);
                    } catch (Exception e) {
                        Log.e(C7L.A0L, A00(0, 22, 111), e);
                    }
                }
                if (A00(32, 4, 123).equals(uriA00.getScheme()) && MI.A04(uriA00.getAuthority()) && this.A00.A00 != null && meA0G != ME.A06) {
                    this.A00.A00.ACb(this.A00);
                }
            }

            @Override
            public final void ADW() {
                this.A00.A04.A0F().A4I(this.A00.A02 != null);
                if (this.A00.A02 != null) {
                    this.A00.A02.A03();
                }
            }

            @Override
            public final void AET() {
                this.A00.A04.A0F().A4K();
                this.A00.A02.A09();
            }

            @Override
            public final void AFw() {
            }
        };
        this.A09 = new C1031Ki(this.A04, (WeakReference<InterfaceC1412Zh>) new WeakReference(this.A08), tf.A04(), A7G());
        this.A09.A0L(tf.A07(), tf.A08());
        MS impressionHelper = new C1937iT(this);
        this.A02 = new C1922iE(this.A04, this.A05, this.A09, this.A09.getViewabilityChecker(), impressionHelper, v4);
        this.A02.A0A(c1924iGA00);
        this.A09.loadDataWithBaseURL(AbstractC1415Zk.A01(AdInternalSettings.getUrlPrefix()), c1924iGA00.A04(), A08(31, 9, 19), A08(40, 5, 12), null);
        this.A0F = true;
        A0A();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0053 A[PHI: r1
      0x0053: PHI (r1v13 int) = (r1v10 int), (r1v17 int) binds: [B:20:0x0079, B:12:0x0051] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:15:0x005f  */
    /* JADX WARN: Code duplicated, block: B:17:0x0062  */
    /* JADX WARN: Code duplicated, block: B:23:0x007e  */
    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    private void A0G(V4 v4, TF tf) {
        int i;
        int bannerHeight;
        if (this.A03 != null) {
            US us = this.A05;
            if (A0K[1].charAt(21) == 'I') {
                throw new RuntimeException();
            }
            String[] strArr = A0K;
            strArr[6] = "0asQ5nS3mEJJFXqECkaJp8czAINd5ojj";
            strArr[4] = "wkfCN0fAVUFan65EWCqz3ffd3K2ZXjjS";
            if (us == null) {
                return;
            }
            int iA03 = v4.A03();
            if (A0K[3].charAt(25) != 'G') {
                A0K[5] = "7AAzPingpmVfFCqSXKHauNoNKo9Xv93Z";
                i = (int) (iA03 * Resources.getSystem().getDisplayMetrics().density);
                if (U7.A2A(this.A04)) {
                    bannerHeight = C1207Rf.A0A(this.A03.A1C()) ? 1 : 0;
                }
                if (bannerHeight == 0) {
                    A0C(i, tf);
                } else {
                    new C1207Rf(new SF(this.A04), this.A03.A1C(), this.A03.A0v(), this.A03.A17(), true, new C1946ic(this, i, tf, this)).A0B();
                }
            }
            i = (int) (iA03 * Resources.getSystem().getDisplayMetrics().density);
            if (U7.A2A(this.A04)) {
                if (C1207Rf.A0A(this.A03.A1C())) {
                }
            }
            if (bannerHeight == 0) {
                A0C(i, tf);
            } else {
                new C1207Rf(new SF(this.A04), this.A03.A1C(), this.A03.A0v(), this.A03.A17(), true, new C1946ic(this, i, tf, this)).A0B();
            }
            if (bannerHeight == 0) {
                A0C(i, tf);
            } else {
                new C1207Rf(new SF(this.A04), this.A03.A1C(), this.A03.A0v(), this.A03.A17(), true, new C1946ic(this, i, tf, this)).A0B();
            }
        }
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override
    public final String A7G() {
        return this.A0E;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override
    public final AdPlacementType A8c() {
        if (U7.A19(this.A04)) {
            V4 v4 = this.A06;
            String[] strArr = A0K;
            if (strArr[2].length() == strArr[7].length()) {
                throw new RuntimeException();
            }
            A0K[0] = "gRyzGCsQg6apk2eHBZ3N290V4KDgGwY2";
            if (v4 != null && this.A06 == V4.A09) {
                return AdPlacementType.MEDIUM_RECTANGLE;
            }
        }
        return AdPlacementType.BANNER;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override
    public final void AAk(C6M c6m, US us, V4 v4, MX mx, JSONObject jSONObject, TF tf) {
        c6m.A0F().A4F();
        this.A04 = c6m;
        this.A05 = us;
        this.A00 = mx;
        this.A06 = v4;
        this.A0H = U7.A1j(this.A04.getApplicationContext());
        this.A03 = AnonymousClass78.A00(jSONObject, this.A04);
        if (this.A03.A1Y()) {
            A0G(v4, tf);
        } else {
            A0F(tf, jSONObject, v4);
        }
        this.A01 = new MY(this.A04, this.A0I, this, mx);
        this.A01.A02();
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override
    public final boolean AJa() {
        return true;
    }

    /* JADX WARN: Generic types in debug info not equals: com.facebook.ads.redexgen.X.7L != com.facebook.ads.internal.adapters.FacebookBannerAdapter<NativeViewabilityLogger> */
    @Override
    public final void onDestroy() {
        this.A04.A0F().A4D(this.A09 != null);
        if (this.A09 != null) {
            this.A09.destroy();
            this.A09 = null;
            this.A08 = null;
        }
        if (this.A01 != null) {
            this.A01.A03();
        }
    }
}
