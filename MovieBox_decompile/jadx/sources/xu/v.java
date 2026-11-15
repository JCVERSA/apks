package xu;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;

public final class v implements f4.a {

    private final ConstraintLayout f75784a;

    public final AppCompatTextView f75785b;

    public final AppCompatTextView f75786c;

    public final AppCompatTextView f75787d;

    public final AppCompatTextView f75788e;

    private v(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f75784a = constraintLayout;
        this.f75785b = appCompatTextView;
        this.f75786c = appCompatTextView2;
        this.f75787d = appCompatTextView3;
        this.f75788e = appCompatTextView4;
    }

    public static v a(View view) {
        int i10 = R$id.btn_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_copy;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tv_tips;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView3 != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView4 != null) {
                        return new v((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75784a;
    }
}
