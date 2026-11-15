package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class l implements f4.a {

    private final ConstraintLayout f62716a;

    public final ProgressBar f62717b;

    public final RecyclerView f62718c;

    private l(ConstraintLayout constraintLayout, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f62716a = constraintLayout;
        this.f62717b = progressBar;
        this.f62718c = recyclerView;
    }

    public static l a(View view) {
        int i10 = R$id.progressBar;
        ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
        if (progressBar != null) {
            i10 = R$id.recyclerView;
            RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
            if (recyclerView != null) {
                return new l((ConstraintLayout) view, progressBar, recyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static l c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static l d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_video_detail_play_list_tab_content, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f62716a;
    }
}
