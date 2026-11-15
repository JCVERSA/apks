package qk;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.home.R$id;

public final class a0 implements f4.a {

    private final ConstraintLayout f69690a;

    public final AppCompatTextView f69691b;

    public final ConstraintLayout f69692c;

    private a0(ConstraintLayout constraintLayout, AppCompatTextView appCompatTextView, ConstraintLayout constraintLayout2) {
        this.f69690a = constraintLayout;
        this.f69691b = appCompatTextView;
        this.f69692c = constraintLayout2;
    }

    public static a0 a(View view) {
        int i10 = R$id.filter_name_1;
        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
        if (appCompatTextView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        return new a0(constraintLayout, appCompatTextView, constraintLayout);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69690a;
    }
}
