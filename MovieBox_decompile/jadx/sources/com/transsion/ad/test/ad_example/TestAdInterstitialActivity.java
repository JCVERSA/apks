package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lsh/k;", "a", "Lsh/k;", "binding", "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;", "interstitialManager", "com/transsion/ad/test/ad_example/TestAdInterstitialActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdInterstitialActivity$a;", "interstitialListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdInterstitialActivity extends TestBaseActivity {

    private sh.k binding;

    private BiddingInterstitialManager interstitialManager;

    private final a interstitialListener = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            BiddingInterstitialManager biddingInterstitialManager = TestAdInterstitialActivity.this.interstitialManager;
            if (biddingInterstitialManager == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager = null;
            }
            AbsAdBidding.O0(biddingInterstitialManager, TestAdInterstitialActivity.this, biddingIntermediateMaterialBean, false, 4, null);
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
        }
    }

    public static final void R(TestAdInterstitialActivity testAdInterstitialActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdInterstitialActivity), null, null, new TestAdInterstitialActivity$onCreate$1$1(testAdInterstitialActivity, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_int";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.k kVarC = sh.k.c(getLayoutInflater());
        this.binding = kVarC;
        sh.k kVar = null;
        if (kVarC == null) {
            Intrinsics.y("binding");
            kVarC = null;
        }
        setContentView(kVarC.getRoot());
        this.interstitialManager = new BiddingInterstitialManager();
        sh.k kVar2 = this.binding;
        if (kVar2 == null) {
            Intrinsics.y("binding");
        } else {
            kVar = kVar2;
        }
        kVar.f72140b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdInterstitialActivity.R(this.f41269a, view);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BiddingInterstitialManager biddingInterstitialManager = this.interstitialManager;
        if (biddingInterstitialManager == null) {
            Intrinsics.y("interstitialManager");
            biddingInterstitialManager = null;
        }
        biddingInterstitialManager.U();
    }
}
