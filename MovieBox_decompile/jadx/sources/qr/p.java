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
import com.transsion.shorttv.base.widget.TnTextView;

public final class p implements f4.a {

    private final ConstraintLayout f70126a;

    public final ConstraintLayout f70127b;

    public final AppCompatImageView f70128c;

    public final SwipeRefreshLayout f70129d;

    public final RecyclerView f70130e;

    public final TnTextView f70131f;

    private p(ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, AppCompatImageView appCompatImageView, SwipeRefreshLayout swipeRefreshLayout, RecyclerView recyclerView, TnTextView tnTextView) {
        this.f70126a = constraintLayout;
        this.f70127b = constraintLayout2;
        this.f70128c = appCompatImageView;
        this.f70129d = swipeRefreshLayout;
        this.f70130e = recyclerView;
        this.f70131f = tnTextView;
    }

    public static p a(View view) {
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
                        return new p(constraintLayout, constraintLayout, appCompatImageView, swipeRefreshLayout, recyclerView, tnTextView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static p c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static p d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_base_list_fragment_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70126a;
    }
}
