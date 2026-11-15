package dt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.subroom.R$layout;

public final class c implements f4.a {

    private final FrameLayout f59082a;

    public final FrameLayout f59083b;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f59082a = frameLayout;
        this.f59083b = frameLayout2;
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
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_prefer, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f59082a;
    }
}
