package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class h implements f4.a {

    private final FrameLayout f62677a;

    public final RecyclerView f62678b;

    private h(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f62677a = frameLayout;
        this.f62678b = recyclerView;
    }

    public static h a(View view) {
        int i10 = R$id.rvLanguage;
        RecyclerView recyclerView = (RecyclerView) f4.b.a(view, i10);
        if (recyclerView != null) {
            return new h((FrameLayout) view, recyclerView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static h c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static h d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_ugc_imm_video_setting_subtitle, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f62677a;
    }
}
