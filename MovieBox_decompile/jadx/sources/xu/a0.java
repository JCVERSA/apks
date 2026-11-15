package xu;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.baseui.widget.EditTextWithClear;
import com.transsion.usercenter.R$id;

public final class a0 implements f4.a {

    private final ConstraintLayout f75484a;

    public final AppCompatTextView f75485b;

    public final EditTextWithClear f75486c;

    public final AppCompatTextView f75487d;

    private a0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, EditTextWithClear editTextWithClear, AppCompatTextView appCompatTextView2) {
        this.f75484a = constraintLayout;
        this.f75485b = appCompatTextView;
        this.f75486c = editTextWithClear;
        this.f75487d = appCompatTextView2;
    }

    public static a0 a(View view) {
        int i10 = R$id.btn_ok;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView != null) {
            i10 = R$id.et_web;
            EditTextWithClear editTextWithClear = (EditTextWithClear) f4.b.a(view, i10);
            if (editTextWithClear != null) {
                i10 = R$id.tv_title;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null) {
                    return new a0((ConstraintLayout) view, appCompatTextView, editTextWithClear, appCompatTextView2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75484a;
    }
}
