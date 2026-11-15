package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.shorttv.R$layout;

public final class o implements f4.a {

    private final FrameLayout f70120a;

    public final FrameLayout f70121b;

    private o(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f70120a = frameLayout;
        this.f70121b = frameLayout2;
    }

    public static o a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new o(frameLayout, frameLayout);
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_activity_play_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f70120a;
    }
}
