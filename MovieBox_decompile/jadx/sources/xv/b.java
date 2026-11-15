package xv;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.noober.background.view.BLTextView;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f75858a;

    public final View f75859b;

    public final FrameLayout f75860c;

    public final AppCompatImageView f75861d;

    public final ProgressBar f75862e;

    public final RecyclerView f75863f;

    public final AppCompatTextView f75864g;

    public final BLTextView f75865h;

    private b(ConstraintLayout constraintLayout, View view, FrameLayout frameLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, AppCompatTextView appCompatTextView, BLTextView bLTextView) {
        this.f75858a = constraintLayout;
        this.f75859b = view;
        this.f75860c = frameLayout;
        this.f75861d = appCompatImageView;
        this.f75862e = progressBar;
        this.f75863f = recyclerView;
        this.f75864g = appCompatTextView;
        this.f75865h = bLTextView;
    }

    public static b a(View view) {
        int i10 = R$id.divider;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            i10 = R$id.fl_season_container;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                i10 = R$id.iv_close;
                AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView != null) {
                    i10 = R$id.pb_loading;
                    ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                    if (progressBar != null) {
                        i10 = R$id.f55399rv;
                        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                        if (recyclerView != null) {
                            i10 = R$id.tv_all_episodes;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tv_title;
                                BLTextView bLTextView = (BLTextView) f4.b.a(view, i10);
                                if (bLTextView != null) {
                                    return new b((ConstraintLayout) view, viewA, frameLayout, appCompatImageView, progressBar, recyclerView, appCompatTextView, bLTextView);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_all_episodes, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f75858a;
    }
}
