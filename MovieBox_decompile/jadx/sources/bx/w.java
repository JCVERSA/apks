package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.ad.view.ScrollDetectFrameLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.wrapperad.view.BiddingFloatingIrregularAnimationView;
import com.transsion.wrapperad.view.DownloadTopIrregularView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;
import com.transsnet.downloader.lottery.LotteryTipView;

public final class w implements f4.a {

    private final ScrollDetectFrameLayout f16274a;

    public final BiddingFloatingIrregularAnimationView f16275b;

    public final ConstraintLayout f16276c;

    public final ScrollDetectFrameLayout f16277d;

    public final FrameLayout f16278e;

    public final AppCompatImageView f16279f;

    public final LotteryTipView f16280g;

    public final DownloadTopIrregularView f16281h;

    public final TnTextView f16282i;

    public final GradientTextView f16283j;

    public final View f16284k;

    public final ImageView f16285l;

    private w(ScrollDetectFrameLayout scrollDetectFrameLayout, BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView, ConstraintLayout constraintLayout, ScrollDetectFrameLayout scrollDetectFrameLayout2, FrameLayout frameLayout, AppCompatImageView appCompatImageView, LotteryTipView lotteryTipView, DownloadTopIrregularView downloadTopIrregularView, TnTextView tnTextView, GradientTextView gradientTextView, View view, ImageView imageView) {
        this.f16274a = scrollDetectFrameLayout;
        this.f16275b = biddingFloatingIrregularAnimationView;
        this.f16276c = constraintLayout;
        this.f16277d = scrollDetectFrameLayout2;
        this.f16278e = frameLayout;
        this.f16279f = appCompatImageView;
        this.f16280g = lotteryTipView;
        this.f16281h = downloadTopIrregularView;
        this.f16282i = tnTextView;
        this.f16283j = gradientTextView;
        this.f16284k = view;
        this.f16285l = imageView;
    }

    public static w a(View view) {
        View viewA;
        int i10 = R$id.adFloatingView;
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView = (BiddingFloatingIrregularAnimationView) f4.b.a(view, i10);
        if (biddingFloatingIrregularAnimationView != null) {
            i10 = R$id.clContent;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                ScrollDetectFrameLayout scrollDetectFrameLayout = (ScrollDetectFrameLayout) view;
                i10 = R$id.fl_container;
                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                if (frameLayout != null) {
                    i10 = R$id.iv_back;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.lotteryTipView;
                        LotteryTipView lotteryTipView = (LotteryTipView) f4.b.a(view, i10);
                        if (lotteryTipView != null) {
                            i10 = R$id.topIrregularView;
                            DownloadTopIrregularView downloadTopIrregularView = (DownloadTopIrregularView) f4.b.a(view, i10);
                            if (downloadTopIrregularView != null) {
                                i10 = R$id.tv_title;
                                TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                                if (tnTextView != null) {
                                    i10 = R$id.tv_transfer;
                                    GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                    if (gradientTextView != null && (viewA = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                                        i10 = R$id.v_top_bg;
                                        ImageView imageView = (ImageView) f4.b.a(view, i10);
                                        if (imageView != null) {
                                            return new w(scrollDetectFrameLayout, biddingFloatingIrregularAnimationView, constraintLayout, scrollDetectFrameLayout, frameLayout, appCompatImageView, lotteryTipView, downloadTopIrregularView, tnTextView, gradientTextView, viewA, imageView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_main, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ScrollDetectFrameLayout getRoot() {
        return this.f16274a;
    }
}
