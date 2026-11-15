package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;

public final class c0 implements f4.a {

    private final FrameLayout f69969a;

    public final ProgressBar f69970b;

    public final RecyclerView f69971c;

    private c0(FrameLayout frameLayout, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f69969a = frameLayout;
        this.f69970b = progressBar;
        this.f69971c = recyclerView;
    }

    public static c0 a(View view) {
        int i10 = R$id.pb_loading;
        ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
        if (progressBar != null) {
            i10 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new c0((FrameLayout) view, progressBar, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static c0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_fragment_short_tv_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f69969a;
    }
}
