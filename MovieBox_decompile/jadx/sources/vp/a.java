package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.search.R$layout;

public final class a implements f4.a {

    private final FrameLayout f73685a;

    public final FrameLayout f73686b;

    private a(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f73685a = frameLayout;
        this.f73686b = frameLayout2;
    }

    public static a a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new a(frameLayout, frameLayout);
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_search_manager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f73685a;
    }
}
