package mn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;
import com.transsion.player.longvideo.member.ResolutionAdView;

public final class b implements f4.a {

    private final FrameLayout f66503a;

    public final ResolutionAdView f66504b;

    public final ConstraintLayout f66505c;

    public final ConstraintLayout f66506d;

    public final AppCompatImageView f66507e;

    public final AppCompatImageView f66508f;

    public final AppCompatImageView f66509g;

    public final LinearLayout f66510h;

    public final LinearLayout f66511i;

    public final LinearLayout f66512j;

    public final TextView f66513k;

    public final TextView f66514l;

    public final AppCompatTextView f66515m;

    public final TextView f66516n;

    public final TextView f66517o;

    public final TextView f66518p;

    public final TextView f66519q;

    public final TextView f66520r;

    public final View f66521s;

    public final View f66522t;

    private b(FrameLayout frameLayout, ResolutionAdView resolutionAdView, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, TextView textView, TextView textView2, AppCompatTextView appCompatTextView, TextView textView3, TextView textView4, TextView textView5, TextView textView6, TextView textView7, View view, View view2) {
        this.f66503a = frameLayout;
        this.f66504b = resolutionAdView;
        this.f66505c = constraintLayout;
        this.f66506d = constraintLayout2;
        this.f66507e = appCompatImageView;
        this.f66508f = appCompatImageView2;
        this.f66509g = appCompatImageView3;
        this.f66510h = linearLayout;
        this.f66511i = linearLayout2;
        this.f66512j = linearLayout3;
        this.f66513k = textView;
        this.f66514l = textView2;
        this.f66515m = appCompatTextView;
        this.f66516n = textView3;
        this.f66517o = textView4;
        this.f66518p = textView5;
        this.f66519q = textView6;
        this.f66520r = textView7;
        this.f66521s = view;
        this.f66522t = view2;
    }

    public static b a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.cardAdView;
        ResolutionAdView resolutionAdView = (ResolutionAdView) f4.b.a(view, i10);
        if (resolutionAdView != null) {
            i10 = R$id.clMemberModule;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                i10 = R$id.clPayModule;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) f4.b.a(view, i10);
                if (constraintLayout2 != null) {
                    i10 = R$id.ivClose;
                    AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView != null) {
                        i10 = R$id.ivPremium;
                        AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView2 != null) {
                            i10 = R$id.ivTypeLotteryDisableTop;
                            AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                            if (appCompatImageView3 != null) {
                                i10 = R$id.llOrModule;
                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                if (linearLayout != null) {
                                    i10 = R$id.llTypeLottery;
                                    LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                                    if (linearLayout2 != null) {
                                        i10 = R$id.llTypeLotteryDisable;
                                        LinearLayout linearLayout3 = (LinearLayout) f4.b.a(view, i10);
                                        if (linearLayout3 != null) {
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
                                                            i10 = R$id.tvTitle11;
                                                            TextView textView4 = (TextView) f4.b.a(view, i10);
                                                            if (textView4 != null) {
                                                                i10 = R$id.tvTitle12;
                                                                TextView textView5 = (TextView) f4.b.a(view, i10);
                                                                if (textView5 != null) {
                                                                    i10 = R$id.tvTitle21;
                                                                    TextView textView6 = (TextView) f4.b.a(view, i10);
                                                                    if (textView6 != null) {
                                                                        i10 = R$id.tvTitle22;
                                                                        TextView textView7 = (TextView) f4.b.a(view, i10);
                                                                        if (textView7 != null && (viewA = f4.b.a(view, (i10 = R$id.viewLineL))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.viewLineR))) != null) {
                                                                            return new b((FrameLayout) view, resolutionAdView, constraintLayout, constraintLayout2, appCompatImageView, appCompatImageView2, appCompatImageView3, linearLayout, linearLayout2, linearLayout3, textView, textView2, appCompatTextView, textView3, textView4, textView5, textView6, textView7, viewA, viewA2);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.long_vod_fragment_resolution_unlock, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f66503a;
    }
}
