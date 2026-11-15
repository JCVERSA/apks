package wn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;

public final class v implements f4.a {

    private final ConstraintLayout f74608a;

    public final LottieAnimationView f74609b;

    public final LottieAnimationView f74610c;

    public final AppCompatTextView f74611d;

    public final AppCompatTextView f74612e;

    public final VideoDoubleClickBackgroundView f74613f;

    private v(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, VideoDoubleClickBackgroundView videoDoubleClickBackgroundView) {
        this.f74608a = constraintLayout;
        this.f74609b = lottieAnimationView;
        this.f74610c = lottieAnimationView2;
        this.f74611d = appCompatTextView;
        this.f74612e = appCompatTextView2;
        this.f74613f = videoDoubleClickBackgroundView;
    }

    public static v a(View view) {
        int i10 = R$id.lottie_double_click_left;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) f4.b.a(view, i10);
        if (lottieAnimationView != null) {
            i10 = R$id.lottie_double_click_right;
            LottieAnimationView lottieAnimationView2 = (LottieAnimationView) f4.b.a(view, i10);
            if (lottieAnimationView2 != null) {
                i10 = R$id.tv_double_click_left;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tv_double_click_right;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.v_double_click;
                        VideoDoubleClickBackgroundView videoDoubleClickBackgroundView = (VideoDoubleClickBackgroundView) f4.b.a(view, i10);
                        if (videoDoubleClickBackgroundView != null) {
                            return new v((ConstraintLayout) view, lottieAnimationView, lottieAnimationView2, appCompatTextView, appCompatTextView2, videoDoubleClickBackgroundView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74608a;
    }
}
