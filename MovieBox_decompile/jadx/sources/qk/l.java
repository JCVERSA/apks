package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class l implements f4.a {

    private final ConstraintLayout f69791a;

    public final View f69792b;

    public final ImageView f69793c;

    public final View f69794d;

    public final RecyclerView f69795e;

    public final SwipeRefreshLayout f69796f;

    public final TitleLayout f69797g;

    private l(ConstraintLayout constraintLayout, View view, ImageView imageView, View view2, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout, TitleLayout titleLayout) {
        this.f69791a = constraintLayout;
        this.f69792b = view;
        this.f69793c = imageView;
        this.f69794d = view2;
        this.f69795e = recyclerView;
        this.f69796f = swipeRefreshLayout;
        this.f69797g = titleLayout;
    }

    public static l a(View view) {
        View viewA;
        int i10 = R$id.film_list_color_mask;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null) {
            i10 = R$id.film_list_cover;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null && (viewA = f4.b.a(view, (i10 = R$id.film_list_gradient))) != null) {
                i10 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.swipe_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                    if (swipeRefreshLayout != null) {
                        i10 = R$id.tool_bar;
                        TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                        if (titleLayout != null) {
                            return new l((ConstraintLayout) view, viewA2, imageView, viewA, recyclerView, swipeRefreshLayout, titleLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_film_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69791a;
    }
}
