package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class b implements f4.a {

    private final LinearLayout f72067a;

    public final AppCompatImageView f72068b;

    public final FrameLayout f72069c;

    private b(LinearLayout linearLayout, AppCompatImageView appCompatImageView, FrameLayout frameLayout) {
        this.f72067a = linearLayout;
        this.f72068b = appCompatImageView;
        this.f72069c = frameLayout;
    }

    public static b a(View view) {
        int i10 = R$id.ivClose;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.mediaContain;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                return new b((LinearLayout) view, appCompatImageView, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static b c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static b d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_buy_out_interstitial_action_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72067a;
    }
}
