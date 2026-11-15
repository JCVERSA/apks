package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class k implements f4.a {

    private final LinearLayout f72139a;

    public final Button f72140b;

    private k(LinearLayout linearLayout, Button button) {
        this.f72139a = linearLayout;
        this.f72140b = button;
    }

    public static k a(View view) {
        int i10 = R$id.btnLoadInterstitialAd;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            return new k((LinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_interstitial_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72139a;
    }
}
