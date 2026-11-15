package mn;

import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.airbnb.lottie.LottieAnimationView;
import com.transsion.player.longvideo.R$id;
import com.transsion.postdetail.ui.view.VideoDoubleClickBackgroundView;

public final class c implements f4.a {

    private final ConstraintLayout f66523a;

    public final LottieAnimationView f66524b;

    public final LottieAnimationView f66525c;

    public final AppCompatTextView f66526d;

    public final AppCompatTextView f66527e;

    public final VideoDoubleClickBackgroundView f66528f;

    private c(ConstraintLayout constraintLayout, LottieAnimationView lottieAnimationView, LottieAnimationView lottieAnimationView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, VideoDoubleClickBackgroundView videoDoubleClickBackgroundView) {
        this.f66523a = constraintLayout;
        this.f66524b = lottieAnimationView;
        this.f66525c = lottieAnimationView2;
        this.f66526d = appCompatTextView;
        this.f66527e = appCompatTextView2;
        this.f66528f = videoDoubleClickBackgroundView;
    }

    public static c a(View view) {
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
                            return new c((ConstraintLayout) view, lottieAnimationView, lottieAnimationView2, appCompatTextView, appCompatTextView2, videoDoubleClickBackgroundView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66523a;
    }
}
