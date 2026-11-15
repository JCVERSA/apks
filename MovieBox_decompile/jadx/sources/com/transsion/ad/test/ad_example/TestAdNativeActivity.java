package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.test.TestBaseActivity;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\u0003J\u0019\u0010\u000b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0014¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "", "onDestroy", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "a", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "Lsh/o;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lsh/o;", "binding", "com/transsion/ad/test/ad_example/TestAdNativeActivity$nativeListener$1", "c", "Lcom/transsion/ad/test/ad_example/TestAdNativeActivity$nativeListener$1;", "nativeListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdNativeActivity extends TestBaseActivity {

    private BiddingNativeManager nativeManager;

    private sh.o binding;

    private final TestAdNativeActivity$nativeListener$1 nativeListener = new oh.a() {
        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f41233d), null, null, new TestAdNativeActivity$nativeListener$1$onBiddingLoad$1(this.f41233d, biddingIntermediateMaterialBean, null), 3, null);
        }
    };

    public static final void S(TestAdNativeActivity testAdNativeActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdNativeActivity), null, null, new TestAdNativeActivity$onCreate$1$1(testAdNativeActivity, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_n";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.o oVarC = sh.o.c(getLayoutInflater());
        this.binding = oVarC;
        sh.o oVar = null;
        if (oVarC == null) {
            Intrinsics.y("binding");
            oVarC = null;
        }
        setContentView(oVarC.getRoot());
        this.nativeManager = new BiddingNativeManager();
        sh.o oVar2 = this.binding;
        if (oVar2 == null) {
            Intrinsics.y("binding");
        } else {
            oVar = oVar2;
        }
        oVar.f72159b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdNativeActivity.S(this.f41270a, view);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BiddingNativeManager biddingNativeManager = this.nativeManager;
        if (biddingNativeManager == null) {
            Intrinsics.y("nativeManager");
            biddingNativeManager = null;
        }
        biddingNativeManager.U();
    }
}
