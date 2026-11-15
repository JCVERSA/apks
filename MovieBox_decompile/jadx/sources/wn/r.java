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

public final class r implements f4.a {

    private final FrameLayout f74524a;

    public final AppCompatImageView f74525b;

    public final ProgressBar f74526c;

    public final RecyclerView f74527d;

    public final ConstraintLayout f74528e;

    public final TnTextView f74529f;

    private r(FrameLayout frameLayout, AppCompatImageView appCompatImageView, ProgressBar progressBar, RecyclerView recyclerView, ConstraintLayout constraintLayout, TnTextView tnTextView) {
        this.f74524a = frameLayout;
        this.f74525b = appCompatImageView;
        this.f74526c = progressBar;
        this.f74527d = recyclerView;
        this.f74528e = constraintLayout;
        this.f74529f = tnTextView;
    }

    public static r a(View view) {
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
                            return new r((FrameLayout) view, appCompatImageView, progressBar, recyclerView, constraintLayout, tnTextView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static r c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static r d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_short_tv_immersion_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f74524a;
    }
}
