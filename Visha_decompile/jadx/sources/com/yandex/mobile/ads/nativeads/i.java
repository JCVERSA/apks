package com.yandex.mobile.ads.nativeads;

import com.yandex.mobile.ads.impl.b02;
import com.yandex.mobile.ads.impl.e61;
import com.yandex.mobile.ads.impl.q61;
import defpackage.y45;
import defpackage.z71;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class i extends e implements SliderAd {
    private final b02 d;
    private final g e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(b02 b02Var, g gVar) {
        super(b02Var);
        y45.j(b02Var, "sliderAdPrivate");
        y45.j(gVar, "nativeAdViewBinderAdapter");
        this.d = b02Var;
        this.e = gVar;
    }

    @Override
    public final void bindSliderAd(NativeAdViewBinder nativeAdViewBinder) throws e61 {
        y45.j(nativeAdViewBinder, "viewBinder");
        this.e.getClass();
        this.d.a(g.a(nativeAdViewBinder));
    }

    @Override
    public final boolean equals(Object obj) {
        return (obj instanceof i) && y45.e(((i) obj).d, this.d);
    }

    @Override
    public final List<NativeAd> getNativeAds() {
        ArrayList arrayListD = this.d.d();
        ArrayList arrayList = new ArrayList(z71.v(arrayListD, 10));
        Iterator it = arrayListD.iterator();
        while (it.hasNext()) {
            arrayList.add(new e((q61) it.next()));
        }
        return arrayList;
    }

    @Override
    public final int hashCode() {
        return this.d.hashCode();
    }
}
