package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.operateUGC.adapter.VerticalContentUGCAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.ugcvideodetail.api.bean.UGCContent;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class j0 extends BaseItemProvider {

    public static final a f43190f = new a(null);

    public static final int f43191g = 8;

    private final int f43192e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public j0(int i10) {
        this.f43192e = i10;
    }

    public static final Unit C(OperateItem operateItem, j0 j0Var) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null && deepLink.length() != 0) {
            j0Var.G(operateItem);
            String deepLink2 = operateItem.getDeepLink();
            if (deepLink2 != null) {
                ij.k.h(deepLink2, null, 1, null);
            }
        }
        return Unit.f64096a;
    }

    public static final void D(Function0 function0, View view) {
        function0.invoke();
    }

    public static final void E(Function0 function0, View view) {
        function0.invoke();
    }

    private final void F(OperateItem operateItem) {
        List<Object> data;
        Pair pairA = TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, TuplesKt.a(CampaignEx.JSON_KEY_TITLE, title), TuplesKt.a("tabId", String.valueOf(this.f43192e)));
        sk.b.a(operateItem, mapM);
        qi.h.f69682a.z(SubTabFragment.INSTANCE.a(this.f43192e), mapM);
    }

    private final void G(OperateItem operateItem) {
        List<Object> data;
        Pair pairA = TuplesKt.a("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        Pair pairA2 = TuplesKt.a(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        Map mapM = MapsKt.m(pairA, pairA2, TuplesKt.a(CampaignEx.JSON_KEY_TITLE, title), TuplesKt.a("tabId", String.valueOf(this.f43192e)));
        sk.b.a(operateItem, mapM);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(this.f43192e), mapM);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x00af  */
    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List listL;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final Function0 function0 = new Function0() {
            @Override
            public final Object invoke() {
                return j0.C(item, this);
            }
        };
        ((TextView) helper.getView(R$id.tvProviderVerticalTitle)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                j0.D(function0, view);
            }
        });
        TextView textView = (TextView) helper.getView(R$id.tvProviderVerticalMore);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            uf.c.g(textView);
        } else {
            uf.c.k(textView);
        }
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                j0.E(function0, view);
            }
        });
        F(item);
        String title = item.getTitle();
        if (title != null && title.length() != 0) {
            ((TextView) helper.getView(R$id.tvProviderVerticalTitle)).setText(item.getTitle());
        }
        VerticalContentUGCAdapter verticalContentUGCAdapter = new VerticalContentUGCAdapter(item, this.f43192e, 0, 4, null);
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.rvProviderVerticalPost);
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.a(lj.a.b(8), 0, 0, 0));
        }
        recyclerView.setAdapter(verticalContentUGCAdapter);
        List<UGCContent> contentList = item.getContentList();
        if (contentList != null) {
            listL = CollectionsKt.K0(contentList, (contentList.size() / 3) * 3);
            if (listL == null) {
                listL = CollectionsKt.l();
            }
        } else {
            listL = CollectionsKt.l();
        }
        verticalContentUGCAdapter.n1(listL);
    }

    @Override
    public int l() {
        return PostItemType.UGC_PORTRAIT_GRID.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_vertical_content;
    }
}
