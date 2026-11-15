package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Space;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.base.widget.SafeRecyclerView;

public final class x implements f4.a {

    private final ConstraintLayout f70190a;

    public final SafeRecyclerView f70191b;

    public final SwipeRefreshLayout f70192c;

    public final View f70193d;

    public final Space f70194e;

    public final View f70195f;

    public final View f70196g;

    private x(ConstraintLayout constraintLayout, SafeRecyclerView safeRecyclerView, SwipeRefreshLayout swipeRefreshLayout, View view, Space space, View view2, View view3) {
        this.f70190a = constraintLayout;
        this.f70191b = safeRecyclerView;
        this.f70192c = swipeRefreshLayout;
        this.f70193d = view;
        this.f70194e = space;
        this.f70195f = view2;
        this.f70196g = view3;
    }

    public static x a(View view) {
        View viewA;
        View viewA2;
        View viewA3;
        int i10 = R$id.recycler_view;
        SafeRecyclerView safeRecyclerView = (SafeRecyclerView) f4.b.a(view, i10);
        if (safeRecyclerView != null) {
            i10 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null && (viewA = f4.b.a(view, (i10 = R$id.top_bg))) != null) {
                i10 = R$id.top_guideline;
                Space space = (Space) f4.b.a(view, i10);
                if (space != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_bar_space))) != null && (viewA3 = f4.b.a(view, (i10 = R$id.v_top_bg))) != null) {
                    return new x((ConstraintLayout) view, safeRecyclerView, swipeRefreshLayout, viewA, space, viewA2, viewA3);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static x c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static x d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_discover, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70190a;
    }
}
