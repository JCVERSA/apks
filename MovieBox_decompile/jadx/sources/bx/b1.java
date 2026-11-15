package bx;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsnet.downloader.R$id;

public final class b1 implements f4.a {

    private final ConstraintLayout f15953a;

    public final AppCompatTextView f15954b;

    public final GradientTextView f15955c;

    private b1(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, GradientTextView gradientTextView) {
        this.f15953a = constraintLayout;
        this.f15954b = appCompatTextView;
        this.f15955c = gradientTextView;
    }

    public static b1 a(View view) {
        int i10 = R$id.tv_title;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.tv_transfer;
            GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
            if (gradientTextView != null) {
                return new b1((ConstraintLayout) view, appCompatTextView, gradientTextView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f15953a;
    }
}
