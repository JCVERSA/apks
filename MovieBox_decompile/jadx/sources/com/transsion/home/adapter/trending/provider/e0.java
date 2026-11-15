package com.transsion.home.adapter.trending.provider;

import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.trending.adapter.SportLiveAdapter;
import com.transsion.home.bean.LiveListItem;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class e0 extends BaseItemProvider {

    private final int f43576e;

    private final boolean f43577f;

    private final Lazy f43578g = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return e0.I();
        }
    });

    public static final class a extends DiffUtil.e {
        a() {
        }

        @Override
        public boolean areContentsTheSame(LiveListItem oldItem, LiveListItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getMatchId(), newItem.getMatchId()) && Intrinsics.c(oldItem.getStatus(), newItem.getStatus());
        }

        @Override
        public boolean areItemsTheSame(LiveListItem oldItem, LiveListItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getMatchId(), newItem.getMatchId());
        }
    }

    public static final class b extends RecyclerView.s {
        b() {
            m(0, 8);
        }

        @Override
        public void k(RecyclerView.a0 a0Var) {
            super.k(a0Var);
        }
    }

    public e0(int i10, boolean z10) {
        this.f43576e = i10;
        this.f43577f = z10;
    }

    public static final void E(e0 e0Var, OperateItem operateItem, View view) {
        e0Var.L(operateItem);
    }

    public static final void F(e0 e0Var, OperateItem operateItem, View view) {
        e0Var.L(operateItem);
    }

    public static final void G(SportLiveAdapter sportLiveAdapter, List list) {
        sportLiveAdapter.n1(list);
    }

    public static final void H(List list, e0 e0Var, OperateItem operateItem, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        LiveListItem liveListItem;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        if (list == null || (liveListItem = (LiveListItem) list.get(i10)) == null) {
            return;
        }
        e0Var.K(liveListItem, operateItem, i10);
    }

    public static final b I() {
        return new b();
    }

    private final b J() {
        return (b) this.f43578g.getValue();
    }

    private final void K(LiveListItem liveListItem, OperateItem operateItem, int i10) {
        String deepLink = liveListItem.getDeepLink();
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
        HashMap map = new HashMap();
        map.put("event_type", "click_sport_live_item");
        map.put("sequence", String.valueOf(i10));
        map.put("tabId", String.valueOf(this.f43576e));
        sk.b.a(operateItem, map);
        String type = operateItem.getType();
        if (type == null) {
            type = "";
        }
        map.put("opt_type", type);
        String matchId = liveListItem.getMatchId();
        if (matchId == null) {
            matchId = "";
        }
        map.put("match_id", matchId);
        String status = liveListItem.getStatus();
        if (status == null) {
            status = "";
        }
        map.put("match_status", status);
        String ops = liveListItem.getOps();
        map.put("ops", ops != null ? ops : "");
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43576e), map);
    }

    private final void L(OperateItem operateItem) {
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
        map.put("event_type", "click_sport_live_more");
        map.put("sequence", String.valueOf(numValueOf));
        String deepLink2 = operateItem.getDeepLink();
        if (deepLink2 == null) {
            deepLink2 = "";
        }
        map.put("deepLink", deepLink2);
        map.put("tabId", String.valueOf(this.f43576e));
        sk.b.a(operateItem, map);
        map.put("opt_type", operateItem.getType() + "_MORE");
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43576e), map);
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        final ArrayList arrayList;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.main_operation_sport_live_title);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.main_operation_sport_more_text);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            uf.c.h(textView2);
        } else {
            uf.c.k(textView2);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    e0.E(this.f43647a, item, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    e0.F(this.f43543a, item, view);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.main_operation_sport_live_recycler);
        final SportLiveAdapter sportLiveAdapter = new SportLiveAdapter(0, item, this.f43576e, this.f43577f, 1, null);
        sportLiveAdapter.R0(new a());
        recyclerView.setAdapter(sportLiveAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        if (!Intrinsics.c(recyclerView.getRecycledViewPool(), J())) {
            recyclerView.setRecycledViewPool(J());
        }
        List<LiveListItem> liveList = item.getLiveList();
        if (liveList != null) {
            arrayList = new ArrayList();
            for (Object obj : liveList) {
                if (!Intrinsics.c(((LiveListItem) obj).getStatus(), SportLiveAdapter.P)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = null;
        }
        recyclerView.post(new Runnable() {
            @Override
            public final void run() {
                e0.G(sportLiveAdapter, arrayList);
            }
        });
        sportLiveAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                e0.H(arrayList, this, item, baseQuickAdapter, view, i10);
            }
        });
    }

    @Override
    public int l() {
        return PostItemType.SPORT_LIVE.ordinal();
    }

    @Override
    public int m() {
        return R$layout.post_list_item_sport_live;
    }
}
