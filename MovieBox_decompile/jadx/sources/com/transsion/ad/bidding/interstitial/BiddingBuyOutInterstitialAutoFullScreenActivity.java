package com.transsion.ad.bidding.interstitial;

import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.blankj.utilcode.util.a0;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.transsion.ad.R$id;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.transsion.ad.view.RoundedCornerLayout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00062\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0015\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b!\u0010\"J\u0011\u0010#\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b#\u0010\"J\u000f\u0010$\u001a\u00020\u0004H\u0016¢\u0006\u0004\b$\u0010%J\u000f\u0010&\u001a\u00020\u0006H\u0016¢\u0006\u0004\b&\u0010\u0003J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u0004H\u0017¢\u0006\u0004\b(\u0010\bJ\u000f\u0010)\u001a\u00020\u0006H\u0016¢\u0006\u0004\b)\u0010\u0003J\u0011\u0010*\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b*\u0010\u001fJ\u0011\u0010+\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b+\u0010\u001fJ\u0011\u0010,\u001a\u0004\u0018\u00010\u001dH\u0016¢\u0006\u0004\b,\u0010\u001fR\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/¨\u00061"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialAutoFullScreenActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "orientation", "", "R0", "(I)V", "B0", "Lcom/gyf/immersionbar/ImmersionBar;", "with", "L0", "(Lcom/gyf/immersionbar/ImmersionBar;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "isLandscape", "Q0", "(Z)V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "o0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "j0", "()Landroid/widget/FrameLayout;", "p0", "g0", "()I", "D0", "i", "y0", "r0", "c0", "k0", "l0", "Lsh/d;", "o", "Lsh/d;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutInterstitialAutoFullScreenActivity extends AbsBiddingActivity {

    private sh.d binding;

    public static final void O0(BiddingBuyOutInterstitialAutoFullScreenActivity biddingBuyOutInterstitialAutoFullScreenActivity, View view) {
        biddingBuyOutInterstitialAutoFullScreenActivity.b0();
    }

    public static final void P0(BiddingBuyOutInterstitialAutoFullScreenActivity biddingBuyOutInterstitialAutoFullScreenActivity, View view) {
        biddingBuyOutInterstitialAutoFullScreenActivity.K0();
    }

    private final void R0(int orientation) {
        Q0(orientation == 2);
    }

    @Override
    public void B0() {
        setRequestedOrientation(-1);
    }

    @Override
    public void D0() {
        finish();
    }

    @Override
    public void L0(ImmersionBar with) {
        Intrinsics.h(with, "with");
        if (getResources().getConfiguration().orientation == 2) {
            with.hideBar(BarHide.FLAG_HIDE_STATUS_BAR);
        } else {
            with.hideBar(BarHide.FLAG_SHOW_BAR);
        }
    }

    public final void Q0(boolean isLandscape) {
        RoundedCornerLayout roundedCornerLayout;
        sh.d dVar = this.binding;
        if (dVar == null || (roundedCornerLayout = dVar.f72082c) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = roundedCornerLayout.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar != null) {
            ((ViewGroup.MarginLayoutParams) bVar).width = isLandscape ? a0.a(426.0f) : -1;
            ((ViewGroup.MarginLayoutParams) bVar).height = isLandscape ? a0.a(240.0f) : -1;
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = a0.a(isLandscape ? 0.0f : 44.0f);
        }
    }

    @Override
    public View c0() {
        return findViewById(R$id.adIcon);
    }

    @Override
    public int g0() {
        return com.transsion.ad.scene.b.f41153a.b();
    }

    @Override
    public String getLogTag() {
        return "ad_int";
    }

    @Override
    public FrameLayout j0() {
        sh.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f72082c;
        }
        return null;
    }

    @Override
    public View k0() {
        sh.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f72090k;
        }
        return null;
    }

    @Override
    public View l0() {
        return null;
    }

    @Override
    public View o0() {
        sh.d dVarC = sh.d.c(getLayoutInflater());
        this.binding = dVarC;
        if (dVarC != null) {
            return dVarC.getRoot();
        }
        return null;
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        R0(newConfig.orientation);
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        if (newConfig.orientation == 2) {
            immersionBarWith.hideBar(BarHide.FLAG_HIDE_STATUS_BAR);
        } else {
            immersionBarWith.hideBar(BarHide.FLAG_SHOW_BAR);
        }
        immersionBarWith.init();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.dimAmount = 0.8f;
        window.setAttributes(attributes);
        R0(getResources().getConfiguration().orientation);
    }

    @Override
    public FrameLayout p0() {
        sh.d dVar = this.binding;
        if (dVar != null) {
            return dVar.f72084e;
        }
        return null;
    }

    @Override
    public void r0() {
        AppCompatTextView appCompatTextView;
        FrameLayout frameLayout;
        sh.d dVar = this.binding;
        if (dVar != null && (frameLayout = dVar.f72083d) != null) {
            frameLayout.setVisibility(0);
        }
        sh.d dVar2 = this.binding;
        if (dVar2 == null || (appCompatTextView = dVar2.f72088i) == null) {
            return;
        }
        appCompatTextView.setVisibility(8);
    }

    @Override
    public void y0(int i10) {
        AppCompatTextView appCompatTextView;
        sh.d dVar = this.binding;
        if (dVar == null || (appCompatTextView = dVar.f72088i) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
        appCompatTextView.setText(String.valueOf(i10));
    }
}
