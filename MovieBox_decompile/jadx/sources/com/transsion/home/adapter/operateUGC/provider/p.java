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
import com.transsion.home.adapter.operateUGC.adapter.MovieRankUGCAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class p extends BaseItemProvider {

    private final int f43203e;

    private final boolean f43204f;

    private final Lazy f43205g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return p.E();
        }
    });

    public static final class a extends RecyclerView.s {
        a() {
            m(0, 16);
        }
    }

    public p(int i10, boolean z10) {
        this.f43203e = i10;
        this.f43204f = z10;
    }

    public static final void C(p pVar, OperateItem operateItem, View view) {
        pVar.G(operateItem);
    }

    public static final void D(p pVar, OperateItem operateItem, View view) {
        pVar.G(operateItem);
    }

    public static final a E() {
        return new a();
    }

    private final a F() {
        return (a) this.f43205g.getValue();
    }

    private final void G(OperateItem operateItem) {
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
        map.put("tabId", String.valueOf(this.f43203e));
        sk.b.a(operateItem, map);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(this.f43203e), map);
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
                    p.C(this.f43199a, item, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    p.D(this.f43201a, item, view);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.provider_ugc_common_recycler);
        MovieRankUGCAdapter movieRankUGCAdapter = new MovieRankUGCAdapter(0, item, this.f43203e, this.f43204f, 1, null);
        recyclerView.setAdapter(movieRankUGCAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        Intrinsics.c(recyclerView.getRecycledViewPool(), F());
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        movieRankUGCAdapter.n1(item.getContentList());
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(item))));
        String title = item.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43203e));
        sk.b.a(item, map);
        qi.h.f69682a.z(SubTabFragment.INSTANCE.a(this.f43203e), map);
    }

    @Override
    public int l() {
        return PostItemType.UGC_MOVIE_RANK.ordinal();
    }

    @Override
    public int m() {
        return R$layout.provider_ugc_op_common;
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
    }
}
