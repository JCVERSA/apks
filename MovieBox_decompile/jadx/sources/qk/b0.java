package qk;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.home.R$id;

public final class b0 implements f4.a {

    private final ConstraintLayout f69695a;

    public final View f69696b;

    public final ConstraintLayout f69697c;

    public final TabLayout f69698d;

    private b0(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, TabLayout tabLayout) {
        this.f69695a = constraintLayout;
        this.f69696b = view;
        this.f69697c = constraintLayout2;
        this.f69698d = tabLayout;
    }

    public static b0 a(View view) {
        int i10 = R$id.divider;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i11 = R$id.tab_movie;
            TabLayout tabLayout = (TabLayout) f4.b.a(view, i11);
            if (tabLayout != null) {
                return new b0(constraintLayout, viewA, constraintLayout, tabLayout);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69695a;
    }
}
