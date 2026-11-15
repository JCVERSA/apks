package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.room.R$layout;

public final class j implements f4.a {

    private final FrameLayout f60350a;

    public final FrameLayout f60351b;

    private j(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f60350a = frameLayout;
        this.f60351b = frameLayout2;
    }

    public static j a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new j(frameLayout, frameLayout);
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_subscription_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f60350a;
    }
}
