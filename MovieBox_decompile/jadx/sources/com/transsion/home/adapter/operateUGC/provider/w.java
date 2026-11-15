package com.transsion.home.adapter.operateUGC.provider;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public final class w extends BaseItemProvider {

    private final int f43222e;

    private OperateItem f43223f;

    private com.transsion.home.adapter.operateUGC.adapter.d f43224g;

    private com.transsion.home.adapter.operateUGC.adapter.e f43225h;

    private int f43226i;

    public static final class a extends RecyclerView.r {

        final com.transsion.home.view.d f43227a;

        final w f43228b;

        final RecyclerView f43229c;

        a(com.transsion.home.view.d dVar, w wVar, RecyclerView recyclerView) {
            this.f43227a = dVar;
            this.f43228b = wVar;
            this.f43229c = recyclerView;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            View viewFindSnapView;
            List<Object> data;
            Intrinsics.h(recyclerView, "recyclerView");
            if (i10 != 0 || (viewFindSnapView = this.f43227a.findSnapView(recyclerView.getLayoutManager())) == null) {
                return;
            }
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int position = layoutManager != null ? layoutManager.getPosition(viewFindSnapView) : 0;
            com.transsion.home.adapter.operateUGC.adapter.e eVar = this.f43228b.f43225h;
            if (eVar != null) {
                eVar.C1(position);
            }
            this.f43228b.f43226i = position;
            if (position != 0) {
                com.transsion.home.adapter.operateUGC.adapter.e eVar2 = this.f43228b.f43225h;
                if (position != ((eVar2 == null || (data = eVar2.getData()) == null) ? -1 : data.size()) - 1) {
                    this.f43228b.K(this.f43229c, position);
                    return;
                }
            }
            this.f43229c.scrollToPosition(position);
        }
    }

    public w(int i10) {
        this.f43222e = i10;
    }

    public static final void E(OperateItem operateItem, w wVar, View view) {
        String deepLink = operateItem.getDeepLink();
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
        wVar.J(operateItem);
    }

    private final void F(RecyclerView recyclerView, RecyclerView recyclerView2, OperateItem operateItem) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.operateUGC.adapter.d dVar = new com.transsion.home.adapter.operateUGC.adapter.d(0, operateItem, this.f43222e, 1, null);
        this.f43224g = dVar;
        RankingListData rankingListData = operateItem.getRankingListData();
        dVar.n1(rankingListData != null ? rankingListData.getItems() : null);
        recyclerView.setAdapter(this.f43224g);
        recyclerView.scrollToPosition(this.f43226i);
        recyclerView.setOnFlingListener(null);
        com.transsion.home.view.d dVar2 = new com.transsion.home.view.d(com.blankj.utilcode.util.a0.a(12.0f));
        dVar2.attachToRecyclerView(recyclerView);
        recyclerView.addOnScrollListener(new a(dVar2, this, recyclerView2));
    }

    private final void G(final RecyclerView recyclerView, final RecyclerView recyclerView2, OperateItem operateItem) {
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        com.transsion.home.adapter.operateUGC.adapter.e eVar = new com.transsion.home.adapter.operateUGC.adapter.e(0, 1, null);
        this.f43225h = eVar;
        eVar.C1(this.f43226i);
        com.transsion.home.adapter.operateUGC.adapter.e eVar2 = this.f43225h;
        if (eVar2 != null) {
            RankingListData rankingListData = operateItem.getRankingListData();
            eVar2.n1(rankingListData != null ? rankingListData.getItems() : null);
        }
        com.transsion.home.adapter.operateUGC.adapter.e eVar3 = this.f43225h;
        if (eVar3 != null) {
            eVar3.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    w.H(this.f43219a, recyclerView2, recyclerView, baseQuickAdapter, view, i10);
                }
            });
        }
        recyclerView.setAdapter(this.f43225h);
        recyclerView.scrollToPosition(this.f43226i);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    public static final void H(w wVar, RecyclerView recyclerView, RecyclerView recyclerView2, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<Object> data;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        wVar.f43226i = i10;
        if (i10 == 0) {
            recyclerView.scrollToPosition(i10);
        } else {
            com.transsion.home.adapter.operateUGC.adapter.d dVar = wVar.f43224g;
            if (i10 == ((dVar == null || (data = dVar.getData()) == null) ? -1 : data.size()) - 1) {
                recyclerView.scrollToPosition(i10);
            } else {
                wVar.K(recyclerView, i10);
            }
        }
        com.transsion.home.adapter.operateUGC.adapter.e eVar = wVar.f43225h;
        if (eVar != null) {
            eVar.C1(wVar.f43226i);
        }
        recyclerView2.scrollToPosition(i10);
    }

    private final void I(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43222e));
        sk.b.a(operateItem, map);
        qi.h.f69682a.z(SubTabFragment.INSTANCE.a(this.f43222e), map);
    }

    private final void J(OperateItem operateItem) {
        List<Object> data;
        HashMap map = new HashMap();
        map.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        map.put(RequestParameters.POSITION, String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem))));
        String title = operateItem.getTitle();
        if (title == null) {
            title = "";
        }
        map.put(CampaignEx.JSON_KEY_TITLE, title);
        map.put("tabId", String.valueOf(this.f43222e));
        sk.b.a(operateItem, map);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(this.f43222e), map);
    }

    public final void K(RecyclerView recyclerView, int i10) {
        RecyclerView.m layoutManager = recyclerView.getLayoutManager();
        View viewFindViewByPosition = layoutManager != null ? layoutManager.findViewByPosition(i10) : null;
        if (viewFindViewByPosition == null) {
            recyclerView.scrollToPosition(i10);
        } else {
            recyclerView.scrollBy(viewFindViewByPosition.getLeft() - ((recyclerView.getWidth() / 2) - (viewFindViewByPosition.getWidth() / 2)), 0);
        }
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        this.f43223f = item;
        helper.setText(R$id.sub_operation_ranklist_title_text, item.getTitle());
        helper.getView(R$id.sub_operation_ranklist_title_linear).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                w.E(item, this, view);
            }
        });
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_recycler);
        RecyclerView recyclerView2 = (RecyclerView) helper.getView(R$id.sub_operation_ranklist_title_tab_recycler);
        F(recyclerView, recyclerView2, item);
        G(recyclerView2, recyclerView, item);
        I(item);
    }

    @Override
    public int l() {
        return PostItemType.UGC_RANKING_LIST.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_rank_list;
    }
}
