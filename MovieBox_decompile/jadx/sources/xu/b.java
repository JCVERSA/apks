package xu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;

public final class b implements f4.a {

    private final LinearLayoutCompat f75498a;

    public final RecyclerView f75499b;

    public final SwipeRefreshLayout f75500c;

    public final TitleLayout f75501d;

    private b(LinearLayoutCompat linearLayoutCompat, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f75498a = linearLayoutCompat;
        this.f75499b = recyclerView;
        this.f75500c = swipeRefreshLayout;
        this.f75501d = titleLayout;
    }

    public static b a(View view) {
        int i10 = R$id.rvFollow;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.swipeRefresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                i10 = R$id.titleLayout;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new b((LinearLayoutCompat) view, recyclerView, swipeRefreshLayout, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_follow, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f75498a;
    }
}
