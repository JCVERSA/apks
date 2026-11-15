package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class t implements f4.a {

    private final ConstraintLayout f60439a;

    public final RecyclerView f60440b;

    public final RecyclerView f60441c;

    public final SwipeRefreshLayout f60442d;

    private t(ConstraintLayout constraintLayout, RecyclerView recyclerView, RecyclerView recyclerView2, SwipeRefreshLayout swipeRefreshLayout) {
        this.f60439a = constraintLayout;
        this.f60440b = recyclerView;
        this.f60441c = recyclerView2;
        this.f60442d = swipeRefreshLayout;
    }

    public static t a(View view) {
        int i10 = R$id.avatar_recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.feed_recyclerView;
            RecyclerView recyclerView2 = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView2 != null) {
                i10 = R$id.swipe_refresh;
                SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                if (swipeRefreshLayout != null) {
                    return new t((ConstraintLayout) view, recyclerView, recyclerView2, swipeRefreshLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_subscription_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f60439a;
    }
}
