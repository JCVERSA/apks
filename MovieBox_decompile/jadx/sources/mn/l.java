package mn;

import android.view.View;
import android.view.ViewStub;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.player.longvideo.R$id;

public final class l implements f4.a {

    private final ConstraintLayout f66623a;

    public final FrameLayout f66624b;

    public final AppCompatImageView f66625c;

    public final AppCompatImageView f66626d;

    public final AppCompatImageView f66627e;

    public final AppCompatImageView f66628f;

    public final ImageView f66629g;

    public final d f66630h;

    public final LinearLayout f66631i;

    public final View f66632j;

    public final View f66633k;

    public final View f66634l;

    public final f f66635m;

    public final SecondariesSeekBar f66636n;

    public final TextView f66637o;

    public final ViewStub f66638p;

    public final ViewStub f66639q;

    private l(ConstraintLayout constraintLayout, FrameLayout frameLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, ImageView imageView, d dVar, LinearLayout linearLayout, View view, View view2, View view3, f fVar, SecondariesSeekBar secondariesSeekBar, TextView textView, ViewStub viewStub, ViewStub viewStub2) {
        this.f66623a = constraintLayout;
        this.f66624b = frameLayout;
        this.f66625c = appCompatImageView;
        this.f66626d = appCompatImageView2;
        this.f66627e = appCompatImageView3;
        this.f66628f = appCompatImageView4;
        this.f66629g = imageView;
        this.f66630h = dVar;
        this.f66631i = linearLayout;
        this.f66632j = view;
        this.f66633k = view2;
        this.f66634l = view3;
        this.f66635m = fVar;
        this.f66636n = secondariesSeekBar;
        this.f66637o = textView;
        this.f66638p = viewStub;
        this.f66639q = viewStub2;
    }

    public static l a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        View viewA4;
        View viewA5;
        int i10 = R$id.flUGCAutoPlayGroup;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.iv_back;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_float;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.iv_middle_pause;
                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView3 != null) {
                        i10 = R$id.iv_middle_screen_change;
                        AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView4 != null) {
                            i10 = R$id.ivUGCAutoPlayBtn;
                            ImageView imageView = (ImageView) f4.b.a(view, i10);
                            if (imageView != null && (viewA = f4.b.a(view, (i10 = R$id.layout_loading))) != null) {
                                d dVarA = d.a(viewA);
                                i10 = R$id.ll_middle_bottom_controller;
                                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                                if (linearLayout != null && (viewA2 = f4.b.a(view, (i10 = R$id.middle_gradient_bottom))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.middle_gradient_top))) != null && (viewA4 = f4.b.a(view, (i10 = R$id.middle_guideline))) != null && (viewA5 = f4.b.a(view, (i10 = R$id.operatorLayout))) != null) {
                                    f fVarA = f.a(viewA5);
                                    i10 = R$id.seek_bar_middle;
                                    SecondariesSeekBar secondariesSeekBar = (SecondariesSeekBar) f4.b.a(view, i10);
                                    if (secondariesSeekBar != null) {
                                        i10 = R$id.tv_middle_time;
                                        TextView textView = (TextView) f4.b.a(view, i10);
                                        if (textView != null) {
                                            i10 = R$id.vs_forward_guide_middle;
                                            ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                                            if (viewStub != null) {
                                                i10 = R$id.vs_forward_middle;
                                                ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
                                                if (viewStub2 != null) {
                                                    return new l((ConstraintLayout) view, frameLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, imageView, dVarA, linearLayout, viewA2, viewA3, viewA4, fVarA, secondariesSeekBar, textView, viewStub, viewStub2);
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
    public ConstraintLayout getRoot() {
        return this.f66623a;
    }
}
