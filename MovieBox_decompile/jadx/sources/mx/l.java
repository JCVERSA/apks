package mx;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.login.R$id;
import com.transsnet.login.widget.LoginProgressBar;

public final class l implements f4.a {

    private final ConstraintLayout f66822a;

    public final AppCompatImageView f66823b;

    public final LoginProgressBar f66824c;

    public final AppCompatTextView f66825d;

    public final AppCompatTextView f66826e;

    private l(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, LoginProgressBar loginProgressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f66822a = constraintLayout;
        this.f66823b = appCompatImageView;
        this.f66824c = loginProgressBar;
        this.f66825d = appCompatTextView;
        this.f66826e = appCompatTextView2;
    }

    public static l a(View view) {
        int i10 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.progress;
            LoginProgressBar loginProgressBar = (LoginProgressBar) f4.b.a(view, i10);
            if (loginProgressBar != null) {
                i10 = R$id.tv_progress;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new l((ConstraintLayout) view, appCompatImageView, loginProgressBar, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66822a;
    }
}
