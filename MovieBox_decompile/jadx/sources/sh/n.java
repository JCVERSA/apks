package sh;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;

public final class n implements f4.a {

    private final LinearLayout f72153a;

    public final Button f72154b;

    public final NativeWrapperAdView f72155c;

    public final NativeWrapperAdView f72156d;

    public final NativeWrapperAdView f72157e;

    private n(LinearLayout linearLayout, Button button, NativeWrapperAdView nativeWrapperAdView, NativeWrapperAdView nativeWrapperAdView2, NativeWrapperAdView nativeWrapperAdView3) {
        this.f72153a = linearLayout;
        this.f72154b = button;
        this.f72155c = nativeWrapperAdView;
        this.f72156d = nativeWrapperAdView2;
        this.f72157e = nativeWrapperAdView3;
    }

    public static n a(View view) {
        int i10 = R$id.btnLoadNativeAd;
        Button button = (Button) f4.b.a(view, i10);
        if (button != null) {
            i10 = R$id.nativeView1;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
            if (nativeWrapperAdView != null) {
                i10 = R$id.nativeView2;
                NativeWrapperAdView nativeWrapperAdView2 = (NativeWrapperAdView) f4.b.a(view, i10);
                if (nativeWrapperAdView2 != null) {
                    i10 = R$id.nativeView3;
                    NativeWrapperAdView nativeWrapperAdView3 = (NativeWrapperAdView) f4.b.a(view, i10);
                    if (nativeWrapperAdView3 != null) {
                        return new n((LinearLayout) view, button, nativeWrapperAdView, nativeWrapperAdView2, nativeWrapperAdView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static n c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static n d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.activity_test_ad_multiple_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public LinearLayout getRoot() {
        return this.f72153a;
    }
}
