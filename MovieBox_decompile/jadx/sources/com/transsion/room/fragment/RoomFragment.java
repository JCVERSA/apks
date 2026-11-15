package com.transsion.room.fragment;

import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.LayoutInflater;
import android.view.View;
import androidx.activity.result.ActivityResult;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.loadmore.LoadMoreStatus;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.view.AdvRecyclerView;
import com.tn.lib.view.TitleLayout;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.room.activity.RoomDetailActivity;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 F2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001*B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J!\u0010\u000b\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0017\u0010\u0004J!\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\r\u0010\u001f\u001a\u00020\u0005¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0016¢\u0006\u0004\b \u0010\u0004J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016¢\u0006\u0004\b&\u0010\u0004J\u0011\u0010(\u001a\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b(\u0010)R\u0014\u0010,\u001a\u00020\t8\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010<\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010>\u001a\u0002098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010;R\u0016\u0010@\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010+R\u001e\u0010E\u001a\n\u0012\u0004\u0012\u00020B\u0018\u00010A8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010D¨\u0006G"}, d2 = {"Lcom/transsion/room/fragment/RoomFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lfp/m;", "<init>", "()V", "", "m0", "", WebConstants.FIELD_ITEM, "", RequestParameters.POSITION, "p0", "(Ljava/lang/Object;I)V", "i0", "initViewModel", "Lcom/transsion/moviedetailapi/bean/RoomBean;", "roomBean", "u0", "(Lcom/transsion/moviedetailapi/bean/RoomBean;)V", "loadMore", "loadData", "t0", "s0", "q0", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "r0", "startLoading", "Landroid/view/LayoutInflater;", "inflater", "h0", "(Landroid/view/LayoutInflater;)Lfp/m;", "onResume", "onDestroyView", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "a", "I", "requestCode", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Z", "isRefresh", "Lcom/transsion/room/adapter/d;", "c", "Lcom/transsion/room/adapter/d;", "mHotAdapter", "Lcom/transsion/room/viewmodel/RoomViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/room/viewmodel/RoomViewModel;", "mRoomViewModel", "", "e", "Ljava/lang/String;", "mPersonalRoomPage", "f", "mHotRoomPage", "g", "mPerPage", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "h", "Landroidx/activity/result/b;", "requestRoomDetailLaunch", "i", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomFragment extends BaseFragment<fp.m> {

    private com.transsion.room.adapter.d mHotAdapter;

    private RoomViewModel mRoomViewModel;

    private androidx.activity.result.b requestRoomDetailLaunch;

    private final int requestCode = 100;

    private boolean isRefresh = true;

    private String mPersonalRoomPage = "";

    private String mHotRoomPage = "";

    private int mPerPage = 20;

    public static final class b extends DiffUtil.e {
        b() {
        }

        @Override
        public boolean areContentsTheSame(RoomItem oldItem, RoomItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getCreatorId(), newItem.getCreatorId()) && Intrinsics.c(oldItem.getName(), newItem.getName());
        }

        @Override
        public boolean areItemsTheSame(RoomItem oldItem, RoomItem newItem) {
            Intrinsics.h(oldItem, "oldItem");
            Intrinsics.h(newItem, "newItem");
            return Intrinsics.c(oldItem.getGroupId(), newItem.getGroupId());
        }
    }

    public static final class c implements AdvRecyclerView.a {
        c() {
        }

        @Override
        public void a() {
            RoomFragment.this.loadData();
        }

        @Override
        public void b() {
            RoomFragment.this.loadData();
        }
    }

    public static final class d extends RecyclerView.r {

        private int[] f49460a;

        private int f49461b;

        d() {
        }

        private final void d(RecyclerView recyclerView) {
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof StaggeredGridLayoutManager) {
                if (this.f49460a == null) {
                    this.f49460a = new int[((StaggeredGridLayoutManager) layoutManager).Q()];
                }
                ((StaggeredGridLayoutManager) layoutManager).E(this.f49460a);
                this.f49461b = e(this.f49460a);
                return;
            }
            if (layoutManager instanceof GridLayoutManager) {
                this.f49461b = ((GridLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            } else {
                if (!(layoutManager instanceof LinearLayoutManager)) {
                    throw new RuntimeException("Unsupported layoutManager.");
                }
                this.f49461b = ((LinearLayoutManager) layoutManager).findLastCompletelyVisibleItemPosition();
            }
        }

        private final int e(int[] iArr) {
            if (iArr == null) {
                return 0;
            }
            int i10 = 0;
            for (int i11 : iArr) {
                if (i11 > i10) {
                    i10 = i11;
                }
            }
            return i10;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            com.transsion.room.adapter.d dVar;
            t6.f fVarH0;
            t6.f fVarH1;
            Intrinsics.h(recyclerView, "recyclerView");
            RecyclerView.m layoutManager = recyclerView.getLayoutManager();
            int childCount = layoutManager != null ? layoutManager.getChildCount() : 0;
            int itemCount = layoutManager != null ? layoutManager.getItemCount() : 0;
            if (i10 != 0 || childCount <= 0 || this.f49461b < itemCount - 1) {
                return;
            }
            com.transsion.room.adapter.d dVar2 = RoomFragment.this.mHotAdapter;
            if (((dVar2 == null || (fVarH1 = dVar2.h0()) == null) ? null : fVarH1.i()) != LoadMoreStatus.Fail || (dVar = RoomFragment.this.mHotAdapter) == null || (fVarH0 = dVar.h0()) == null) {
                return;
            }
            fVarH0.w();
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            Intrinsics.h(recyclerView, "recyclerView");
            d(recyclerView);
        }
    }

    public static final class e implements yg.m {
        e() {
        }

        @Override
        public void onConnected() {
            yg.m.a.a(this);
        }

        @Override
        public void onDisconnected() {
        }

        @Override
        public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
            t6.f fVarH0;
            List<Object> data;
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            com.transsion.room.adapter.d dVar = RoomFragment.this.mHotAdapter;
            if (dVar != null && (data = dVar.getData()) != null && data.isEmpty()) {
                RoomFragment.this.loadData();
                return;
            }
            com.transsion.room.adapter.d dVar2 = RoomFragment.this.mHotAdapter;
            if (dVar2 == null || (fVarH0 = dVar2.h0()) == null) {
                return;
            }
            fVarH0.w();
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49464a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49464a = function;
        }

        @Override
        public final Function a() {
            return this.f49464a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof androidx.p009lifecycle.c0) && (obj instanceof FunctionAdapter)) {
                return Intrinsics.c(a(), ((FunctionAdapter) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.f49464a.invoke(obj);
        }
    }

    private final void i0() {
        AdvRecyclerView advRecyclerView;
        AdvRecyclerView advRecyclerView2;
        SwipeRefreshLayout swipeRefreshLayout;
        AdvRecyclerView advRecyclerView3;
        AdvRecyclerView advRecyclerView4;
        fp.m mViewBinding = getMViewBinding();
        RecyclerView recyclerView = (mViewBinding == null || (advRecyclerView4 = mViewBinding.f60367b) == null) ? null : advRecyclerView4.getRecyclerView();
        fp.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (advRecyclerView3 = mViewBinding2.f60367b) != null) {
            advRecyclerView3.setPageName("rooms");
        }
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
        }
        com.transsion.room.adapter.d dVar = new com.transsion.room.adapter.d(new ArrayList());
        dVar.h0().z(true);
        dVar.h0().y(true);
        dVar.h0().E(4);
        dVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                RoomFragment.j0(this.f49555a);
            }
        });
        dVar.R0(new b());
        dVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                RoomFragment.k0(this.f49558a, baseQuickAdapter, view, i10);
            }
        });
        this.mHotAdapter = dVar;
        if (recyclerView != null) {
            recyclerView.setAdapter(dVar);
        }
        fp.m mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (swipeRefreshLayout = mViewBinding3.f60368c) != null) {
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    RoomFragment.l0(this.f49562a);
                }
            });
        }
        fp.m mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (advRecyclerView2 = mViewBinding4.f60367b) != null) {
            advRecyclerView2.setOnStateClickListener(new c());
        }
        fp.m mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (advRecyclerView = mViewBinding5.f60367b) == null) {
            return;
        }
        advRecyclerView.addOnScrollListener(new d());
    }

    private final void initViewModel() {
        RoomViewModel roomViewModel = (RoomViewModel) new androidx.p009lifecycle.v0(this).a(RoomViewModel.class);
        roomViewModel.x().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomFragment.o0(this.f49566a, (RoomBean) obj);
            }
        }));
        this.mRoomViewModel = roomViewModel;
    }

    public static final void j0(RoomFragment roomFragment) {
        roomFragment.loadMore();
    }

    public static final void k0(RoomFragment roomFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        roomFragment.p0(adapter.getItem(i10), i10);
    }

    public static final void l0(RoomFragment roomFragment) {
        roomFragment.loadData();
    }

    public final void loadData() {
        List<Object> data;
        SwipeRefreshLayout swipeRefreshLayout;
        fp.m mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        this.isRefresh = true;
        this.mHotRoomPage = "";
        this.mPersonalRoomPage = "";
        if (yg.l.f76264a.e()) {
            RoomViewModel roomViewModel = this.mRoomViewModel;
            if (roomViewModel != null) {
                roomViewModel.w(this.mHotRoomPage, this.mPerPage);
                return;
            }
            return;
        }
        fh.b.f60176a.d(R$string.no_network_tips);
        fp.m mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f60368c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f60368c) != null) {
            swipeRefreshLayout2.setRefreshing(false);
        }
        com.transsion.room.adapter.d dVar = this.mHotAdapter;
        if (dVar == null || (data = dVar.getData()) == null || !data.isEmpty()) {
            return;
        }
        s0();
    }

    private final void loadMore() {
        t6.f fVarH0;
        if (yg.l.f76264a.e()) {
            RoomViewModel roomViewModel = this.mRoomViewModel;
            if (roomViewModel != null) {
                roomViewModel.w(this.mHotRoomPage, this.mPerPage);
                return;
            }
            return;
        }
        fh.b.f60176a.d(R$string.no_network_tips);
        com.transsion.room.adapter.d dVar = this.mHotAdapter;
        if (dVar == null || (fVarH0 = dVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void m0() {
        TitleLayout titleLayout;
        fp.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (titleLayout = mViewBinding.f60369d) == null) {
            return;
        }
        titleLayout.setTitleText(com.transsion.room.R$string.str_hot_room);
    }

    public static final void n0(ActivityResult it) {
        Intrinsics.h(it, "it");
        it.getResultCode();
    }

    public static final Unit o0(RoomFragment roomFragment, RoomBean roomBean) {
        t6.f fVarH0;
        roomFragment.hideLoading();
        if (roomBean == null) {
            com.transsion.room.adapter.d dVar = roomFragment.mHotAdapter;
            if (dVar != null && (fVarH0 = dVar.h0()) != null) {
                fVarH0.v();
            }
        } else {
            roomFragment.u0(roomBean);
        }
        return Unit.f64096a;
    }

    private final void p0(Object item, int position) {
        if (item instanceof RoomItem) {
            Intent intent = new Intent(requireActivity(), (Class<?>) RoomDetailActivity.class);
            intent.putExtra(WebConstants.FIELD_ITEM, (Parcelable) item);
            androidx.activity.result.b bVar = this.requestRoomDetailLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
            HashMap map = new HashMap();
            String groupId = ((RoomItem) item).getGroupId();
            if (groupId == null) {
                groupId = "";
            }
            map.put("group_id", groupId);
            map.put("sequence", String.valueOf(position));
            com.transsion.baselib.helper.a.f42121a.b("rooms", map);
        }
    }

    private final void q0() {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new RoomFragment$observerPublishEvent$1(this, null), 3, null);
    }

    private final void s0() {
        AdvRecyclerView advRecyclerView;
        fp.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (advRecyclerView = mViewBinding.f60367b) == null) {
            return;
        }
        advRecyclerView.showError();
    }

    private final void t0() {
        AdvRecyclerView advRecyclerView;
        fp.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (advRecyclerView = mViewBinding.f60367b) == null) {
            return;
        }
        advRecyclerView.showEmpty();
    }

    private final void u0(RoomBean roomBean) {
        String nextPage;
        com.transsion.room.adapter.d dVar;
        t6.f fVarH0;
        t6.f fVarH1;
        com.transsion.room.adapter.d dVar2;
        t6.f fVarH2;
        com.transsion.room.adapter.d dVar3;
        SwipeRefreshLayout swipeRefreshLayout;
        fp.m mViewBinding;
        SwipeRefreshLayout swipeRefreshLayout2;
        Pager pager = roomBean.getPager();
        if (pager == null || (nextPage = pager.getNextPage()) == null) {
            nextPage = "";
        }
        this.mHotRoomPage = nextPage;
        r0();
        if (this.isRefresh) {
            this.isRefresh = false;
            fp.m mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (swipeRefreshLayout = mViewBinding2.f60368c) != null && swipeRefreshLayout.isRefreshing() && (mViewBinding = getMViewBinding()) != null && (swipeRefreshLayout2 = mViewBinding.f60368c) != null) {
                swipeRefreshLayout2.setRefreshing(false);
            }
            List<RoomItem> items = roomBean.getItems();
            if (items != null && (dVar3 = this.mHotAdapter) != null) {
                dVar3.n1(items);
            }
            List<RoomItem> items2 = roomBean.getItems();
            if (items2 == null || !items2.isEmpty()) {
                return;
            }
            t0();
            return;
        }
        List<RoomItem> items3 = roomBean.getItems();
        if (items3 != null) {
            com.transsion.room.adapter.d dVar4 = this.mHotAdapter;
            List<Object> data = dVar4 != null ? dVar4.getData() : null;
            ArrayList arrayList = new ArrayList();
            if (data == null || !(!data.isEmpty())) {
                arrayList.addAll(items3);
            } else {
                for (RoomItem roomItem : items3) {
                    if (data.contains(roomItem)) {
                        wf.a.C0922a.f(wf.a.f74274a, PlaceTypes.ROOM, "find same item name..." + roomItem.getName(), false, 4, null);
                    } else {
                        arrayList.add(roomItem);
                    }
                }
            }
            com.transsion.room.adapter.d dVar5 = this.mHotAdapter;
            if (dVar5 != null) {
                dVar5.q(arrayList);
            }
        }
        com.transsion.room.adapter.d dVar6 = this.mHotAdapter;
        if (dVar6 != null && (fVarH1 = dVar6.h0()) != null && fVarH1.r() && (dVar2 = this.mHotAdapter) != null && (fVarH2 = dVar2.h0()) != null) {
            fVarH2.s();
        }
        Pager pager2 = roomBean.getPager();
        if (!(pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.FALSE) : false) || (dVar = this.mHotAdapter) == null || (fVarH0 = dVar.h0()) == null) {
            return;
        }
        t6.f.u(fVarH0, false, 1, null);
    }

    @Override
    public fp.m getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fp.m mVarC = fp.m.c(inflater);
        Intrinsics.g(mVarC, "inflate(...)");
        return mVarC;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        uf.c.e(view);
        m0();
        i0();
        initViewModel();
        setNetListener(new e());
        this.requestRoomDetailLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                RoomFragment.n0((ActivityResult) obj);
            }
        });
        q0();
    }

    @Override
    public void lazyLoadData() {
        startLoading();
        loadData();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("rooms", false, 2, null);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        androidx.activity.result.b bVar = this.requestRoomDetailLaunch;
        if (bVar != null) {
            bVar.c();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    public final void r0() {
        AdvRecyclerView advRecyclerView;
        fp.m mViewBinding = getMViewBinding();
        if (mViewBinding != null && (advRecyclerView = mViewBinding.f60367b) != null) {
            advRecyclerView.showData();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    @Override
    public void startLoading() {
        AdvRecyclerView advRecyclerView;
        fp.m mViewBinding = getMViewBinding();
        if (mViewBinding == null || (advRecyclerView = mViewBinding.f60367b) == null) {
            return;
        }
        advRecyclerView.showProgress();
    }
}
