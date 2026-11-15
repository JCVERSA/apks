package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.home.R$layout;

public final class k implements f4.a {

    private final FrameLayout f69790a;

    private k(FrameLayout frameLayout) {
        this.f69790a = frameLayout;
    }

    public static k a(View view) {
        if (view != null) {
            return new k((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_empty, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69790a;
    }
}
