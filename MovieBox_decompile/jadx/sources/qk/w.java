package qk;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;

public final class w implements f4.a {

    private final ConstraintLayout f69862a;

    public final View f69863b;

    public final h0 f69864c;

    public final Guideline f69865d;

    public final RecyclerView f69866e;

    public final SwipeRefreshLayout f69867f;

    private w(ConstraintLayout constraintLayout, View view, h0 h0Var, Guideline guideline, RecyclerView recyclerView, SwipeRefreshLayout swipeRefreshLayout) {
        this.f69862a = constraintLayout;
        this.f69863b = view;
        this.f69864c = h0Var;
        this.f69865d = guideline;
        this.f69866e = recyclerView;
        this.f69867f = swipeRefreshLayout;
    }

    public static w a(View view) {
        View viewA;
        int i10 = R$id.sub_operation_header_bg;
        View viewA2 = f4.b.a(view, i10);
        if (viewA2 != null && (viewA = f4.b.a(view, (i10 = R$id.sub_operation_loading))) != null) {
            h0 h0VarA = h0.a(viewA);
            i10 = R$id.sub_operation_main_guide;
            Guideline guideline = (Guideline) f4.b.a(view, i10);
            if (guideline != null) {
                i10 = R$id.sub_operation_main_recycler;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.sub_operation_main_refresh;
                    SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) f4.b.a(view, i10);
                    if (swipeRefreshLayout != null) {
                        return new w((ConstraintLayout) view, viewA2, h0VarA, guideline, recyclerView, swipeRefreshLayout);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_sub_tab, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f69862a;
    }
}
