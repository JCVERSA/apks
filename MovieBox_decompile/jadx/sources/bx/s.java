package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class s implements f4.a {

    private final ConstraintLayout f16231a;

    public final RecyclerView f16232b;

    public final SwipeRefreshLayout f16233c;

    public final TitleLayout f16234d;

    private s(ConstraintLayout constraintLayout, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f16231a = constraintLayout;
        this.f16232b = recyclerView;
        this.f16233c = swipeRefreshLayout;
        this.f16234d = titleLayout;
    }

    public static s a(View view) {
        int i10 = R$id.historyRv;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                i10 = R$id.titleLayout;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new s((ConstraintLayout) view, recyclerView, swipeRefreshLayout, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static s c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static s d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_all_historical_play_record, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16231a;
    }
}
