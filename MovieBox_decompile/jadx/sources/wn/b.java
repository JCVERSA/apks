package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.postdetail.R$layout;

public final class b implements f4.a {

    private final FrameLayout f74318a;

    public final FrameLayout f74319b;

    private b(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f74318a = frameLayout;
        this.f74319b = frameLayout2;
    }

    public static b a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new b(frameLayout, frameLayout);
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_local_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74318a;
    }
}
