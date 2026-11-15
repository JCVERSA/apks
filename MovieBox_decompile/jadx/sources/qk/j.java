package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class j implements f4.a {

    private final CoordinatorLayout f69782a;

    public final AppBarLayout f69783b;

    public final AppCompatImageView f69784c;

    public final AppCompatImageView f69785d;

    public final RecyclerView f69786e;

    public final Toolbar f69787f;

    public final AppCompatTextView f69788g;

    public final AppCompatTextView f69789h;

    private j(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, RecyclerView recyclerView, Toolbar toolbar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f69782a = coordinatorLayout;
        this.f69783b = appBarLayout;
        this.f69784c = appCompatImageView;
        this.f69785d = appCompatImageView2;
        this.f69786e = recyclerView;
        this.f69787f = toolbar;
        this.f69788g = appCompatTextView;
        this.f69789h = appCompatTextView2;
    }

    public static j a(View view) {
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
                                    return new j((CoordinatorLayout) view, appBarLayout, appCompatImageView, appCompatImageView2, recyclerView, toolbar, appCompatTextView, appCompatTextView2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_category, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public CoordinatorLayout getRoot() {
        return this.f69782a;
    }
}
