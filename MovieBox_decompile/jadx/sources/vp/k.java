package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.tabs.TabLayout;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

public final class k implements f4.a {

    private final ConstraintLayout f73755a;

    public final AppBarLayout f73756b;

    public final RecyclerView f73757c;

    public final TabLayout f73758d;

    public final View f73759e;

    public final ViewPager2 f73760f;

    private k(ConstraintLayout constraintLayout, AppBarLayout appBarLayout, RecyclerView recyclerView, TabLayout tabLayout, View view, ViewPager2 viewPager2) {
        this.f73755a = constraintLayout;
        this.f73756b = appBarLayout;
        this.f73757c = recyclerView;
        this.f73758d = tabLayout;
        this.f73759e = view;
        this.f73760f = viewPager2;
    }

    public static k a(View view) {
        View viewA;
        int i10 = R$id.appBarLayout;
        AppBarLayout appBarLayout = (AppBarLayout) f4.b.a(view, i10);
        if (appBarLayout != null) {
            i10 = R$id.rvRank;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.tabs;
                TabLayout tabLayout = (TabLayout) f4.b.a(view, i10);
                if (tabLayout != null && (viewA = f4.b.a(view, (i10 = R$id.viewLine))) != null) {
                    i10 = R$id.viewPager;
                    ViewPager2 viewPager2 = (ViewPager2) f4.b.a(view, i10);
                    if (viewPager2 != null) {
                        return new k((ConstraintLayout) view, appBarLayout, recyclerView, tabLayout, viewA, viewPager2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_values_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73755a;
    }
}
