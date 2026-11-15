package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsnet.downloader.R$layout;

public final class a implements f4.a {

    private final FrameLayout f15897a;

    public final FrameLayout f15898b;

    private a(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f15897a = frameLayout;
        this.f15898b = frameLayout2;
    }

    public static a a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        FrameLayout frameLayout = (FrameLayout) view;
        return new a(frameLayout, frameLayout);
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_all_historical_play_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f15897a;
    }
}
