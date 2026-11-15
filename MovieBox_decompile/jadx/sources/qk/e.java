package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.home.R$layout;

public final class e implements f4.a {

    private final FrameLayout f69720a;

    public final FrameLayout f69721b;

    private e(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f69720a = frameLayout;
        this.f69721b = frameLayout2;
    }

    public static e a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new e(frameLayout, frameLayout);
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_play_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69720a;
    }
}
