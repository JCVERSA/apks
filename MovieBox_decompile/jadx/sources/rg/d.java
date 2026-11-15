package rg;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.tn.lib.tranpay.R$id;

public final class d implements f4.a {

    private final ConstraintLayout f71224a;

    public final ConstraintLayout f71225b;

    public final View f71226c;

    public final View f71227d;

    public final View f71228e;

    private d(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, View view, View view2, View view3) {
        this.f71224a = constraintLayout;
        this.f71225b = constraintLayout2;
        this.f71226c = view;
        this.f71227d = view2;
        this.f71228e = view3;
    }

    public static d a(View view) {
        View viewA;
        View viewA2;
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.view1;
        View viewA3 = f4.b.a(view, i10);
        if (viewA3 == null || (viewA = f4.b.a(view, (i10 = R$id.view2))) == null || (viewA2 = f4.b.a(view, (i10 = R$id.view3))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new d(constraintLayout, constraintLayout, viewA3, viewA, viewA2);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f71224a;
    }
}
