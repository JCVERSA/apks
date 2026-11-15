package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.noober.background.view.BLTextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsnet.downloader.R$id;

public final class r implements f4.a {

    private final ConstraintLayout f16216a;

    public final NativeWrapperAdView f16217b;

    public final CardView f16218c;

    public final AppCompatImageView f16219d;

    public final AppCompatImageView f16220e;

    public final BLTextView f16221f;

    public final BLTextView f16222g;

    public final AppCompatTextView f16223h;

    public final AppCompatTextView f16224i;

    public final AppCompatTextView f16225j;

    public final AppCompatTextView f16226k;

    private r(ConstraintLayout constraintLayout, NativeWrapperAdView nativeWrapperAdView, CardView cardView, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, BLTextView bLTextView, BLTextView bLTextView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f16216a = constraintLayout;
        this.f16217b = nativeWrapperAdView;
        this.f16218c = cardView;
        this.f16219d = appCompatImageView;
        this.f16220e = appCompatImageView2;
        this.f16221f = bLTextView;
        this.f16222g = bLTextView2;
        this.f16223h = appCompatTextView;
        this.f16224i = appCompatTextView2;
        this.f16225j = appCompatTextView3;
        this.f16226k = appCompatTextView4;
    }

    public static r a(View view) {
        int i10 = R$id.adContainer;
        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
        if (nativeWrapperAdView != null) {
            i10 = R$id.card_native_ad;
            CardView cardView = (CardView) f4.b.a(view, i10);
            if (cardView != null) {
                i10 = R$id.ivClose;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.ivDownload;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.tvBtnDetails;
                        BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                        if (bLTextView != null) {
                            i10 = R$id.tvBtnPlayNow;
                            BLTextView bLTextView2 = (BLTextView) f4.b.a(view, i10);
                            if (bLTextView2 != null) {
                                i10 = R$id.tvDes;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.tvFileSize;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView2 != null) {
                                        i10 = R$id.tvTitle;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView3 != null) {
                                            i10 = R$id.tvTitleCopy;
                                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView4 != null) {
                                                return new r((ConstraintLayout) view, nativeWrapperAdView, cardView, appCompatImageView, appCompatImageView2, bLTextView, bLTextView2, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                                            }
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

    @Override
    public ConstraintLayout getRoot() {
        return this.f16216a;
    }
}
