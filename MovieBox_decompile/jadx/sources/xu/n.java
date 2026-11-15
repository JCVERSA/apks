package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.usercenter.R$layout;

public final class n implements f4.a {

    private final FrameLayout f75695a;

    public final FrameLayout f75696b;

    private n(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f75695a = frameLayout;
        this.f75696b = frameLayout2;
    }

    public static n a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new n(frameLayout, frameLayout);
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_user_profile, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75695a;
    }
}
