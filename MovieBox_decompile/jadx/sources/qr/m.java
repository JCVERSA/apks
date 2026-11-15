package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.shorttv.R$layout;

public final class m implements f4.a {

    private final FrameLayout f70109a;

    public final FrameLayout f70110b;

    private m(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f70109a = frameLayout;
        this.f70110b = frameLayout2;
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
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_activity_common_fragment, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f70109a;
    }
}
