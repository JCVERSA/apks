package gm;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;

public final class l implements f4.a {

    private final ConstraintLayout f61168a;

    private l(ConstraintLayout constraintLayout) {
        this.f61168a = constraintLayout;
    }

    public static l a(View view) {
        if (view != null) {
            return new l((ConstraintLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f61168a;
    }
}
