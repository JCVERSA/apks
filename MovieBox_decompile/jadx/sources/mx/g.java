package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;
import com.transsnet.login.phone.widget.LoginPwdEditText;

public final class g implements f4.a {

    private final LinearLayout f66778a;

    public final AppCompatImageView f66779b;

    public final AppCompatImageButton f66780c;

    public final AppCompatTextView f66781d;

    public final AppCompatImageView f66782e;

    public final AppCompatButton f66783f;

    public final AppCompatEditText f66784g;

    public final LoginPwdEditText f66785h;

    public final AppCompatImageView f66786i;

    public final ConstraintLayout f66787j;

    public final AppCompatTextView f66788k;

    public final AppCompatTextView f66789l;

    public final AppCompatTextView f66790m;

    public final AppCompatTextView f66791n;

    public final View f66792o;

    private g(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageButton appCompatImageButton, AppCompatTextView appCompatTextView, AppCompatImageView appCompatImageView2, AppCompatButton appCompatButton, AppCompatEditText appCompatEditText, LoginPwdEditText loginPwdEditText, AppCompatImageView appCompatImageView3, ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, AppCompatTextView appCompatTextView4, AppCompatTextView appCompatTextView5, View view) {
        this.f66778a = linearLayout;
        this.f66779b = appCompatImageView;
        this.f66780c = appCompatImageButton;
        this.f66781d = appCompatTextView;
        this.f66782e = appCompatImageView2;
        this.f66783f = appCompatButton;
        this.f66784g = appCompatEditText;
        this.f66785h = loginPwdEditText;
        this.f66786i = appCompatImageView3;
        this.f66787j = constraintLayout;
        this.f66788k = appCompatTextView2;
        this.f66789l = appCompatTextView3;
        this.f66790m = appCompatTextView4;
        this.f66791n = appCompatTextView5;
        this.f66792o = view;
    }

    public static g a(View view) {
        View viewA;
        int i10 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.btn_clear;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
            if (appCompatImageButton != null) {
                i10 = R$id.btn_email;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.btn_eye;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.btn_login;
                        AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
                        if (appCompatButton != null) {
                            i10 = R$id.et_phone;
                            AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                            if (appCompatEditText != null) {
                                i10 = R$id.et_pwd;
                                LoginPwdEditText loginPwdEditText = (LoginPwdEditText) f4.b.a(view, i10);
                                if (loginPwdEditText != null) {
                                    i10 = R$id.iv_arrow;
                                    AppCompatImageView appCompatImageView3 = (AppCompatImageView) f4.b.a(view, i10);
                                    if (appCompatImageView3 != null) {
                                        i10 = R$id.ll_input;
                                        ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                        if (constraintLayout != null) {
                                            i10 = R$id.tv_forget_pwd;
                                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                            if (appCompatTextView2 != null) {
                                                i10 = R$id.tv_phone_country_code;
                                                AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                                if (appCompatTextView3 != null) {
                                                    i10 = R$id.tv_privacy;
                                                    AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                                                    if (appCompatTextView4 != null) {
                                                        i10 = R$id.tv_tips;
                                                        AppCompatTextView appCompatTextView5 = (AppCompatTextView) f4.b.a(view, i10);
                                                        if (appCompatTextView5 != null && (viewA = f4.b.a(view, (i10 = R$id.v_line))) != null) {
                                                            return new g((LinearLayout) view, appCompatImageView, appCompatImageButton, appCompatTextView, appCompatImageView2, appCompatButton, appCompatEditText, loginPwdEditText, appCompatImageView3, constraintLayout, appCompatTextView2, appCompatTextView3, appCompatTextView4, appCompatTextView5, viewA);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_phone_pwd, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66778a;
    }
}
