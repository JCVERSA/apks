package vp;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;

public final class l implements f4.a {

    private final FrameLayout f73761a;

    public final RecyclerView f73762b;

    private l(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f73761a = frameLayout;
        this.f73762b = recyclerView;
    }

    public static l a(View view) {
        int i10 = R$id.rvSubject;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new l((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_search_values_type_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f73761a;
    }
}
