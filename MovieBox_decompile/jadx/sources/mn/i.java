package mn;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.player.longvideo.R$id;
import com.transsion.postdetail.ad.AdInterceptTimerView;

public final class i implements f4.a {

    private final ConstraintLayout f66562a;

    public final AppCompatImageView f66563b;

    public final AdInterceptTimerView f66564c;

    public final AppCompatTextView f66565d;

    public final AppCompatTextView f66566e;

    public final AppCompatTextView f66567f;

    public final View f66568g;

    public final View f66569h;

    public final AppCompatTextView f66570i;

    private i(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AdInterceptTimerView adInterceptTimerView, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2, AppCompatTextView appCompatTextView3, View view, View view2, AppCompatTextView appCompatTextView4) {
        this.f66562a = constraintLayout;
        this.f66563b = appCompatImageView;
        this.f66564c = adInterceptTimerView;
        this.f66565d = appCompatTextView;
        this.f66566e = appCompatTextView2;
        this.f66567f = appCompatTextView3;
        this.f66568g = view;
        this.f66569h = view2;
        this.f66570i = appCompatTextView4;
    }

    public static i a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.iv_back;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.rewardInterceptTimer;
            AdInterceptTimerView adInterceptTimerView = (AdInterceptTimerView) f4.b.a(view, i10);
            if (adInterceptTimerView != null) {
                i10 = R$id.tvDownloadView;
                AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                if (appCompatTextView != null) {
                    i10 = R$id.tvFeedback;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                    if (appCompatTextView2 != null) {
                        i10 = R$id.tvSubtitleSetting;
                        AppCompatTextView appCompatTextView3 = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView3 != null && (viewA = f4.b.a(view, (i10 = R$id.v_space_end))) != null && (viewA2 = f4.b.a(view, (i10 = R$id.v_space_start))) != null) {
                            i10 = R$id.vd_title;
                            AppCompatTextView appCompatTextView4 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView4 != null) {
                                return new i((ConstraintLayout) view, appCompatImageView, adInterceptTimerView, appCompatTextView, appCompatTextView2, appCompatTextView3, viewA, viewA2, appCompatTextView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66562a;
    }
}
