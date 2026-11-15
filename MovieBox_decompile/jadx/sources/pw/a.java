package pw;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.wrapperad.R$id;
import com.transsion.wrapperad.activate.ui.LongVodActivateAdView;

public final class a implements f4.a {

    private final LinearLayout f69268a;

    public final LongVodActivateAdView f69269b;

    public final CardView f69270c;

    public final ConstraintLayout f69271d;

    public final AppCompatImageView f69272e;

    public final AppCompatImageView f69273f;

    public final AppCompatTextView f69274g;

    public final ConstraintLayout f69275h;

    public final TextView f69276i;

    public final TextView f69277j;

    public final AppCompatTextView f69278k;

    public final TextView f69279l;

    public final TextView f69280m;

    public final View f69281n;

    public final View f69282o;

    private a(LinearLayout linearLayout, LongVodActivateAdView longVodActivateAdView, CardView cardView, ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView2, TextView textView3, TextView textView4, View view, View view2) {
        this.f69268a = linearLayout;
        this.f69269b = longVodActivateAdView;
        this.f69270c = cardView;
        this.f69271d = constraintLayout;
        this.f69272e = appCompatImageView;
        this.f69273f = appCompatImageView2;
        this.f69274g = appCompatTextView;
        this.f69275h = constraintLayout2;
        this.f69276i = textView;
        this.f69277j = textView2;
        this.f69278k = appCompatTextView2;
        this.f69279l = textView3;
        this.f69280m = textView4;
        this.f69281n = view;
        this.f69282o = view2;
    }

    public static a a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.adView;
        LongVodActivateAdView longVodActivateAdView = (LongVodActivateAdView) f4.b.a(view, i10);
        if (longVodActivateAdView != null) {
            i10 = R$id.cardView;
            CardView cardView = (CardView) f4.b.a(view, i10);
            if (cardView != null) {
                i10 = R$id.cl2MemberInfo;
                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivIcon;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.ivPremium;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.llContent;
                                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                                if (constraintLayout2 != null) {
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
                                                    if (textView4 != null && (viewA = f4.b.a(view, (i10 = R$id.viewLineL))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.viewLineR))) != null) {
                                                        return new a((LinearLayout) view, longVodActivateAdView, cardView, constraintLayout, appCompatImageView, appCompatImageView2, appCompatTextView, constraintLayout2, textView, textView2, appCompatTextView2, textView3, textView4, viewA, viewA2);
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
        return this.f69268a;
    }
}
