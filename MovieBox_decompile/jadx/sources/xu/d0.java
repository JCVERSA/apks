package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class d0 implements f4.a {

    private final ConstraintLayout f75530a;

    public final View f75531b;

    public final View f75532c;

    public final AppCompatCheckBox f75533d;

    public final AppCompatTextView f75534e;

    private d0(ConstraintLayout constraintLayout, View view, View view2, AppCompatCheckBox appCompatCheckBox, AppCompatTextView appCompatTextView) {
        this.f75530a = constraintLayout;
        this.f75531b = view;
        this.f75532c = view2;
        this.f75533d = appCompatCheckBox;
        this.f75534e = appCompatTextView;
    }

    public static d0 a(View view) {
        View viewA;
        int i10 = R$id.bgView;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null && (viewA = f4.b.a(view, (i10 = R$id.divider))) != null) {
            i10 = R$id.radioButton;
            AppCompatCheckBox appCompatCheckBox = (AppCompatCheckBox) f4.b.a(view, i10);
            if (appCompatCheckBox != null) {
                i10 = R$id.textView;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    return new d0((ConstraintLayout) view, viewA2, viewA, appCompatCheckBox, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static d0 c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.feedback_option_list_cell, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75530a;
    }
}
