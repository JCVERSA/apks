package com.transsion.ad.test.ad_example;

import android.os.Bundle;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.ad.R$id;
import com.transsion.ad.R$layout;
import com.transsion.ad.test.TestBaseActivity;
import com.transsion.ad.view.native_ad.BiddingFloatingIrregularAnimationView;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0014¢\u0006\u0004\b\f\u0010\u0003R\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity;", "Lcom/transsion/ad/test/TestBaseActivity;", "<init>", "()V", "", "getLogTag", "()Ljava/lang/String;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "onDestroy", "Lsh/l;", "a", "Lsh/l;", "binding", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TestAdIrregularViewActivity extends TestBaseActivity {

    private sh.l binding;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0015\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\b\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/transsion/ad/test/ad_example/TestAdIrregularViewActivity$a;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "", "strList", "<init>", "(Ljava/util/List;)V", "holder", WebConstants.FIELD_ITEM, "", "B1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/String;)V", "lib_ad_gpRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class a extends BaseQuickAdapter {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(List<String> strList) {
            super(R$layout.item_test_irregular_layout, strList);
            Intrinsics.h(strList, "strList");
        }

        @Override
        public void F(BaseViewHolder holder, String item) {
            Intrinsics.h(holder, "holder");
            Intrinsics.h(item, "item");
            holder.setText(R$id.btn, item);
        }
    }

    @Override
    public String getLogTag() {
        return "ad_fb";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        sh.l lVarC = sh.l.c(getLayoutInflater());
        this.binding = lVarC;
        sh.l lVar = null;
        if (lVarC == null) {
            Intrinsics.y("binding");
            lVarC = null;
        }
        setContentView(lVarC.getRoot());
        sh.l lVar2 = this.binding;
        if (lVar2 == null) {
            Intrinsics.y("binding");
            lVar2 = null;
        }
        lVar2.f72142b.setSceneId("MBNativeTestId");
        sh.l lVar3 = this.binding;
        if (lVar3 == null) {
            Intrinsics.y("binding");
            lVar3 = null;
        }
        lVar3.f72142b.loadAd();
        sh.l lVar4 = this.binding;
        if (lVar4 == null) {
            Intrinsics.y("binding");
            lVar4 = null;
        }
        RecyclerView recyclerView = lVar4.f72143c;
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < 200; i10++) {
            arrayList.add("我是谁 我在哪里 我要干什么 " + i10);
        }
        recyclerView.setAdapter(new a(arrayList));
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        sh.l lVar5 = this.binding;
        if (lVar5 == null) {
            Intrinsics.y("binding");
            lVar5 = null;
        }
        BiddingFloatingIrregularAnimationView biddingFloatingIrregularAnimationView = lVar5.f72142b;
        sh.l lVar6 = this.binding;
        if (lVar6 == null) {
            Intrinsics.y("binding");
        } else {
            lVar = lVar6;
        }
        biddingFloatingIrregularAnimationView.setRecyclerView(lVar.f72143c);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        sh.l lVar = this.binding;
        if (lVar == null) {
            Intrinsics.y("binding");
            lVar = null;
        }
        lVar.f72142b.onAdViewDestroy();
    }
}
