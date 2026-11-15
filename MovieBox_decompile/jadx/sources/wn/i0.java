package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.postdetail.R$id;

public final class i0 implements f4.a {

    private final ConstraintLayout f74409a;

    public final ConstraintLayout f74410b;

    public final AppCompatTextView f74411c;

    public final AppCompatTextView f74412d;

    private i0(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f74409a = constraintLayout;
        this.f74410b = constraintLayout2;
        this.f74411c = appCompatTextView;
        this.f74412d = appCompatTextView2;
    }

    public static i0 a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.rating_name;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tv_rating;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                return new i0(constraintLayout, constraintLayout, appCompatTextView, appCompatTextView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74409a;
    }
}
