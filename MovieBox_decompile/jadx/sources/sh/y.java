package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class y implements f4.a {

    private final FrameLayout f72190a;

    public final View f72191b;

    public final View f72192c;

    private y(FrameLayout frameLayout, View view, View view2) {
        this.f72190a = frameLayout;
        this.f72191b = view;
        this.f72192c = view2;
    }

    public static y a(View view) {
        View viewA;
        int i10 = R$id.viewBottom;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 == null || (viewA = f4.b.a(view, (i10 = R$id.viewTop))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new y((FrameLayout) view, viewA2, viewA);
    }

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_view_measure_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f72190a;
    }
}
