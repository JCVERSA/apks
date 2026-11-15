package sj;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.commercialization.R$id;
import com.transsion.commercialization.pslink.PsLinkDownLoadButton;

public final class j implements f4.a {

    private final View f72311a;

    public final ShapeableImageView f72312b;

    public final AppCompatTextView f72313c;

    public final AppCompatTextView f72314d;

    public final PsLinkDownLoadButton f72315e;

    public final AppCompatTextView f72316f;

    public final AppCompatTextView f72317g;

    public final AppCompatTextView f72318h;

    public final View f72319i;

    private j(View view, ShapeableImageView shapeableImageView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, PsLinkDownLoadButton psLinkDownLoadButton, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, View view2) {
        this.f72311a = view;
        this.f72312b = shapeableImageView;
        this.f72313c = appCompatTextView;
        this.f72314d = appCompatTextView2;
        this.f72315e = psLinkDownLoadButton;
        this.f72316f = appCompatTextView3;
        this.f72317g = appCompatTextView4;
        this.f72318h = appCompatTextView5;
        this.f72319i = view2;
    }

    public static j a(View view) {
        View viewA;
        int i10 = R$id.iv_cover;
        ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
        if (shapeableImageView != null) {
            i10 = R$id.tv_aha_btn;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_category;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    i10 = R$id.tv_ps_btn;
                    PsLinkDownLoadButton psLinkDownLoadButton = (PsLinkDownLoadButton) f4.b.a(view, i10);
                    if (psLinkDownLoadButton != null) {
                        i10 = R$id.tv_size;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.tv_star;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView4 != null) {
                                i10 = R$id.tv_title;
                                AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView5 != null && (viewA = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                                    return new j(view, shapeableImageView, appCompatTextView, appCompatTextView2, psLinkDownLoadButton, appCompatTextView3, appCompatTextView4, appCompatTextView5, viewA);
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
    public View getRoot() {
        return this.f72311a;
    }
}
