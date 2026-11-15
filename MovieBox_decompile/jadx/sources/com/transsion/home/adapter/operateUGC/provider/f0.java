package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.operateUGC.adapter.UGCOptFeedsListAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class f0 extends BaseItemProvider {

    private final int f43176e;

    public f0(int i10) {
        this.f43176e = i10;
    }

    public static final void B(f0 f0Var, OperateItem operateItem, View view) {
        f0Var.D(operateItem);
    }

    public static final void C(f0 f0Var, OperateItem operateItem, View view) {
        f0Var.D(operateItem);
    }

    private final void D(OperateItem operateItem) {
        List<Object> data;
        String deepLink = operateItem.getDeepLink();
        Integer numValueOf = null;
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
            numValueOf = Integer.valueOf(data.indexOf(operateItem));
        }
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        map.put(RequestParameters.POSITION, String.valueOf(numValueOf));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43176e));
        sk.b.a(operateItem, map);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(this.f43176e), map);
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.provider_ugc_common_title);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.provider_ugc_common_more_text);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            uf.c.h(textView2);
        } else {
            uf.c.k(textView2);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    f0.B(this.f43170a, item, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    f0.C(this.f43173a, item, view);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.provider_ugc_common_recycler);
        UGCOptFeedsListAdapter uGCOptFeedsListAdapter = new UGCOptFeedsListAdapter(item, this.f43176e);
        recyclerView.setAdapter(uGCOptFeedsListAdapter);
        recyclerView.setLayoutManager(new LinearLayoutManager(k(), 1, false));
        recyclerView.setNestedScrollingEnabled(false);
        uGCOptFeedsListAdapter.n1(item.getContentList());
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(item))));
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43176e));
        sk.b.a(item, map);
        qi.h.f69682a.z(SubTabFragment.INSTANCE.a(this.f43176e), map);
    }

    @Override
    public int l() {
        return PostItemType.UGC_VERTICAL_OPT_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_op_common;
    }
}
