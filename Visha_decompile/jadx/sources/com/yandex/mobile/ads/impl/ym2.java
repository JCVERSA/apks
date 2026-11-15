package com.yandex.mobile.ads.impl;

import com.monetization.ads.core.utils.CallbackStackTraceMarker;
import com.yandex.mobile.ads.common.AdRequestError;
import com.yandex.mobile.ads.nativeads.NativeBulkAdLoadListener;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Lambda;

public final class ym2 implements bu {
    private final NativeBulkAdLoadListener a;

    public static final class a extends Lambda implements c74 {
        final AdRequestError c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(AdRequestError adRequestError) {
            super(0);
            this.c = adRequestError;
        }

        @Override
        public final Object invoke() {
            ym2.this.a.onAdsFailedToLoad(this.c);
            return zfb.a;
        }
    }

    public static final class b extends Lambda implements c74 {
        final List<com.yandex.mobile.ads.nativeads.e> c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(ArrayList arrayList) {
            super(0);
            this.c = arrayList;
        }

        @Override
        public final Object invoke() {
            ym2.this.a.onAdsLoaded(this.c);
            return zfb.a;
        }
    }

    public ym2(NativeBulkAdLoadListener nativeBulkAdLoadListener) {
        y45.j(nativeBulkAdLoadListener, "loadListener");
        this.a = nativeBulkAdLoadListener;
    }

    @Override
    public final void onAdsLoaded(List<? extends q61> list) {
        y45.j(list, "nativeAds");
        ArrayList arrayList = new ArrayList(defpackage.z71.v(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.yandex.mobile.ads.nativeads.e((q61) it.next()));
        }
        new CallbackStackTraceMarker(new b(arrayList));
    }

    @Override
    public final void a(w3 w3Var) {
        y45.j(w3Var, "error");
        new CallbackStackTraceMarker(new a(new AdRequestError(w3Var.b(), w3Var.d(), w3Var.a())));
    }
}
