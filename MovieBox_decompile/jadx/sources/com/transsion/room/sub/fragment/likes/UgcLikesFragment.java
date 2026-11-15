package com.transsion.room.sub.fragment.likes;

import android.view.LayoutInflater;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.room.sub.adapter.likes.a;
import com.transsion.room.sub.bean.likes.GetUgcVideoLikesBean;
import com.transsion.room.sub.bean.likes.PagerInfoLikes;
import com.transsion.room.sub.fragment.likes.UgcLikesFragment;
import com.transsion.room.sub.viewmodel.likes.UgcLikesViewModel;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import r6.d;
import r6.f;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0002\b\u000b\u0018\u0000 G2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u001d\u0010\f\u001a\u00020\u00062\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\tH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000e\u0010\u0005J\u0011\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\nH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0018\u00100\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00107\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010:\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0018\u0010<\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010/R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010?R\u0016\u0010B\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010)R\u0018\u0010D\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010/R\u0016\u0010F\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010)¨\u0006H"}, d2 = {"Lcom/transsion/room/sub/fragment/likes/UgcLikesFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lfp/l;", "Lcom/transsion/room/sub/adapter/likes/a;", "<init>", "()V", "", "r0", "z0", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "feedItems", "B0", "(Ljava/util/List;)V", "w0", "Lcom/transsion/room/sub/adapter/likes/c;", "s0", "()Lcom/transsion/room/sub/adapter/likes/c;", "Landroid/view/LayoutInflater;", "inflater", "q0", "(Landroid/view/LayoutInflater;)Lfp/l;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", WebConstants.FIELD_ITEM, "a", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;", "Lcom/transsion/room/sub/viewmodel/likes/UgcLikesViewModel;", "viewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "pageNext", "c", "userId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/Boolean;", "hasMoreLikes", "Lbj/b;", "e", "Lbj/b;", "mExposureHelper", "f", "Lcom/transsion/room/sub/adapter/likes/c;", "sFeedAdapter", "g", "Z", "isLoadingLikesFeed", "h", "hasMoreFeedLikes", "", "i", "J", "loadStartTime", "j", "durationLoad", CampaignEx.JSON_KEY_AD_K, "isFirstFeedDataRequest", "l", "pageFrom", "m", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UgcLikesFragment extends PageStatusFragment<l> implements a {

    private UgcLikesViewModel viewModel;

    private String pageNext = "";

    private String userId = "";

    private Boolean hasMoreLikes;

    private bj.b mExposureHelper;

    private com.transsion.room.sub.adapter.likes.c sFeedAdapter;

    private boolean isLoadingLikesFeed;

    private Boolean hasMoreFeedLikes;

    private long loadStartTime;

    private String durationLoad;

    private Boolean isFirstFeedDataRequest;

    private String pageFrom;

    public static final class b implements bj.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            com.transsion.room.sub.adapter.likes.c cVar = UgcLikesFragment.this.sFeedAdapter;
            if (cVar == null || (data = cVar.getData()) == null) {
                return;
            }
            int size = data.size();
            UgcLikesFragment ugcLikesFragment = UgcLikesFragment.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("曝光的位置position: ");
            sb2.append(i10);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("曝光的位置duration: ");
            sb3.append(j10);
            if (i10 >= size) {
                return;
            }
            com.transsion.room.sub.adapter.likes.c cVar2 = ugcLikesFragment.sFeedAdapter;
            UGCVideo uGCVideo = cVar2 != null ? (UGCVideo) cVar2.getItem(i10) : null;
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("ops", String.valueOf(uGCVideo != null ? uGCVideo.getOps() : null));
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            map.put("refer_subject_id", String.valueOf(uGCVideo != null ? uGCVideo.getSubjectId() : null));
            map.put("content_type", "ugc_video");
            map.put("browse_duration", String.valueOf(j10));
            com.transsion.baselib.helper.a.f42121a.e("/ugc/likes", map);
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f49717a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49717a = function;
        }

        @Override
        public final Function a() {
            return this.f49717a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f49717a.invoke(obj);
        }
    }

    public UgcLikesFragment() {
        Boolean bool = Boolean.FALSE;
        this.hasMoreLikes = bool;
        this.hasMoreFeedLikes = bool;
        this.loadStartTime = -1L;
        this.durationLoad = "0";
        this.isFirstFeedDataRequest = bool;
        this.pageFrom = "";
    }

    public static final void A0(UgcLikesFragment ugcLikesFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        l mViewBinding = ugcLikesFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f60364b) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final void B0(List feedItems) {
        List<Object> data;
        List<Object> data2;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "Likes updateData", false, 4, null);
        com.transsion.room.sub.adapter.likes.c cVar = this.sFeedAdapter;
        int size = 0;
        int size2 = (cVar == null || (data2 = cVar.getData()) == null) ? 0 : data2.size();
        UgcLikesViewModel ugcLikesViewModel = this.viewModel;
        if (Intrinsics.c(ugcLikesViewModel != null ? Boolean.valueOf(ugcLikesViewModel.h()) : null, Boolean.TRUE) || size2 == 0) {
            com.transsion.room.sub.adapter.likes.c cVar2 = this.sFeedAdapter;
            if (cVar2 != null) {
                cVar2.n1(feedItems);
            }
            wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + feedItems.size(), false, 4, null);
            return;
        }
        com.transsion.room.sub.adapter.likes.c cVar3 = this.sFeedAdapter;
        if (cVar3 != null) {
            cVar3.q(feedItems);
        }
        com.transsion.room.sub.adapter.likes.c cVar4 = this.sFeedAdapter;
        if (cVar4 != null && (data = cVar4.getData()) != null) {
            size = data.size();
        }
        wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "updateData: load more, add " + feedItems.size() + " items, list size: " + size2 + " -> " + size, false, 4, null);
    }

    private final void r0() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            bj.b bVar = new bj.b(0.6f, new b(), false, 4, null);
            l mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f60365c) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final com.transsion.room.sub.adapter.likes.c s0() {
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesListFragment", "Likes initFeedAdapter", false, 4, null);
        com.transsion.room.sub.adapter.likes.c cVar = new com.transsion.room.sub.adapter.likes.c(new ArrayList(), this.mExposureHelper, false);
        cVar.h0().z(true);
        cVar.h0().y(true);
        cVar.h0().D(new f() {
            @Override
            public final void a() {
                UgcLikesFragment.t0(this.f66094a);
            }
        });
        cVar.w1(new d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UgcLikesFragment.v0(this.f66095a, baseQuickAdapter, view, i10);
            }
        });
        this.sFeedAdapter = cVar;
        return cVar;
    }

    public static final void t0(final UgcLikesFragment ugcLikesFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            UgcLikesViewModel ugcLikesViewModel = ugcLikesFragment.viewModel;
            if (ugcLikesViewModel != null) {
                ugcLikesViewModel.i(ugcLikesFragment.pageNext);
                return;
            }
            return;
        }
        wf.a.C0922a.z(wf.a.f74274a, "UgcLikesListFragment", "initFilmListAdapter: no network, load more failed", false, 4, null);
        l mViewBinding = ugcLikesFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f60365c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                UgcLikesFragment.u0(this.f66096a);
            }
        }, 300L);
    }

    public static final void u0(UgcLikesFragment ugcLikesFragment) {
        t6.f fVarH0;
        com.transsion.room.sub.adapter.likes.c cVar = ugcLikesFragment.sFeedAdapter;
        if (cVar == null || (fVarH0 = cVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void v0(UgcLikesFragment ugcLikesFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        Object item = adapter.getItem(i10);
        if (item instanceof UGCVideo) {
            UGCVideo uGCVideo = (UGCVideo) item;
            Navigator navigatorK = TheRouter.c("/ugc_video/detail").K("id", uGCVideo.getUgcVideoId());
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            Navigator.x(navigatorK.K("collection_id", belongToCollection != null ? belongToCollection.getCollectionId() : null).K("ops", uGCVideo.getOps()).K(WebConstants.PAGE_FROM, "UgcLike Page"), ugcLikesFragment.getActivity(), null, 2, null);
            new HashMap();
        }
    }

    private final void w0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout;
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesListFragment", "Likes initLikesFeedRecyclerView", false, 4, null);
        l mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f60364b) != null) {
            swipeRefreshLayout.setEnabled(true);
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    UgcLikesFragment.x0(this.f66092a);
                }
            });
        }
        r0();
        bj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
        l mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f60365c) != null) {
            recyclerView2.setLayoutManager(staggeredGridLayoutManager);
        }
        com.transsion.room.sub.adapter.likes.c cVarS0 = s0();
        this.sFeedAdapter = cVarS0;
        if (cVarS0 != null) {
            cVarS0.Q1(this);
        }
        l mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f60365c) == null) {
            return;
        }
        recyclerView.setAdapter(this.sFeedAdapter);
    }

    public static final void x0(UgcLikesFragment ugcLikesFragment) {
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesListFragment", "initRecyclerView: user pull to refresh", false, 4, null);
        UgcLikesViewModel ugcLikesViewModel = ugcLikesFragment.viewModel;
        if (ugcLikesViewModel != null) {
            ugcLikesViewModel.k();
        }
    }

    public static final Unit y0(UgcLikesFragment ugcLikesFragment, GetUgcVideoLikesBean getUgcVideoLikesBean) {
        com.transsion.room.sub.adapter.likes.c cVar;
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        HashMap mapG;
        List<Object> data2;
        t6.f fVarH0;
        t6.f fVarH1;
        com.transsion.room.sub.adapter.likes.c cVar2;
        t6.f fVarH2;
        PagerInfoLikes pager;
        PagerInfoLikes pager2;
        com.transsion.room.sub.adapter.likes.c cVar3;
        List<Object> data3;
        t6.f fVarH3;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "ugcVideoLikeBean:: " + getUgcVideoLikesBean, false, 4, null);
        UgcLikesViewModel ugcLikesViewModel = ugcLikesFragment.viewModel;
        Boolean boolValueOf = ugcLikesViewModel != null ? Boolean.valueOf(ugcLikesViewModel.h()) : null;
        Boolean bool = Boolean.FALSE;
        if (Intrinsics.c(boolValueOf, bool) && (cVar3 = ugcLikesFragment.sFeedAdapter) != null && (data3 = cVar3.getData()) != null && !data3.isEmpty() && getUgcVideoLikesBean == null) {
            wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "ugcVideoLikeBean is null,has no more data ", false, 4, null);
            com.transsion.room.sub.adapter.likes.c cVar4 = ugcLikesFragment.sFeedAdapter;
            if (cVar4 != null && (fVarH3 = cVar4.h0()) != null) {
                t6.f.u(fVarH3, false, 1, null);
            }
            return Unit.f64096a;
        }
        ugcLikesFragment.hasMoreFeedLikes = (getUgcVideoLikesBean == null || (pager2 = getUgcVideoLikesBean.getPager()) == null) ? null : Boolean.valueOf(pager2.getHasMore());
        ugcLikesFragment.pageNext = (getUgcVideoLikesBean == null || (pager = getUgcVideoLikesBean.getPager()) == null) ? null : pager.getNextPage();
        wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "hasMoreFeedLikes " + ugcLikesFragment.hasMoreFeedLikes, false, 4, null);
        com.transsion.room.sub.adapter.likes.c cVar5 = ugcLikesFragment.sFeedAdapter;
        if (cVar5 != null && (fVarH1 = cVar5.h0()) != null && fVarH1.r() && (cVar2 = ugcLikesFragment.sFeedAdapter) != null && (fVarH2 = cVar2.h0()) != null) {
            fVarH2.s();
        }
        if ((getUgcVideoLikesBean != null ? getUgcVideoLikesBean.getItems() : null) != null) {
            List<UGCVideo> items = getUgcVideoLikesBean.getItems();
            Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
            wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "ugcVideoLikeBean: received " + numValueOf + " items, currentListSize=" + ugcLikesFragment.sFeedAdapter + "?.data?.size}, hasMore=" + getUgcVideoLikesBean.getPager().getHasMore(), false, 4, null);
            Boolean bool2 = ugcLikesFragment.hasMoreLikes;
            Boolean bool3 = Boolean.TRUE;
            if (!Intrinsics.c(bool2, bool3)) {
                wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "ugcVideoLikeBean: no more data, load more end", false, 4, null);
                com.transsion.room.sub.adapter.likes.c cVar6 = ugcLikesFragment.sFeedAdapter;
                if (cVar6 != null && (fVarH0 = cVar6.h0()) != null) {
                    t6.f.u(fVarH0, false, 1, null);
                }
            }
            com.transsion.room.sub.adapter.likes.c cVar7 = ugcLikesFragment.sFeedAdapter;
            if (cVar7 == null || (data2 = cVar7.getData()) == null || !data2.isEmpty() || numValueOf == null || numValueOf.intValue() != 0) {
                if (Intrinsics.c(ugcLikesFragment.isFirstFeedDataRequest, bool3)) {
                    ugcLikesFragment.durationLoad = ugcLikesFragment.loadStartTime > 0 ? String.valueOf(System.currentTimeMillis() - ugcLikesFragment.loadStartTime) : "0";
                    ugcLikesFragment.isFirstFeedDataRequest = bool;
                    qi.b logViewConfig = ugcLikesFragment.getLogViewConfig();
                    if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                    }
                }
                List<UGCVideo> items2 = getUgcVideoLikesBean.getItems();
                Intrinsics.e(items2);
                ugcLikesFragment.B0(items2);
                qi.b logViewConfig2 = ugcLikesFragment.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.k(true);
                }
            } else {
                wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "ugcVideoLikeBean: empty data", false, 4, null);
                com.transsion.room.sub.adapter.likes.c cVar8 = ugcLikesFragment.sFeedAdapter;
                if (cVar8 != null) {
                    cVar8.Y0(ugcLikesFragment.getEmptyView(false));
                }
            }
        } else if (Intrinsics.c(boolValueOf, Boolean.TRUE) || ((cVar = ugcLikesFragment.sFeedAdapter) != null && (data = cVar.getData()) != null && data.isEmpty())) {
            wf.a.C0922a.f(c0922a, "UgcLikesListFragment", "ugcVideoLikeBean: empty data", false, 4, null);
            com.transsion.room.sub.adapter.likes.c cVar9 = ugcLikesFragment.sFeedAdapter;
            if (cVar9 != null) {
                cVar9.Y0(ugcLikesFragment.getEmptyView(false));
            }
            com.transsion.room.sub.adapter.likes.c cVar10 = ugcLikesFragment.sFeedAdapter;
            if (cVar10 != null) {
                cVar10.n1(null);
            }
        }
        l mViewBinding = ugcLikesFragment.getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f60364b) != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
        return Unit.f64096a;
    }

    private final void z0() {
        ConstraintLayout root;
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesListFragment", "Likes loadLikesFeedsData", false, 4, null);
        if (this.isLoadingLikesFeed) {
            return;
        }
        this.isLoadingLikesFeed = true;
        UgcLikesViewModel ugcLikesViewModel = this.viewModel;
        if (ugcLikesViewModel != null) {
            ugcLikesViewModel.g("1", String.valueOf(this.userId));
        }
        l mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                UgcLikesFragment.A0(this.f66091a);
            }
        }, 2000L);
    }

    @Override
    public void a(UGCVideo item) {
        Intrinsics.h(item, "item");
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesListFragment", " Likes lazyLoadData", false, 4, null);
        hu.b.b(item, null, 1, null);
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initViewData() {
        HashMap mapG;
        w0();
        if (this.pageFrom.length() == 0) {
            this.pageFrom = h.f69682a.h();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void initViewModel() {
        b0 b0VarF;
        UgcLikesViewModel ugcLikesViewModel = this.viewModel;
        if (ugcLikesViewModel == null || (b0VarF = ugcLikesViewModel.f()) == null) {
            return;
        }
        b0VarF.j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UgcLikesFragment.y0(this.f66093a, (GetUgcVideoLikesBean) obj);
            }
        }));
    }

    @Override
    public void loadDefaultData() {
        this.isFirstFeedDataRequest = Boolean.TRUE;
        this.loadStartTime = System.currentTimeMillis();
        z0();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("/ugc/likes", false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public l getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wf.a.C0922a.f(wf.a.f74274a, "UgcLikesListFragment", "Likes getViewBinding", false, 4, null);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (UgcLikesViewModel) new v0(activity).a(UgcLikesViewModel.class);
        }
        l lVarC = l.c(getLayoutInflater());
        Intrinsics.g(lVarC, "inflate(...)");
        return lVarC;
    }

    @Override
    public void retryLoadData() {
        z0();
    }
}
