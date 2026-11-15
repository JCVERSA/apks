package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.usercenter.R$layout;

public final class m0 implements f4.a {

    private final FrameLayout f75693a;

    public final FrameLayout f75694b;

    private m0(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f75693a = frameLayout;
        this.f75694b = frameLayout2;
    }

    public static m0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new m0(frameLayout, frameLayout);
    }

    public static m0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_profile_playlists, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75693a;
    }
}
