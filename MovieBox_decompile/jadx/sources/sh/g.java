package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.hisavana.mediation.ad.TSplashView;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;

public final class g implements f4.a {

    private final ConstraintLayout f72120a;

    public final TSplashView f72121b;

    private g(ConstraintLayout constraintLayout, TSplashView tSplashView) {
        this.f72120a = constraintLayout;
        this.f72121b = tSplashView;
    }

    public static g a(View view) {
        int i10 = R$id.splash_ad;
        TSplashView tSplashView = (TSplashView) f4.b.a(view, i10);
        if (tSplashView != null) {
            return new g((ConstraintLayout) view, tSplashView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static g c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static g d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_bidding_hisavana_splash, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f72120a;
    }
}
