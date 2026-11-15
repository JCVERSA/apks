package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class a implements f4.a {

    private final FrameLayout f62622a;

    public final FrameLayout f62623b;

    public final ProgressBar f62624c;

    private a(FrameLayout frameLayout, FrameLayout frameLayout2, ProgressBar progressBar) {
        this.f62622a = frameLayout;
        this.f62623b = frameLayout2;
        this.f62624c = progressBar;
    }

    public static a a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R$id.ugcPbLoading;
        ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
        if (progressBar != null) {
            return new a(frameLayout, frameLayout, progressBar);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static a c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static a d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_ugc_video_detail, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f62622a;
    }
}
