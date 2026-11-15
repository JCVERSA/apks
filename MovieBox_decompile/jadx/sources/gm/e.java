package gm;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.R$id;

public final class e implements f4.a {

    private final FrameLayout f61106a;

    public final ConstraintLayout f61107b;

    public final GradientBorderView f61108c;

    public final AppCompatTextView f61109d;

    public final TextView f61110e;

    public final AppCompatTextView f61111f;

    public final TextView f61112g;

    private e(FrameLayout frameLayout, ConstraintLayout constraintLayout, GradientBorderView gradientBorderView, AppCompatTextView appCompatTextView, TextView textView, AppCompatTextView appCompatTextView2, TextView textView2) {
        this.f61106a = frameLayout;
        this.f61107b = constraintLayout;
        this.f61108c = gradientBorderView;
        this.f61109d = appCompatTextView;
        this.f61110e = textView;
        this.f61111f = appCompatTextView2;
        this.f61112g = textView2;
    }

    public static e a(View view) {
        int i10 = R$id.clRoot;
        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
        if (constraintLayout != null) {
            i10 = R$id.iv_confirm_container;
            GradientBorderView gradientBorderView = (GradientBorderView) f4.b.a(view, i10);
            if (gradientBorderView != null) {
                i10 = R$id.tv_confirm;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvDesc;
                    TextView textView = (TextView) f4.b.a(view, i10);
                    if (textView != null) {
                        i10 = R$id.tv_later;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.tvTitle;
                            TextView textView2 = (TextView) f4.b.a(view, i10);
                            if (textView2 != null) {
                                return new e((FrameLayout) view, constraintLayout, gradientBorderView, appCompatTextView, textView, appCompatTextView2, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f61106a;
    }
}
