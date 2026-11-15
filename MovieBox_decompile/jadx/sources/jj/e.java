package jj;

import android.view.View;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.R$id;

public final class e implements f4.a {

    private final ConstraintLayout f63147a;

    public final ConstraintLayout f63148b;

    public final AppCompatImageView f63149c;

    public final AppCompatImageView f63150d;

    public final AppCompatImageView f63151e;

    public final ProgressBar f63152f;

    private e(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, AppCompatImageView appCompatImageView3, ProgressBar progressBar) {
        this.f63147a = constraintLayout;
        this.f63148b = constraintLayout2;
        this.f63149c = appCompatImageView;
        this.f63150d = appCompatImageView2;
        this.f63151e = appCompatImageView3;
        this.f63152f = progressBar;
    }

    public static e a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.ivBackward;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivCenterPause;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.ivForward;
                AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView3 != null) {
                    i10 = R$id.progressBar;
                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                    if (progressBar != null) {
                        return new e(constraintLayout, constraintLayout, appCompatImageView, appCompatImageView2, appCompatImageView3, progressBar);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63147a;
    }
}
