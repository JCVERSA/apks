package ek;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;

public final class b implements f4.a {

    private final ConstraintLayout f59719a;

    public final RecyclerView f59720b;

    private b(ConstraintLayout constraintLayout, RecyclerView recyclerView) {
        this.f59719a = constraintLayout;
        this.f59720b = recyclerView;
    }

    public static b a(View view) {
        int i10 = R$id.education_history_recycler;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new b((ConstraintLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_education_history, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f59719a;
    }
}
