package com.facebook.ads.redexgen.core;

import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdView;
import java.util.ArrayList;
import java.util.List;

public class C1777ff extends AbstractC1138Oo {
    public static String[] A02 = {"mOKLXDYLG6rjJ8Uhc3dA94WggTy9aTCY", "BGa58WlKg30brm3iaXDpmKRreNqQx6sP", "OEIW0kNKyti99uOllTeGQwyl2xTRs9Rh", "66ZfANP52P8mfwFN1T5txUDlKbhE7PV5", "bDC5rvyouDOgyvzMPOhXiUUV9GXsFm8X", "OYxAj3HMhtWdnmP8KTtjhXT1I6nqQa9s", "h9E4hr1XPZf2wtmTKQKy9uKgM46lwlc6", "41TCzlsMJFbrsVbgrjJGy8KkwVmNtDJ0"};
    public List<NativeAd> A00 = new ArrayList();
    public final RL A01;

    public C1777ff(RL rl) {
        this.A01 = rl;
    }

    @Override
    public final int A01() {
        return this.A00.size();
    }

    @Override
    public final int A02(Object obj) {
        int index = this.A00.indexOf(obj);
        if (index >= 0) {
            return index;
        }
        return -2;
    }

    @Override
    public final Object A04(ViewGroup viewGroup, int i) {
        View adView;
        if (this.A01.A01 != null) {
            adView = this.A01.A01.createView(this.A00.get(i), i);
        } else {
            adView = this.A01.A02 != null ? NativeAdView.render(this.A01.A06, this.A00.get(i), this.A01.A02, this.A01.A03) : NativeAdView.render(this.A01.A06, this.A00.get(i), this.A01.A03);
        }
        viewGroup.addView(adView);
        return adView;
    }

    @Override
    public final void A07(ViewGroup viewGroup, int i, Object obj) {
        if (i < this.A00.size()) {
            RL rl = this.A01;
            if (A02[4].charAt(30) == 'x') {
                throw new RuntimeException();
            }
            String[] strArr = A02;
            strArr[2] = "v77RhDbNLQhSOdbZwI5GIdcCxuAqz5PX";
            strArr[7] = "TxIZGVGrDJLkO7AUrnSGEi4CFfNom122";
            if (rl.A01 != null) {
                this.A01.A01.destroyView(this.A00.get(i), (View) obj);
            } else {
                this.A00.get(i).unregisterView();
            }
        }
        viewGroup.removeView((View) obj);
    }

    @Override
    public final boolean A08(View view, Object obj) {
        return view == obj;
    }

    public final void A09() {
        this.A00.clear();
        int iMin = Math.min(this.A01.A00, this.A01.A04.getUniqueNativeAdCount());
        for (int i = 0; i < iMin; i++) {
            NativeAd ad = this.A01.A04.nextNativeAd();
            C1178Qc.A0L(ad.getInternalNativeAd()).A1d(true);
            this.A00.add(ad);
        }
        A05();
    }
}
