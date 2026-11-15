package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.usercenter.R$layout;

public final class u0 implements f4.a {

    private final FrameLayout f75782a;

    public final FrameLayout f75783b;

    private u0(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f75782a = frameLayout;
        this.f75783b = frameLayout2;
    }

    public static u0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new u0(frameLayout, frameLayout);
    }

    public static u0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.user_activity_message, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75782a;
    }
}
