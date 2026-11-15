package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class f implements f4.a {

    private final FrameLayout f62645a;

    public final FrameLayout f62646b;

    public final AppCompatImageView f62647c;

    public final m f62648d;

    public final ProgressBar f62649e;

    public final RecyclerView f62650f;

    private f(FrameLayout frameLayout, FrameLayout frameLayout2, AppCompatImageView appCompatImageView, m mVar, ProgressBar progressBar, RecyclerView recyclerView) {
        this.f62645a = frameLayout;
        this.f62646b = frameLayout2;
        this.f62647c = appCompatImageView;
        this.f62648d = mVar;
        this.f62649e = progressBar;
        this.f62650f = recyclerView;
    }

    public static f a(View view) {
        View viewA;
        int i10 = R$id.flUgcImmBack;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.ivUgcImmBack;
            AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView != null && (viewA = f4.b.a(view, (i10 = R$id.layoutImmDownloadingPop))) != null) {
                m mVarA = m.a(viewA);
                i10 = R$id.ugcImmPbLoading;
                ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
                if (progressBar != null) {
                    i10 = R$id.ugcImmRecyclerView;
                    RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
                    if (recyclerView != null) {
                        return new f((FrameLayout) view, frameLayout, appCompatImageView, mVarA, progressBar, recyclerView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static f c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static f d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_imm_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f62645a;
    }
}
