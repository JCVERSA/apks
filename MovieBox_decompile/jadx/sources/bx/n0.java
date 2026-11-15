package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsnet.downloader.R$layout;

public final class n0 implements f4.a {

    private final RecyclerView f16181a;

    public final RecyclerView f16182b;

    private n0(RecyclerView recyclerView, RecyclerView recyclerView2) {
        this.f16181a = recyclerView;
        this.f16182b = recyclerView2;
    }

    public static n0 a(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        RecyclerView recyclerView = (RecyclerView) view;
        return new n0(recyclerView, recyclerView);
    }

    public static n0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_download_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public RecyclerView getRoot() {
        return this.f16181a;
    }
}
