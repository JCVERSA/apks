package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class i implements f4.a {

    private final LinearLayout f72134a;

    public final Button f72135b;

    public final FrameLayout f72136c;

    private i(LinearLayout linearLayout, Button button, FrameLayout frameLayout) {
        this.f72134a = linearLayout;
        this.f72135b = button;
        this.f72136c = frameLayout;
    }

    public static i a(View view) {
        int i10 = R$id.btnLoadBannerAd;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.flBannerContainer;
            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
            if (frameLayout != null) {
                return new i((LinearLayout) view, button, frameLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static i c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static i d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_banner_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72134a;
    }
}
