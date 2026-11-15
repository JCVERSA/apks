package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.postdetail.R$layout;

public final class c implements f4.a {

    private final FrameLayout f74327a;

    public final FrameLayout f74328b;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f74327a = frameLayout;
        this.f74328b = frameLayout2;
    }

    public static c a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new c(frameLayout, frameLayout);
    }

    public static c c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_post_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74327a;
    }
}
