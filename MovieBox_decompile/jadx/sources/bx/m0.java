package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class m0 implements f4.a {

    private final FrameLayout f16171a;

    public final RecyclerView f16172b;

    public final SwipeRefreshLayout f16173c;

    private m0(FrameLayout frameLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f16171a = frameLayout;
        this.f16172b = recyclerView;
        this.f16173c = swipeRefreshLayout;
    }

    public static m0 a(View view) {
        int i10 = R$id.recycler_view;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                return new m0((FrameLayout) view, recyclerView, swipeRefreshLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_transfer_select_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16171a;
    }
}
