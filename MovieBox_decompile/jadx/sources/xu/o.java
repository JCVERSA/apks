package xu;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.transsion.usercenter.R$id;

public final class o implements f4.a {

    private final ConstraintLayout f75701a;

    public final AppCompatTextView f75702b;

    public final AppCompatTextView f75703c;

    public final EditText f75704d;

    public final TextInputLayout f75705e;

    public final AppCompatTextView f75706f;

    private o(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditText editText, TextInputLayout textInputLayout, AppCompatTextView appCompatTextView3) {
        this.f75701a = constraintLayout;
        this.f75702b = appCompatTextView;
        this.f75703c = appCompatTextView2;
        this.f75704d = editText;
        this.f75705e = textInputLayout;
        this.f75706f = appCompatTextView3;
    }

    public static o a(View view) {
        int i10 = R$id.btn_cancel;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.btn_ok;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView2 != null) {
                i10 = R$id.et_pwd;
                EditText editText = (EditText) f4.b.a(view, i10);
                if (editText != null) {
                    i10 = R$id.til_pwd;
                    TextInputLayout textInputLayout = (TextInputLayout) f4.b.a(view, i10);
                    if (textInputLayout != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null) {
                            return new o((ConstraintLayout) view, appCompatTextView, appCompatTextView2, editText, textInputLayout, appCompatTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75701a;
    }
}
