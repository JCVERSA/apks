package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class n0 implements f4.a {

    private final FrameLayout f75697a;

    public final RecyclerView f75698b;

    public final SwipeRefreshLayout f75699c;

    public final FrameLayout f75700d;

    private n0(FrameLayout frameLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, FrameLayout frameLayout2) {
        this.f75697a = frameLayout;
        this.f75698b = recyclerView;
        this.f75699c = swipeRefreshLayout;
        this.f75700d = frameLayout2;
    }

    public static n0 a(View view) {
        int i10 = R$id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.swipeRefresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                FrameLayout frameLayout = (FrameLayout) view;
                return new n0(frameLayout, recyclerView, swipeRefreshLayout, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_user_profile_video, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f75697a;
    }
}
