package qr;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.ui.widget.ShortTVBannerView;

public final class q0 implements f4.a {

    private final ConstraintLayout f70141a;

    public final ShortTVBannerView f70142b;

    public final ConstraintLayout f70143c;

    public final View f70144d;

    public final View f70145e;

    public final View f70146f;

    private q0(ConstraintLayout constraintLayout, ShortTVBannerView shortTVBannerView, ConstraintLayout constraintLayout2, View view, View view2, View view3) {
        this.f70141a = constraintLayout;
        this.f70142b = shortTVBannerView;
        this.f70143c = constraintLayout2;
        this.f70144d = view;
        this.f70145e = view2;
        this.f70146f = view3;
    }

    public static q0 a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.banner;
        ShortTVBannerView shortTVBannerView = (ShortTVBannerView) f4.b.a(view, i10);
        if (shortTVBannerView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            i10 = R$id.v_banner_bg;
            View viewA3 = f4.b.a(view, i10);
            if (viewA3 != null && (viewA = f4.b.a(view, (i10 = R$id.v_bar_space))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_top_space))) != null) {
                return new q0(constraintLayout, shortTVBannerView, constraintLayout, viewA3, viewA, viewA2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static q0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static q0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.short_tv_view_banner, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f70141a;
    }
}
