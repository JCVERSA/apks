package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.widget.TnTextView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class o implements f4.a {

    private final FrameLayout f69806a;

    public final ViewStub f69807b;

    public final ViewStub f69808c;

    public final ViewStub f69809d;

    public final RecyclerView f69810e;

    public final SwipeRefreshLayout f69811f;

    public final TnTextView f69812g;

    private o(FrameLayout frameLayout, ViewStub viewStub, ViewStub viewStub2, ViewStub viewStub3, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TnTextView tnTextView) {
        this.f69806a = frameLayout;
        this.f69807b = viewStub;
        this.f69808c = viewStub2;
        this.f69809d = viewStub3;
        this.f69810e = recyclerView;
        this.f69811f = swipeRefreshLayout;
        this.f69812g = tnTextView;
    }

    public static o a(View view) {
        int i10 = R$id.loading_stub;
        ViewStub viewStub = (ViewStub) f4.b.a(view, i10);
        if (viewStub != null) {
            i10 = R$id.no_network_stub;
            ViewStub viewStub2 = (ViewStub) f4.b.a(view, i10);
            if (viewStub2 != null) {
                i10 = R$id.no_result_stub;
                ViewStub viewStub3 = (ViewStub) f4.b.a(view, i10);
                if (viewStub3 != null) {
                    i10 = R$id.recycler_view;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        i10 = R$id.swipe_refresh;
                        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                        if (swipeRefreshLayout != null) {
                            i10 = R$id.tv_selected_tags;
                            TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                            if (tnTextView != null) {
                                return new o((FrameLayout) view, viewStub, viewStub2, viewStub3, recyclerView, swipeRefreshLayout, tnTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_hashtag_page, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69806a;
    }
}
