package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$layout;

public final class g implements f4.a {

    private final RecyclerView f65771a;

    public final RecyclerView f65772b;

    private g(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f65771a = recyclerView;
        this.f65772b = recyclerView2;
    }

    public static g a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new g(recyclerView, recyclerView);
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_hot, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RecyclerView getRoot() {
        return this.f65771a;
    }
}
