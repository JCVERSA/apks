package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class w implements f4.a {

    private final LinearLayout f72186a;

    public final Button f72187b;

    private w(LinearLayout linearLayout, Button button) {
        this.f72186a = linearLayout;
        this.f72187b = button;
    }

    public static w a(View view) {
        int i10 = R$id.btnLoadSplashAd;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            return new w((LinearLayout) view, button);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static w c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static w d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_splash_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72186a;
    }
}
