package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class m implements f4.a {

    private final LinearLayout f69798a;

    public final a0 f69799b;

    public final RecyclerView f69800c;

    public final SwipeRefreshLayout f69801d;

    private m(LinearLayout linearLayout, a0 a0Var, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f69798a = linearLayout;
        this.f69799b = a0Var;
        this.f69800c = recyclerView;
        this.f69801d = swipeRefreshLayout;
    }

    public static m a(View view) {
        int i10 = R$id.ll_tab_filter;
        View viewA = f4.b.a(view, i10);
        if (viewA != null) {
            a0 a0VarA = a0.a(viewA);
            int i11 = R$id.movie_list;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i11);
            if (recyclerView != null) {
                i11 = R$id.swipe_refresh;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i11);
                if (swipeRefreshLayout != null) {
                    return new m((LinearLayout) view, a0VarA, recyclerView, swipeRefreshLayout);
                }
            }
            i10 = i11;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_filter, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69798a;
    }
}
