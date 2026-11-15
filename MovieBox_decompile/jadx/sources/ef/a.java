package ef;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLView;
import com.permissionx.guolindev.R$id;
import f4.b;

public final class a implements f4.a {

    private final BLConstraintLayout f59663a;

    public final AppCompatImageView f59664b;

    public final AppCompatImageView f59665c;

    public final AppCompatTextView f59666d;

    public final AppCompatTextView f59667e;

    public final AppCompatTextView f59668f;

    public final BLView f59669g;

    private a(BLConstraintLayout bLConstraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, BLView bLView) {
        this.f59663a = bLConstraintLayout;
        this.f59664b = appCompatImageView;
        this.f59665c = appCompatImageView2;
        this.f59666d = appCompatTextView;
        this.f59667e = appCompatTextView2;
        this.f59668f = appCompatTextView3;
        this.f59669g = bLView;
    }

    public static a a(View view) {
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_icon;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.tv_button;
                AppCompatTextView appCompatTextView = (AppCompatTextView) b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_subtitle;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            i10 = R$id.v_icon_bg;
                            BLView bLView = (BLView) b.a(view, i10);
                            if (bLView != null) {
                                return new a((BLConstraintLayout) view, appCompatImageView, appCompatImageView2, appCompatTextView, appCompatTextView2, appCompatTextView3, bLView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLConstraintLayout getRoot() {
        return this.f59663a;
    }
}
