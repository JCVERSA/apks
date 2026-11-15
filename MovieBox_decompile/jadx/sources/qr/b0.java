package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class b0 implements f4.a {

    private final CoordinatorLayout f69954a;

    public final AppBarLayout f69955b;

    public final AppCompatImageView f69956c;

    public final AppCompatImageView f69957d;

    public final RecyclerView f69958e;

    public final Toolbar f69959f;

    public final AppCompatTextView f69960g;

    public final AppCompatTextView f69961h;

    private b0(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, Toolbar toolbar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f69954a = coordinatorLayout;
        this.f69955b = appBarLayout;
        this.f69956c = appCompatImageView;
        this.f69957d = appCompatImageView2;
        this.f69958e = recyclerView;
        this.f69959f = toolbar;
        this.f69960g = appCompatTextView;
        this.f69961h = appCompatTextView2;
    }

    public static b0 a(View view) {
        int i10 = R$id.app_bar;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.ivBack;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null) {
                i10 = R$id.iv_cover;
                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                if (appCompatImageView2 != null) {
                    i10 = R$id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.toolbar;
                        Toolbar toolbar = (Toolbar) f4.b.a(view, i10);
                        if (toolbar != null) {
                            i10 = R$id.tvTitle;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView != null) {
                                i10 = R$id.tvTitle_expand;
                                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                                if (appCompatTextView2 != null) {
                                    return new b0((CoordinatorLayout) view, appBarLayout, appCompatImageView, appCompatImageView2, recyclerView, toolbar, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_play_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public CoordinatorLayout getRoot() {
        return this.f69954a;
    }
}
