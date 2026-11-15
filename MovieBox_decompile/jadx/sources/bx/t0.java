package bx;

import android.view.View;
import android.widget.ImageView;
import com.noober.background.view.BLFrameLayout;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

public final class t0 implements f4.a {

    private final View f16249a;

    public final BLFrameLayout f16250b;

    public final ImageView f16251c;

    public final CircleProgressBar f16252d;

    private t0(View view, BLFrameLayout bLFrameLayout, ImageView imageView, CircleProgressBar circleProgressBar) {
        this.f16249a = view;
        this.f16250b = bLFrameLayout;
        this.f16251c = imageView;
        this.f16252d = circleProgressBar;
    }

    public static t0 a(View view) {
        int i10 = R$id.fl_guide_content;
        BLFrameLayout bLFrameLayout = (BLFrameLayout) f4.b.a(view, i10);
        if (bLFrameLayout != null) {
            i10 = R$id.iv_guide_close;
            ImageView imageView = (ImageView) f4.b.a(view, i10);
            if (imageView != null) {
                i10 = R$id.progress_bar_guide_close;
                CircleProgressBar circleProgressBar = (CircleProgressBar) f4.b.a(view, i10);
                if (circleProgressBar != null) {
                    return new t0(view, bLFrameLayout, imageView, circleProgressBar);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f16249a;
    }
}
