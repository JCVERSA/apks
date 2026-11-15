package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0014¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\t\u0010\u0003J\u000f\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "", "getLogTag", "()Ljava/lang/String;", "Lsh/n;", "a", "Lsh/n;", "binding", "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;", "nativeManager", "com/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdNativeMultipleActivity$a;", "nativeListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdNativeMultipleActivity extends TestBaseActivity {

    private sh.n binding;

    private BiddingNativeManager nativeManager;

    private final a nativeListener = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            xh.b.a.c(TestAdNativeMultipleActivity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override
        public void k(List list) {
            super.k(list);
            if (list != null) {
                TestAdNativeMultipleActivity testAdNativeMultipleActivity = TestAdNativeMultipleActivity.this;
                int i10 = 0;
                for (Object obj : list) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.u();
                    }
                    BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) obj;
                    BiddingNativeManager biddingNativeManager = null;
                    if (i10 == 0) {
                        sh.n nVar = testAdNativeMultipleActivity.binding;
                        if (nVar == null) {
                            Intrinsics.y("binding");
                            nVar = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView = nVar.f72155c;
                        BiddingNativeManager biddingNativeManager2 = testAdNativeMultipleActivity.nativeManager;
                        if (biddingNativeManager2 == null) {
                            Intrinsics.y("nativeManager");
                        } else {
                            biddingNativeManager = biddingNativeManager2;
                        }
                        nativeWrapperAdView.bindNativeView(biddingNativeManager, new s(testAdNativeMultipleActivity), biddingIntermediateMaterialBean);
                    } else if (i10 == 1) {
                        sh.n nVar2 = testAdNativeMultipleActivity.binding;
                        if (nVar2 == null) {
                            Intrinsics.y("binding");
                            nVar2 = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView2 = nVar2.f72156d;
                        BiddingNativeManager biddingNativeManager3 = testAdNativeMultipleActivity.nativeManager;
                        if (biddingNativeManager3 == null) {
                            Intrinsics.y("nativeManager");
                        } else {
                            biddingNativeManager = biddingNativeManager3;
                        }
                        nativeWrapperAdView2.bindNativeView(biddingNativeManager, new s(testAdNativeMultipleActivity), biddingIntermediateMaterialBean);
                    } else if (i10 == 2) {
                        sh.n nVar3 = testAdNativeMultipleActivity.binding;
                        if (nVar3 == null) {
                            Intrinsics.y("binding");
                            nVar3 = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView3 = nVar3.f72157e;
                        BiddingNativeManager biddingNativeManager4 = testAdNativeMultipleActivity.nativeManager;
                        if (biddingNativeManager4 == null) {
                            Intrinsics.y("nativeManager");
                        } else {
                            biddingNativeManager = biddingNativeManager4;
                        }
                        nativeWrapperAdView3.bindNativeView(biddingNativeManager, new s(testAdNativeMultipleActivity), biddingIntermediateMaterialBean);
                    }
                    i10 = i11;
                }
            }
        }
    }

    public static final void S(TestAdNativeMultipleActivity testAdNativeMultipleActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdNativeMultipleActivity), null, null, new TestAdNativeMultipleActivity$onCreate$1$1(testAdNativeMultipleActivity, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_n";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.n nVarC = sh.n.c(getLayoutInflater());
        this.binding = nVarC;
        sh.n nVar = null;
        if (nVarC == null) {
            Intrinsics.y("binding");
            nVarC = null;
        }
        setContentView(nVarC.getRoot());
        this.nativeManager = new BiddingNativeManager();
        sh.n nVar2 = this.binding;
        if (nVar2 == null) {
            Intrinsics.y("binding");
        } else {
            nVar = nVar2;
        }
        nVar.f72154b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdNativeMultipleActivity.S(this.f41273a, view);
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
