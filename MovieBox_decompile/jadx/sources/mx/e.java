package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;

public final class e implements f4.a {

    private final LinearLayout f66760a;

    public final FrameLayout f66761b;

    public final FrameLayout f66762c;

    public final AppCompatImageView f66763d;

    public final LinearLayout f66764e;

    public final AppCompatTextView f66765f;

    public final AppCompatTextView f66766g;

    public final AppCompatTextView f66767h;

    public final AppCompatTextView f66768i;

    public final View f66769j;

    private e(LinearLayout linearLayout, FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, View view) {
        this.f66760a = linearLayout;
        this.f66761b = frameLayout;
        this.f66762c = frameLayout2;
        this.f66763d = appCompatImageView;
        this.f66764e = linearLayout2;
        this.f66765f = appCompatTextView;
        this.f66766g = appCompatTextView2;
        this.f66767h = appCompatTextView3;
        this.f66768i = appCompatTextView4;
        this.f66769j = view;
    }

    public static e a(View view) {
        View viewA;
        int i10 = R$id.btn_email_login;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.btn_gp_login;
            FrameLayout frameLayout2 = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout2 != null) {
                i10 = R$id.ll_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.rl_login;
                    LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout != null) {
                        i10 = R$id.tv_email_login_text;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tv_log_in;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null) {
                                i10 = R$id.tv_privacy;
                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView3 != null) {
                                    i10 = R$id.tv_title;
                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView4 != null && (viewA = f4.b.a(view, (i10 = R$id.view_blank))) != null) {
                                        return new e((LinearLayout) view, frameLayout, frameLayout2, appCompatImageView, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3, appCompatTextView4, viewA);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_like, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66760a;
    }
}
