package ew;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.transsion.videofloat.R$id;

public final class a implements f4.a {

    private final BLConstraintLayout f59823a;

    public final AppCompatImageView f59824b;

    public final AppCompatImageView f59825c;

    public final AppCompatTextView f59826d;

    public final AppCompatTextView f59827e;

    public final BLView f59828f;

    private a(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, BLView bLView) {
        this.f59823a = bLConstraintLayout;
        this.f59824b = appCompatImageView;
        this.f59825c = appCompatImageView2;
        this.f59826d = appCompatTextView;
        this.f59827e = appCompatTextView2;
        this.f59828f = bLView;
    }

    public static a a(View view) {
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_icon;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.tv_button;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_subtitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.v_icon_bg;
                        BLView bLView = (BLView) f4.b.a(view, i10);
                        if (bLView != null) {
                            return new a((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, bLView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f59823a;
    }
}
