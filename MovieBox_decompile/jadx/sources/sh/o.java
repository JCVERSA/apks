package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;

public final class o implements f4.a {

    private final LinearLayout f72158a;

    public final Button f72159b;

    public final NativeWrapperAdView f72160c;

    private o(LinearLayout linearLayout, Button button, NativeWrapperAdView nativeWrapperAdView) {
        this.f72158a = linearLayout;
        this.f72159b = button;
        this.f72160c = nativeWrapperAdView;
    }

    public static o a(View view) {
        int i10 = R$id.btnLoadNativeAd;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.nativeView;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
            if (nativeWrapperAdView != null) {
                return new o((LinearLayout) view, button, nativeWrapperAdView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static o d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_native_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72158a;
    }
}
