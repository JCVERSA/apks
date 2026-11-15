package mn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.GradientTextView;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$layout;

public final class o implements f4.a {

    private final ConstraintLayout f66647a;

    public final AppCompatImageView f66648b;

    public final AppCompatImageView f66649c;

    public final LinearLayout f66650d;

    public final LinearLayout f66651e;

    public final FrameLayout f66652f;

    public final LinearLayout f66653g;

    public final NativeWrapperAdView f66654h;

    public final GradientTextView f66655i;

    public final GradientTextView f66656j;

    public final GradientTextView f66657k;

    private o(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, AppCompatImageView appCompatImageView2, LinearLayout linearLayout, LinearLayout linearLayout2, FrameLayout frameLayout, LinearLayout linearLayout3, NativeWrapperAdView nativeWrapperAdView, GradientTextView gradientTextView, GradientTextView gradientTextView2, GradientTextView gradientTextView3) {
        this.f66647a = constraintLayout;
        this.f66648b = appCompatImageView;
        this.f66649c = appCompatImageView2;
        this.f66650d = linearLayout;
        this.f66651e = linearLayout2;
        this.f66652f = frameLayout;
        this.f66653g = linearLayout3;
        this.f66654h = nativeWrapperAdView;
        this.f66655i = gradientTextView;
        this.f66656j = gradientTextView2;
        this.f66657k = gradientTextView3;
    }

    public static o a(View view) {
        int i10 = R$id.ivRefresh;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.ivRefreshV;
            AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
            if (appCompatImageView2 != null) {
                i10 = R$id.llBtnH;
                LinearLayout linearLayout = (LinearLayout) f4.b.a(view, i10);
                if (linearLayout != null) {
                    i10 = R$id.llBtnV;
                    LinearLayout linearLayout2 = (LinearLayout) f4.b.a(view, i10);
                    if (linearLayout2 != null) {
                        i10 = R$id.llChange;
                        FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                        if (frameLayout != null) {
                            i10 = R$id.llChangeV;
                            LinearLayout linearLayout3 = (LinearLayout) f4.b.a(view, i10);
                            if (linearLayout3 != null) {
                                i10 = R$id.nativeWrapperAdView;
                                NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
                                if (nativeWrapperAdView != null) {
                                    i10 = R$id.tvInstall;
                                    GradientTextView gradientTextView = (GradientTextView) f4.b.a(view, i10);
                                    if (gradientTextView != null) {
                                        i10 = R$id.tvInstallV;
                                        GradientTextView gradientTextView2 = (GradientTextView) f4.b.a(view, i10);
                                        if (gradientTextView2 != null) {
                                            i10 = R$id.tvTryMore;
                                            GradientTextView gradientTextView3 = (GradientTextView) f4.b.a(view, i10);
                                            if (gradientTextView3 != null) {
                                                return new o((ConstraintLayout) view, appCompatImageView, appCompatImageView2, linearLayout, linearLayout2, frameLayout, linearLayout3, nativeWrapperAdView, gradientTextView, gradientTextView2, gradientTextView3);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static o c(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.view_resolution_ad_layout, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f66647a;
    }
}
