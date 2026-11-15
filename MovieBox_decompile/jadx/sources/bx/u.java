package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLConstraintLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class u implements f4.a {

    private final FrameLayout f16253a;

    public final BLConstraintLayout f16254b;

    public final FrameLayout f16255c;

    public final AppCompatImageView f16256d;

    public final RecyclerView f16257e;

    public final AppCompatTextView f16258f;

    private u(FrameLayout frameLayout, BLConstraintLayout bLConstraintLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView) {
        this.f16253a = frameLayout;
        this.f16254b = bLConstraintLayout;
        this.f16255c = frameLayout2;
        this.f16256d = appCompatImageView;
        this.f16257e = recyclerView;
        this.f16258f = appCompatTextView;
    }

    public static u a(View view) {
        int i10 = R$id.cl_content;
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
        if (bLConstraintLayout != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.f56199rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        return new u(frameLayout, bLConstraintLayout, frameLayout, appCompatImageView, recyclerView, appCompatTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static u c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static u d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_audio_track, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16253a;
    }
}
