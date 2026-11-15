package com.transsion.home.adapter.trending.provider;

import android.util.LruCache;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.therouter.TheRouter;
import com.transsion.baselib.exposure.ExposureType;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.adapter.suboperate.adapter.NewStyleRankContentAdapter;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.bean.RankingListData;
import com.transsion.home.bean.RankingListItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.ninegridview.preview.GifImagePreviewActivity;
import java.util.HashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

public final class i0 extends BaseItemProvider {

    public static final a f43596i = new a(null);

    public static final int f43597j = 8;

    private final int f43598e;

    private final boolean f43599f;

    private bj.b f43600g;

    private final e f43601h = new e();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b implements bj.a {

        final NewStyleRankContentAdapter f43602a;

        final i0 f43603b;

        final OperateItem f43604c;

        final zk.j f43605d;

        b(NewStyleRankContentAdapter newStyleRankContentAdapter, i0 i0Var, OperateItem operateItem, zk.j jVar) {
            this.f43602a = newStyleRankContentAdapter;
            this.f43603b = i0Var;
            this.f43604c = operateItem;
            this.f43605d = jVar;
        }

        @Override
        public void a(int i10, long j10, View view) {
            String string;
            NewStyleRankContentAdapter newStyleRankContentAdapter = this.f43602a;
            i0 i0Var = this.f43603b;
            OperateItem operateItem = this.f43604c;
            zk.j jVar = this.f43605d;
            try {
                Result.Companion companion = Result.INSTANCE;
                wf.a.C0922a.r(wf.a.f74274a, "StateAwareRankListProvider", new String[]{"content item exposure, position:" + i10 + ", duration:" + j10}, false, 4, null);
                Subject subject = (Subject) newStyleRankContentAdapter.f0(i10);
                if (subject != null) {
                    HashMap mapI = i0Var.I(operateItem);
                    if (newStyleRankContentAdapter.getItemViewType(i10) == 100) {
                        mapI.put("sequence", String.valueOf(i10));
                        mapI.put("deepkLink", i0Var.J(operateItem, jVar));
                        mapI.put("module_name", "more");
                    } else {
                        String subjectId = subject.getSubjectId();
                        String str = "";
                        if (subjectId == null) {
                            subjectId = "";
                        }
                        mapI.put("subject_id", subjectId);
                        mapI.put("sequence", String.valueOf(i10));
                        Integer subjectType = subject.getSubjectType();
                        if (subjectType != null && (string = subjectType.toString()) != null) {
                            str = string;
                        }
                        mapI.put("subject_type", str);
                        mapI.put("has_resource", String.valueOf(subject.getHasResource()));
                    }
                    qi.h.f69682a.z(SubTabFragment.INSTANCE.a(i0Var.f43598e), mapI);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class c extends RecyclerView.r {

        final zk.j f43606a;

        final RecyclerView f43607b;

        c(zk.j jVar, RecyclerView recyclerView) {
            this.f43606a = jVar;
            this.f43607b = recyclerView;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i10 == 0) {
                zk.j jVar = this.f43606a;
                jVar.d(jVar.a(), this.f43607b);
            }
        }
    }

    public static final class d extends RecyclerView.r {

        final zk.j f43608a;

        final RecyclerView f43609b;

        d(zk.j jVar, RecyclerView recyclerView) {
            this.f43608a = jVar;
            this.f43609b = recyclerView;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            Intrinsics.h(recyclerView, "recyclerView");
            if (i10 == 0) {
                this.f43608a.e(this.f43609b);
            }
        }
    }

    public static final class e extends LruCache {
        e() {
            super(20);
        }
    }

    public i0(int i10, boolean z10) {
        this.f43598e = i10;
        this.f43599f = z10;
    }

    private final String E(String str, String str2) {
        if (str == null) {
            str = "";
        }
        String strP = TheRouter.c("/rank/all").K("category", str).F("tabId", this.f43598e).K("defaultCategory", str).K("rankingListId", str2).p();
        String strE = com.blankj.utilcode.util.c.e();
        Intrinsics.g(strE, "getAppPackageName(...)");
        return GifImagePreviewActivity.PICTURE_SAVE + "://" + strE + "?type=" + strP;
    }

    private final String F(int i10, String str, int i11) {
        if (str == null) {
            str = "pos_" + i11;
        }
        return "rank_" + i10 + "_" + str;
    }

    public static final void H(i0 i0Var, OperateItem operateItem, View view) {
        i0Var.M(operateItem);
    }

    public final HashMap I(OperateItem operateItem) {
        String opId = operateItem.getOpId();
        if (opId == null) {
            opId = "";
        }
        Pair pairA = TuplesKt.a("opt_id", opId);
        String type = operateItem.getType();
        return MapsKt.j(pairA, TuplesKt.a("opt_type", type != null ? type : ""));
    }

    public final String J(OperateItem operateItem, zk.j jVar) {
        List<RankingListItem> listL;
        RankingListData rankingListData = operateItem.getRankingListData();
        if (rankingListData == null || (listL = rankingListData.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        RankingListData rankingListData2 = operateItem.getRankingListData();
        String rankingListId = rankingListData2 != null ? rankingListData2.getRankingListId() : null;
        int iA = jVar.a();
        if (listL.isEmpty() || iA < 0 || iA >= listL.size()) {
            iA = 0;
        }
        return (iA < 0 || iA >= listL.size()) ? "" : E(listL.get(iA).getCategoryId(), rankingListId);
    }

    private final zk.j K(OperateItem operateItem, BaseViewHolder baseViewHolder) {
        String strF = F(this.f43598e, operateItem.getOpId(), baseViewHolder.getBindingAdapterPosition());
        zk.j jVar = (zk.j) this.f43601h.get(strF);
        if (jVar != null) {
            return jVar;
        }
        zk.j jVar2 = new zk.j();
        this.f43601h.put(strF, jVar2);
        return jVar2;
    }

    private final void L(RecyclerView recyclerView, NewStyleRankContentAdapter newStyleRankContentAdapter, OperateItem operateItem, zk.j jVar) {
        bj.b bVar = new bj.b(0.6f, new b(newStyleRankContentAdapter, this, operateItem, jVar), false, 4, null);
        bVar.n(1);
        bVar.o(ExposureType.NEST_HORIZONTAL);
        recyclerView.addOnScrollListener(bVar);
        this.f43600g = bVar;
    }

    private final void N(zk.j jVar, OperateItem operateItem) {
        List<RankingListItem> listL;
        RankingListData rankingListData = operateItem.getRankingListData();
        if (rankingListData == null || (listL = rankingListData.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        RankingListData rankingListData2 = operateItem.getRankingListData();
        String rankingListId = rankingListData2 != null ? rankingListData2.getRankingListId() : null;
        int iA = jVar.a();
        if (listL.isEmpty() || iA < 0 || iA >= listL.size()) {
            iA = 0;
        }
        if (iA < 0 || iA >= listL.size()) {
            return;
        }
        String categoryId = listL.get(iA).getCategoryId();
        ij.k.p(TheRouter.c("/rank/all").K("category", categoryId).F("tabId", this.f43598e).K("defaultCategory", categoryId).K("rankingListId", rankingListId));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [T, com.transsion.home.adapter.suboperate.adapter.NewStyleRankContentAdapter] */
    private final void O(RecyclerView recyclerView, final OperateItem operateItem, final zk.j jVar) {
        List<RankingListItem> listL;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        if (recyclerView.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.f(8.0f, 0.0f, 0.0f, 6, null));
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        T t10 = adapter instanceof NewStyleRankContentAdapter ? (NewStyleRankContentAdapter) adapter : 0;
        objectRef.element = t10;
        final boolean z10 = false;
        if (t10 == 0) {
            ?? newStyleRankContentAdapter = new NewStyleRankContentAdapter(0, operateItem, this.f43598e, z10, this.f43599f, 1, null);
            objectRef.element = newStyleRankContentAdapter;
            recyclerView.setAdapter((RecyclerView.Adapter) newStyleRankContentAdapter);
        }
        ((NewStyleRankContentAdapter) objectRef.element).w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                i0.P(objectRef, this, operateItem, jVar, z10, baseQuickAdapter, view, i10);
            }
        });
        int iA = jVar.a();
        RankingListData rankingListData = operateItem.getRankingListData();
        if (rankingListData == null || (listL = rankingListData.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        List<RankingListItem> list = listL;
        if (!list.isEmpty() && iA >= 0 && iA < list.size()) {
            List<Subject> subjects = listL.get(iA).getSubjects();
            if (subjects == null) {
                subjects = CollectionsKt.l();
            }
            ((NewStyleRankContentAdapter) objectRef.element).n1(subjects);
            jVar.b(iA, recyclerView);
        }
        recyclerView.clearOnScrollListeners();
        recyclerView.addOnScrollListener(new c(jVar, recyclerView));
        L(recyclerView, (NewStyleRankContentAdapter) objectRef.element, operateItem, jVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void P(Ref.ObjectRef objectRef, i0 i0Var, OperateItem operateItem, zk.j jVar, boolean z10, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Subject subject;
        String string;
        List<Object> data;
        List<Object> data2;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<Object> data3 = ((NewStyleRankContentAdapter) objectRef.element).getData();
        if (data3 == null || i10 >= data3.size() || (subject = (Subject) CollectionsKt.l0(data3, i10)) == null) {
            return;
        }
        HashMap mapI = i0Var.I(operateItem);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = i0Var.g();
        Integer numValueOf = null;
        mapI.put("sequence", String.valueOf((baseProviderMultiAdapterG == null || (data2 = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data2.indexOf(operateItem))));
        String strJ = i0Var.J(operateItem, jVar);
        if (((NewStyleRankContentAdapter) objectRef.element).getItemViewType(i10) == 100) {
            mapI.put("deepkLink", strJ);
            mapI.put("module_name", "more");
            qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i0Var.f43598e), mapI);
            i0Var.N(jVar, operateItem);
        } else {
            String subjectId = subject.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            mapI.put("subject_id", subjectId);
            mapI.put("sequence", String.valueOf(i10));
            Integer subjectType = subject.getSubjectType();
            if (subjectType == null || (string = subjectType.toString()) == null) {
                string = "";
            }
            mapI.put("subject_type", string);
            mapI.put("has_resource", String.valueOf(subject.getHasResource()));
            qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i0Var.f43598e), mapI);
            i0Var.S(subject, i10, operateItem, z10);
        }
        HashMap mapI2 = i0Var.I(operateItem);
        BaseProviderMultiAdapter baseProviderMultiAdapterG2 = i0Var.g();
        if (baseProviderMultiAdapterG2 != null && (data = baseProviderMultiAdapterG2.getData()) != null) {
            numValueOf = Integer.valueOf(data.indexOf(operateItem));
        }
        mapI2.put("sequence", String.valueOf(numValueOf));
        if (((NewStyleRankContentAdapter) objectRef.element).getItemViewType(i10) == 100 && (strJ = (String) mapI.get("deepkLink")) == null) {
            strJ = "";
        }
        mapI2.put("deepkLink", strJ);
        qi.h.f69682a.o(SubTabFragment.INSTANCE.a(i0Var.f43598e), mapI2);
    }

    private final void Q(final RecyclerView recyclerView, final RecyclerView recyclerView2, final OperateItem operateItem, final zk.j jVar) {
        List<RankingListItem> listL;
        List<Object> data;
        int i10 = 0;
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(k(), 0, false);
        linearLayoutManager.setItemPrefetchEnabled(true);
        recyclerView.setLayoutManager(linearLayoutManager);
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        com.transsion.home.adapter.suboperate.adapter.a aVar = adapter instanceof com.transsion.home.adapter.suboperate.adapter.a ? (com.transsion.home.adapter.suboperate.adapter.a) adapter : null;
        if (aVar == null) {
            aVar = new com.transsion.home.adapter.suboperate.adapter.a(this.f43598e);
            recyclerView.setAdapter(aVar);
        }
        com.transsion.home.adapter.suboperate.adapter.a aVar2 = aVar;
        RankingListData rankingListData = operateItem.getRankingListData();
        if (rankingListData == null || (listL = rankingListData.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        final List<RankingListItem> list = listL;
        int iA = jVar.a();
        if (list.isEmpty() || iA < 0 || iA >= list.size()) {
            jVar.f(0);
        } else {
            i10 = iA;
        }
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        final String strValueOf = String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(operateItem)));
        RankingListData rankingListData2 = operateItem.getRankingListData();
        String rankingListId = rankingListData2 != null ? rankingListData2.getRankingListId() : null;
        for (RankingListItem rankingListItem : list) {
            String categoryId = rankingListItem.getCategoryId();
            HashMap mapI = I(operateItem);
            mapI.put("sequence", strValueOf);
            mapI.put("deepkLink", E(categoryId, rankingListId));
            String title = rankingListItem.getTitle();
            if (title == null) {
                title = "";
            }
            mapI.put("module_name", title);
            mapI.put("tabId", String.valueOf(this.f43598e));
            qi.h.f69682a.z(SubTabFragment.INSTANCE.a(this.f43598e), mapI);
        }
        aVar2.n1(list);
        aVar2.D1(i10);
        final String str = rankingListId;
        aVar2.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i11) {
                i0.R(recyclerView, list, this, str, operateItem, jVar, recyclerView2, strValueOf, baseQuickAdapter, view, i11);
            }
        });
        jVar.c(recyclerView);
        recyclerView.clearOnScrollListeners();
        recyclerView.addOnScrollListener(new d(jVar, recyclerView));
    }

    public static final void R(RecyclerView recyclerView, List list, i0 i0Var, String str, OperateItem operateItem, zk.j jVar, RecyclerView recyclerView2, String str2, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        RecyclerView.Adapter adapter = recyclerView.getAdapter();
        com.transsion.home.adapter.suboperate.adapter.a aVar = adapter instanceof com.transsion.home.adapter.suboperate.adapter.a ? (com.transsion.home.adapter.suboperate.adapter.a) adapter : null;
        if (aVar == null) {
            return;
        }
        int currentSelectIndex = aVar.getCurrentSelectIndex();
        if (i10 >= 0 && i10 < list.size()) {
            RankingListItem rankingListItem = (RankingListItem) list.get(i10);
            String strE = i0Var.E(rankingListItem.getCategoryId(), str);
            HashMap mapI = i0Var.I(operateItem);
            mapI.put("sequence", str2);
            mapI.put("deepkLink", strE);
            String title = rankingListItem.getTitle();
            if (title == null) {
                title = "";
            }
            mapI.put("module_name", title);
            mapI.put("tabId", String.valueOf(i0Var.f43598e));
            qi.h hVar = qi.h.f69682a;
            SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
            hVar.o(companion.a(i0Var.f43598e), mapI);
            HashMap mapI2 = i0Var.I(operateItem);
            mapI2.put("sequence", str2);
            mapI2.put("deepkLink", strE);
            hVar.o(companion.a(i0Var.f43598e), mapI2);
        }
        if (i10 == currentSelectIndex) {
            return;
        }
        jVar.d(currentSelectIndex, recyclerView2);
        jVar.f(i10);
        aVar.D1(i10);
        if (i10 < 0 || i10 >= list.size()) {
            return;
        }
        List<Subject> subjects = ((RankingListItem) list.get(i10)).getSubjects();
        if (subjects == null) {
            subjects = CollectionsKt.l();
        }
        RecyclerView.Adapter adapter2 = recyclerView2.getAdapter();
        NewStyleRankContentAdapter newStyleRankContentAdapter = adapter2 instanceof NewStyleRankContentAdapter ? (NewStyleRankContentAdapter) adapter2 : null;
        if (newStyleRankContentAdapter != null) {
            newStyleRankContentAdapter.n1(subjects);
        }
        jVar.b(i10, recyclerView2);
    }

    private final void S(Subject subject, int i10, OperateItem operateItem, boolean z10) {
        zk.h.f(subject, "ranking_list_multi_tab");
    }

    @Override
    public void b(BaseViewHolder helper, final OperateItem item) {
        List<Object> data;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        TextView textView = (TextView) helper.getView(R$id.tvModuleTitle);
        textView.setText(item.getTitle());
        TextView textView2 = (TextView) helper.getView(R$id.tvRankMore);
        String deepLink = item.getDeepLink();
        if (deepLink == null || deepLink.length() == 0) {
            uf.c.h(textView2);
        } else {
            uf.c.k(textView2);
            View.OnClickListener onClickListener = new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    i0.H(this.f43580a, item, view);
                }
            };
            textView.setOnClickListener(onClickListener);
            textView2.setOnClickListener(onClickListener);
        }
        RecyclerView recyclerView = (RecyclerView) helper.getView(R$id.rvTabList);
        RecyclerView recyclerView2 = (RecyclerView) helper.getView(R$id.rvContentList);
        zk.j jVarK = K(item, helper);
        Q(recyclerView, recyclerView2, item, jVarK);
        O(recyclerView2, item, jVarK);
        HashMap mapI = I(item);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        mapI.put("sequence", String.valueOf((baseProviderMultiAdapterG == null || (data = baseProviderMultiAdapterG.getData()) == null) ? null : Integer.valueOf(data.indexOf(item))));
        String deepLink2 = item.getDeepLink();
        if (deepLink2 == null) {
            deepLink2 = "";
        }
        mapI.put("deepkLink", deepLink2);
        qi.h.f69682a.z(SubTabFragment.INSTANCE.a(this.f43598e), mapI);
    }

    public final void M(OperateItem item) {
        List<Object> data;
        Intrinsics.h(item, "item");
        String deepLink = item.getDeepLink();
        Integer numValueOf = null;
        if (deepLink != null) {
            ij.k.h(deepLink, null, 1, null);
        }
        HashMap mapI = I(item);
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        if (baseProviderMultiAdapterG != null && (data = baseProviderMultiAdapterG.getData()) != null) {
            numValueOf = Integer.valueOf(data.indexOf(item));
        }
        mapI.put("sequence", String.valueOf(numValueOf));
        String deepLink2 = item.getDeepLink();
        if (deepLink2 == null) {
            deepLink2 = "";
        }
        mapI.put("deepkLink", deepLink2);
        mapI.put("module_name", IntegrationConstants.NAVIGATION_BAR_ALL_ACTION);
        qi.h hVar = qi.h.f69682a;
        SubTabFragment.Companion companion = SubTabFragment.INSTANCE;
        hVar.o(companion.a(this.f43598e), mapI);
        mapI.remove("module_name");
        hVar.o(companion.a(this.f43598e), mapI);
    }

    @Override
    public int l() {
        return PostItemType.RANKING_LIST_MULTI_TAB.ordinal();
    }

    @Override
    public int m() {
        return R$layout.home_item_new_style_ranking;
    }

    @Override
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        wf.a.C0922a.v(wf.a.f74274a, "StateAwareRankListProvider", "onViewAttachedToWindow", false, 4, null);
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        wf.a.C0922a.v(wf.a.f74274a, "StateAwareRankListProvider", "onViewDetachedFromWindow", false, 4, null);
        bj.b bVar = this.f43600g;
        if (bVar != null) {
            bVar.f();
        }
    }
}
