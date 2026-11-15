package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.shorttv.R$layout;

public final class l implements f4.a {

    private final FrameLayout f70105a;

    public final FrameLayout f70106b;

    private l(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f70105a = frameLayout;
        this.f70106b = frameLayout2;
    }

    public static l a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new l(frameLayout, frameLayout);
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_activity_comm, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f70105a;
    }
}
