package fp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.AdvRecyclerView;
import com.tn.lib.view.TitleLayout;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;

public final class m implements f4.a {

    private final LinearLayoutCompat f60366a;

    public final AdvRecyclerView f60367b;

    public final SwipeRefreshLayout f60368c;

    public final TitleLayout f60369d;

    private m(LinearLayoutCompat linearLayoutCompat, AdvRecyclerView advRecyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f60366a = linearLayoutCompat;
        this.f60367b = advRecyclerView;
        this.f60368c = swipeRefreshLayout;
        this.f60369d = titleLayout;
    }

    public static m a(View view) {
        int i10 = R$id.rv_room;
        AdvRecyclerView advRecyclerView = (AdvRecyclerView) f4.b.a(view, i10);
        if (advRecyclerView != null) {
            i10 = R$id.swipe_refresh;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                i10 = R$id.tool_bar;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new m((LinearLayoutCompat) view, advRecyclerView, swipeRefreshLayout, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static m c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static m d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_room, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayoutCompat getRoot() {
        return this.f60366a;
    }
}
