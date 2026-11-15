package mn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.player.longvideo.R$layout;

public final class m implements f4.a {

    private final FrameLayout f66640a;

    public final FrameLayout f66641b;

    private m(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f66640a = frameLayout;
        this.f66641b = frameLayout2;
    }

    public static m a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new m(frameLayout, frameLayout);
    }

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.test_acitvity_long_vod, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f66640a;
    }
}
