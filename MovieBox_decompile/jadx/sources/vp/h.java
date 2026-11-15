package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search_pugc.widget.NoInterceptRecyclerView;

public final class h implements f4.a {

    private final ConstraintLayout f73739a;

    public final RecyclerView f73740b;

    public final NoInterceptRecyclerView f73741c;

    public final ProgressBar f73742d;

    private h(ConstraintLayout constraintLayout, RecyclerView recyclerView, NoInterceptRecyclerView noInterceptRecyclerView, ProgressBar progressBar) {
        this.f73739a = constraintLayout;
        this.f73740b = recyclerView;
        this.f73741c = noInterceptRecyclerView;
        this.f73742d = progressBar;
    }

    public static h a(View view) {
        int i10 = R$id.search_result_list_recycler;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.search_result_list_tabs;
            NoInterceptRecyclerView noInterceptRecyclerView = (NoInterceptRecyclerView) f4.b.a(view, i10);
            if (noInterceptRecyclerView != null) {
                i10 = R$id.search_result_tab_progress_bar;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    return new h((ConstraintLayout) view, recyclerView, noInterceptRecyclerView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_result_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f73739a;
    }
}
