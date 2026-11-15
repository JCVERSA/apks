package com.transsion.postdetail.ui.fragment;

import android.os.Bundle;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.moviedetailapi.bean.PostSubjectBean;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.postdetail.ui.adapter.PostAdapterFrom;
import com.transsion.postdetail.viewmodel.RoomPostViewModel;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0016\u0018\u0000 :2\u00020\u0001:\u0001;B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\fJ\u000f\u0010\u0011\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0011\u0010\u0003J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0003J\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0019\u0010\u0018\u001a\u00020\u00062\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u001d\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u001e\u0010\bJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0003J\u001f\u0010\"\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u001aH\u0016¢\u0006\u0004\b$\u0010\u001cJ\u000f\u0010%\u001a\u00020\u001aH\u0016¢\u0006\u0004\b%\u0010\u001cJ\u000f\u0010&\u001a\u00020\u0004H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0004H\u0016¢\u0006\u0004\b,\u0010'R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R\u0016\u00103\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104R\u0016\u00105\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00104R\u0018\u00106\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u00108\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00107R\u0018\u00109\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00107¨\u0006<"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/RoomPostStaggeredFragment;", "Lcom/transsion/postdetail/ui/fragment/RoomPostBaseFragment;", "<init>", "()V", "", "isSaveInstance", "", "trySaveDataCache", "(Z)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "initViewData", "initViewModel", "outState", "onSaveInstanceState", "onDestroyView", "lazyLoadWithoutNet", "Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "postAdapterFrom", "()Lcom/transsion/postdetail/ui/adapter/PostAdapterFrom;", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "onItemHeaderClick", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "", "onItemHeaderModuleName", "()Ljava/lang/String;", "hidden", "onHiddenChanged", "onResume", "isFirstLoad", "isRefresh", "loadData", "(ZZ)V", "pageName", "subpageName", "isSwipeRefreshEnable", "()Z", "isNeedInsertPublishPost", "", "tabIndex", "()I", "isStaggeredPost", "Lep/j;", "trendingImageRoomsViewModel$delegate", "Lkotlin/Lazy;", "getTrendingImageRoomsViewModel", "()Lep/j;", "trendingImageRoomsViewModel", "mTabIndex", "I", "curExposurePosition", "pageFrom", "Ljava/lang/String;", "insertPostId", "insertPostOps", "Companion", "a", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public class RoomPostStaggeredFragment extends RoomPostBaseFragment {

    public static final Companion INSTANCE = new Companion(null);
    public static final String SUBPAGE_NAME = "room_home_discover";
    private static final String TAB_INDEX = "index";
    private static final String TAB_ITEM = "tab";
    private int curExposurePosition;
    private String insertPostId;
    private String insertPostOps;
    private int mTabIndex;
    private String pageFrom;

    private final Lazy trendingImageRoomsViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ep.j.class), new Function0<androidx.p009lifecycle.x0>() {
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

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final RoomPostStaggeredFragment a(String str, RoomTabItem item, int i10) {
            Intrinsics.h(item, "item");
            RoomPostStaggeredFragment roomPostStaggeredFragment = new RoomPostStaggeredFragment();
            roomPostStaggeredFragment.setArguments(androidx.core.os.d.b(TuplesKt.a(RoomPostStaggeredFragment.TAB_ITEM, item), TuplesKt.a(RoomPostStaggeredFragment.TAB_INDEX, Integer.valueOf(i10)), TuplesKt.a("parent_type", str)));
            return roomPostStaggeredFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements ij.q {
        b() {
        }

        @Override
        public void a(int i10) {
            if (RoomPostStaggeredFragment.this.curExposurePosition < i10) {
                RoomPostStaggeredFragment.this.curExposurePosition = i10;
            }
        }
    }

    static final class c implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47538a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47538a = function;
        }

        @Override
        public final Function a() {
            return this.f47538a;
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
            this.f47538a.invoke(obj);
        }
    }

    private final ep.j getTrendingImageRoomsViewModel() {
        return (ep.j) this.trendingImageRoomsViewModel.getValue();
    }

    public static final Unit initViewModel$lambda$1(RoomPostStaggeredFragment roomPostStaggeredFragment, PostSubjectBean postSubjectBean) {
        String str;
        List<PostSubjectItem> items;
        PostSubjectItem postSubjectItem;
        String ops;
        if (postSubjectBean != null && postSubjectBean.getIsRefresh() && (str = roomPostStaggeredFragment.insertPostOps) != null && str.length() != 0 && (items = postSubjectBean.getItems()) != null && (postSubjectItem = (PostSubjectItem) CollectionsKt.k0(items)) != null && Intrinsics.c(postSubjectItem.getPostId(), roomPostStaggeredFragment.insertPostId) && ((ops = postSubjectItem.getOps()) == null || ops.length() == 0)) {
            postSubjectItem.setOps(roomPostStaggeredFragment.insertPostOps);
        }
        roomPostStaggeredFragment.updateData(postSubjectBean);
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit initViewModel$lambda$3(RoomPostStaggeredFragment roomPostStaggeredFragment, Pair pair) {
        RecyclerView recyclerView;
        qi.b logViewConfig;
        HashMap mapG;
        String str = pair != null ? (String) pair.getFirst() : null;
        if (str == null || str.length() == 0) {
            return Unit.f64096a;
        }
        ep.k kVar = ep.k.f59780a;
        String strG = kVar.g();
        if (strG != null && strG.length() != 0) {
            roomPostStaggeredFragment.pageFrom = kVar.g();
            kVar.r(null);
        }
        if (roomPostStaggeredFragment.pageFrom != null && (logViewConfig = roomPostStaggeredFragment.getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        roomPostStaggeredFragment.insertPostOps = (String) pair.getSecond();
        roomPostStaggeredFragment.insertPostId = str;
        RoomPostBaseFragment.loadData$default(roomPostStaggeredFragment, false, true, 1, null);
        wn.p pVar = (wn.p) roomPostStaggeredFragment.getMViewBinding();
        if (pVar != null && (recyclerView = pVar.f74519b) != null) {
            recyclerView.scrollToPosition(0);
        }
        roomPostStaggeredFragment.insertPostId = null;
        return Unit.f64096a;
    }

    private final void trySaveDataCache(boolean isSaveInstance) {
        String tabId;
        com.transsion.postdetail.ui.adapter.f mAdapter;
        List<Object> data;
        List<Object> data2;
        List<Object> listSubList;
        String content;
        Group group;
        List<Object> data3;
        List<Object> data4;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String tag = getTAG();
        RoomTabItem mTopTab = getMTopTab();
        String tabId2 = mTopTab != null ? mTopTab.getTabId() : null;
        com.transsion.postdetail.ui.adapter.f mAdapter2 = getMAdapter();
        Integer numValueOf = (mAdapter2 == null || (data4 = mAdapter2.getData()) == null) ? null : Integer.valueOf(data4.size());
        wf.a.C0922a.f(c0922a, tag, "trySaveDataCache," + isSaveInstance + " tabId:" + tabId2 + ", size:" + numValueOf + ", curExposurePosition:" + this.curExposurePosition, false, 4, null);
        RoomTabItem mTopTab2 = getMTopTab();
        if (mTopTab2 == null || (tabId = mTopTab2.getTabId()) == null || (mAdapter = getMAdapter()) == null || (data = mAdapter.getData()) == null) {
            return;
        }
        int size = data.size();
        int i10 = this.curExposurePosition;
        int i11 = size - i10 < 9 ? size - i10 : 9;
        if (i11 > 0 && size > i11) {
            String tag2 = getTAG();
            int i12 = size - i11;
            com.transsion.postdetail.ui.adapter.f mAdapter3 = getMAdapter();
            wf.a.C0922a.f(c0922a, tag2, "trySaveDataCache, " + i12 + "， " + i11 + ", size:" + ((mAdapter3 == null || (data3 = mAdapter3.getData()) == null) ? null : Integer.valueOf(data3.size())), false, 4, null);
            com.transsion.postdetail.ui.adapter.f mAdapter4 = getMAdapter();
            if (mAdapter4 == null || (data2 = mAdapter4.getData()) == null || (listSubList = data2.subList(i12, size)) == null) {
                return;
            }
            String tag3 = getTAG();
            int size2 = listSubList.size();
            PostSubjectItem postSubjectItem = (PostSubjectItem) CollectionsKt.k0(listSubList);
            String name = (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getName();
            PostSubjectItem postSubjectItem2 = (PostSubjectItem) CollectionsKt.k0(listSubList);
            if (postSubjectItem2 != null) {
                String title = postSubjectItem2.getTitle();
                content = (title == null || title.length() == 0) ? postSubjectItem2.getContent() : postSubjectItem2.getTitle();
            } else {
                content = null;
            }
            wf.a.C0922a.f(c0922a, tag3, "trySaveDataCache, " + size2 + "，name:" + name + "，content:" + content, false, 4, null);
            String strJ = com.blankj.utilcode.util.o.j(new PostSubjectBean(listSubList, new Pager(Boolean.TRUE, "1", "", 0, 0), null, null));
            com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
            int i13 = bVar.b().getInt("post_staggered_page_cache_code", 0);
            int iHashCode = strJ.hashCode();
            if (i13 == iHashCode) {
                wf.a.C0922a.f(c0922a, getTAG(), "trySaveDataCache, HashCode same:" + iHashCode, false, 4, null);
                return;
            }
            wf.a.C0922a.f(c0922a, getTAG(), "SaveDataCache, oldCode:" + i13 + "，newCode:" + iHashCode, false, 4, null);
            bVar.b().putInt("post_staggered_page_cache_code", iHashCode);
            bVar.b().putString("post_staggered_page_cache_" + tabId, strJ);
        }
    }

    @Override
    public void initViewData() {
        super.initViewData();
        setOnNumNotExposureListener(new b());
    }

    @Override
    public void initViewModel() {
        androidx.p009lifecycle.b0 b0VarN;
        RoomPostViewModel mViewModel = getMViewModel();
        if (mViewModel != null && (b0VarN = mViewModel.N()) != null) {
            b0VarN.j(this, new c(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomPostStaggeredFragment.initViewModel$lambda$1(this.f47772a, (PostSubjectBean) obj);
                }
            }));
        }
        getTrendingImageRoomsViewModel().b().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomPostStaggeredFragment.initViewModel$lambda$3(this.f47779a, (Pair) obj);
            }
        }));
    }

    @Override
    public boolean isNeedInsertPublishPost() {
        return false;
    }

    @Override
    public boolean isStaggeredPost() {
        return true;
    }

    @Override
    public boolean isSwipeRefreshEnable() {
        return false;
    }

    @Override
    public void lazyLoadWithoutNet() {
        RoomPostViewModel mViewModel;
        showLoadingView();
        RoomTabItem mTopTab = getMTopTab();
        if (mTopTab == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        mViewModel.W(mTopTab.getTabId());
    }

    @Override
    public void loadData(boolean isFirstLoad, boolean isRefresh) {
        RoomPostViewModel mViewModel;
        wf.a.C0922a.f(wf.a.f74274a, getTAG(), "loadData isRefresh:" + isRefresh, false, 4, null);
        RoomTabItem mTopTab = getMTopTab();
        if (mTopTab == null || (mViewModel = getMViewModel()) == null) {
            return;
        }
        RoomPostViewModel.P(mViewModel, isFirstLoad, isRefresh, mTopTab.getTabId(), getMPage(), this.insertPostId, 0, 32, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        Bundle arguments = getArguments();
        Serializable serializable = arguments != null ? arguments.getSerializable(TAB_ITEM) : null;
        setMTopTab(serializable instanceof RoomTabItem ? (RoomTabItem) serializable : null);
        Bundle arguments2 = getArguments();
        this.mTabIndex = arguments2 != null ? arguments2.getInt(TAB_INDEX) : 0;
        Bundle arguments3 = getArguments();
        setMParentTypeName(arguments3 != null ? arguments3.getString("parent_type") : null);
        super.onCreate(savedInstanceState);
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        trySaveDataCache(false);
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        ep.k kVar;
        String strC;
        super.onHiddenChanged(hidden);
        if (hidden || (strC = (kVar = ep.k.f59780a).c()) == null || strC.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingImageRoomsViewModel().b();
        String strC2 = kVar.c();
        Intrinsics.e(strC2);
        b0VarB.q(new Pair(strC2, kVar.e()));
        String strG = kVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = kVar.g();
            kVar.r(null);
        }
        kVar.n(null);
        kVar.p(null);
    }

    @Override
    public void onItemHeaderClick(PostSubjectItem item) {
        openUserCenter(item);
    }

    @Override
    public String onItemHeaderModuleName() {
        return "group";
    }

    @Override
    public void onResume() {
        super.onResume();
        ep.k kVar = ep.k.f59780a;
        String strC = kVar.c();
        if (strC == null || strC.length() == 0) {
            return;
        }
        androidx.p009lifecycle.b0 b0VarB = getTrendingImageRoomsViewModel().b();
        String strC2 = kVar.c();
        Intrinsics.e(strC2);
        b0VarB.q(new Pair(strC2, kVar.e()));
        String strG = kVar.g();
        if (strG != null && strG.length() != 0) {
            this.pageFrom = kVar.g();
            kVar.r(null);
        }
        kVar.n(null);
        kVar.p(null);
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        trySaveDataCache(true);
    }

    @Override
    public String pageName() {
        return "room_home";
    }

    @Override
    public PostAdapterFrom postAdapterFrom() {
        return PostAdapterFrom.STAGGERED;
    }

    @Override
    public String subpageName() {
        return SUBPAGE_NAME;
    }

    @Override
    public int getMTabIndex() {
        return this.mTabIndex;
    }
}
