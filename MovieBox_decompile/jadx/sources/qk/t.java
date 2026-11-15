package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class t implements f4.a {

    private final ConstraintLayout f69852a;

    public final RecyclerView f69853b;

    public final ConstraintLayout f69854c;

    private t(ConstraintLayout constraintLayout, RecyclerView recyclerView, ConstraintLayout constraintLayout2) {
        this.f69852a = constraintLayout;
        this.f69853b = recyclerView;
        this.f69854c = constraintLayout2;
    }

    public static t a(View view) {
        int i10 = R$id.rank_all_list_recycler;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            i10 = R$id.rank_list_loading_frame;
            ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
            if (constraintLayout != null) {
                return new t((ConstraintLayout) view, recyclerView, constraintLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static t c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static t d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_rank_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69852a;
    }
}
