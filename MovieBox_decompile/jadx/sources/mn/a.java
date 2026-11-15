package mn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.player.longvideo.R$layout;

public final class a implements f4.a {

    private final FrameLayout f66502a;

    private a(FrameLayout frameLayout) {
        this.f66502a = frameLayout;
    }

    public static a a(View view) {
        if (view != null) {
            return new a((FrameLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_resolution_unlock_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f66502a;
    }
}
