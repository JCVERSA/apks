package sj;

import android.view.View;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.task.treasure.TreasureAdView;

public final class e implements f4.a {

    private final ScrollView f72262a;

    public final TreasureAdView f72263b;

    public final ConstraintLayout f72264c;

    public final ConstraintLayout f72265d;

    public final AppCompatImageView f72266e;

    public final AppCompatImageView f72267f;

    public final AppCompatImageView f72268g;

    public final ShapeableImageView f72269h;

    public final LinearLayout f72270i;

    public final LinearLayout f72271j;

    public final TextView f72272k;

    public final TextView f72273l;

    public final AppCompatTextView f72274m;

    public final TextView f72275n;

    public final TextView f72276o;

    public final TextView f72277p;

    public final TextView f72278q;

    public final View f72279r;

    public final View f72280s;

    private e(ScrollView scrollView, TreasureAdView treasureAdView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ShapeableImageView shapeableImageView, LinearLayout linearLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, View view, View view2) {
        this.f72262a = scrollView;
        this.f72263b = treasureAdView;
        this.f72264c = constraintLayout;
        this.f72265d = constraintLayout2;
        this.f72266e = appCompatImageView;
        this.f72267f = appCompatImageView2;
        this.f72268g = appCompatImageView3;
        this.f72269h = shapeableImageView;
        this.f72270i = linearLayout;
        this.f72271j = linearLayout2;
        this.f72272k = textView;
        this.f72273l = textView2;
        this.f72274m = appCompatTextView;
        this.f72275n = textView3;
        this.f72276o = textView4;
        this.f72277p = textView5;
        this.f72278q = textView6;
        this.f72279r = view;
        this.f72280s = view2;
    }

    public static e a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.cardView;
        TreasureAdView treasureAdView = (TreasureAdView) f4.b.a(view, i10);
        if (treasureAdView != null) {
            i10 = R$id.clMemberModule;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.clPayModule;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout2 != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivLittleTop;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.ivPremium;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView3 != null) {
                                i10 = R$id.ivTop;
                                ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                if (shapeableImageView != null) {
                                    i10 = R$id.llContent;
                                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                    if (linearLayout != null) {
                                        i10 = R$id.llOrModule;
                                        LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout2 != null) {
                                            i10 = R$id.tvMoneyDes;
                                            TextView textView = (TextView) f4.b.a(view, i10);
                                            if (textView != null) {
                                                i10 = R$id.tvMoneyNum;
                                                TextView textView2 = (TextView) f4.b.a(view, i10);
                                                if (textView2 != null) {
                                                    i10 = R$id.tvOr;
                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView != null) {
                                                        i10 = R$id.tvPremium;
                                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                                        if (textView3 != null) {
                                                            i10 = R$id.tvTitle1;
                                                            TextView textView4 = (TextView) f4.b.a(view, i10);
                                                            if (textView4 != null) {
                                                                i10 = R$id.tvTitle2;
                                                                TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                if (textView5 != null) {
                                                                    i10 = R$id.tvTitle3;
                                                                    TextView textView6 = (TextView) f4.b.a(view, i10);
                                                                    if (textView6 != null && (viewA = f4.b.a(view, (i10 = R$id.viewLineL))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.viewLineR))) != null) {
                                                                        return new e((ScrollView) view, treasureAdView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatImageView3, shapeableImageView, linearLayout, linearLayout2, textView, textView2, appCompatTextView, textView3, textView4, textView5, textView6, viewA, viewA2);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ScrollView getRoot() {
        return this.f72262a;
    }
}
