package com.transsion.ad.test.ad_example;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdSplashActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lcom/transsion/ad/bidding/splash/b;", "a", "Lcom/transsion/ad/bidding/splash/b;", "splashManager", "Lsh/w;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lsh/w;", "binding", "com/transsion/ad/test/ad_example/TestAdSplashActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdSplashActivity$a;", "splashListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SuppressLint({"CustomSplashScreen"})
public final class TestAdSplashActivity extends TestBaseActivity {

    private com.transsion.ad.bidding.splash.b splashManager;

    private sh.w binding;

    private final a splashListener = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            xh.b.a.c(TestAdSplashActivity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            com.transsion.ad.bidding.splash.b bVar = TestAdSplashActivity.this.splashManager;
            if (bVar == null) {
                Intrinsics.y("splashManager");
                bVar = null;
            }
            AbsAdBidding.O0(bVar, TestAdSplashActivity.this, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override
        public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.m(biddingIntermediateMaterialBean);
            TestAdSplashActivity.this.finish();
        }
    }

    public static final void R(TestAdSplashActivity testAdSplashActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdSplashActivity), null, null, new TestAdSplashActivity$onCreate$1$1(testAdSplashActivity, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_s";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.w wVarC = sh.w.c(getLayoutInflater());
        this.binding = wVarC;
        sh.w wVar = null;
        if (wVarC == null) {
            Intrinsics.y("binding");
            wVarC = null;
        }
        setContentView(wVarC.getRoot());
        this.splashManager = new com.transsion.ad.bidding.splash.b();
        sh.w wVar2 = this.binding;
        if (wVar2 == null) {
            Intrinsics.y("binding");
        } else {
            wVar = wVar2;
        }
        wVar.f72187b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdSplashActivity.R(this.f41275a, view);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}
