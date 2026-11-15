package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv._channel.ui.widget.ShortTvPopupFilterView;

public final class a0 implements f4.a {

    private final LinearLayout f69941a;

    public final d0 f69942b;

    public final RecyclerView f69943c;

    public final ShortTvPopupFilterView f69944d;

    public final View f69945e;

    public final View f69946f;

    public final SwipeRefreshLayout f69947g;

    private a0(LinearLayout linearLayout, d0 d0Var, RecyclerView recyclerView, ShortTvPopupFilterView shortTvPopupFilterView, View view, View view2, SwipeRefreshLayout swipeRefreshLayout) {
        this.f69941a = linearLayout;
        this.f69942b = d0Var;
        this.f69943c = recyclerView;
        this.f69944d = shortTvPopupFilterView;
        this.f69945e = view;
        this.f69946f = view2;
        this.f69947g = swipeRefreshLayout;
    }

    public static a0 a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.ll_tab_movie;
        View viewA3 = f4.b.a(view, i10);
        if (viewA3 != null) {
            d0 d0VarA = d0.a(viewA3);
            i10 = R$id.movie_list;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.popup_filter_view;
                ShortTvPopupFilterView shortTvPopupFilterView = (ShortTvPopupFilterView) f4.b.a(view, i10);
                if (shortTvPopupFilterView != null && (viewA = f4.b.a(view, (i10 = R$id.popup_filter_view_linear))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.sub_movie_header_bg))) != null) {
                    i10 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                    if (swipeRefreshLayout != null) {
                        return new a0((LinearLayout) view, d0VarA, recyclerView, shortTvPopupFilterView, viewA, viewA2, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_movie, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f69941a;
    }
}
