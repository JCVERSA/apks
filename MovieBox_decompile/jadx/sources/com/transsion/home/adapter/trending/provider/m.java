package com.transsion.home.adapter.trending.provider;

import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.trending.adapter.OpMovieRankAdapter;
import com.transsion.home.bean.AppointSubject;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingData;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class m extends BaseItemProvider {

    public static final a f43622i = new a(null);

    public static final int f43623j = 8;

    private final int f43624e;

    private final com.transsion.home.preload.b f43625f;

    private final boolean f43626g;

    private final boolean f43627h;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public m(int i10, com.transsion.home.preload.b bVar, boolean z10, boolean z11) {
        this.f43624e = i10;
        this.f43625f = bVar;
        this.f43626g = z10;
        this.f43627h = z11;
    }

    public static final void C(m mVar, OperateItem operateItem, boolean z10, View view) {
        mVar.F(operateItem, z10);
    }

    public static final void D(m mVar, OperateItem operateItem, boolean z10, View view) {
        mVar.F(operateItem, z10);
    }

    public static final void E(OperateItem operateItem, OpMovieRankAdapter opMovieRankAdapter, m mVar, boolean z10, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<AppointSubject> subjects;
        AppointSubject appointSubject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<AppointSubject> subjects2 = operateItem.getSubjects();
        if (i10 >= (subjects2 != null ? subjects2.size() : 0) || (subjects = operateItem.getSubjects()) == null || (appointSubject = subjects.get(i10)) == null) {
            return;
        }
        if (opMovieRankAdapter.getItemViewType(i10) == 100) {
            mVar.F(operateItem, z10);
        } else {
            mVar.G(appointSubject, i10, operateItem, z10);
        }
    }

    private final void F(OperateItem operateItem, boolean z10) {
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
        if (!this.f43626g) {
            zk.c.f76806a.i(operateItem, numValueOf);
            return;
        }
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "click_rank_horiz_more" : "click_rank_more");
        map.put("sequence", String.valueOf(numValueOf));
        String deepLink2 = operateItem.getDeepLink();
        if (deepLink2 == null) {
            deepLink2 = "";
        }
        map.put("deepLink", deepLink2);
        String title = operateItem.getTitle();
        map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
        map.put("tabId", String.valueOf(this.f43624e));
        sk.b.a(operateItem, map);
        map.put("opt_type", operateItem.getType() + "_RANK_MORE");
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43624e), map);
    }

    private final void G(Subject subject, int i10, OperateItem operateItem, boolean z10) {
        zk.h.f(subject, "opt_movie_rank");
        if (!this.f43626g) {
            zk.c.f76806a.h(subject, i10, operateItem);
            return;
        }
        HashMap map = new HashMap();
        map.put("event_type", z10 ? "click_rank_horiz_item" : "click_rank_item");
        map.put("sequence", String.valueOf(i10));
        map.put("tabId", String.valueOf(this.f43624e));
        if (operateItem != null) {
            sk.b.a(operateItem, map);
        }
        sk.b.d(subject, map);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43624e), map);
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        RankingData rankingData = item.getRankingData();
        final boolean z10 = rankingData != null && rankingData.getRankingHorizontal();
        TextView textView = (TextView) helper.getView(R$id.main_operation_movie_rank_title);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.main_operation_movie_more_text);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            uf.c.h(textView2);
        } else {
            uf.c.k(textView2);
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    m.C(this.f43610a, item, z10, view);
                }
            });
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    m.D(this.f43614a, item, z10, view);
                }
            });
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.main_operation_movie_rank_recycler);
        final OpMovieRankAdapter opMovieRankAdapter = new OpMovieRankAdapter(0, item, this.f43626g, this.f43624e, z10, this.f43627h, 1, null);
        recyclerView.setAdapter(opMovieRankAdapter);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 12.0f, 2, null));
        }
        List<AppointSubject> subjects = item.getSubjects();
        if (subjects == null) {
            subjects = new ArrayList<>();
        }
        if (subjects.size() > 30) {
            subjects = subjects.subList(0, 31);
        }
        opMovieRankAdapter.n1(subjects);
        opMovieRankAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                m.E(item, opMovieRankAdapter, this, z10, baseQuickAdapter, view, i10);
            }
        });
        if (this.f43626g) {
            HashMap map = new HashMap();
            map.put("event_type", z10 ? "browse_rank_horiz_more" : "browse_rank_more");
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            map.put("sequence", String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(item))));
            String deepLink2 = item.getDeepLink();
            if (deepLink2 == null) {
                deepLink2 = "";
            }
            map.put("deepLink", deepLink2);
            String title = item.getTitle();
            map.put(CampaignEx.JSON_KEY_TITLE, title != null ? title : "");
            map.put("tabId", String.valueOf(this.f43624e));
            sk.b.a(item, map);
            map.put("opt_type", item.getType() + "_RANK_MORE");
            com.transsion.baselib.helper.a.f42121a.e(SubTabFragment.INSTANCE.a(this.f43624e), map);
        }
    }

    @Override
    public int l() {
        return PostItemType.OP_SUBJECTS_MOVIE.ordinal();
    }

    @Override
    public int m() {
        return R$layout.post_list_item_op_movie_rank;
    }

    @Override
    public BaseViewHolder r(ViewGroup parent, int i10) {
        Intrinsics.h(parent, "parent");
        com.transsion.home.preload.b bVar = this.f43625f;
        if (bVar == null || bVar.a() || this.f43625f.c() == null) {
            return super.r(parent, i10);
        }
        wf.a.C0922a.f(wf.a.f74274a, "MainXMLPreload", "subjectOpView", false, 4, null);
        View viewC = this.f43625f.c();
        if (viewC == null) {
            return super.r(parent, i10);
        }
        viewC.setLayoutParams(new FrameLayout.LayoutParams(-1, -2));
        return new BaseViewHolder(viewC);
    }
}
