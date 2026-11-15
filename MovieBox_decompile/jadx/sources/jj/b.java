package jj;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.tn.lib.view.TitleLayout;
import com.transsion.baseui.R$id;
import com.transsion.baseui.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f63132a;

    public final ConstraintLayout f63133b;

    public final SwipeRefreshLayout f63134c;

    public final RecyclerView f63135d;

    public final TitleLayout f63136e;

    private b(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, TitleLayout titleLayout) {
        this.f63132a = constraintLayout;
        this.f63133b = constraintLayout2;
        this.f63134c = swipeRefreshLayout;
        this.f63135d = recyclerView;
        this.f63136e = titleLayout;
    }

    public static b a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.mRefreshLayout;
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
        if (swipeRefreshLayout != null) {
            i10 = R$id.mRv;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.mTitleLayout;
                TitleLayout titleLayout = (TitleLayout) f4.b.a(view, i10);
                if (titleLayout != null) {
                    return new b(constraintLayout, constraintLayout, swipeRefreshLayout, recyclerView, titleLayout);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.base_list_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f63132a;
    }
}
