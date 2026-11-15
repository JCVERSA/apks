package iu;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.noober.background.view.BLView;
import com.transsion.ugcvideodetail.R$id;
import com.transsion.ugcvideodetail.R$layout;

public final class c implements f4.a {

    private final FrameLayout f62636a;

    public final FrameLayout f62637b;

    public final BLView f62638c;

    private c(FrameLayout frameLayout, FrameLayout frameLayout2, BLView bLView) {
        this.f62636a = frameLayout;
        this.f62637b = frameLayout2;
        this.f62638c = bLView;
    }

    public static c a(View view) {
        int i10 = R$id.flUgcImmContainer;
        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
        if (frameLayout != null) {
            i10 = R$id.vDragHandle;
            BLView bLView = (BLView) f4.b.a(view, i10);
            if (bLView != null) {
                return new c((FrameLayout) view, frameLayout, bLView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static c c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.dialog_ugc_imm_video_setting, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f62636a;
    }
}
