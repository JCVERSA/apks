package com.transsion.search_pugc.ad;

import android.R;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import com.blankj.utilcode.util.a0;
import com.google.android.material.card.MaterialCardView;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.R$color;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$drawable;
import com.transsion.wrapperad.R$id;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import ow.s;
import y0.h;

public final class SearchHotAdHelper {

    public static final a f50278n = new a(null);

    private final LifecycleCoroutineScope f50279a;

    private BiddingSspNativeManager f50280b;

    private List f50281c;

    private List f50282d;

    private BiddingNativeManager f50283e;

    private NativeWrapperAdView f50284f;

    private SearchHotAdContainerView f50285g;

    private Function1 f50286h;

    private boolean f50287i;

    private ObjectAnimator f50288j;

    private Runnable f50289k;

    private final c f50290l;

    private final b f50291m;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends oh.a {
        b() {
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            SearchHotAdHelper.this.n(biddingIntermediateMaterialBean);
        }
    }

    public static final class c extends oh.a {
        c() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            SearchHotAdHelper.this.t();
        }

        @Override
        public void k(List list) {
            super.k(list);
            SearchHotAdHelper.this.o(list);
        }
    }

    public SearchHotAdHelper(LifecycleCoroutineScope lifecycleScope) {
        Intrinsics.h(lifecycleScope, "lifecycleScope");
        this.f50279a = lifecycleScope;
        this.f50290l = new c();
        this.f50291m = new b();
    }

    private final void k() {
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                SearchHotAdHelper.l(this.f50294a);
            }
        };
        this.f50289k = runnable;
        NativeWrapperAdView nativeWrapperAdView = this.f50284f;
        if (nativeWrapperAdView != null) {
            nativeWrapperAdView.postDelayed(runnable, 3000L);
        }
    }

    public static final void l(SearchHotAdHelper searchHotAdHelper) {
        NativeWrapperAdView nativeWrapperAdView = searchHotAdHelper.f50284f;
        AppCompatTextView appCompatTextView = nativeWrapperAdView != null ? (AppCompatTextView) nativeWrapperAdView.findViewById(R$id.native_ad_action) : null;
        if (appCompatTextView != null) {
            ObjectAnimator duration = ObjectAnimator.ofArgb(appCompatTextView, "textColor", appCompatTextView.getCurrentTextColor(), androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.gray_dark_00)).setDuration(300L);
            Intrinsics.g(duration, "setDuration(...)");
            Drawable background = appCompatTextView.getBackground();
            if (background == null) {
                background = h.e(appCompatTextView.getContext().getResources(), R.color.transparent, appCompatTextView.getContext().getTheme());
            }
            TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{background, h.e(appCompatTextView.getContext().getResources(), R$drawable.bg_gradient_brand_4, appCompatTextView.getContext().getTheme())});
            appCompatTextView.setBackground(transitionDrawable);
            transitionDrawable.startTransition(300);
            duration.start();
        }
    }

    public final void n(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
        NativeWrapperAdView nativeWrapperAdView;
        SearchHotAdContainerView searchHotAdContainerView = this.f50285g;
        if (searchHotAdContainerView == null || (nativeWrapperAdView = searchHotAdContainerView.getNativeWrapperAdView()) == null) {
            return;
        }
        this.f50284f = nativeWrapperAdView;
        ow.b bVar = ow.b.f68937a;
        Context context = nativeWrapperAdView.getContext();
        Intrinsics.g(context, "getContext(...)");
        nativeWrapperAdView.bindNativeView(this.f50283e, bVar.a(context, "SearchHotNativeScene"), biddingIntermediateMaterialBean);
        x();
        v();
    }

    public final void o(List list) {
        List list2;
        BiddingSspNativeManager biddingSspNativeManager;
        SearchHotAdContainerView searchHotAdContainerView = this.f50285g;
        if (searchHotAdContainerView == null) {
            return;
        }
        List<NativeWrapperAdView> hiNativeAdViews = searchHotAdContainerView.getHiNativeAdViews();
        this.f50281c = hiNativeAdViews;
        if (list != null) {
            this.f50282d = list;
        } else {
            list = null;
        }
        List<NativeWrapperAdView> list3 = hiNativeAdViews;
        if (list3 == null || list3.isEmpty() || (list2 = list) == null || list2.isEmpty() || (biddingSspNativeManager = this.f50280b) == null) {
            return;
        }
        int iMin = Math.min(hiNativeAdViews.size(), list.size());
        for (int i10 = 0; i10 < iMin; i10++) {
            Context context = searchHotAdContainerView.getContext();
            Intrinsics.g(context, "getContext(...)");
            NativeWrapperAdView.bindSspNativeView$default(hiNativeAdViews.get(i10), biddingSspNativeManager, null, new s(context), (BiddingIntermediateMaterialBean) list.get(i10), 2, null);
        }
        x();
    }

    private final void q() {
        NativeWrapperAdView nativeWrapperAdView;
        ObjectAnimator objectAnimator = this.f50288j;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.f50288j = null;
        Runnable runnable = this.f50289k;
        if (runnable != null && (nativeWrapperAdView = this.f50284f) != null) {
            nativeWrapperAdView.removeCallbacks(runnable);
        }
        this.f50289k = null;
    }

    private final void r() {
        BiddingNativeManager biddingNativeManager = this.f50283e;
        if (biddingNativeManager != null) {
            biddingNativeManager.U();
        }
        this.f50283e = null;
        q();
    }

    private final void s() {
        List list = this.f50281c;
        if (list != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((NativeWrapperAdView) it.next()).removeAllViews();
            }
        }
        this.f50281c = null;
        BiddingSspNativeManager biddingSspNativeManager = this.f50280b;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.U();
        }
        this.f50280b = null;
    }

    public final void t() {
        r();
        k.d(this.f50279a, y0.b(), null, new SearchHotAdHelper$loadBiddingAd$1(this, null), 2, null);
    }

    private final void u() {
        s();
        k.d(this.f50279a, y0.b(), null, new SearchHotAdHelper$loadHiAd$1(this, null), 2, null);
    }

    private final void v() {
        w();
        k();
    }

    private final void w() {
        NativeWrapperAdView nativeWrapperAdView = this.f50284f;
        ImageView imageView = nativeWrapperAdView != null ? (ImageView) nativeWrapperAdView.findViewWithTag("adVolumeImage") : null;
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            int iA = a0.a(8.0f);
            layoutParams2.setMarginStart(iA);
            layoutParams2.bottomMargin = iA;
            int iA2 = a0.a(26.0f);
            layoutParams2.width = iA2;
            layoutParams2.height = iA2;
        }
    }

    private final void x() {
        this.f50287i = true;
        Function1 function1 = this.f50286h;
        if (function1 != null) {
            function1.invoke(Boolean.TRUE);
        }
    }

    public final void m(SearchHotAdContainerView searchHotAdContainerView) {
        this.f50285g = searchHotAdContainerView;
        u();
    }

    public final void p() {
        s();
        r();
        this.f50286h = null;
        SearchHotAdContainerView searchHotAdContainerView = this.f50285g;
        if (searchHotAdContainerView != null) {
            searchHotAdContainerView.destroy();
        }
        this.f50285g = null;
    }
}
