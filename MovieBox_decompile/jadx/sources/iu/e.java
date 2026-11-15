package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$layout;

public final class e implements f4.a {

    private final RecyclerView f62643a;

    public final RecyclerView f62644b;

    private e(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f62643a = recyclerView;
        this.f62644b = recyclerView2;
    }

    public static e a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new e(recyclerView, recyclerView);
    }

    public static e c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static e d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_detail_rv, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RecyclerView getRoot() {
        return this.f62643a;
    }
}
