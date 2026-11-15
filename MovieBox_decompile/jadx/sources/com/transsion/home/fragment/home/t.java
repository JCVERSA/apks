package com.transsion.home.fragment.home;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.wrapperad.view.BiddingRectangleIrregularView;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

public final class t {

    private BiddingRectangleIrregularView f43989a;

    private BiddingRectangleIrregularView f43990b;

    public static final class a extends oh.a {

        final FrameLayout f43991d;

        a(FrameLayout frameLayout) {
            this.f43991d = frameLayout;
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            this.f43991d.setVisibility(8);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            this.f43991d.setVisibility(0);
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            this.f43991d.setVisibility(8);
        }
    }

    public static final class b extends oh.a {

        final View f43992d;

        final FrameLayout f43993e;

        b(View view, FrameLayout frameLayout) {
            this.f43992d = view;
            this.f43993e = frameLayout;
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            this.f43993e.setVisibility(8);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            this.f43992d.setVisibility(8);
            this.f43993e.setVisibility(0);
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            this.f43993e.setVisibility(8);
        }
    }

    public final void a() {
        BiddingRectangleIrregularView biddingRectangleIrregularView = this.f43989a;
        if (biddingRectangleIrregularView != null) {
            biddingRectangleIrregularView.onAdViewDestroy();
        }
        BiddingRectangleIrregularView biddingRectangleIrregularView2 = this.f43990b;
        if (biddingRectangleIrregularView2 != null) {
            biddingRectangleIrregularView2.onAdViewDestroy();
        }
    }

    public final void b(FrameLayout flGameCenter, FrameLayout flPhoneCenter, View leftLogo, n0 n0Var) {
        Intrinsics.h(flGameCenter, "flGameCenter");
        Intrinsics.h(flPhoneCenter, "flPhoneCenter");
        Intrinsics.h(leftLogo, "leftLogo");
        if (this.f43989a == null) {
            Context context = flGameCenter.getContext();
            Intrinsics.g(context, "getContext(...)");
            BiddingRectangleIrregularView biddingRectangleIrregularView = new BiddingRectangleIrregularView(context, null, 2, null);
            this.f43989a = biddingRectangleIrregularView;
            biddingRectangleIrregularView.setSceneId("HomeRIGHTTopGameNonstandardScene");
            BiddingRectangleIrregularView biddingRectangleIrregularView2 = this.f43989a;
            if (biddingRectangleIrregularView2 != null) {
                biddingRectangleIrregularView2.setIrregularAdListener(new a(flGameCenter));
            }
            BiddingRectangleIrregularView biddingRectangleIrregularView3 = this.f43989a;
            if (biddingRectangleIrregularView3 != null) {
                biddingRectangleIrregularView3.loadAd();
            }
            flGameCenter.removeAllViews();
            flGameCenter.addView(this.f43989a);
        }
        if (this.f43990b == null) {
            Context context2 = flPhoneCenter.getContext();
            Intrinsics.g(context2, "getContext(...)");
            BiddingRectangleIrregularView biddingRectangleIrregularView4 = new BiddingRectangleIrregularView(context2, null, 2, null);
            this.f43990b = biddingRectangleIrregularView4;
            biddingRectangleIrregularView4.setSceneId("HomeLeftTopBrandNonstandardScene");
            BiddingRectangleIrregularView biddingRectangleIrregularView5 = this.f43990b;
            if (biddingRectangleIrregularView5 != null) {
                biddingRectangleIrregularView5.setIrregularAdListener(new b(leftLogo, flPhoneCenter));
            }
            BiddingRectangleIrregularView biddingRectangleIrregularView6 = this.f43990b;
            if (biddingRectangleIrregularView6 != null) {
                biddingRectangleIrregularView6.loadAd();
            }
            flPhoneCenter.removeAllViews();
            flPhoneCenter.addView(this.f43990b);
        }
    }

    public final void c() {
        BiddingRectangleIrregularView biddingRectangleIrregularView = this.f43989a;
        if (biddingRectangleIrregularView != null) {
            biddingRectangleIrregularView.loadAd();
        }
        BiddingRectangleIrregularView biddingRectangleIrregularView2 = this.f43990b;
        if (biddingRectangleIrregularView2 != null) {
            biddingRectangleIrregularView2.loadAd();
        }
    }
}
