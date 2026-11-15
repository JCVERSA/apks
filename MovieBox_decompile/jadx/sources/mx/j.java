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
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;

public final class j implements f4.a {

    private final LinearLayout f66806a;

    public final AppCompatImageView f66807b;

    public final AppCompatImageButton f66808c;

    public final AppCompatButton f66809d;

    public final AppCompatButton f66810e;

    public final AppCompatEditText f66811f;

    public final LinearLayout f66812g;

    public final AppCompatTextView f66813h;

    public final AppCompatTextView f66814i;

    public final AppCompatTextView f66815j;

    private j(LinearLayout linearLayout, AppCompatImageView appCompatImageView, AppCompatImageButton appCompatImageButton, AppCompatButton appCompatButton, AppCompatButton appCompatButton2, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f66806a = linearLayout;
        this.f66807b = appCompatImageView;
        this.f66808c = appCompatImageButton;
        this.f66809d = appCompatButton;
        this.f66810e = appCompatButton2;
        this.f66811f = appCompatEditText;
        this.f66812g = linearLayout2;
        this.f66813h = appCompatTextView;
        this.f66814i = appCompatTextView2;
        this.f66815j = appCompatTextView3;
    }

    public static j a(View view) {
        int i10 = R$id.btn_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.btn_clear;
            AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
            if (appCompatImageButton != null) {
                i10 = R$id.btn_email;
                AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
                if (appCompatButton != null) {
                    i10 = R$id.btn_login;
                    AppCompatButton appCompatButton2 = (AppCompatButton) f4.b.a(view, i10);
                    if (appCompatButton2 != null) {
                        i10 = R$id.et_phone;
                        AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                        if (appCompatEditText != null) {
                            i10 = R$id.ll_input;
                            LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout != null) {
                                i10 = R$id.tv_phone_country_code;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView != null) {
                                    i10 = R$id.tv_privacy;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                    if (appCompatTextView2 != null) {
                                        i10 = R$id.tv_tips;
                                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                                        if (appCompatTextView3 != null) {
                                            return new j((LinearLayout) view, appCompatImageView, appCompatImageButton, appCompatButton, appCompatButton2, appCompatEditText, linearLayout, appCompatTextView, appCompatTextView2, appCompatTextView3);
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

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_fragment_phone, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66806a;
    }
}
