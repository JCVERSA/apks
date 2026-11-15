package eh;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.widget.R$id;

public final class g implements f4.a {

    private final ConstraintLayout f59699a;

    public final ConstraintLayout f59700b;

    public final View f59701c;

    public final View f59702d;

    public final View f59703e;

    private g(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, View view, View view2, View view3) {
        this.f59699a = constraintLayout;
        this.f59700b = constraintLayout2;
        this.f59701c = view;
        this.f59702d = view2;
        this.f59703e = view3;
    }

    public static g a(View view) {
        View viewA;
        View viewA2;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.view1;
        View viewA3 = f4.b.a(view, i10);
        if (viewA3 == null || (viewA = f4.b.a(view, (i10 = R$id.view2))) == null || (viewA2 = f4.b.a(view, (i10 = R$id.view3))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new g(constraintLayout, constraintLayout, viewA3, viewA, viewA2);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f59699a;
    }
}
