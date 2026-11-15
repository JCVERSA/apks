package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.view.filter.popup.PopupFilterView;

public final class q implements f4.a {

    private final LinearLayout f69832a;

    public final b0 f69833b;

    public final RecyclerView f69834c;

    public final PopupFilterView f69835d;

    public final View f69836e;

    public final View f69837f;

    public final SwipeRefreshLayout f69838g;

    private q(LinearLayout linearLayout, b0 b0Var, RecyclerView recyclerView, PopupFilterView popupFilterView, View view, View view2, SwipeRefreshLayout swipeRefreshLayout) {
        this.f69832a = linearLayout;
        this.f69833b = b0Var;
        this.f69834c = recyclerView;
        this.f69835d = popupFilterView;
        this.f69836e = view;
        this.f69837f = view2;
        this.f69838g = swipeRefreshLayout;
    }

    public static q a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.ll_tab_movie;
        View viewA3 = f4.b.a(view, i10);
        if (viewA3 != null) {
            b0 b0VarA = b0.a(viewA3);
            i10 = R$id.movie_list;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.popup_filter_view;
                PopupFilterView popupFilterView = (PopupFilterView) f4.b.a(view, i10);
                if (popupFilterView != null && (viewA = f4.b.a(view, (i10 = R$id.popup_filter_view_linear))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.sub_movie_header_bg))) != null) {
                    i10 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                    if (swipeRefreshLayout != null) {
                        return new q((LinearLayout) view, b0VarA, recyclerView, popupFilterView, viewA, viewA2, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_movie, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69832a;
    }
}
