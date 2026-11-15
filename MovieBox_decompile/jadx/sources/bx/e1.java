package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.downloader.R$id;

public final class e1 implements f4.a {

    private final ConstraintLayout f16005a;

    public final AppCompatTextView f16006b;

    public final AppCompatTextView f16007c;

    public final AppCompatTextView f16008d;

    private e1(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f16005a = constraintLayout;
        this.f16006b = appCompatTextView;
        this.f16007c = appCompatTextView2;
        this.f16008d = appCompatTextView3;
    }

    public static e1 a(View view) {
        int i10 = R$id.tvHideTxt;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tvInfoContent;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.tvInfoTitle;
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView3 != null) {
                    return new e1((ConstraintLayout) view, appCompatTextView, appCompatTextView2, appCompatTextView3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16005a;
    }
}
