package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class l implements f4.a {

    private final ConstraintLayout f60363a;

    public final SwipeRefreshLayout f60364b;

    public final RecyclerView f60365c;

    private l(ConstraintLayout constraintLayout, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView) {
        this.f60363a = constraintLayout;
        this.f60364b = swipeRefreshLayout;
        this.f60365c = recyclerView;
    }

    public static l a(View view) {
        int i10 = R$id.swipe_refresh;
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
        if (swipeRefreshLayout != null) {
            i10 = R$id.waterfallRecyclerView;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new l((ConstraintLayout) view, swipeRefreshLayout, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_likes_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60363a;
    }
}
