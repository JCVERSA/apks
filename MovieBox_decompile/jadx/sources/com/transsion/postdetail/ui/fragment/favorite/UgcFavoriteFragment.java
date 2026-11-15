package com.transsion.postdetail.ui.fragment.favorite;

import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
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
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.postdetail.bean.favorite.FeedFavorData;
import com.transsion.postdetail.bean.favorite.Pager;
import com.transsion.postdetail.ui.adapter.favorite.a;
import com.transsion.postdetail.ui.fragment.favorite.UgcFavoriteFragment;
import com.transsion.postdetail.viewmodel.ugcfavorite.UgcFavoriteViewModel;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import r6.d;
import t6.f;
import wn.i;
import yg.l;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000f\u0018\u0000 I2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001\u001fB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\u0005J\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u001d\u0010\u0010\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u000f\u0010\u001d\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001d\u0010\u0005J\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u001e\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0006H\u0016¢\u0006\u0004\b!\u0010\u0005J\u000f\u0010#\u001a\u00020\"H\u0016¢\u0006\u0004\b#\u0010$R\u0018\u0010'\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00106\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010>\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R\u0016\u0010@\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010)R\u0018\u0010B\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00102R\u0016\u0010D\u001a\u00020;8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010=R\u0014\u0010F\u001a\u00020\u00168\u0002X\u0082D¢\u0006\u0006\n\u0004\bE\u0010)R\u0016\u0010H\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010)¨\u0006J"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/favorite/UgcFavoriteFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lwn/i;", "Lcom/transsion/postdetail/ui/adapter/favorite/a;", "<init>", "()V", "", "t0", "Lcom/transsion/postdetail/ui/adapter/favorite/b;", "w0", "()Lcom/transsion/postdetail/ui/adapter/favorite/b;", "C0", "u0", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "feedItems", "E0", "(Ljava/util/List;)V", "Landroid/view/LayoutInflater;", "inflater", "s0", "(Landroid/view/LayoutInflater;)Lwn/i;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", WebConstants.FIELD_ITEM, "a", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;", "Lcom/transsion/postdetail/viewmodel/ugcfavorite/UgcFavoriteViewModel;", "viewModel", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "pageNext", "c", "userId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isLoadingFavoriteFeed", "e", "Ljava/lang/Boolean;", "hasMoreFeedFavorite", "f", "Lcom/transsion/postdetail/ui/adapter/favorite/b;", "sFeedAdapter", "Lbj/b;", "g", "Lbj/b;", "mExposureHelper", "", "h", "J", "firstLoadStartTimeMillis", "i", "durationLoad", "j", "isFirstFeedDataRequest", CampaignEx.JSON_KEY_AD_K, "loadStartTime", "l", "PAGE_NAME", "m", "pageFrom", "n", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class UgcFavoriteFragment extends PageStatusFragment<i> implements a {

    public static final Companion INSTANCE = new Companion(null);

    private UgcFavoriteViewModel viewModel;

    private String pageNext = "1";

    private String userId = "";

    private boolean isLoadingFavoriteFeed;

    private Boolean hasMoreFeedFavorite;

    private com.transsion.postdetail.ui.adapter.favorite.b sFeedAdapter;

    private bj.b mExposureHelper;

    private long firstLoadStartTimeMillis;

    private String durationLoad;

    private Boolean isFirstFeedDataRequest;

    private long loadStartTime;

    private final String PAGE_NAME;

    private String pageFrom;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UgcFavoriteFragment a() {
            Bundle bundle = new Bundle();
            wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "favorite newInstance", false, 4, null);
            UgcFavoriteFragment ugcFavoriteFragment = new UgcFavoriteFragment();
            ugcFavoriteFragment.setArguments(bundle);
            return ugcFavoriteFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements bj.a {
        b() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            List<Object> data;
            com.transsion.postdetail.ui.adapter.favorite.b bVar = UgcFavoriteFragment.this.sFeedAdapter;
            if (bVar == null || (data = bVar.getData()) == null) {
                return;
            }
            int size = data.size();
            UgcFavoriteFragment ugcFavoriteFragment = UgcFavoriteFragment.this;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("曝光的位置position: ");
            sb2.append(i10);
            StringBuilder sb3 = new StringBuilder();
            sb3.append("曝光的位置duration: ");
            sb3.append(j10);
            if (i10 >= size) {
                return;
            }
            com.transsion.postdetail.ui.adapter.favorite.b bVar2 = ugcFavoriteFragment.sFeedAdapter;
            UGCVideo uGCVideo = bVar2 != null ? (UGCVideo) bVar2.getItem(i10) : null;
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("ops", String.valueOf(uGCVideo != null ? uGCVideo.getOps() : null));
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            map.put("refer_subject_id", String.valueOf(uGCVideo != null ? uGCVideo.getSubjectId() : null));
            map.put("content_type", "ugc_video");
            map.put("browse_duration", String.valueOf(j10));
            com.transsion.baselib.helper.a.f42121a.e(ugcFavoriteFragment.PAGE_NAME, map);
        }
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f47635a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47635a = function;
        }

        @Override
        public final Function a() {
            return this.f47635a;
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
            this.f47635a.invoke(obj);
        }
    }

    public UgcFavoriteFragment() {
        Boolean bool = Boolean.FALSE;
        this.hasMoreFeedFavorite = bool;
        this.durationLoad = "0";
        this.isFirstFeedDataRequest = bool;
        this.loadStartTime = -1L;
        this.PAGE_NAME = "/ugc/favorite";
        this.pageFrom = "";
    }

    public static final void A0(UgcFavoriteFragment ugcFavoriteFragment, View view) {
        FragmentActivity activity = ugcFavoriteFragment.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    public static final Unit B0(UgcFavoriteFragment ugcFavoriteFragment, FeedFavorData feedFavorData) {
        f fVarH0;
        f fVarH1;
        f fVarH2;
        HashMap mapG;
        com.transsion.postdetail.ui.adapter.favorite.b bVar;
        List<Object> data;
        f fVarH3;
        com.transsion.postdetail.ui.adapter.favorite.b bVar2;
        f fVarH4;
        Pager pager;
        Pager pager2;
        List<Object> data2;
        f fVarH5;
        com.transsion.postdetail.ui.adapter.favorite.b bVar3 = ugcFavoriteFragment.sFeedAdapter;
        if (bVar3 != null && (data2 = bVar3.getData()) != null && !data2.isEmpty() && feedFavorData == null) {
            wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "feedFavoriteData is null,has no more data ", false, 4, null);
            com.transsion.postdetail.ui.adapter.favorite.b bVar4 = ugcFavoriteFragment.sFeedAdapter;
            if (bVar4 != null && (fVarH5 = bVar4.h0()) != null) {
                f.u(fVarH5, false, 1, null);
            }
            return Unit.f64096a;
        }
        ugcFavoriteFragment.hasMoreFeedFavorite = (feedFavorData == null || (pager2 = feedFavorData.getPager()) == null) ? null : Boolean.valueOf(pager2.getHasMore());
        ugcFavoriteFragment.pageNext = (feedFavorData == null || (pager = feedFavorData.getPager()) == null) ? null : pager.getNextPage();
        com.transsion.postdetail.ui.adapter.favorite.b bVar5 = ugcFavoriteFragment.sFeedAdapter;
        if (bVar5 != null && (fVarH3 = bVar5.h0()) != null && fVarH3.r() && (bVar2 = ugcFavoriteFragment.sFeedAdapter) != null && (fVarH4 = bVar2.h0()) != null) {
            fVarH4.s();
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "favorite hasMore:" + ugcFavoriteFragment.hasMoreFeedFavorite, false, 4, null);
        wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "favorite pageNext:" + ugcFavoriteFragment.pageNext, false, 4, null);
        if ((feedFavorData != null ? feedFavorData.getItems() : null) != null) {
            List<UGCVideo> items = feedFavorData.getItems();
            Integer numValueOf = items != null ? Integer.valueOf(items.size()) : null;
            wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "ugcFavoriteBean: received " + numValueOf + " items, currentListSize=" + ugcFavoriteFragment.sFeedAdapter + "?.data?.size}, hasMore=" + feedFavorData.getPager().getHasMore(), false, 4, null);
            Boolean bool = ugcFavoriteFragment.hasMoreFeedFavorite;
            Boolean bool2 = Boolean.TRUE;
            if (!Intrinsics.c(bool, bool2) || ugcFavoriteFragment.hasMoreFeedFavorite == null) {
                wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "ugcVideoFavoriteBean: no more data, load more end", false, 4, null);
                com.transsion.postdetail.ui.adapter.favorite.b bVar6 = ugcFavoriteFragment.sFeedAdapter;
                if (bVar6 != null && (fVarH2 = bVar6.h0()) != null) {
                    f.u(fVarH2, false, 1, null);
                }
                com.transsion.postdetail.ui.adapter.favorite.b bVar7 = ugcFavoriteFragment.sFeedAdapter;
                if (bVar7 != null && (fVarH1 = bVar7.h0()) != null) {
                    fVarH1.z(false);
                }
                com.transsion.postdetail.ui.adapter.favorite.b bVar8 = ugcFavoriteFragment.sFeedAdapter;
                if (bVar8 != null && (fVarH0 = bVar8.h0()) != null) {
                    fVarH0.y(false);
                }
            }
            com.transsion.postdetail.ui.adapter.favorite.b bVar9 = ugcFavoriteFragment.sFeedAdapter;
            if (bVar9 == null || (data = bVar9.getData()) == null || !data.isEmpty() || numValueOf == null || numValueOf.intValue() != 0) {
                UgcFavoriteViewModel ugcFavoriteViewModel = ugcFavoriteFragment.viewModel;
                Boolean boolValueOf = ugcFavoriteViewModel != null ? Boolean.valueOf(ugcFavoriteViewModel.g()) : null;
                if (numValueOf != null && numValueOf.intValue() == 0 && Intrinsics.c(boolValueOf, bool2) && (bVar = ugcFavoriteFragment.sFeedAdapter) != null) {
                    bVar.Y0(ugcFavoriteFragment.getEmptyView(false));
                }
                if (Intrinsics.c(ugcFavoriteFragment.isFirstFeedDataRequest, bool2)) {
                    ugcFavoriteFragment.durationLoad = ugcFavoriteFragment.loadStartTime > 0 ? String.valueOf(System.currentTimeMillis() - ugcFavoriteFragment.loadStartTime) : "0";
                    ugcFavoriteFragment.isFirstFeedDataRequest = Boolean.FALSE;
                    qi.b logViewConfig = ugcFavoriteFragment.getLogViewConfig();
                    if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
                    }
                }
                List<UGCVideo> items2 = feedFavorData.getItems();
                Intrinsics.e(items2);
                ugcFavoriteFragment.E0(items2);
                qi.b logViewConfig2 = ugcFavoriteFragment.getLogViewConfig();
                if (logViewConfig2 != null) {
                    logViewConfig2.k(true);
                }
            } else {
                wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "ugcFavoriteLikeBean: empty data", false, 4, null);
                com.transsion.postdetail.ui.adapter.favorite.b bVar10 = ugcFavoriteFragment.sFeedAdapter;
                if (bVar10 != null) {
                    bVar10.Y0(ugcFavoriteFragment.getEmptyView(false));
                }
            }
        }
        return Unit.f64096a;
    }

    private final void C0() {
        ConstraintLayout root;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "favorite loadFavoriteFeedsData", false, 4, null);
        if (this.isLoadingFavoriteFeed) {
            return;
        }
        this.isLoadingFavoriteFeed = true;
        wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "favorite loadFavoriteFeedsData 11", false, 4, null);
        UgcFavoriteViewModel ugcFavoriteViewModel = this.viewModel;
        if (ugcFavoriteViewModel != null) {
            ugcFavoriteViewModel.f(String.valueOf(this.pageNext), String.valueOf(this.userId));
        }
        i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                UgcFavoriteFragment.D0(this.f61186a);
            }
        }, 2000L);
    }

    public static final void D0(UgcFavoriteFragment ugcFavoriteFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        i mViewBinding = ugcFavoriteFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f74406e) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final void E0(List feedItems) {
        List<Object> data;
        List<Object> data2;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "favorite updateData", false, 4, null);
        com.transsion.postdetail.ui.adapter.favorite.b bVar = this.sFeedAdapter;
        int size = 0;
        int size2 = (bVar == null || (data2 = bVar.getData()) == null) ? 0 : data2.size();
        UgcFavoriteViewModel ugcFavoriteViewModel = this.viewModel;
        Boolean boolValueOf = ugcFavoriteViewModel != null ? Boolean.valueOf(ugcFavoriteViewModel.g()) : null;
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.c(boolValueOf, bool) || size2 == 0) {
            com.transsion.postdetail.ui.adapter.favorite.b bVar2 = this.sFeedAdapter;
            if (bVar2 != null) {
                bVar2.n1(feedItems);
            }
            wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + feedItems.size(), false, 4, null);
        } else {
            com.transsion.postdetail.ui.adapter.favorite.b bVar3 = this.sFeedAdapter;
            if (bVar3 != null) {
                bVar3.q(feedItems);
            }
            com.transsion.postdetail.ui.adapter.favorite.b bVar4 = this.sFeedAdapter;
            if (bVar4 != null && (data = bVar4.getData()) != null) {
                size = data.size();
            }
            wf.a.C0922a.f(c0922a, "UgcFavoriteListFragment", "updateData: load more, add " + feedItems.size() + " items, list size: " + size2 + " -> " + size, false, 4, null);
        }
        if ((Intrinsics.c(boolValueOf, bool) || size2 == 0) && !feedItems.isEmpty()) {
        }
    }

    private final void t0() {
        RecyclerView recyclerView;
        if (this.mExposureHelper == null) {
            bj.b bVar = new bj.b(0.6f, new b(), false, 4, null);
            i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (recyclerView = mViewBinding.f74408g) != null) {
                recyclerView.addOnScrollListener(bVar);
            }
            this.mExposureHelper = bVar;
        }
    }

    private final void u0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        SwipeRefreshLayout swipeRefreshLayout;
        wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "favorite initFavoriteFeedRecyclerView", false, 4, null);
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f74406e) != null) {
            swipeRefreshLayout.setEnabled(true);
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    UgcFavoriteFragment.v0(this.f61187a);
                }
            });
        }
        t0();
        bj.b bVar = this.mExposureHelper;
        if (bVar != null) {
            bVar.f();
        }
        StaggeredGridLayoutManager staggeredGridLayoutManager = new StaggeredGridLayoutManager(2, 1);
        i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView2 = mViewBinding2.f74408g) != null) {
            recyclerView2.setLayoutManager(staggeredGridLayoutManager);
        }
        com.transsion.postdetail.ui.adapter.favorite.b bVarW0 = w0();
        this.sFeedAdapter = bVarW0;
        if (bVarW0 != null) {
            bVarW0.Q1(this);
        }
        i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (recyclerView = mViewBinding3.f74408g) == null) {
            return;
        }
        recyclerView.setAdapter(this.sFeedAdapter);
    }

    public static final void v0(UgcFavoriteFragment ugcFavoriteFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "initRecyclerView: user pull to refresh", false, 4, null);
        UgcFavoriteViewModel ugcFavoriteViewModel = ugcFavoriteFragment.viewModel;
        if (ugcFavoriteViewModel != null) {
            ugcFavoriteViewModel.i();
        }
        i mViewBinding = ugcFavoriteFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f74406e) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final com.transsion.postdetail.ui.adapter.favorite.b w0() {
        wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "favorite initFeedAdapter", false, 4, null);
        com.transsion.postdetail.ui.adapter.favorite.b bVar = new com.transsion.postdetail.ui.adapter.favorite.b(new ArrayList(), this.mExposureHelper, false);
        bVar.h0().z(true);
        bVar.h0().y(true);
        bVar.h0().E(1);
        bVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                UgcFavoriteFragment.x0(this.f61188a);
            }
        });
        bVar.w1(new d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UgcFavoriteFragment.z0(baseQuickAdapter, view, i10);
            }
        });
        this.sFeedAdapter = bVar;
        Intrinsics.e(bVar);
        return bVar;
    }

    public static final void x0(final UgcFavoriteFragment ugcFavoriteFragment) {
        RecyclerView recyclerView;
        if (l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "initUgcFavoriteListAdapter: trigger load more", false, 4, null);
            UgcFavoriteViewModel ugcFavoriteViewModel = ugcFavoriteFragment.viewModel;
            if (ugcFavoriteViewModel != null) {
                ugcFavoriteViewModel.h(ugcFavoriteFragment.pageNext);
                return;
            }
            return;
        }
        wf.a.C0922a.z(wf.a.f74274a, "UgcFavoriteListFragment", "initUgcFavoriteListAdapter: no network, load more failed", false, 4, null);
        i mViewBinding = ugcFavoriteFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f74408g) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                UgcFavoriteFragment.y0(this.f61189a);
            }
        }, 300L);
    }

    public static final void y0(UgcFavoriteFragment ugcFavoriteFragment) {
        f fVarH0;
        com.transsion.postdetail.ui.adapter.favorite.b bVar = ugcFavoriteFragment.sFeedAdapter;
        if (bVar == null || (fVarH0 = bVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void z0(BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (adapter.getItem(i10) instanceof UGCVideo) {
            new HashMap();
        }
    }

    @Override
    public void a(UGCVideo item) {
        Intrinsics.h(item, "item");
        wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "favorite onClickVideoDetailItem", false, 4, null);
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
        ImageView imageView;
        this.firstLoadStartTimeMillis = SystemClock.elapsedRealtime();
        u0();
        i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (imageView = mViewBinding.f74404c) != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UgcFavoriteFragment.A0(this.f61185a, view);
                }
            });
        }
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
        b0 b0VarE;
        UgcFavoriteViewModel ugcFavoriteViewModel = this.viewModel;
        if (ugcFavoriteViewModel == null || (b0VarE = ugcFavoriteViewModel.e()) == null) {
            return;
        }
        b0VarE.j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UgcFavoriteFragment.B0(this.f61184a, (FeedFavorData) obj);
            }
        }));
    }

    @Override
    public void loadDefaultData() {
        this.isFirstFeedDataRequest = Boolean.TRUE;
        this.loadStartTime = System.currentTimeMillis();
        C0();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(this.PAGE_NAME, false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }

    @Override
    public void retryLoadData() {
        C0();
    }

    @Override
    public i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.viewModel = (UgcFavoriteViewModel) new v0(activity).a(UgcFavoriteViewModel.class);
        }
        wf.a.C0922a.f(wf.a.f74274a, "UgcFavoriteListFragment", "favorite getViewBinding", false, 4, null);
        i iVarC = i.c(getLayoutInflater());
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }
}
