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

public final class b implements f4.a {

    private final LinearLayout f66735a;

    public final AppCompatImageButton f66736b;

    public final AppCompatButton f66737c;

    public final AppCompatImageView f66738d;

    public final AppCompatEditText f66739e;

    public final LinearLayout f66740f;

    public final l f66741g;

    public final AppCompatTextView f66742h;

    public final AppCompatTextView f66743i;

    private b(LinearLayout linearLayout, AppCompatImageButton appCompatImageButton, AppCompatButton appCompatButton, AppCompatImageView appCompatImageView, AppCompatEditText appCompatEditText, LinearLayout linearLayout2, l lVar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f66735a = linearLayout;
        this.f66736b = appCompatImageButton;
        this.f66737c = appCompatButton;
        this.f66738d = appCompatImageView;
        this.f66739e = appCompatEditText;
        this.f66740f = linearLayout2;
        this.f66741g = lVar;
        this.f66742h = appCompatTextView;
        this.f66743i = appCompatTextView2;
    }

    public static b a(View view) {
        View viewA;
        int i10 = R$id.btn_clear;
        AppCompatImageButton appCompatImageButton = (AppCompatImageButton) f4.b.a(view, i10);
        if (appCompatImageButton != null) {
            i10 = R$id.btn_next;
            AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
            if (appCompatButton != null) {
                i10 = R$id.btn_phone_login;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.et_email;
                    AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                    if (appCompatEditText != null) {
                        i10 = R$id.ll_phone_login_entry;
                        LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                        if (linearLayout != null && (viewA = f4.b.a(view, (i10 = R$id.title))) != null) {
                            l lVarA = l.a(viewA);
                            i10 = R$id.tv_privacy;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_tips;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    return new b((LinearLayout) view, appCompatImageButton, appCompatButton, appCompatImageView, appCompatEditText, linearLayout, lVarA, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_email, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66735a;
    }
}
