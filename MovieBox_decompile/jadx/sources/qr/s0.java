package qr;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;

public final class s0 implements f4.a {

    private final ConstraintLayout f70166a;

    public final AppCompatTextView f70167b;

    public final AppCompatTextView f70168c;

    public final AppCompatTextView f70169d;

    private s0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f70166a = constraintLayout;
        this.f70167b = appCompatTextView;
        this.f70168c = appCompatTextView2;
        this.f70169d = appCompatTextView3;
    }

    public static s0 a(View view) {
        int i10 = R$id.tvHideTxt;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvInfoContent;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tvInfoTitle;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView3 != null) {
                    return new s0((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70166a;
    }
}
