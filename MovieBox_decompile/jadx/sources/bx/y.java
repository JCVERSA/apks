package bx;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.transsnet.downloader.R$id;
import com.transsnet.downloader.R$layout;

public final class y implements f4.a {

    private final ConstraintLayout f16303a;

    public final LottieAnimationView f16304b;

    public final ProgressBar f16305c;

    public final AppCompatTextView f16306d;

    public final AppCompatTextView f16307e;

    private y(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView, ProgressBar progressBar, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f16303a = constraintLayout;
        this.f16304b = lottieAnimationView;
        this.f16305c = progressBar;
        this.f16306d = appCompatTextView;
        this.f16307e = appCompatTextView2;
    }

    public static y a(View view) {
        int i10 = R$id.lav_download_analyzing;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) f4.b.a(view, i10);
        if (lottieAnimationView != null) {
            i10 = R$id.progress_bar;
            ProgressBar progressBar = (ProgressBar) f4.b.a(view, i10);
            if (progressBar != null) {
                i10 = R$id.tv_download_analyzing;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_title;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        return new y((ConstraintLayout) view, lottieAnimationView, progressBar, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static y c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static y d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_download_res_ana, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f16303a;
    }
}
