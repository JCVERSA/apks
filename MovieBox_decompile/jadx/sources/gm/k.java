package gm;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.member.R$id;

public final class k implements f4.a {

    private final ConstraintLayout f61165a;

    public final AppCompatImageView f61166b;

    public final AppCompatTextView f61167c;

    private k(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatTextView appCompatTextView) {
        this.f61165a = constraintLayout;
        this.f61166b = appCompatImageView;
        this.f61167c = appCompatTextView;
    }

    public static k a(View view) {
        int i10 = R$id.iv_points_img;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.iv_points_text;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                return new k((ConstraintLayout) view, appCompatImageView, appCompatTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f61165a;
    }
}
