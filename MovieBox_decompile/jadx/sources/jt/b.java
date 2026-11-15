package jt;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.subtitle.R$id;
import com.transsion.subtitle.R$layout;

public final class b implements f4.a {

    private final FrameLayout f63264a;

    public final FrameLayout f63265b;

    public final LinearLayoutCompat f63266c;

    public final RecyclerView f63267d;

    public final ProgressBar f63268e;

    private b(FrameLayout frameLayout, FrameLayout frameLayout2, LinearLayoutCompat linearLayoutCompat, RecyclerView recyclerView, ProgressBar progressBar) {
        this.f63264a = frameLayout;
        this.f63265b = frameLayout2;
        this.f63266c = linearLayoutCompat;
        this.f63267d = recyclerView;
        this.f63268e = progressBar;
    }

    public static b a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R$id.ll_loading;
        LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
        if (linearLayoutCompat != null) {
            i10 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                i10 = R$id.view_load;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    return new b(frameLayout, frameLayout, linearLayoutCompat, recyclerView, progressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_subtitle_search_result_list, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f63264a;
    }
}
