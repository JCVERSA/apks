package sj;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;

public final class g implements f4.a {

    private final LinearLayout f72288a;

    public final AppCompatImageView f72289b;

    public final AppCompatImageView f72290c;

    public final AppCompatImageView f72291d;

    public final AppCompatImageView f72292e;

    public final AppCompatImageView f72293f;

    public final ConstraintLayout f72294g;

    public final LinearLayout f72295h;

    public final TextView f72296i;

    public final TextView f72297j;

    public final TextView f72298k;

    public final View f72299l;

    public final ShapeableImageView f72300m;

    public final FrameLayout f72301n;

    private g(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, AppCompatImageView appCompatImageView4, AppCompatImageView appCompatImageView5, ConstraintLayout constraintLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, View view, ShapeableImageView shapeableImageView, FrameLayout frameLayout) {
        this.f72288a = linearLayout;
        this.f72289b = appCompatImageView;
        this.f72290c = appCompatImageView2;
        this.f72291d = appCompatImageView3;
        this.f72292e = appCompatImageView4;
        this.f72293f = appCompatImageView5;
        this.f72294g = constraintLayout;
        this.f72295h = linearLayout2;
        this.f72296i = textView;
        this.f72297j = textView2;
        this.f72298k = textView3;
        this.f72299l = view;
        this.f72300m = shapeableImageView;
        this.f72301n = frameLayout;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.ivBg1;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivClose;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivLeftWing;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.ivRightWing;
                    AppCompatImageView appCompatImageView4 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView4 != null) {
                        i10 = R$id.ivTreasureAvatar;
                        AppCompatImageView appCompatImageView5 = (AppCompatImageView) f4.b.a(view, i10);
                        if (appCompatImageView5 != null) {
                            i10 = R$id.llContent;
                            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                            if (constraintLayout != null) {
                                LinearLayout linearLayout = (LinearLayout) view;
                                i10 = R$id.tvClaimNow;
                                TextView textView = (TextView) f4.b.a(view, i10);
                                if (textView != null) {
                                    i10 = R$id.tvStateTitle;
                                    TextView textView2 = (TextView) f4.b.a(view, i10);
                                    if (textView2 != null) {
                                        i10 = R$id.tvStateTitlePrize;
                                        TextView textView3 = (TextView) f4.b.a(view, i10);
                                        if (textView3 != null && (viewA = f4.b.a(view, (i10 = R$id.viewBg1))) != null) {
                                            i10 = R$id.viewBg2;
                                            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
                                            if (shapeableImageView != null) {
                                                i10 = R$id.viewClaim;
                                                FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                                if (frameLayout != null) {
                                                    return new g(linearLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, appCompatImageView4, appCompatImageView5, constraintLayout, linearLayout, textView, textView2, textView3, viewA, shapeableImageView, frameLayout);
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
        return this.f72288a;
    }
}
