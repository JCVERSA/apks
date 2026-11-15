package bx;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.tn.lib.view.CircleProgressBar;
import com.transsnet.downloader.R$id;

public final class k implements f4.a {

    private final FrameLayout f16132a;

    public final CircleProgressBar f16133b;

    public final AppCompatTextView f16134c;

    public final AppCompatTextView f16135d;

    public final View f16136e;

    private k(FrameLayout frameLayout, CircleProgressBar circleProgressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, View view) {
        this.f16132a = frameLayout;
        this.f16133b = circleProgressBar;
        this.f16134c = appCompatTextView;
        this.f16135d = appCompatTextView2;
        this.f16136e = view;
    }

    public static k a(View view) {
        View viewA;
        int i10 = R$id.progress_bar;
        CircleProgressBar circleProgressBar = (CircleProgressBar) f4.b.a(view, i10);
        if (circleProgressBar != null) {
            i10 = R$id.tv_progress;
            AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
            if (appCompatTextView != null) {
                i10 = R$id.tv_tips;
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView2 != null && (viewA = f4.b.a(view, (i10 = R$id.v_bg))) != null) {
                    return new k((FrameLayout) view, circleProgressBar, appCompatTextView, appCompatTextView2, viewA);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public FrameLayout getRoot() {
        return this.f16132a;
    }
}
