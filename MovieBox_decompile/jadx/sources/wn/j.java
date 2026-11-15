package wn;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.ad.AdInterceptTimerView;
import com.transsion.postdetail.ui.view.AdCountDownView;

public final class j implements f4.a {

    private final ConstraintLayout f74413a;

    public final AppCompatImageView f74414b;

    public final NativeWrapperAdView f74415c;

    public final AdCountDownView f74416d;

    public final AdInterceptTimerView f74417e;

    public final NativeWrapperAdView f74418f;

    public final FrameLayout f74419g;

    public final ConstraintLayout f74420h;

    public final View f74421i;

    public final ImageView f74422j;

    public final u f74423k;

    public final w f74424l;

    public final y f74425m;

    public final AppCompatImageView f74426n;

    public final ImageView f74427o;

    private j(ConstraintLayout constraintLayout, AppCompatImageView appCompatImageView, NativeWrapperAdView nativeWrapperAdView, AdCountDownView adCountDownView, AdInterceptTimerView adInterceptTimerView, NativeWrapperAdView nativeWrapperAdView2, FrameLayout frameLayout, ConstraintLayout constraintLayout2, View view, ImageView imageView, u uVar, w wVar, y yVar, AppCompatImageView appCompatImageView2, ImageView imageView2) {
        this.f74413a = constraintLayout;
        this.f74414b = appCompatImageView;
        this.f74415c = nativeWrapperAdView;
        this.f74416d = adCountDownView;
        this.f74417e = adInterceptTimerView;
        this.f74418f = nativeWrapperAdView2;
        this.f74419g = frameLayout;
        this.f74420h = constraintLayout2;
        this.f74421i = view;
        this.f74422j = imageView;
        this.f74423k = uVar;
        this.f74424l = wVar;
        this.f74425m = yVar;
        this.f74426n = appCompatImageView2;
        this.f74427o = imageView2;
    }

    public static j a(View view) {
        View viewA;
        View viewA2;
        int i10 = R$id.adCloseView;
        AppCompatImageView appCompatImageView = (AppCompatImageView) f4.b.a(view, i10);
        if (appCompatImageView != null) {
            i10 = R$id.adContainer;
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) f4.b.a(view, i10);
            if (nativeWrapperAdView != null) {
                i10 = R$id.adCountDownView;
                AdCountDownView adCountDownView = (AdCountDownView) f4.b.a(view, i10);
                if (adCountDownView != null) {
                    i10 = R$id.enter_ad_tip;
                    AdInterceptTimerView adInterceptTimerView = (AdInterceptTimerView) f4.b.a(view, i10);
                    if (adInterceptTimerView != null) {
                        i10 = R$id.flLandAd;
                        NativeWrapperAdView nativeWrapperAdView2 = (NativeWrapperAdView) f4.b.a(view, i10);
                        if (nativeWrapperAdView2 != null) {
                            i10 = R$id.flLandAdGroup;
                            FrameLayout frameLayout = (FrameLayout) f4.b.a(view, i10);
                            if (frameLayout != null) {
                                i10 = R$id.flPauseAdGroup;
                                ConstraintLayout constraintLayout = (ConstraintLayout) f4.b.a(view, i10);
                                if (constraintLayout != null && (viewA = f4.b.a(view, (i10 = R$id.guideline))) != null) {
                                    i10 = R$id.ivAdPauseClose;
                                    ImageView imageView = (ImageView) f4.b.a(view, i10);
                                    if (imageView != null && (viewA2 = f4.b.a(view, (i10 = R$id.local_video_land))) != null) {
                                        u uVarA = u.a(viewA2);
                                        i10 = R$id.local_video_middle;
                                        View viewA3 = f4.b.a(view, i10);
                                        if (viewA3 != null) {
                                            w wVarA = w.a(viewA3);
                                            i10 = R$id.local_video_portrait;
                                            View viewA4 = f4.b.a(view, i10);
                                            if (viewA4 != null) {
                                                y yVarA = y.a(viewA4);
                                                i10 = R$id.rotate;
                                                AppCompatImageView appCompatImageView2 = (AppCompatImageView) f4.b.a(view, i10);
                                                if (appCompatImageView2 != null) {
                                                    i10 = R$id.v_top_space;
                                                    ImageView imageView2 = (ImageView) f4.b.a(view, i10);
                                                    if (imageView2 != null) {
                                                        return new j((ConstraintLayout) view, appCompatImageView, nativeWrapperAdView, adCountDownView, adInterceptTimerView, nativeWrapperAdView2, frameLayout, constraintLayout, viewA, imageView, uVarA, wVarA, yVarA, appCompatImageView2, imageView2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    public static j c(LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    public static j d(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R$layout.fragment_local_video, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return a(viewInflate);
    }

    @Override
    public ConstraintLayout getRoot() {
        return this.f74413a;
    }
}
