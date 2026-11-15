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

public final class j0 implements f4.a {

    private final FrameLayout f16098a;

    public final BLConstraintLayout f16099b;

    public final View f16100c;

    public final FrameLayout f16101d;

    public final AppCompatImageView f16102e;

    public final RecyclerView f16103f;

    public final AppCompatTextView f16104g;

    public final AppCompatTextView f16105h;

    private j0(FrameLayout frameLayout, BLConstraintLayout bLConstraintLayout, View view, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, RecyclerView recyclerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16098a = frameLayout;
        this.f16099b = bLConstraintLayout;
        this.f16100c = view;
        this.f16101d = frameLayout2;
        this.f16102e = appCompatImageView;
        this.f16103f = recyclerView;
        this.f16104g = appCompatTextView;
        this.f16105h = appCompatTextView2;
    }

    public static j0 a(View view) {
        View viewA;
        int i10 = R$id.cl_content;
        BLConstraintLayout bLConstraintLayout = (BLConstraintLayout) f4.b.a(view, i10);
        if (bLConstraintLayout != null && (viewA = f4.b.a(view, (i10 = R$id.divider))) != null) {
            FrameLayout frameLayout = (FrameLayout) view;
            i10 = R$id.iv_close;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.f56199rv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_all_episodes;
                    AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView != null) {
                        i10 = R$id.tv_title;
                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView2 != null) {
                            return new j0(frameLayout, bLConstraintLayout, viewA, frameLayout, appCompatImageView, recyclerView, appCompatTextView, appCompatTextView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_seasons, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16098a;
    }
}
