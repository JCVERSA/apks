package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

public final class f implements f4.a {

    private final RelativeLayout f73730a;

    public final RecyclerView f73731b;

    public final ImageView f73732c;

    private f(RelativeLayout relativeLayout, RecyclerView recyclerView, ImageView imageView) {
        this.f73730a = relativeLayout;
        this.f73731b = recyclerView;
        this.f73732c = imageView;
    }

    public static f a(View view) {
        int i10 = R$id.search_rank_pager_recycler;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.search_rank_pager_type;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                return new f((RelativeLayout) view, recyclerView, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_rank_pager, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RelativeLayout getRoot() {
        return this.f73730a;
    }
}
