package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.phone.widget.LoginPwdEditText;

public final class h implements f4.a {

    private final LinearLayout f66793a;

    public final AppCompatImageView f66794b;

    public final AppCompatButton f66795c;

    public final LoginPwdEditText f66796d;

    public final l f66797e;

    public final AppCompatTextView f66798f;

    public final AppCompatTextView f66799g;

    public final ViewStub f66800h;

    private h(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatButton appCompatButton, LoginPwdEditText loginPwdEditText, l lVar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, ViewStub viewStub) {
        this.f66793a = linearLayout;
        this.f66794b = appCompatImageView;
        this.f66795c = appCompatButton;
        this.f66796d = loginPwdEditText;
        this.f66797e = lVar;
        this.f66798f = appCompatTextView;
        this.f66799g = appCompatTextView2;
        this.f66800h = viewStub;
    }

    public static h a(View view) {
        View viewA;
        int i10 = R$id.btn_eye;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.btn_login;
            AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
            if (appCompatButton != null) {
                i10 = R$id.et_pwd;
                LoginPwdEditText loginPwdEditText = (LoginPwdEditText) f4.b.a(view, i10);
                if (loginPwdEditText != null && (viewA = f4.b.a(view, (i10 = R$id.title))) != null) {
                    l lVarA = l.a(viewA);
                    i10 = R$id.tv_tips;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_welcome;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.vs_invitation_code;
                            ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
                            if (viewStub != null) {
                                return new h((LinearLayout) view, appCompatImageView, appCompatButton, loginPwdEditText, lVarA, appCompatTextView, appCompatTextView2, viewStub);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_phone_set_pwd, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66793a;
    }
}
