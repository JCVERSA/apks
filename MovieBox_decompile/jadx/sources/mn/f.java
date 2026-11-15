package mn;

import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import com.noober.background.view.BLLinearLayout;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.player.longvideo.R$id;

public final class f implements f4.a {

    private final BLLinearLayout f66538a;

    public final AppCompatImageView f66539b;

    public final LinearLayoutCompat f66540c;

    public final GradientTextView f66541d;

    public final AppCompatImageView f66542e;

    public final AppCompatTextView f66543f;

    public final AppCompatTextView f66544g;

    private f(BLLinearLayout bLLinearLayout, AppCompatImageView appCompatImageView, LinearLayoutCompat linearLayoutCompat, GradientTextView gradientTextView, AppCompatImageView appCompatImageView2, AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f66538a = bLLinearLayout;
        this.f66539b = appCompatImageView;
        this.f66540c = linearLayoutCompat;
        this.f66541d = gradientTextView;
        this.f66542e = appCompatImageView2;
        this.f66543f = appCompatTextView;
        this.f66544g = appCompatTextView2;
    }

    public static f a(View view) {
        int i10 = R$id.ivMore;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.llButton;
            LinearLayoutCompat linearLayoutCompat = (LinearLayoutCompat) f4.b.a(view, i10);
            if (linearLayoutCompat != null) {
                i10 = R$id.tvButton;
                GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                if (gradientTextView != null) {
                    i10 = R$id.tvClose;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                    if (appCompatImageView2 != null) {
                        i10 = R$id.tvTips;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) f4.b.a(view, i10);
                        if (appCompatTextView != null) {
                            i10 = R$id.tvTitle;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) f4.b.a(view, i10);
                            if (appCompatTextView2 != null) {
                                return new f((BLLinearLayout) view, appCompatImageView, linearLayoutCompat, gradientTextView, appCompatImageView2, appCompatTextView, appCompatTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @Override
    public BLLinearLayout getRoot() {
        return this.f66538a;
    }
}
