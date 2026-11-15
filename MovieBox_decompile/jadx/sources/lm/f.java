package lm;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetail.R$layout;

public final class f implements f4.a {

    private final RecyclerView f65769a;

    public final RecyclerView f65770b;

    private f(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f65769a = recyclerView;
        this.f65770b = recyclerView2;
    }

    public static f a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new f(recyclerView, recyclerView);
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_for_you, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RecyclerView getRoot() {
        return this.f65769a;
    }
}
