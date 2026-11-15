package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.wrapperad.view.BiddingFloatingIrregularView;
import com.transsion.wrapperad.view.secondfloor.CustomSwipeRefreshLayout;

public final class x implements f4.a {

    private final FrameLayout f69868a;

    public final BiddingFloatingIrregularView f69869b;

    public final h0 f69870c;

    public final RecyclerView f69871d;

    public final CustomSwipeRefreshLayout f69872e;

    public final View f69873f;

    private x(FrameLayout frameLayout, BiddingFloatingIrregularView biddingFloatingIrregularView, h0 h0Var, RecyclerView recyclerView, CustomSwipeRefreshLayout customSwipeRefreshLayout, View view) {
        this.f69868a = frameLayout;
        this.f69869b = biddingFloatingIrregularView;
        this.f69870c = h0Var;
        this.f69871d = recyclerView;
        this.f69872e = customSwipeRefreshLayout;
        this.f69873f = view;
    }

    public static x a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.floatingIrregularView;
        BiddingFloatingIrregularView biddingFloatingIrregularView = (BiddingFloatingIrregularView) f4.b.a(view, i10);
        if (biddingFloatingIrregularView != null && (viewA = f4.b.a(view, (i10 = R$id.loading_bg))) != null) {
            h0 h0VarA = h0.a(viewA);
            i10 = R$id.recycleView;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.swipe_refresh;
                CustomSwipeRefreshLayout customSwipeRefreshLayout = (CustomSwipeRefreshLayout) f4.b.a(view, i10);
                if (customSwipeRefreshLayout != null && (viewA2 = f4.b.a(view, (i10 = R$id.trending_header_bg))) != null) {
                    return new x((FrameLayout) view, biddingFloatingIrregularView, h0VarA, recyclerView, customSwipeRefreshLayout, viewA2);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_trending, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69868a;
    }
}
