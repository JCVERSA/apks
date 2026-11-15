package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.transsion.wrapperad.view.NativeSlideshowView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class k0 implements f4.a {

    private final FrameLayout f16137a;

    public final FrameLayout f16138b;

    public final NativeSlideshowView f16139c;

    private k0(FrameLayout frameLayout, FrameLayout frameLayout2, NativeSlideshowView nativeSlideshowView) {
        this.f16137a = frameLayout;
        this.f16138b = frameLayout2;
        this.f16139c = nativeSlideshowView;
    }

    public static k0 a(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i10 = R$id.nativeSlideshowView;
        NativeSlideshowView nativeSlideshowView = (NativeSlideshowView) f4.b.a(view, i10);
        if (nativeSlideshowView != null) {
            return new k0(frameLayout, frameLayout, nativeSlideshowView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static k0 c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static k0 d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_top_card_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16137a;
    }
}
