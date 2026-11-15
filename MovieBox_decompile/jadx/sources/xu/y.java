package xu;

import android.view.View;
import android.widget.EditText;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.textfield.TextInputLayout;
import com.transsion.usercenter.R$id;

public final class y implements f4.a {

    private final ConstraintLayout f75833a;

    public final AppCompatTextView f75834b;

    public final AppCompatTextView f75835c;

    public final EditText f75836d;

    public final TextInputLayout f75837e;

    public final AppCompatTextView f75838f;

    private y(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, EditText editText, TextInputLayout textInputLayout, AppCompatTextView appCompatTextView3) {
        this.f75833a = constraintLayout;
        this.f75834b = appCompatTextView;
        this.f75835c = appCompatTextView2;
        this.f75836d = editText;
        this.f75837e = textInputLayout;
        this.f75838f = appCompatTextView3;
    }

    public static y a(View view) {
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
                            return new y((ConstraintLayout) view, appCompatTextView, appCompatTextView2, editText, textInputLayout, appCompatTextView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75833a;
    }
}
