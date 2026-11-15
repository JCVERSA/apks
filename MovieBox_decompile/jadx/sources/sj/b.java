package sj;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.commercialization.R$id;

public final class b implements f4.a {

    private final LinearLayout f72221a;

    public final CardView f72222b;

    public final ConstraintLayout f72223c;

    public final ConstraintLayout f72224d;

    public final AppCompatImageView f72225e;

    public final AppCompatImageView f72226f;

    public final AppCompatTextView f72227g;

    public final AppCompatImageView f72228h;

    public final ConstraintLayout f72229i;

    public final NativeWrapperAdView f72230j;

    public final TextView f72231k;

    public final TextView f72232l;

    public final AppCompatTextView f72233m;

    public final TextView f72234n;

    public final TextView f72235o;

    public final TextView f72236p;

    public final View f72237q;

    public final View f72238r;

    private b(LinearLayout linearLayout, CardView cardView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView3, ConstraintLayout constraintLayout3, NativeWrapperAdView nativeWrapperAdView, TextView textView, TextView textView2, AppCompatTextView appCompatTextView2, TextView textView3, TextView textView4, TextView textView5, View view, View view2) {
        this.f72221a = linearLayout;
        this.f72222b = cardView;
        this.f72223c = constraintLayout;
        this.f72224d = constraintLayout2;
        this.f72225e = appCompatImageView;
        this.f72226f = appCompatImageView2;
        this.f72227g = appCompatTextView;
        this.f72228h = appCompatImageView3;
        this.f72229i = constraintLayout3;
        this.f72230j = nativeWrapperAdView;
        this.f72231k = textView;
        this.f72232l = textView2;
        this.f72233m = appCompatTextView2;
        this.f72234n = textView3;
        this.f72235o = textView4;
        this.f72236p = textView5;
        this.f72237q = view;
        this.f72238r = view2;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.cardView;
        CardView cardView = (CardView) f4.b.a(view, i10);
        if (cardView != null) {
            i10 = R$id.change_group;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.cl2MemberInfo;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout2 != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivIcon;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.ivPremium;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.ivRefresh;
                                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                if (appCompatImageView3 != null) {
                                    i10 = R$id.llContent;
                                    ConstraintLayout constraintLayout3 = (ConstraintLayout) f4.b.a(view, i10);
                                    if (constraintLayout3 != null) {
                                        i10 = R$id.nativeWrapperAdView;
                                        NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
                                        if (nativeWrapperAdView != null) {
                                            i10 = R$id.tvGetAd;
                                            TextView textView = (TextView) f4.b.a(view, i10);
                                            if (textView != null) {
                                                i10 = R$id.tvGetAdSec;
                                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                                if (textView2 != null) {
                                                    i10 = R$id.tvOr;
                                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView2 != null) {
                                                        i10 = R$id.tvTips;
                                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                                        if (textView3 != null) {
                                                            i10 = R$id.tvTipsSec;
                                                            TextView textView4 = (TextView) f4.b.a(view, i10);
                                                            if (textView4 != null) {
                                                                i10 = R$id.tvTryMore;
                                                                TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                if (textView5 != null && (viewA = f4.b.a(view, (i10 = R$id.viewLineL))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.viewLineR))) != null) {
                                                                    return new b((LinearLayout) view, cardView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatImageView3, constraintLayout3, nativeWrapperAdView, textView, textView2, appCompatTextView2, textView3, textView4, textView5, viewA, viewA2);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72221a;
    }
}
