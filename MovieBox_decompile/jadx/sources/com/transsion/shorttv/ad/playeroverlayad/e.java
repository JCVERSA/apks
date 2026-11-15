package com.transsion.shorttv.ad.playeroverlayad;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.shorttv.ad.common.STCommonNativeAdHelper;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

public final class e {

    private final String f50723a;

    private final n0 f50724b;

    private final STCommonNativeAdHelper f50725c;

    private ShortTvPlayerOverlayAdContainer f50726d;

    private g7.e f50727e;

    private Long f50728f;

    private long f50729g;

    public static final class a extends g7.e {

        final ShortTvPlayerOverlayAdContainer f50731g;

        final Function0 f50732h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer, Function0 function0, long j10) {
            super(j10, 1000L);
            this.f50731g = shortTvPlayerOverlayAdContainer;
            this.f50732h = function0;
        }

        @Override
        public void e() {
            e.this.o(this.f50732h);
        }

        @Override
        public void f(long j10) {
            long jCeil = (long) Math.ceil(j10 / 1000.0f);
            e.this.f50728f = Long.valueOf(jCeil);
            TextView countdownView = this.f50731g.getCountdownView();
            if (countdownView != null) {
                countdownView.setText(jCeil + "s");
            }
        }
    }

    public e(String sceneId, n0 lifecycleScope) {
        Intrinsics.h(sceneId, "sceneId");
        Intrinsics.h(lifecycleScope, "lifecycleScope");
        this.f50723a = sceneId;
        this.f50724b = lifecycleScope;
        STCommonNativeAdHelper sTCommonNativeAdHelper = new STCommonNativeAdHelper(sceneId, lifecycleScope);
        sTCommonNativeAdHelper.r("overlay");
        this.f50725c = sTCommonNativeAdHelper;
    }

    private final void g() {
        g7.e eVar = this.f50727e;
        if (eVar != null) {
            eVar.d();
        }
        this.f50727e = null;
    }

    public static final void l(e eVar, Function0 function0, View view) {
        eVar.o(function0);
    }

    public static final void m(ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer, final e eVar) {
        NativeWrapperAdView nativeAdView = shortTvPlayerOverlayAdContainer.getNativeAdView();
        if (nativeAdView != null) {
            STCommonNativeAdHelper sTCommonNativeAdHelper = eVar.f50725c;
            Context contextA = com.cloud.sdk.commonutil.util.e.a();
            Intrinsics.g(contextA, "getContext(...)");
            sTCommonNativeAdHelper.s(new f(contextA), nativeAdView, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return e.n(this.f50722a, ((Boolean) obj).booleanValue());
                }
            });
        }
    }

    public static final Unit n(e eVar, boolean z10) {
        if (z10) {
            eVar.f50729g = System.currentTimeMillis();
        }
        return Unit.f64096a;
    }

    public final void o(Function0 function0) {
        f();
        function0.invoke();
    }

    public final void f() {
        STCommonNativeAdHelper.n(this.f50725c, 0, 1, null);
        g();
        this.f50728f = null;
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer = this.f50726d;
        if (shortTvPlayerOverlayAdContainer != null) {
            shortTvPlayerOverlayAdContainer.removeAdView();
        }
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer2 = this.f50726d;
        if (shortTvPlayerOverlayAdContainer2 != null) {
            shortTvPlayerOverlayAdContainer2.setVisibility(8);
        }
        this.f50726d = null;
        this.f50729g = 0L;
    }

    public final long h() {
        return this.f50729g;
    }

    public final void i(Function1 callback) {
        Intrinsics.h(callback, "callback");
        this.f50725c.q(callback);
    }

    public final void j() {
        g();
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer = this.f50726d;
        if (shortTvPlayerOverlayAdContainer != null) {
            shortTvPlayerOverlayAdContainer.removeAdView();
        }
        ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer2 = this.f50726d;
        if (shortTvPlayerOverlayAdContainer2 != null) {
            shortTvPlayerOverlayAdContainer2.setVisibility(8);
        }
    }

    public final void k(final ShortTvPlayerOverlayAdContainer adContainerView, final Function0 timerEndCallback) {
        Intrinsics.h(adContainerView, "adContainerView");
        Intrinsics.h(timerEndCallback, "timerEndCallback");
        adContainerView.setVisibility(0);
        adContainerView.bringToFront();
        ImageView closeView = adContainerView.getCloseView();
        if (closeView != null) {
            closeView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    e.l(this.f50718a, timerEndCallback, view);
                }
            });
        }
        adContainerView.addAdView();
        adContainerView.post(new Runnable() {
            @Override
            public final void run() {
                e.m(adContainerView, this);
            }
        });
        this.f50726d = adContainerView;
        g();
        Long lValueOf = this.f50728f;
        if (lValueOf == null) {
            lValueOf = Long.valueOf(com.transsion.ad.scene.a.f41152a.e("ShortTvPlayerOverlayScene"));
            if (lValueOf.longValue() <= 0) {
                lValueOf = null;
            }
            if (lValueOf == null) {
                TextView countdownView = adContainerView.getCountdownView();
                if (countdownView != null) {
                    countdownView.setVisibility(8);
                    return;
                }
                return;
            }
        }
        long jLongValue = lValueOf.longValue();
        TextView countdownView2 = adContainerView.getCountdownView();
        if (countdownView2 != null) {
            countdownView2.setVisibility(0);
        }
        a aVar = new a(adContainerView, timerEndCallback, jLongValue * 1000);
        this.f50727e = aVar;
        aVar.g();
    }
}
