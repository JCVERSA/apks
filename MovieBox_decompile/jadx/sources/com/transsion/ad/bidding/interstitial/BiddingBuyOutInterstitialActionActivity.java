package com.transsion.ad.bidding.interstitial;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0010\u0010\u0003J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001a\u0010\u0003J\u0011\u0010\u001b\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001b\u0010\u000fJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001c\u0010\u000fJ\u0011\u0010\u001d\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u001d\u0010\u000fJ\u001f\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\tJ-\u0010!\u001a\u00020\u00072\b\u0010 \u001a\u0004\u0018\u00010\u001f2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b!\u0010\"R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006'"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutInterstitialActionActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "width", "height", "", "P0", "(II)V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "o0", "()Landroid/view/View;", "D0", "Landroid/widget/FrameLayout;", "j0", "()Landroid/widget/FrameLayout;", "p0", "g0", "()I", "i", "y0", "(I)V", "r0", "c0", "k0", "l0", "onVideoSizeChanged", "Landroidx/appcompat/widget/AppCompatImageView;", "imageView", "t0", "(Landroidx/appcompat/widget/AppCompatImageView;Ljava/lang/Integer;Ljava/lang/Integer;)V", "Lsh/b;", "o", "Lsh/b;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutInterstitialActionActivity extends AbsBiddingActivity {

    private sh.b binding;

    private final void P0(final int width, final int height) {
        final FrameLayout frameLayout;
        sh.b bVar = this.binding;
        if (bVar == null || (frameLayout = bVar.f72069c) == null) {
            return;
        }
        frameLayout.post(new Runnable() {
            @Override
            public final void run() {
                BiddingBuyOutInterstitialActionActivity.Q0(this.f40948a, frameLayout, height, width);
            }
        });
    }

    public static final void Q0(BiddingBuyOutInterstitialActionActivity biddingBuyOutInterstitialActionActivity, FrameLayout frameLayout, int i10, int i11) {
        try {
            Result.Companion companion = Result.INSTANCE;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(frameLayout.getWidth(), (frameLayout.getWidth() * i10) / i11);
            layoutParams.gravity = 17;
            frameLayout.setLayoutParams(layoutParams);
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void R0(BiddingBuyOutInterstitialActionActivity biddingBuyOutInterstitialActionActivity, View view) {
        biddingBuyOutInterstitialActionActivity.b0();
    }

    public static final void S0(BiddingBuyOutInterstitialActionActivity biddingBuyOutInterstitialActionActivity) {
        AppCompatImageView appCompatImageView;
        sh.b bVar = biddingBuyOutInterstitialActionActivity.binding;
        if (bVar == null || (appCompatImageView = bVar.f72068b) == null) {
            return;
        }
        appCompatImageView.setVisibility(0);
    }

    @Override
    public void D0() {
        finish();
    }

    @Override
    public View c0() {
        return null;
    }

    @Override
    public int g0() {
        return 0;
    }

    @Override
    public String getLogTag() {
        return "ad_int";
    }

    @Override
    public FrameLayout j0() {
        sh.b bVar = this.binding;
        if (bVar != null) {
            return bVar.f72069c;
        }
        return null;
    }

    @Override
    public View k0() {
        return null;
    }

    @Override
    public View l0() {
        return null;
    }

    @Override
    public View o0() {
        sh.b bVarC = sh.b.c(getLayoutInflater());
        this.binding = bVarC;
        if (bVarC != null) {
            return bVarC.getRoot();
        }
        return null;
    }

    @Override
    public void onVideoSizeChanged(int width, int height) {
        super.onVideoSizeChanged(width, height);
        P0(width, height);
    }

    @Override
    public FrameLayout p0() {
        return null;
    }

    @Override
    public void r0() {
    }

    @Override
    public void t0(AppCompatImageView imageView, Integer width, Integer height) {
        super.t0(imageView, width, height);
        if (width == null || height == null) {
            return;
        }
        P0(width.intValue(), height.intValue());
    }

    @Override
    public void y0(int i10) {
    }
}
