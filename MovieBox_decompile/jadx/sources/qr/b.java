package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.base.widget.TnTextView;

public final class b implements f4.a {

    private final ConstraintLayout f69948a;

    public final ConstraintLayout f69949b;

    public final AppCompatImageView f69950c;

    public final SwipeRefreshLayout f69951d;

    public final RecyclerView f69952e;

    public final TnTextView f69953f;

    private b(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f69948a = constraintLayout;
        this.f69949b = constraintLayout2;
        this.f69950c = appCompatImageView;
        this.f69951d = swipeRefreshLayout;
        this.f69952e = recyclerView;
        this.f69953f = tnTextView;
    }

    public static b a(View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int i10 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.mRefreshLayout;
            SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
            if (swipeRefreshLayout != null) {
                i10 = R$id.mRv;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tv_title;
                    TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                    if (tnTextView != null) {
                        return new b(constraintLayout, constraintLayout, appCompatImageView, swipeRefreshLayout, recyclerView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.pugc_short_tv_base_list_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69948a;
    }
}
