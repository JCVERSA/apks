package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class k implements f4.a {

    private final FrameLayout f74430a;

    public final AppCompatImageView f74431b;

    public final RecyclerView f74432c;

    private k(FrameLayout frameLayout, AppCompatImageView appCompatImageView, RecyclerView recyclerView) {
        this.f74430a = frameLayout;
        this.f74431b = appCompatImageView;
        this.f74432c = recyclerView;
    }

    public static k a(View view) {
        int i10 = R$id.iv_close;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.recycler_view;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new k((FrameLayout) view, appCompatImageView, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_local_video_middle_ep, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74430a;
    }
}
