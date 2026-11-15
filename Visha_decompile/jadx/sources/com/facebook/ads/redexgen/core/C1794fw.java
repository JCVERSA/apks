package com.facebook.ads.redexgen.core;

import android.view.View;
import android.widget.RelativeLayout;
import java.lang.ref.WeakReference;

public class C1794fw implements InterfaceC1366Xn {
    public static String[] A01 = {"8tOzOPKLz5DDIwqC88XBXxH90bmVDotF", "YCktuRbEMhZaz9U821mncTHWO05lwCqY", "Eq7g3criU65KDBPK", "XEHycrxPk7FQv1FkL381pmPNBNbKujpl", "niYnM4G6gzmxtC7fq", "sRQOtQAi", "8G5qrnHnaOtx52JqPPi", "6arHmIfqlBfM2iqNpfy3RxuQJelIt1eI"};
    public final WeakReference<R0> A00;

    public C1794fw(R0 r0) {
        this.A00 = new WeakReference<>(r0);
    }

    private void A00(R0 r0) {
        C1611cw c1611cwA07 = r0.A07();
        if (c1611cwA07 != null && r0.A04() != null) {
            r0.A04().bringChildToFront(c1611cwA07);
        }
    }

    @Override
    public void A3w(View view, int i, RelativeLayout.LayoutParams layoutParams) {
        R0 r0 = this.A00.get();
        if (r0 != null && r0.A04() != null) {
            r0.A04().addView(view, i, layoutParams);
            A00(r0);
        }
    }

    @Override
    public void A3x(View view, RelativeLayout.LayoutParams layoutParams) {
        R0 r0 = this.A00.get();
        if (r0 != null && r0.A04() != null) {
            r0.A04().addView(view, layoutParams);
            A00(r0);
        }
    }

    @Override
    public void A4b(String str) {
        if (this.A00.get() != null) {
            this.A00.get().A0C(str);
        }
    }

    @Override
    public void A4c(String str, C1256Td c1256Td) {
        if (this.A00.get() != null) {
            this.A00.get().A0E(str, c1256Td);
        }
    }

    @Override
    public void AAf(String str, N9 n9) {
        if (this.A00.get() != null) {
            WeakReference<R0> weakReference = this.A00;
            if (A01[4].length() == 0) {
                throw new RuntimeException();
            }
            A01[2] = "IO1gKUYJJG6YtU6JnI8y";
            weakReference.get().A0D(str, n9);
        }
    }

    @Override
    public void ACf(int i) {
        R0 activityApi = this.A00.get();
        if (activityApi != null) {
            activityApi.finish(i);
        }
    }
}
