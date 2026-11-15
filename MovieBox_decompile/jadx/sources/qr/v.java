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

public final class v implements f4.a {

    private final CoordinatorLayout f70179a;

    public final AppBarLayout f70180b;

    public final AppCompatImageView f70181c;

    public final AppCompatImageView f70182d;

    public final RecyclerView f70183e;

    public final Toolbar f70184f;

    public final AppCompatTextView f70185g;

    public final AppCompatTextView f70186h;

    private v(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, Toolbar toolbar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f70179a = coordinatorLayout;
        this.f70180b = appBarLayout;
        this.f70181c = appCompatImageView;
        this.f70182d = appCompatImageView2;
        this.f70183e = recyclerView;
        this.f70184f = toolbar;
        this.f70185g = appCompatTextView;
        this.f70186h = appCompatTextView2;
    }

    public static v a(View view) {
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
                                    return new v((CoordinatorLayout) view, appBarLayout, appCompatImageView, appCompatImageView2, recyclerView, toolbar, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static v c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static v d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_category, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public CoordinatorLayout getRoot() {
        return this.f70179a;
    }
}
