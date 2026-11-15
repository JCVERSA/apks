package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.usercenter.R$layout;

public final class p0 implements f4.a {

    private final FrameLayout f75724a;

    public final FrameLayout f75725b;

    private p0(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f75724a = frameLayout;
        this.f75725b = frameLayout2;
    }

    public static p0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new p0(frameLayout, frameLayout);
    }

    public static p0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.profile_activity, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75724a;
    }
}
