package com.transsion.search.fragment.group;

import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.KeyboardUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.tn.lib.widget.R$mipmap;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.push.PushConstants;
import com.transsion.search.R$id;
import com.transsion.search.R$layout;
import com.transsion.search.SearchManager;
import com.transsion.search.bean.Pager;
import com.transsion.search.bean.PagerEntity;
import com.transsion.search.bean.SearchGroupEntity;
import com.transsion.search.bean.SearchSubject;
import com.transsion.search.bean.SearchWorkEntity;
import com.transsion.search.viewmodel.SearchViewModel;
import com.transsion.search.viewmodel.SearchWorkViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 M2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001.B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0003¢\u0006\u0004\b\u000e\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u000bJ\u0017\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0015\u0010\u000bJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0016\u0010\u0004J5\u0010\u001d\u001a\u00020\u00052\b\u0010\u0018\u001a\u0004\u0018\u00010\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u00172\b\u0010\u001a\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u001c\u001a\u00020\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u00022\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J!\u0010&\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b&\u0010'J!\u0010(\u001a\u00020\u00052\u0006\u0010#\u001a\u00020\u000f2\b\u0010%\u001a\u0004\u0018\u00010$H\u0016¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\u0005H\u0016¢\u0006\u0004\b)\u0010\u0004J\u000f\u0010*\u001a\u00020\u0005H\u0016¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b,\u0010-R\u0016\u00100\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0018\u00108\u001a\u0004\u0018\u0001058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u001b\u0010>\u001a\u0002098BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=R\u0018\u0010B\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010E\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0016\u0010G\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010DR\u0016\u0010I\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010DR\u0016\u0010L\u001a\u00020\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010K¨\u0006N"}, d2 = {"Lcom/transsion/search/fragment/group/SearchUploadWorkFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lvp/e;", "<init>", "()V", "", "initHistory", "t0", "", "clear", "resetContent", "(Z)V", "I0", "searchJob", "initViewModel", "Landroid/view/View;", "emptyView", "()Landroid/view/View;", "showHistory", "L0", PushConstants.PUSH_SERVICE_TYPE_SHOW, "J0", "K0", "", "group_id", "subject_id", "opt", "", RequestParameters.POSITION, "reportClick", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V", "Landroid/view/LayoutInflater;", "inflater", "w0", "(Landroid/view/LayoutInflater;)Lvp/e;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "initView", "lazyLoadData", "onDestroyView", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "a", "Z", "isRefreshing", "Lcom/transsion/search/fragment/group/g0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/search/fragment/group/g0;", "mSearchWorkAdapter", "Lcom/transsion/search/fragment/group/adapter/c;", "c", "Lcom/transsion/search/fragment/group/adapter/c;", "mHistoryAdapter", "Lcom/transsion/search/viewmodel/SearchWorkViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "v0", "()Lcom/transsion/search/viewmodel/SearchWorkViewModel;", "mViewModel", "Lcom/transsion/search/viewmodel/SearchViewModel;", "e", "Lcom/transsion/search/viewmodel/SearchViewModel;", "mSearchViewModel", "f", "I", "mType", "g", "page", "h", "perPage", "i", "Ljava/lang/String;", "mKeyword", "j", "Search_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SearchUploadWorkFragment extends BaseFragment<vp.e> {

    public static final Companion INSTANCE = new Companion(null);

    private boolean isRefreshing;

    private g0 mSearchWorkAdapter;

    private com.transsion.search.fragment.group.adapter.c mHistoryAdapter;

    private final Lazy mViewModel;

    private SearchViewModel mSearchViewModel;

    private int mType;

    private int page;

    private int perPage;

    private String mKeyword;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final SearchUploadWorkFragment a(int i10) {
            SearchUploadWorkFragment searchUploadWorkFragment = new SearchUploadWorkFragment();
            Bundle bundle = new Bundle();
            bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, i10);
            searchUploadWorkFragment.setArguments(bundle);
            return searchUploadWorkFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements yg.m {
        b() {
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
            g0 g0Var = SearchUploadWorkFragment.this.mSearchWorkAdapter;
            if (g0Var != null && (data = g0Var.getData()) != null && data.isEmpty()) {
                SearchUploadWorkFragment.this.searchJob();
                return;
            }
            g0 g0Var2 = SearchUploadWorkFragment.this.mSearchWorkAdapter;
            if (g0Var2 == null || (fVarH0 = g0Var2.h0()) == null) {
                return;
            }
            fVarH0.w();
        }
    }

    public static final class c implements TextWatcher {
        c() {
        }

        @Override
        public void afterTextChanged(Editable editable) {
            if ((editable != null ? editable.length() : 0) == 0) {
                SearchUploadWorkFragment.this.resetContent(true);
            }
            SearchUploadWorkFragment.this.mKeyword = StringsKt.n1(String.valueOf(editable)).toString();
        }

        @Override
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            SearchUploadWorkFragment.this.J0(true);
        }

        @Override
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
        }
    }

    public static final class d implements TextView.OnEditorActionListener {
        d() {
        }

        @Override
        public boolean onEditorAction(TextView textView, int i10, KeyEvent keyEvent) {
            if (i10 != 0 && i10 != 3) {
                return false;
            }
            SearchUploadWorkFragment.this.mKeyword = StringsKt.n1(String.valueOf(textView != null ? textView.getText() : null)).toString();
            SearchUploadWorkFragment.this.searchJob();
            return true;
        }
    }

    public static final class e extends RecyclerView.r {

        final vp.e f50015b;

        e(vp.e eVar) {
            this.f50015b = eVar;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i10) {
            FragmentActivity activity;
            Intrinsics.h(recyclerView, "recyclerView");
            super.onScrollStateChanged(recyclerView, i10);
            if (i10 != 1 || (activity = SearchUploadWorkFragment.this.getActivity()) == null) {
                return;
            }
            vp.e eVar = this.f50015b;
            if (KeyboardUtils.g(activity)) {
                KeyboardUtils.e(eVar.f73723c);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f50016a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f50016a = function;
        }

        @Override
        public final Function a() {
            return this.f50016a;
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
            this.f50016a.invoke(obj);
        }
    }

    public SearchUploadWorkFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(SearchWorkViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = ((y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = this.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.page = 1;
        this.perPage = 10;
        this.mKeyword = "";
    }

    public static final Unit A0(SearchUploadWorkFragment searchUploadWorkFragment, SearchWorkEntity searchWorkEntity) {
        ArrayList arrayList;
        Pager pager;
        HashMap mapG;
        List<Object> data;
        ProgressBar progressBar;
        Pager pager2;
        Pager pager3;
        Pager pager4;
        List<SearchSubject> items;
        Boolean boolValueOf = null;
        if (searchWorkEntity == null || (items = searchWorkEntity.getItems()) == null) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
            for (Object obj : items) {
                if (!((SearchSubject) obj).isJumpBrowser()) {
                    arrayList.add(obj);
                }
            }
        }
        boolean hasMore = (searchWorkEntity == null || (pager4 = searchWorkEntity.getPager()) == null) ? false : pager4.getHasMore();
        searchUploadWorkFragment.page = (searchWorkEntity == null || (pager3 = searchWorkEntity.getPager()) == null) ? 1 : pager3.getNextPage();
        searchUploadWorkFragment.perPage = (searchWorkEntity == null || (pager2 = searchWorkEntity.getPager()) == null) ? 10 : pager2.getPerPage();
        vp.e mViewBinding = searchUploadWorkFragment.getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f73726f) != null) {
            uf.c.g(progressBar);
        }
        g0 g0Var = searchUploadWorkFragment.mSearchWorkAdapter;
        if (g0Var != null) {
            g0Var.h0().s();
            g0 g0Var2 = searchUploadWorkFragment.mSearchWorkAdapter;
            if (g0Var2 != null && (data = g0Var2.getData()) != null) {
                boolValueOf = Boolean.valueOf(data.isEmpty());
            }
            if ((arrayList == null || arrayList.isEmpty()) && Intrinsics.c(boolValueOf, Boolean.TRUE) && (searchUploadWorkFragment.page == 1 || (searchWorkEntity != null && (pager = searchWorkEntity.getPager()) != null && pager.getPage() == 1))) {
                g0Var.q1(new ArrayList());
                g0Var.Y0(searchUploadWorkFragment.emptyView());
                searchUploadWorkFragment.L0(false);
                g0Var.z1(true);
            }
            if (arrayList == null || arrayList.isEmpty()) {
                g0Var.h0().t(false);
            } else {
                if (searchUploadWorkFragment.isRefreshing) {
                    searchUploadWorkFragment.isRefreshing = false;
                    g0 g0Var3 = searchUploadWorkFragment.mSearchWorkAdapter;
                    if (g0Var3 != null) {
                        g0Var3.n1(arrayList);
                    }
                } else {
                    g0 g0Var4 = searchUploadWorkFragment.mSearchWorkAdapter;
                    if (g0Var4 != null) {
                        g0Var4.q(arrayList);
                    }
                }
                qi.b logViewConfig = searchUploadWorkFragment.getLogViewConfig();
                if (logViewConfig != null) {
                    logViewConfig.k(true);
                }
                qi.b logViewConfig2 = searchUploadWorkFragment.getLogViewConfig();
                if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
                    mapG.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(searchUploadWorkFragment.mType));
                }
                searchUploadWorkFragment.L0(false);
            }
            if (!hasMore) {
                g0Var.h0().t(false);
            }
            if (searchWorkEntity == null) {
                g0Var.h0().v();
            }
        }
        return Unit.f64096a;
    }

    public static final void B0(View view, boolean z10) {
        view.dispatchWindowFocusChanged(z10);
    }

    public static final void C0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.searchJob();
    }

    public static final void D0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.resetContent(false);
    }

    public static final void E0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.I0();
        FragmentActivity activity = searchUploadWorkFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void F0(final SearchUploadWorkFragment searchUploadWorkFragment) {
        RecyclerView recyclerView;
        if (yg.l.f76264a.e()) {
            SearchViewModel searchViewModel = searchUploadWorkFragment.mSearchViewModel;
            if (searchViewModel != null) {
                searchViewModel.D(searchUploadWorkFragment.page, searchUploadWorkFragment.perPage, searchUploadWorkFragment.mKeyword);
                return;
            }
            return;
        }
        fh.b.f60176a.d(R$string.no_network_toast);
        vp.e mViewBinding = searchUploadWorkFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f73728h) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SearchUploadWorkFragment.G0(this.f50044a);
            }
        }, 300L);
    }

    public static final void G0(SearchUploadWorkFragment searchUploadWorkFragment) {
        t6.f fVarH0;
        g0 g0Var = searchUploadWorkFragment.mSearchWorkAdapter;
        if (g0Var == null || (fVarH0 = g0Var.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    public static final void H0(SearchUploadWorkFragment searchUploadWorkFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<Object> data;
        SearchSubject searchSubject;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        g0 g0Var = searchUploadWorkFragment.mSearchWorkAdapter;
        if (g0Var == null || (data = g0Var.getData()) == null || (searchSubject = (SearchSubject) data.get(i10)) == null) {
            return;
        }
        searchUploadWorkFragment.reportClick("", searchSubject.getSubjectId(), searchSubject.getOps(), i10);
        jo.b bVar = new jo.b();
        bVar.o(3);
        bVar.n(1);
        bVar.s(searchSubject);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, bVar, 0L);
        FragmentActivity activity = searchUploadWorkFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void I0() {
        tp.a aVar = new tp.a();
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = tp.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, aVar, 0L);
    }

    public final void J0(boolean show) {
        vp.e mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            if (show) {
                TextView searchTV = mViewBinding.f73729i;
                Intrinsics.g(searchTV, "searchTV");
                uf.c.k(searchTV);
                AppCompatImageView clearIV = mViewBinding.f73722b;
                Intrinsics.g(clearIV, "clearIV");
                uf.c.g(clearIV);
                return;
            }
            TextView searchTV2 = mViewBinding.f73729i;
            Intrinsics.g(searchTV2, "searchTV");
            uf.c.g(searchTV2);
            AppCompatImageView clearIV2 = mViewBinding.f73722b;
            Intrinsics.g(clearIV2, "clearIV");
            uf.c.k(clearIV2);
        }
    }

    private final void K0() {
        fh.b.f60176a.d(R$string.no_network_toast);
        L0(false);
        g0 g0Var = this.mSearchWorkAdapter;
        if (g0Var != null) {
            g0Var.Y0(emptyView());
        }
        g0 g0Var2 = this.mSearchWorkAdapter;
        if (g0Var2 != null) {
            g0Var2.q1(new ArrayList());
        }
    }

    private final void L0(boolean showHistory) {
        vp.e mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TextView recentTV = mViewBinding.f73727g;
            Intrinsics.g(recentTV, "recentTV");
            recentTV.setVisibility(showHistory ? 0 : 8);
            if (!showHistory) {
                mViewBinding.f73728h.setAdapter(this.mSearchWorkAdapter);
                return;
            }
            mViewBinding.f73728h.setAdapter(this.mHistoryAdapter);
            com.transsion.search.fragment.group.adapter.c cVar = this.mHistoryAdapter;
            if (cVar != null) {
                cVar.n1((Collection) v0().h().f());
            }
        }
    }

    private final View emptyView() {
        EditText editText;
        Editable text = null;
        View viewInflate = getLayoutInflater().inflate(R$layout.view_search_manager_empty, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R$id.tv_empty_tips);
        ImageView imageView = (ImageView) viewInflate.findViewById(R$id.iv_tips);
        AppCompatTextView appCompatTextView = (AppCompatTextView) viewInflate.findViewById(R$id.tv_retry);
        if (yg.l.f76264a.e()) {
            vp.e mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73723c) != null) {
                text = editText.getText();
            }
            String strValueOf = String.valueOf(text);
            textView.setText(getString(com.transsion.search.R$string.user_works_empty) + " \"" + strValueOf + "\"");
            appCompatTextView.setVisibility(8);
            imageView.setImageResource(R$mipmap.ic_no_content);
        } else {
            textView.setText(com.transsion.baseui.R$string.base_network_fail);
            imageView.setImageResource(R$mipmap.ic_no_network);
            appCompatTextView.setVisibility(0);
            appCompatTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SearchUploadWorkFragment.s0(this.f50024a, view);
                }
            });
        }
        Intrinsics.e(viewInflate);
        return viewInflate;
    }

    private final void initHistory() {
        final com.transsion.search.fragment.group.adapter.c cVar = new com.transsion.search.fragment.group.adapter.c(new ArrayList());
        cVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                SearchUploadWorkFragment.x0(this.f50045a, cVar);
            }
        });
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                SearchUploadWorkFragment.y0(this.f50047a, baseQuickAdapter, view, i10);
            }
        });
        this.mHistoryAdapter = cVar;
    }

    private final void initViewModel() {
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        SearchViewModel searchViewModel = (SearchViewModel) new v0(fragmentActivityRequireActivity).a(SearchViewModel.class);
        searchViewModel.o().j(getViewLifecycleOwner(), new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SearchUploadWorkFragment.z0(this.f50025a, (SearchGroupEntity) obj);
            }
        }));
        searchViewModel.q().j(getViewLifecycleOwner(), new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SearchUploadWorkFragment.A0(this.f50027a, (SearchWorkEntity) obj);
            }
        }));
        this.mSearchViewModel = searchViewModel;
    }

    private final void reportClick(String group_id, String subject_id, String opt, int position) {
        HashMap map = new HashMap();
        if (group_id == null) {
            group_id = "";
        }
        map.put("group_id", group_id);
        if (subject_id == null) {
            subject_id = "";
        }
        map.put("subject_id", subject_id);
        map.put("sequence", String.valueOf(position));
        if (opt == null) {
            opt = "";
        }
        map.put("ops", opt);
        com.transsion.baselib.helper.a.f42121a.f("searchresult", map);
    }

    public final void resetContent(boolean clear) {
        EditText editText;
        if (!clear) {
            vp.e mViewBinding = getMViewBinding();
            if (mViewBinding != null && (editText = mViewBinding.f73723c) != null) {
                editText.setText("");
            }
            this.mKeyword = "";
        }
        g0 g0Var = this.mSearchWorkAdapter;
        if (g0Var != null) {
            g0Var.q1(new ArrayList());
        }
        g0 g0Var2 = this.mSearchWorkAdapter;
        if (g0Var2 != null) {
            g0Var2.H0();
        }
        vp.e mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            boolean z10 = true;
            L0(true);
            TextView recentTV = mViewBinding2.f73727g;
            Intrinsics.g(recentTV, "recentTV");
            com.transsion.search.fragment.group.adapter.c cVar = this.mHistoryAdapter;
            List<Object> data = cVar != null ? cVar.getData() : null;
            if (data != null && !data.isEmpty()) {
                z10 = false;
            }
            recentTV.setVisibility(z10 ? 8 : 0);
            KeyboardUtils.i(mViewBinding2.f73723c);
        }
    }

    public static final void s0(SearchUploadWorkFragment searchUploadWorkFragment, View view) {
        searchUploadWorkFragment.searchJob();
    }

    public final void searchJob() {
        ProgressBar progressBar;
        if (TextUtils.isEmpty(this.mKeyword)) {
            com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f40484a;
            hVar.e(16);
            hVar.l(getString(com.transsion.search.R$string.tips_movie));
            return;
        }
        this.isRefreshing = true;
        SearchManager.f49934f.a().g(this.mKeyword);
        vp.e mViewBinding = getMViewBinding();
        EditText editText = mViewBinding != null ? mViewBinding.f73723c : null;
        Intrinsics.e(editText);
        KeyboardUtils.e(editText);
        if (!yg.l.f76264a.e()) {
            K0();
            return;
        }
        vp.e mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (progressBar = mViewBinding2.f73726f) != null) {
            uf.c.k(progressBar);
        }
        J0(false);
        this.page = 1;
        SearchViewModel searchViewModel = this.mSearchViewModel;
        if (searchViewModel != null) {
            searchViewModel.D(1, this.perPage, this.mKeyword);
        }
        HashMap map = new HashMap();
        map.put("module_name", "search");
        map.put(MBridgeConstans.KEY_WORD, this.mKeyword);
        map.put(NativeComponentConstants.KEY_COMPONENT_TYPE, String.valueOf(this.mType));
        com.transsion.baselib.helper.a.f42121a.f("searchpage", map);
    }

    private final void t0() {
        v0().k(true);
        v0().h().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SearchUploadWorkFragment.u0(this.f50043a, (List) obj);
            }
        }));
    }

    public static final Unit u0(SearchUploadWorkFragment searchUploadWorkFragment, List list) {
        vp.e mViewBinding;
        TextView textView;
        List list2 = list;
        if ((list2 == null || list2.isEmpty()) && (mViewBinding = searchUploadWorkFragment.getMViewBinding()) != null && (textView = mViewBinding.f73727g) != null) {
            uf.c.g(textView);
        }
        com.transsion.search.fragment.group.adapter.c cVar = searchUploadWorkFragment.mHistoryAdapter;
        if (cVar != null) {
            cVar.n1(list2);
        }
        return Unit.f64096a;
    }

    private final SearchWorkViewModel v0() {
        return (SearchWorkViewModel) this.mViewModel.getValue();
    }

    public static final void x0(SearchUploadWorkFragment searchUploadWorkFragment, com.transsion.search.fragment.group.adapter.c cVar) {
        if (searchUploadWorkFragment.v0().g()) {
            SearchWorkViewModel.l(searchUploadWorkFragment.v0(), false, 1, null);
        } else {
            cVar.h0().t(false);
        }
    }

    public static final void y0(SearchUploadWorkFragment searchUploadWorkFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        List<Object> data;
        VideoDetailPlayBean videoDetailPlayBean;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "view");
        com.transsion.search.fragment.group.adapter.c cVar = searchUploadWorkFragment.mHistoryAdapter;
        if (cVar == null || (data = cVar.getData()) == null || (videoDetailPlayBean = (VideoDetailPlayBean) data.get(i10)) == null) {
            return;
        }
        searchUploadWorkFragment.reportClick("", videoDetailPlayBean.getSubjectId(), "", i10);
        jo.b bVar = new jo.b();
        bVar.o(3);
        bVar.n(1);
        jo.b bVarT = bVar.t(videoDetailPlayBean.getSubjectId(), videoDetailPlayBean.getSubjectType(), videoDetailPlayBean.getTitle(), videoDetailPlayBean.getCoverUrl(), videoDetailPlayBean.getThumbnail());
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = jo.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        Intrinsics.e(bVarT);
        flowEventBus.postEvent(name, bVarT, 0L);
        FragmentActivity activity = searchUploadWorkFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final Unit z0(SearchUploadWorkFragment searchUploadWorkFragment, SearchGroupEntity searchGroupEntity) {
        ProgressBar progressBar;
        PagerEntity pager;
        PagerEntity pager2;
        String nextPage;
        Integer numV;
        searchUploadWorkFragment.page = (searchGroupEntity == null || (pager2 = searchGroupEntity.getPager()) == null || (nextPage = pager2.getNextPage()) == null || (numV = StringsKt.v(nextPage)) == null) ? 1 : numV.intValue();
        searchUploadWorkFragment.perPage = (searchGroupEntity == null || (pager = searchGroupEntity.getPager()) == null) ? 10 : pager.getPerPage();
        vp.e mViewBinding = searchUploadWorkFragment.getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f73726f) != null) {
            uf.c.g(progressBar);
        }
        return Unit.f64096a;
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        setNetListener(new b());
    }

    @Override
    public void lazyLoadData() {
        t0();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("searchpage", false, 2, null);
    }

    @Override
    public void onDestroyView() {
        ProgressBar progressBar;
        vp.e mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f73726f) != null) {
            uf.c.g(progressBar);
        }
        super.onDestroyView();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.onViewCreated(view, savedInstanceState);
        Bundle arguments = getArguments();
        this.mType = arguments != null ? arguments.getInt(NativeComponentConstants.KEY_COMPONENT_TYPE) : 1;
        g0 g0Var = new g0(new ArrayList());
        g0Var.h0().D(new r6.f() {
            @Override
            public final void a() {
                SearchUploadWorkFragment.F0(this.f50048a);
            }
        });
        g0Var.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view2, int i10) {
                SearchUploadWorkFragment.H0(this.f50049a, baseQuickAdapter, view2, i10);
            }
        });
        this.mSearchWorkAdapter = g0Var;
        initHistory();
        vp.e mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f73728h.setLayoutManager(new LinearLayoutManager(requireContext(), 1, false));
            mViewBinding.f73728h.setAdapter(this.mHistoryAdapter);
            RecyclerView recyclerView = mViewBinding.f73728h;
            g0 g0Var2 = this.mSearchWorkAdapter;
            recyclerView.addOnScrollListener(new nj.a(g0Var2 != null ? g0Var2.h0() : null));
            RecyclerView recyclerView2 = mViewBinding.f73728h;
            com.transsion.search.fragment.group.adapter.c cVar = this.mHistoryAdapter;
            recyclerView2.addOnScrollListener(new nj.a(cVar != null ? cVar.h0() : null));
            initViewModel();
            mViewBinding.f73723c.setOnFocusChangeListener(new View.OnFocusChangeListener() {
                @Override
                public final void onFocusChange(View view2, boolean z10) {
                    SearchUploadWorkFragment.B0(view2, z10);
                }
            });
            mViewBinding.f73729i.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchUploadWorkFragment.C0(this.f50018a, view2);
                }
            });
            mViewBinding.f73723c.addTextChangedListener(new c());
            mViewBinding.f73723c.setOnEditorActionListener(new d());
            mViewBinding.f73722b.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchUploadWorkFragment.D0(this.f50020a, view2);
                }
            });
            ProgressBar loadView = mViewBinding.f73726f;
            Intrinsics.g(loadView, "loadView");
            uf.c.g(loadView);
            mViewBinding.f73724d.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    SearchUploadWorkFragment.E0(this.f50022a, view2);
                }
            });
            mViewBinding.f73723c.requestFocus();
            KeyboardUtils.i(mViewBinding.f73723c);
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            mViewBinding.f73728h.addOnScrollListener(new e(mViewBinding));
        }
    }

    @Override
    public vp.e getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        vp.e eVarC = vp.e.c(inflater);
        Intrinsics.g(eVarC, "inflate(...)");
        return eVarC;
    }
}
