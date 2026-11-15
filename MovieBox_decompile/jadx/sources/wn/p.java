package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class p implements f4.a {

    private final FrameLayout f74518a;

    public final RecyclerView f74519b;

    public final SwipeRefreshLayout f74520c;

    private p(FrameLayout frameLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f74518a = frameLayout;
        this.f74519b = recyclerView;
        this.f74520c = swipeRefreshLayout;
    }

    public static p a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.swipeRefresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                return new p((FrameLayout) view, recyclerView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_post, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74518a;
    }
}
