package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.bidding.nativead.BiddingListManager;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0004\u0015\u0011\u0019\u001cB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0006\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\u0003J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0014¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000f\u0010\u0003R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0017\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "U", "W", "R", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lsh/p;", "a", "Lsh/p;", "binding", "Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$a;", "mTestAdapter", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "c", "Lcom/transsion/ad/bidding/nativead/BiddingListManager;", "v3ListManager", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdNativeListActivity extends TestBaseActivity {

    private sh.p binding;

    private a mTestAdapter;

    private BiddingListManager v3ListManager;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\n\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lcom/transsion/ad/test/ad_example/TestAdNativeListActivity$b;", "Lt6/i;", "<init>", "()V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseProviderMultiAdapter<b> implements t6.i {
        public a() {
            super(null, 1, null);
            F1(new c());
            F1(new d());
        }

        @Override
        protected int N1(List<? extends b> data, int position) {
            Intrinsics.h(data, "data");
            return data.get(position).a() != null ? 2 : 1;
        }

        @Override
        public t6.f b(BaseQuickAdapter baseQuickAdapter) {
            return t6.h.a(this, baseQuickAdapter);
        }
    }

    public static final class b {

        public static final a f41237c = new a(null);

        private final String f41238a;

        private final BiddingNativeManager f41239b;

        public static final class a {
            public a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private a() {
            }
        }

        public b(String title, BiddingNativeManager biddingNativeManager) {
            Intrinsics.h(title, "title");
            this.f41238a = title;
            this.f41239b = biddingNativeManager;
        }

        public final BiddingNativeManager a() {
            return this.f41239b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return Intrinsics.c(this.f41238a, bVar.f41238a) && Intrinsics.c(this.f41239b, bVar.f41239b);
        }

        public int hashCode() {
            int iHashCode = this.f41238a.hashCode() * 31;
            BiddingNativeManager biddingNativeManager = this.f41239b;
            return iHashCode + (biddingNativeManager == null ? 0 : biddingNativeManager.hashCode());
        }

        public String toString() {
            return "TestAdNativeListBean(title=" + this.f41238a + ", adManager=" + this.f41239b + ")";
        }
    }

    public static final class c extends BaseItemProvider {
        @Override
        public int l() {
            return 2;
        }

        @Override
        public int m() {
            return R$layout.test_ad_native_list_ad_item_layout;
        }

        @Override
        public void b(BaseViewHolder helper, b item) {
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
            s sVar = new s(k());
            NativeWrapperAdView nativeWrapperAdView = (NativeWrapperAdView) helper.getViewOrNull(R$id.nativeView);
            if (nativeWrapperAdView != null) {
                BiddingNativeManager biddingNativeManagerA = item.a();
                BiddingNativeManager biddingNativeManagerA2 = item.a();
                nativeWrapperAdView.bindNativeView(biddingNativeManagerA, sVar, biddingNativeManagerA2 != null ? biddingNativeManagerA2.k0() : null);
            }
        }
    }

    public static final class d extends BaseItemProvider {
        @Override
        public int l() {
            return 1;
        }

        @Override
        public int m() {
            return R$layout.test_ad_native_list_content_item_layout;
        }

        @Override
        public void b(BaseViewHolder helper, b item) {
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
        }
    }

    private final void R() {
        BiddingListManager biddingListManager = new BiddingListManager();
        sh.p pVar = this.binding;
        if (pVar == null) {
            Intrinsics.y("binding");
            pVar = null;
        }
        biddingListManager.F(pVar.f72162b);
        biddingListManager.A(androidx.p009lifecycle.v.a(this));
        biddingListManager.G("MBNativeTestId");
        biddingListManager.B(new LinkedHashMap());
        biddingListManager.z(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return TestAdNativeListActivity.S(this.f41271a, ((Integer) obj).intValue(), (BiddingNativeManager) obj2);
            }
        });
        this.v3ListManager = biddingListManager;
    }

    public static final Unit S(TestAdNativeListActivity testAdNativeListActivity, int i10, BiddingNativeManager current) {
        List<Object> data;
        Intrinsics.h(current, "current");
        a aVar = testAdNativeListActivity.mTestAdapter;
        int size = (aVar == null || (data = aVar.getData()) == null) ? 0 : data.size();
        b bVar = new b("", current);
        if (i10 < size) {
            a aVar2 = testAdNativeListActivity.mTestAdapter;
            if (aVar2 != null) {
                aVar2.n(i10, bVar);
            }
        } else {
            a aVar3 = testAdNativeListActivity.mTestAdapter;
            if (aVar3 != null) {
                aVar3.p(bVar);
            }
        }
        return Unit.f64096a;
    }

    private final void U() {
        sh.p pVar = this.binding;
        if (pVar == null) {
            Intrinsics.y("binding");
            pVar = null;
        }
        RecyclerView recyclerView = pVar.f72162b;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a();
        aVar.h0().z(true);
        aVar.h0().B(true);
        aVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                TestAdNativeListActivity.V(this.f41272a);
            }
        });
        this.mTestAdapter = aVar;
        recyclerView.setAdapter(aVar);
        W();
    }

    public static final void V(TestAdNativeListActivity testAdNativeListActivity) {
        testAdNativeListActivity.W();
    }

    private final void W() {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new TestAdNativeListActivity$loadMore$1(this, null), 3, null);
    }

    @Override
    public String getLogTag() {
        return "ad_n";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.p pVarC = sh.p.c(getLayoutInflater());
        this.binding = pVarC;
        if (pVarC == null) {
            Intrinsics.y("binding");
            pVarC = null;
        }
        setContentView(pVarC.getRoot());
        R();
        U();
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        BiddingListManager biddingListManager = this.v3ListManager;
        if (biddingListManager != null) {
            biddingListManager.o();
        }
    }
}
