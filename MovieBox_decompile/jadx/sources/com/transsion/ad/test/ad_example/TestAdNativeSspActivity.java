package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import android.view.View;
import com.hisavana.common.bean.TAdErrorCode;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u00009\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0005*\u0001\u0015\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017¨\u0006\u0019"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lsh/q;", "a", "Lsh/q;", "binding", "Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/bidding/nativead/BiddingSspNativeManager;", "nativeManager", "com/transsion/ad/test/ad_example/TestAdNativeSspActivity$a", "c", "Lcom/transsion/ad/test/ad_example/TestAdNativeSspActivity$a;", "nativeListener", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdNativeSspActivity extends TestBaseActivity {

    private sh.q binding;

    private BiddingSspNativeManager nativeManager;

    private final a nativeListener = new a();

    public static final class a extends oh.a {
        a() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            xh.b.a.c(TestAdNativeSspActivity.this, 6, "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), null, false, 12, null);
        }

        @Override
        public void k(List list) {
            BiddingSspNativeManager biddingSspNativeManager;
            BiddingSspNativeManager biddingSspNativeManager2;
            BiddingSspNativeManager biddingSspNativeManager3;
            super.k(list);
            xh.b.a.c(TestAdNativeSspActivity.this, 0, "获取到广告 " + (list != null ? Integer.valueOf(list.size()) : null) + " 条广告数据，开始渲染广告视图...", null, false, 13, null);
            if (list != null) {
                TestAdNativeSspActivity testAdNativeSspActivity = TestAdNativeSspActivity.this;
                int i10 = 0;
                for (Object obj : list) {
                    int i11 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.u();
                    }
                    BiddingIntermediateMaterialBean biddingIntermediateMaterialBean = (BiddingIntermediateMaterialBean) obj;
                    if (i10 == 0) {
                        sh.q qVar = testAdNativeSspActivity.binding;
                        if (qVar == null) {
                            Intrinsics.y("binding");
                            qVar = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView = qVar.f72165c;
                        BiddingSspNativeManager biddingSspNativeManager4 = testAdNativeSspActivity.nativeManager;
                        if (biddingSspNativeManager4 == null) {
                            Intrinsics.y("nativeManager");
                            biddingSspNativeManager = null;
                        } else {
                            biddingSspNativeManager = biddingSspNativeManager4;
                        }
                        NativeWrapperAdView.bindSspNativeView$default(nativeWrapperAdView, biddingSspNativeManager, null, new w(testAdNativeSspActivity), biddingIntermediateMaterialBean, 2, null);
                    } else if (i10 == 1) {
                        sh.q qVar2 = testAdNativeSspActivity.binding;
                        if (qVar2 == null) {
                            Intrinsics.y("binding");
                            qVar2 = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView2 = qVar2.f72166d;
                        BiddingSspNativeManager biddingSspNativeManager5 = testAdNativeSspActivity.nativeManager;
                        if (biddingSspNativeManager5 == null) {
                            Intrinsics.y("nativeManager");
                            biddingSspNativeManager2 = null;
                        } else {
                            biddingSspNativeManager2 = biddingSspNativeManager5;
                        }
                        NativeWrapperAdView.bindSspNativeView$default(nativeWrapperAdView2, biddingSspNativeManager2, null, new w(testAdNativeSspActivity), biddingIntermediateMaterialBean, 2, null);
                    } else if (i10 == 2) {
                        sh.q qVar3 = testAdNativeSspActivity.binding;
                        if (qVar3 == null) {
                            Intrinsics.y("binding");
                            qVar3 = null;
                        }
                        NativeWrapperAdView nativeWrapperAdView3 = qVar3.f72167e;
                        BiddingSspNativeManager biddingSspNativeManager6 = testAdNativeSspActivity.nativeManager;
                        if (biddingSspNativeManager6 == null) {
                            Intrinsics.y("nativeManager");
                            biddingSspNativeManager3 = null;
                        } else {
                            biddingSspNativeManager3 = biddingSspNativeManager6;
                        }
                        NativeWrapperAdView.bindSspNativeView$default(nativeWrapperAdView3, biddingSspNativeManager3, null, new w(testAdNativeSspActivity), biddingIntermediateMaterialBean, 2, null);
                    }
                    i10 = i11;
                }
            }
        }
    }

    public static final void S(TestAdNativeSspActivity testAdNativeSspActivity, View view) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(testAdNativeSspActivity), null, null, new TestAdNativeSspActivity$onCreate$1$1(testAdNativeSspActivity, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_n";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.q qVarC = sh.q.c(getLayoutInflater());
        this.binding = qVarC;
        sh.q qVar = null;
        if (qVarC == null) {
            Intrinsics.y("binding");
            qVarC = null;
        }
        setContentView(qVarC.getRoot());
        this.nativeManager = new BiddingSspNativeManager();
        sh.q qVar2 = this.binding;
        if (qVar2 == null) {
            Intrinsics.y("binding");
        } else {
            qVar = qVar2;
        }
        qVar.f72164b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                TestAdNativeSspActivity.S(this.f41274a, view);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BiddingSspNativeManager biddingSspNativeManager = this.nativeManager;
        if (biddingSspNativeManager == null) {
            Intrinsics.y("nativeManager");
            biddingSspNativeManager = null;
        }
        biddingSspNativeManager.U();
    }
}
