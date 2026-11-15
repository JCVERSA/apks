package mx;

import android.view.View;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.login.R$id;

public final class k implements f4.a {

    private final ConstraintLayout f66816a;

    public final AppCompatEditText f66817b;

    public final AppCompatImageView f66818c;

    public final View f66819d;

    public final AppCompatTextView f66820e;

    public final AppCompatTextView f66821f;

    private k(ConstraintLayout constraintLayout, AppCompatEditText appCompatEditText, AppCompatImageView appCompatImageView, View view, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f66816a = constraintLayout;
        this.f66817b = appCompatEditText;
        this.f66818c = appCompatImageView;
        this.f66819d = view;
        this.f66820e = appCompatTextView;
        this.f66821f = appCompatTextView2;
    }

    public static k a(View view) {
        View viewA;
        int i10 = R$id.et_code;
        AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
        if (appCompatEditText != null) {
            i10 = R$id.iv_help;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.line))) != null) {
                i10 = R$id.tv_hava_invitation_code;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_tips;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new k((ConstraintLayout) view, appCompatEditText, appCompatImageView, viewA, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66816a;
    }
}
