package com.transsion.ad.bidding.interstitial;

import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.transsion.ad.R$id;
import com.transsion.ad.bidding.base.AbsBiddingActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0011\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0011\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\r\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u000eH\u0017¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0003J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\tJ\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\tJ\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\tR\u0018\u0010\u001d\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/ad/bidding/interstitial/BiddingBuyOutBuyOutInterstitialHalfScreenActivity;", "Lcom/transsion/ad/bidding/base/AbsBiddingActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/view/View;", "o0", "()Landroid/view/View;", "Landroid/widget/FrameLayout;", "j0", "()Landroid/widget/FrameLayout;", "p0", "", "g0", "()I", "", "D0", "i", "y0", "(I)V", "r0", "c0", "k0", "l0", "Lsh/c;", "o", "Lsh/c;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class BiddingBuyOutBuyOutInterstitialHalfScreenActivity extends AbsBiddingActivity {

    private sh.c binding;

    public static final void O0(BiddingBuyOutBuyOutInterstitialHalfScreenActivity biddingBuyOutBuyOutInterstitialHalfScreenActivity, View view) {
        biddingBuyOutBuyOutInterstitialHalfScreenActivity.b0();
    }

    public static final void P0(BiddingBuyOutBuyOutInterstitialHalfScreenActivity biddingBuyOutBuyOutInterstitialHalfScreenActivity, View view) {
        biddingBuyOutBuyOutInterstitialHalfScreenActivity.K0();
    }

    @Override
    public void D0() {
        finish();
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
        sh.c cVar = this.binding;
        if (cVar != null) {
            return cVar.f72072c;
        }
        return null;
    }

    @Override
    public View k0() {
        sh.c cVar = this.binding;
        if (cVar != null) {
            return cVar.f72079j;
        }
        return null;
    }

    @Override
    public View l0() {
        return null;
    }

    @Override
    public View o0() {
        sh.c cVarC = sh.c.c(getLayoutInflater());
        this.binding = cVarC;
        if (cVarC != null) {
            return cVarC.getRoot();
        }
        return null;
    }

    @Override
    public FrameLayout p0() {
        sh.c cVar = this.binding;
        if (cVar != null) {
            return cVar.f72074e;
        }
        return null;
    }

    @Override
    public void r0() {
        AppCompatTextView appCompatTextView;
        FrameLayout frameLayout;
        sh.c cVar = this.binding;
        if (cVar != null && (frameLayout = cVar.f72073d) != null) {
            frameLayout.setVisibility(0);
        }
        sh.c cVar2 = this.binding;
        if (cVar2 == null || (appCompatTextView = cVar2.f72077h) == null) {
            return;
        }
        appCompatTextView.setVisibility(8);
    }

    @Override
    public void y0(int i10) {
        AppCompatTextView appCompatTextView;
        sh.c cVar = this.binding;
        if (cVar == null || (appCompatTextView = cVar.f72077h) == null) {
            return;
        }
        appCompatTextView.setVisibility(0);
        appCompatTextView.setText(String.valueOf(i10));
    }
}
