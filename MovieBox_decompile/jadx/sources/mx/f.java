package mx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsnet.login.R$id;
import com.transsnet.login.R$layout;

public final class f implements f4.a {

    private final LinearLayout f66770a;

    public final AppCompatButton f66771b;

    public final AppCompatTextView f66772c;

    public final AppCompatEditText f66773d;

    public final FrameLayout f66774e;

    public final l f66775f;

    public final AppCompatTextView f66776g;

    public final AppCompatTextView f66777h;

    private f(LinearLayout linearLayout, AppCompatButton appCompatButton, AppCompatTextView appCompatTextView, AppCompatEditText appCompatEditText, FrameLayout frameLayout, l lVar, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3) {
        this.f66770a = linearLayout;
        this.f66771b = appCompatButton;
        this.f66772c = appCompatTextView;
        this.f66773d = appCompatEditText;
        this.f66774e = frameLayout;
        this.f66775f = lVar;
        this.f66776g = appCompatTextView2;
        this.f66777h = appCompatTextView3;
    }

    public static f a(View view) {
        View viewA;
        int i10 = R$id.btn_login;
        AppCompatButton appCompatButton = (AppCompatButton) f4.b.a(view, i10);
        if (appCompatButton != null) {
            i10 = R$id.btn_resend;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.et_code;
                AppCompatEditText appCompatEditText = (AppCompatEditText) f4.b.a(view, i10);
                if (appCompatEditText != null) {
                    i10 = R$id.ll_input;
                    FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                    if (frameLayout != null && (viewA = f4.b.a(view, (i10 = R$id.title))) != null) {
                        l lVarA = l.a(viewA);
                        i10 = R$id.tv_code_tips;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            i10 = R$id.tv_tips;
                            AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView3 != null) {
                                return new f((LinearLayout) view, appCompatButton, appCompatTextView, appCompatEditText, frameLayout, lVarA, appCompatTextView2, appCompatTextView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.login_activity_phone_code, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f66770a;
    }
}
