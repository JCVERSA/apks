package yo;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.transsion.rewardscenter.R$id;

public final class h implements f4.a {

    private final ConstraintLayout f76340a;

    public final AppCompatImageView f76341b;

    public final ShapeableImageView f76342c;

    public final ConstraintLayout f76343d;

    public final AppCompatTextView f76344e;

    public final AppCompatTextView f76345f;

    public final AppCompatTextView f76346g;

    private h(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, ShapeableImageView shapeableImageView, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f76340a = constraintLayout;
        this.f76341b = appCompatImageView;
        this.f76342c = shapeableImageView;
        this.f76343d = constraintLayout2;
        this.f76344e = appCompatTextView;
        this.f76345f = appCompatTextView2;
        this.f76346g = appCompatTextView3;
    }

    public static h a(View view) {
        int i10 = R$id.ic_points;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_avatar;
            ShapeableImageView shapeableImageView = (ShapeableImageView) f4.b.a(view, i10);
            if (shapeableImageView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                i10 = R$id.tv_earn;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_name;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tv_points;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            return new h(constraintLayout, appCompatImageView, shapeableImageView, constraintLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f76340a;
    }
}
