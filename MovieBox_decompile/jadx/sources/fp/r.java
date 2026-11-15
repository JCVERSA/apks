package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class r implements f4.a {

    private final SwipeRefreshLayout f60430a;

    public final RecyclerView f60431b;

    public final SwipeRefreshLayout f60432c;

    private r(SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout2) {
        this.f60430a = swipeRefreshLayout;
        this.f60431b = recyclerView;
        this.f60432c = swipeRefreshLayout2;
    }

    public static r a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
        }
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) view;
        return new r(swipeRefreshLayout, recyclerView, swipeRefreshLayout);
    }

    public static r c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public SwipeRefreshLayout getRoot() {
        return this.f60430a;
    }
}
