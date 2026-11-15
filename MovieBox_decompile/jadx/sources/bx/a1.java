package bx;

import android.view.View;
import android.widget.ImageView;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

public final class a1 implements f4.a {

    private final View f15925a;

    public final ImageView f15926b;

    public final CircleProgressBar f15927c;

    private a1(View view, ImageView imageView, CircleProgressBar circleProgressBar) {
        this.f15925a = view;
        this.f15926b = imageView;
        this.f15927c = circleProgressBar;
    }

    public static a1 a(View view) {
        int i10 = R$id.iv_close;
        ImageView imageView = (ImageView) f4.b.a(view, i10);
        if (imageView != null) {
            i10 = R$id.progress_bar_close;
            CircleProgressBar circleProgressBar = (CircleProgressBar) f4.b.a(view, i10);
            if (circleProgressBar != null) {
                return new a1(view, imageView, circleProgressBar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public View getRoot() {
        return this.f15925a;
    }
}
