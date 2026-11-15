package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.TnTextView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;

public final class o implements f4.a {

    private final FrameLayout f74507a;

    public final AppCompatImageView f74508b;

    public final ProgressBar f74509c;

    public final RecyclerView f74510d;

    public final ConstraintLayout f74511e;

    public final TnTextView f74512f;

    private o(FrameLayout frameLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, ConstraintLayout constraintLayout, TnTextView tnTextView) {
        this.f74507a = frameLayout;
        this.f74508b = appCompatImageView;
        this.f74509c = progressBar;
        this.f74510d = recyclerView;
        this.f74511e = constraintLayout;
        this.f74512f = tnTextView;
    }

    public static o a(View view) {
        int i10 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.pb_loading;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.recycler_view;
                RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                if (recyclerView != null) {
                    i10 = R$id.tool_bar;
                    ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                    if (constraintLayout != null) {
                        i10 = R$id.tv_title;
                        TnTextView tnTextView = (TnTextView) f4.b.a(view, i10);
                        if (tnTextView != null) {
                            return new o((FrameLayout) view, appCompatImageView, progressBar, recyclerView, constraintLayout, tnTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_post_immersion_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74507a;
    }
}
