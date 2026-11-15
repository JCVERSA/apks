package sj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.commercialization.R$layout;

public final class a implements f4.a {

    private final FrameLayout f72219a;

    public final FrameLayout f72220b;

    private a(FrameLayout frameLayout, FrameLayout frameLayout2) {
        this.f72219a = frameLayout;
        this.f72220b = frameLayout2;
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
        View viewInflate = layoutInflater.inflate(R$layout.activity_aha_game_all, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f72219a;
    }
}
