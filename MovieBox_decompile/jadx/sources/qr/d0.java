package qr;

import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.shorttv.R$id;

public final class d0 implements f4.a {

    private final ConstraintLayout f69998a;

    public final View f69999b;

    public final ConstraintLayout f70000c;

    public final TabLayout f70001d;

    private d0(ConstraintLayout constraintLayout, View view, ConstraintLayout constraintLayout2, TabLayout tabLayout) {
        this.f69998a = constraintLayout;
        this.f69999b = view;
        this.f70000c = constraintLayout2;
        this.f70001d = tabLayout;
    }

    public static d0 a(View view) {
        int i10 = R$id.divider;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            int i11 = R$id.tab_movie;
            TabLayout tabLayout = (TabLayout) f4.b.a(view, i11);
            if (tabLayout != null) {
                return new d0(constraintLayout, viewA, constraintLayout, tabLayout);
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69998a;
    }
}
