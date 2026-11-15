package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class v implements f4.a {

    private final FrameLayout f69859a;

    public final FrameLayout f69860b;

    public final View f69861c;

    private v(FrameLayout frameLayout, FrameLayout frameLayout2, View view) {
        this.f69859a = frameLayout;
        this.f69860b = frameLayout2;
        this.f69861c = view;
    }

    public static v a(View view) {
        View viewA;
        int i10 = R$id.sub_shor_tv_container;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout == null || (viewA = f4.b.a(view, (i10 = R$id.sub_shor_tv_header_bg))) == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        return new v((FrameLayout) view, frameLayout, viewA);
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_short_tv, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69859a;
    }
}
