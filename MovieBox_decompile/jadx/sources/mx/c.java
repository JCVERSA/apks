package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.phone.widget.LoginPwdEditText;

public final class c implements f4.a {

    private final LinearLayout f66744a;

    public final AppCompatImageView f66745b;

    public final AppCompatImageButton f66746c;

    public final AppCompatImageView f66747d;

    public final AppCompatButton f66748e;

    public final AppCompatTextView f66749f;

    public final AppCompatEditText f66750g;

    public final LoginPwdEditText f66751h;

    public final FrameLayout f66752i;

    public final AppCompatTextView f66753j;

    public final AppCompatTextView f66754k;

    public final AppCompatTextView f66755l;

    private c(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageButton appCompatImageButton, AppCompatImageView appCompatImageView2, AppCompatButton appCompatButton, AppCompatTextView appCompatTextView, AppCompatEditText appCompatEditText, LoginPwdEditText loginPwdEditText, FrameLayout frameLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4) {
        this.f66744a = linearLayout;
        this.f66745b = appCompatImageView;
        this.f66746c = appCompatImageButton;
        this.f66747d = appCompatImageView2;
        this.f66748e = appCompatButton;
        this.f66749f = appCompatTextView;
        this.f66750g = appCompatEditText;
        this.f66751h = loginPwdEditText;
        this.f66752i = frameLayout;
        this.f66753j = appCompatTextView2;
        this.f66754k = appCompatTextView3;
        this.f66755l = appCompatTextView4;
    }

    public static c a(View view) {
        int i10 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.btn_clear;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
            if (appCompatImageButton != null) {
                i10 = R$id.btn_eye;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.btn_login;
                    AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
                    if (appCompatButton != null) {
                        i10 = R$id.btn_phone_login;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.et_mail;
                            AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                            if (appCompatEditText != null) {
                                i10 = R$id.et_pwd;
                                LoginPwdEditText loginPwdEditText = (LoginPwdEditText) f4.b.a(view, i10);
                                if (loginPwdEditText != null) {
                                    i10 = R$id.ll_input;
                                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                                    if (frameLayout != null) {
                                        i10 = R$id.tv_forget_pwd;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView2 != null) {
                                            i10 = R$id.tv_privacy;
                                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView3 != null) {
                                                i10 = R$id.tv_tips;
                                                AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView4 != null) {
                                                    return new c((LinearLayout) view, appCompatImageView, appCompatImageButton, appCompatImageView2, appCompatButton, appCompatTextView, appCompatEditText, loginPwdEditText, frameLayout, appCompatTextView2, appCompatTextView3, appCompatTextView4);
                                                }
                                            }
                                        }
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

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_email_pwd, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66744a;
    }
}
