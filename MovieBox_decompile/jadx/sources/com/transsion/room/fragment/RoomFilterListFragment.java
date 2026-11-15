package com.transsion.room.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.transsion.baseui.fragment.LazyFragment;
import com.transsion.moviedetailapi.bean.RoomFilter;
import com.transsion.moviedetailapi.bean.RoomFilterClasses;
import com.transsion.room.R$id;
import com.transsion.room.R$layout;
import com.transsion.room.adapter.RoomFilterTabListAdapter;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.usercenter.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Iterator;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 ?2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001-B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0017\u0010\r\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000e\u0010\u0004J\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ\u000f\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001f\u0010\u001eJ\u000f\u0010 \u001a\u00020\u001cH\u0016¢\u0006\u0004\b \u0010\u001eJ\u000f\u0010!\u001a\u00020\u0005H\u0016¢\u0006\u0004\b!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\"\u0010\u0004J\u000f\u0010#\u001a\u00020\u0005H\u0016¢\u0006\u0004\b#\u0010\u0004J\u000f\u0010$\u001a\u00020\u0005H\u0016¢\u0006\u0004\b$\u0010\u0004J\u000f\u0010%\u001a\u00020\u0005H\u0016¢\u0006\u0004\b%\u0010\u0004J\u0011\u0010'\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u001b\u00105\u001a\u0002008BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u00102\u001a\u0004\b3\u00104R\u0018\u00108\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0016\u0010;\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0018\u0010>\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=¨\u0006@"}, d2 = {"Lcom/transsion/room/fragment/RoomFilterListFragment;", "Lcom/transsion/baseui/fragment/LazyFragment;", "Lfp/p;", "<init>", "()V", "", "loadData", "checkToShowEmptyView", "Lcom/transsion/moviedetailapi/bean/RoomFilter;", "filter", "s0", "(Lcom/transsion/moviedetailapi/bean/RoomFilter;)V", "t0", "u0", "p0", "", BidResponsedEx.KEY_CID, "Landroidx/fragment/app/Fragment;", "m0", "(Ljava/lang/Integer;)Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "o0", "(Landroid/view/LayoutInflater;)Lfp/p;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "getEmptyDescText", "", "isAudioShowNoNetworkLayout", "()Z", "isMonitorNetworkState", "isShowPageStateLayoutTitle", "initViewData", "initViewModel", "initListener", "lazyLoadData", "retryLoadData", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/room/adapter/RoomFilterTabListAdapter;", "a", "Lcom/transsion/room/adapter/RoomFilterTabListAdapter;", "mAdapter", "Lcom/transsion/room/viewmodel/RoomViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "n0", "()Lcom/transsion/room/viewmodel/RoomViewModel;", "mViewModel", "c", "Ljava/lang/Integer;", "curSelectCid", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isSelectRoom", "e", "Landroid/view/View;", "loadingView", "f", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomFilterListFragment extends LazyFragment<fp.p> {

    public static final Companion INSTANCE = new Companion(null);

    private RoomFilterTabListAdapter mAdapter;

    private final Lazy mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(RoomViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
        {
            super(0);
        }

        @Override
        public final androidx.p009lifecycle.x0 invoke() {
            androidx.p009lifecycle.x0 viewModelStore = this.requireActivity().getViewModelStore();
            Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }, new Function0<androidx.lifecycle.v0.c>() {
        {
            super(0);
        }

        @Override
        public final androidx.lifecycle.v0.c invoke() {
            androidx.lifecycle.v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
            Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    });

    private Integer curSelectCid;

    private boolean isSelectRoom;

    private View loadingView;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomFilterListFragment a(boolean z10) {
            RoomFilterListFragment roomFilterListFragment = new RoomFilterListFragment();
            roomFilterListFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("is_select_room", Boolean.valueOf(z10))));
            return roomFilterListFragment;
        }

        private Companion() {
        }
    }

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49449a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49449a = function;
        }

        @Override
        public final Function a() {
            return this.f49449a;
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
            this.f49449a.invoke(obj);
        }
    }

    private final void checkToShowEmptyView() {
        if (yg.l.f76264a.e()) {
            showEmptyView(false);
        } else {
            showLocalNoNetworkView(false);
        }
    }

    private final void loadData() {
        n0().E();
    }

    private final Fragment m0(Integer cid) {
        return RoomListFragment.INSTANCE.a(cid, this.isSelectRoom);
    }

    private final RoomViewModel n0() {
        return (RoomViewModel) this.mViewModel.getValue();
    }

    private final void p0() {
        List listY0 = getChildFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        Iterator it = listY0.iterator();
        while (it.hasNext()) {
            getChildFragmentManager().p().p((Fragment) it.next()).l();
        }
    }

    public static final void q0(RoomFilterListFragment roomFilterListFragment, BaseQuickAdapter adapter, View view, int i10) {
        Intrinsics.h(adapter, "adapter");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        Object item = adapter.getItem(i10);
        Intrinsics.f(item, "null cannot be cast to non-null type com.transsion.moviedetailapi.bean.RoomFilter");
        roomFilterListFragment.s0((RoomFilter) item);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit r0(RoomFilterListFragment roomFilterListFragment, RoomFilterClasses roomFilterClasses) {
        List<RoomFilter> classes;
        RecyclerView recyclerView;
        Integer cid;
        if (roomFilterClasses == null || (classes = roomFilterClasses.getClasses()) == null || classes.isEmpty()) {
            roomFilterListFragment.checkToShowEmptyView();
        } else {
            List<RoomFilter> classes2 = roomFilterClasses.getClasses();
            Intrinsics.e(classes2);
            for (RoomFilter roomFilter : classes2) {
                Integer num = roomFilterListFragment.curSelectCid;
                if ((num != null && Intrinsics.c(num, roomFilter.getCid())) || ((roomFilterClasses.getDefCid() != null && Intrinsics.c(roomFilter.getCid(), roomFilterClasses.getDefCid())) || ((cid = roomFilter.getCid()) != null && cid.intValue() == -1))) {
                    roomFilter.setSelected(true);
                    roomFilterListFragment.curSelectCid = roomFilter.getCid();
                    roomFilterListFragment.u0(roomFilter);
                    break;
                }
            }
            roomFilterListFragment.showContentView();
            fp.p pVar = (fp.p) roomFilterListFragment.getMViewBinding();
            if (pVar != null && (recyclerView = pVar.f60418c) != null) {
                uf.c.k(recyclerView);
            }
            RoomFilterTabListAdapter roomFilterTabListAdapter = roomFilterListFragment.mAdapter;
            if (roomFilterTabListAdapter != null) {
                roomFilterTabListAdapter.n1(roomFilterClasses.getClasses());
            }
        }
        return Unit.f64096a;
    }

    private final void s0(RoomFilter filter) {
        if (Intrinsics.c(this.curSelectCid, filter.getCid())) {
            return;
        }
        t0(filter);
        this.curSelectCid = filter.getCid();
        u0(filter);
    }

    private final void t0(RoomFilter filter) {
        int i10;
        List<Object> data;
        List<Object> data2;
        Object next;
        List<Object> data3;
        List<Object> data4;
        RoomFilterTabListAdapter roomFilterTabListAdapter = this.mAdapter;
        int i11 = -1;
        if (roomFilterTabListAdapter == null || (data4 = roomFilterTabListAdapter.getData()) == null) {
            i10 = -1;
            break;
        }
        Iterator<Object> it = data4.iterator();
        i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            } else if (Intrinsics.c(this.curSelectCid, ((RoomFilter) it.next()).getCid())) {
                break;
            } else {
                i10++;
            }
        }
        RoomFilterTabListAdapter roomFilterTabListAdapter2 = this.mAdapter;
        if (roomFilterTabListAdapter2 != null && (data3 = roomFilterTabListAdapter2.getData()) != null) {
            Iterator<Object> it2 = data3.iterator();
            int i12 = 0;
            while (it2.hasNext()) {
                if (Intrinsics.c(filter.getCid(), ((RoomFilter) it2.next()).getCid())) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
        }
        Object obj = null;
        if (i10 >= 0) {
            RoomFilterTabListAdapter roomFilterTabListAdapter3 = this.mAdapter;
            if (roomFilterTabListAdapter3 != null && (data2 = roomFilterTabListAdapter3.getData()) != null) {
                Iterator<T> it3 = data2.iterator();
                do {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it3.next();
                } while (!Intrinsics.c(this.curSelectCid, ((RoomFilter) next).getCid()));
                RoomFilter roomFilter = (RoomFilter) next;
                if (roomFilter != null) {
                    roomFilter.setSelected(false);
                }
            }
            RoomFilterTabListAdapter roomFilterTabListAdapter4 = this.mAdapter;
            if (roomFilterTabListAdapter4 != null) {
                roomFilterTabListAdapter4.notifyItemChanged(i10, Boolean.FALSE);
            }
        }
        if (i11 >= 0) {
            RoomFilterTabListAdapter roomFilterTabListAdapter5 = this.mAdapter;
            if (roomFilterTabListAdapter5 != null && (data = roomFilterTabListAdapter5.getData()) != null) {
                for (Object obj2 : data) {
                    if (Intrinsics.c(filter.getCid(), ((RoomFilter) obj2).getCid())) {
                        obj = obj2;
                        break;
                    }
                }
                RoomFilter roomFilter2 = (RoomFilter) obj;
                if (roomFilter2 != null) {
                    roomFilter2.setSelected(true);
                }
            }
            RoomFilterTabListAdapter roomFilterTabListAdapter6 = this.mAdapter;
            if (roomFilterTabListAdapter6 != null) {
                roomFilterTabListAdapter6.notifyItemChanged(i11, Boolean.TRUE);
            }
        }
    }

    private final void u0(RoomFilter filter) {
        String str = filter.getTitle() + filter.getCid();
        wf.a.C0922a.f(wf.a.f74274a, "RoomFilter", "showFragment tag = " + str, false, 4, null);
        p0();
        Fragment fragmentK0 = getChildFragmentManager().k0(str);
        if (fragmentK0 == null) {
            fragmentK0 = m0(filter.getCid());
        }
        if (fragmentK0.isAdded()) {
            getChildFragmentManager().p().y(fragmentK0).l();
        } else {
            getChildFragmentManager().p().c(R$id.fl_container, fragmentK0, str).l();
        }
    }

    @Override
    public String getEmptyDescText() {
        String string = getString(R$string.profile_not_content);
        Intrinsics.g(string, "getString(...)");
        return string;
    }

    @Override
    public View getLoadingView() {
        if (this.loadingView == null) {
            this.loadingView = LayoutInflater.from(requireContext()).inflate(R$layout.layout_room_list_filter_loading, (ViewGroup) getFlStateView(), false);
        }
        return this.loadingView;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        RecyclerView recyclerView;
        Bundle arguments = getArguments();
        this.isSelectRoom = arguments != null ? arguments.getBoolean("is_select_room") : false;
        RoomFilterTabListAdapter roomFilterTabListAdapter = new RoomFilterTabListAdapter();
        roomFilterTabListAdapter.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                RoomFilterListFragment.q0(this.f49548a, baseQuickAdapter, view, i10);
            }
        });
        this.mAdapter = roomFilterTabListAdapter;
        fp.p pVar = (fp.p) getMViewBinding();
        if (pVar == null || (recyclerView = pVar.f60418c) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(requireContext()));
        recyclerView.setAdapter(this.mAdapter);
    }

    @Override
    public void initViewModel() {
        n0().I().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomFilterListFragment.r0(this.f49550a, (RoomFilterClasses) obj);
            }
        }));
        if (yg.l.f76264a.e()) {
            return;
        }
        showNoNetworkView(false);
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isMonitorNetworkState() {
        return false;
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public void lazyLoadData() {
        showLoadingView();
        loadData();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("room_list", false, 2, null);
    }

    @Override
    public fp.p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fp.p pVarC = fp.p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }

    @Override
    public void retryLoadData() {
        loadData();
    }
}
