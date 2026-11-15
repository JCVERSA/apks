package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.room.R$layout;

public final class f implements f4.a {

    private final FrameLayout f60324a;

    public final FrameLayout f60325b;

    private f(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f60324a = frameLayout;
        this.f60325b = frameLayout2;
    }

    public static f a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new f(frameLayout, frameLayout);
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_my_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f60324a;
    }
}
