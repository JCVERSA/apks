package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$layout;

public final class j implements f4.a {

    private final RecyclerView f73753a;

    public final RecyclerView f73754b;

    private j(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f73753a = recyclerView;
        this.f73754b = recyclerView2;
    }

    public static j a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new j(recyclerView, recyclerView);
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_suggest_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RecyclerView getRoot() {
        return this.f73753a;
    }
}
