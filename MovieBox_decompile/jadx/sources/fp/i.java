package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.room.R$layout;

public final class i implements f4.a {

    private final FrameLayout f60342a;

    public final FrameLayout f60343b;

    private i(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f60342a = frameLayout;
        this.f60343b = frameLayout2;
    }

    public static i a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new i(frameLayout, frameLayout);
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_room_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f60342a;
    }
}
