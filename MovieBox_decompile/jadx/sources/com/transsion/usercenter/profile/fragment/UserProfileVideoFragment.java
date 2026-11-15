package com.transsion.usercenter.profile.fragment;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.tn.lib.view.StateView;
import com.tn.lib.view.layoutmanager.NpaLinearLayoutManager;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoList;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.viewmodel.UserProfileVideoViewModel;
import com.transsion.web.api.WebConstants;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import xu.n0;

@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\u0018\u0000 @2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0002\u001d!B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J!\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\r2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u001b\u0010\u0004R\u0018\u0010\u001f\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u001b\u0010%\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0016\u0010-\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0016\u0010/\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010(R$\u00107\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b1\u00102\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010?\u001a\u00020<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>¨\u0006A"}, d2 = {"Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxu/n0;", "<init>", "()V", "", "u0", "r0", "n0", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "l0", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "Landroid/view/View;", "j0", "()Landroid/view/View;", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lxu/n0;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onPause", "Lcom/transsion/usercenter/profile/adapter/c;", "a", "Lcom/transsion/usercenter/profile/adapter/c;", "mAdapter", "Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "i0", "()Lcom/transsion/usercenter/profile/viewmodel/UserProfileVideoViewModel;", "mViewModel", "", "c", "Z", "isPendingRefresh", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "J", "firstLoadStartTimeMillis", "e", "hasRecordedFirstLoadDuration", "Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$b;", "f", "Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$b;", "getLoadDurationCallback", "()Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$b;", "m0", "(Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment$b;)V", "loadDurationCallback", "Lbj/b;", "g", "Lbj/b;", "exposureHelper", "", "h", "Ljava/lang/String;", "targetUserId", "i", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UserProfileVideoFragment extends BaseFragment<n0> {

    public static final Companion INSTANCE = new Companion(null);

    private com.transsion.usercenter.profile.adapter.c mAdapter;

    private final Lazy mViewModel;

    private boolean isPendingRefresh;

    private long firstLoadStartTimeMillis;

    private boolean hasRecordedFirstLoadDuration;

    private b loadDurationCallback;

    private bj.b exposureHelper;

    private String targetUserId;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UserProfileVideoFragment a(String str) {
            UserProfileVideoFragment userProfileVideoFragment = new UserProfileVideoFragment();
            Bundle bundle = new Bundle();
            bundle.putString("userId", str);
            userProfileVideoFragment.setArguments(bundle);
            return userProfileVideoFragment;
        }

        private Companion() {
        }
    }

    public interface b {
        void a(Long l10, String str, UGCVideo uGCVideo);
    }

    static final class c implements c0, FunctionAdapter {

        private final Function1 f55047a;

        c(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55047a = function;
        }

        @Override
        public final Function a() {
            return this.f55047a;
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
            this.f55047a.invoke(obj);
        }
    }

    public static final class d implements bj.a {
        d() {
        }

        @Override
        public void a(int i10, long j10, View view) {
            UGCVideo uGCVideo;
            String collectionId;
            UserInfo userInfoI;
            com.transsion.usercenter.profile.adapter.c cVar = UserProfileVideoFragment.this.mAdapter;
            if (cVar == null || (uGCVideo = (UGCVideo) CollectionsKt.l0(cVar.getData(), i10)) == null) {
                return;
            }
            HashMap map = new HashMap();
            map.put("browse_duration", String.valueOf(j10));
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("page_tab_name", UserProfileVideoFragment.this.getString(R$string.profile_video));
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
            map.put("content_id", ugcVideoId);
            String subjectId = uGCVideo.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            String ops = uGCVideo.getOps();
            map.put("ops", ops != null ? ops : "");
            String str = UserProfileVideoFragment.this.targetUserId;
            qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
            map.put("uploader_type", Intrinsics.c(str, (aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()) ? "me" : "others");
            com.transsion.baselib.helper.a.f42121a.e("Userpage", map);
        }
    }

    public UserProfileVideoFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UserProfileVideoViewModel.class), new Function0<x0>() {
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
        this.targetUserId = "";
    }

    private final UserProfileVideoViewModel i0() {
        return (UserProfileVideoViewModel) this.mViewModel.getValue();
    }

    private final View j0() {
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        StateView stateView = new StateView(contextRequireContext);
        stateView.showData(2, 1, false, "", "");
        return stateView;
    }

    private final void l0(UGCVideo video) {
        wf.a.f74274a.c("Userpage", "click item id=" + video.getUgcVideoId(), false);
        gu.c.i(video, null, null, 3, null);
    }

    private final void n0() {
        i0().q().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileVideoFragment.q0(this.f55079a, (UGCVideoList) obj);
            }
        }));
        i0().s().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileVideoFragment.o0(this.f55050a, (Boolean) obj);
            }
        }));
        i0().p().j(this, new c(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileVideoFragment.p0(this.f55052a, (String) obj);
            }
        }));
    }

    public static final Unit o0(UserProfileVideoFragment userProfileVideoFragment, Boolean bool) {
        SwipeRefreshLayout swipeRefreshLayout;
        n0 mViewBinding = userProfileVideoFragment.getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f75699c) != null) {
            swipeRefreshLayout.setRefreshing(Intrinsics.c(bool, Boolean.TRUE));
        }
        return Unit.f64096a;
    }

    public static final Unit p0(UserProfileVideoFragment userProfileVideoFragment, String str) {
        com.transsion.usercenter.profile.adapter.c cVar;
        t6.f fVarH0;
        if (str != null && (cVar = userProfileVideoFragment.mAdapter) != null && (fVarH0 = cVar.h0()) != null) {
            fVarH0.v();
        }
        return Unit.f64096a;
    }

    public static final Unit q0(UserProfileVideoFragment userProfileVideoFragment, UGCVideoList uGCVideoList) {
        List<UGCVideo> listL;
        String ops;
        List<UGCVideo> items;
        List<UGCVideo> items2;
        UGCVideo uGCVideo;
        Pager pager;
        com.transsion.usercenter.profile.adapter.c cVar = userProfileVideoFragment.mAdapter;
        if (cVar == null) {
            return Unit.f64096a;
        }
        if (uGCVideoList == null || (listL = uGCVideoList.getItems()) == null) {
            listL = CollectionsKt.l();
        }
        boolean zC = (uGCVideoList == null || (pager = uGCVideoList.getPager()) == null) ? false : Intrinsics.c(pager.getHasMore(), Boolean.TRUE);
        boolean zIsEmpty = cVar.getData().isEmpty();
        if (userProfileVideoFragment.isPendingRefresh && zIsEmpty && !userProfileVideoFragment.hasRecordedFirstLoadDuration && userProfileVideoFragment.firstLoadStartTimeMillis > 0) {
            Long lValueOf = Long.valueOf(System.currentTimeMillis() - userProfileVideoFragment.firstLoadStartTimeMillis);
            userProfileVideoFragment.hasRecordedFirstLoadDuration = true;
            userProfileVideoFragment.firstLoadStartTimeMillis = 0L;
            if (uGCVideoList == null || (items2 = uGCVideoList.getItems()) == null || (uGCVideo = (UGCVideo) CollectionsKt.k0(items2)) == null || (ops = uGCVideo.getOps()) == null) {
                ops = "";
            }
            b bVar = userProfileVideoFragment.loadDurationCallback;
            if (bVar != null) {
                bVar.a(lValueOf, ops, (uGCVideoList == null || (items = uGCVideoList.getItems()) == null) ? null : (UGCVideo) CollectionsKt.k0(items));
            }
        }
        if (userProfileVideoFragment.isPendingRefresh) {
            if (!listL.isEmpty()) {
                cVar.n1(listL);
            } else if (cVar.getData().isEmpty()) {
                cVar.n1(null);
                cVar.Y0(userProfileVideoFragment.j0());
            }
            userProfileVideoFragment.isPendingRefresh = false;
        } else {
            List<UGCVideo> list = listL;
            if (!list.isEmpty()) {
                cVar.q(list);
            }
        }
        if (zC) {
            cVar.h0().s();
        } else {
            t6.f.u(cVar.h0(), false, 1, null);
        }
        return Unit.f64096a;
    }

    private final void r0() {
        RecyclerView recyclerView;
        n0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f75698b) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaLinearLayoutManager(recyclerView.getContext(), 1, false));
        bj.b bVar = new bj.b(0.6f, new d(), false, 4, null);
        bVar.n(2);
        this.exposureHelper = bVar;
        final com.transsion.usercenter.profile.adapter.c cVar = new com.transsion.usercenter.profile.adapter.c(new ArrayList(), this.exposureHelper);
        cVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UserProfileVideoFragment.s0(cVar, this, baseQuickAdapter, view, i10);
            }
        });
        cVar.h0().y(true);
        cVar.h0().E(2);
        cVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                UserProfileVideoFragment.t0(this.f55077a);
            }
        });
        this.mAdapter = cVar;
        recyclerView.setAdapter(cVar);
        bj.b bVar2 = this.exposureHelper;
        if (bVar2 != null) {
            recyclerView.addOnScrollListener(bVar2);
        }
    }

    public static final void s0(com.transsion.usercenter.profile.adapter.c cVar, UserProfileVideoFragment userProfileVideoFragment, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        String collectionId;
        UserInfo userInfoI;
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        UGCVideo uGCVideo = (UGCVideo) CollectionsKt.l0(cVar.getData(), i10);
        if (uGCVideo != null) {
            HashMap map = new HashMap();
            map.put("module_name", WebConstants.FIELD_ITEM);
            map.put("page_tab_name", userProfileVideoFragment.getString(R$string.profile_video));
            UGCVideoBelongToCollection belongToCollection = uGCVideo.getBelongToCollection();
            if (belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) {
                collectionId = "";
            }
            map.put("belong_to_collection_id", collectionId);
            String ugcVideoId = uGCVideo.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
            map.put("content_id", ugcVideoId);
            String subjectId = uGCVideo.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            map.put("refer_subject_id", subjectId);
            map.put("content_type", "ugc_video");
            String ops = uGCVideo.getOps();
            map.put("ops", ops != null ? ops : "");
            map.put(RequestParameters.POSITION, String.valueOf(i10));
            String str = userProfileVideoFragment.targetUserId;
            qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
            map.put("uploader_type", Intrinsics.c(str, (aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()) ? "me" : "others");
            com.transsion.baselib.helper.a.f42121a.f("Userpage", map);
            userProfileVideoFragment.l0(uGCVideo);
        }
    }

    public static final void t0(UserProfileVideoFragment userProfileVideoFragment) {
        wf.a.f74274a.c("Userpage", "onLoadMore", false);
        userProfileVideoFragment.isPendingRefresh = false;
        userProfileVideoFragment.i0().u();
    }

    private final void u0() {
        SwipeRefreshLayout swipeRefreshLayout;
        n0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f75699c) == null) {
            return;
        }
        Context context = swipeRefreshLayout.getContext();
        if (context != null) {
            swipeRefreshLayout.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(context, R$color.bg_01));
            swipeRefreshLayout.setColorSchemeColors(androidx.core.content.b.getColor(context, R$color.main_gradient_center), androidx.core.content.b.getColor(context, R$color.main_gradient_start));
        }
        swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
            @Override
            public final void a() {
                UserProfileVideoFragment.v0(this.f55078a);
            }
        });
    }

    public static final void v0(UserProfileVideoFragment userProfileVideoFragment) {
        wf.a.f74274a.c("Userpage", "onRefresh", false);
        if (!userProfileVideoFragment.hasRecordedFirstLoadDuration && userProfileVideoFragment.firstLoadStartTimeMillis == 0) {
            userProfileVideoFragment.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        bj.b bVar = userProfileVideoFragment.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
        userProfileVideoFragment.isPendingRefresh = true;
        userProfileVideoFragment.i0().w();
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        String string;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString("userId")) == null) {
            string = "";
        }
        this.targetUserId = string;
        i0().t(this.targetUserId);
        n0();
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        u0();
        r0();
    }

    @Override
    public n0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        n0 n0VarC = n0.c(inflater);
        Intrinsics.g(n0VarC, "inflate(...)");
        return n0VarC;
    }

    @Override
    public void lazyLoadData() {
        wf.a.f74274a.c("Userpage", "lazyLoadData -> refresh", false);
        if (!this.hasRecordedFirstLoadDuration && this.firstLoadStartTimeMillis == 0) {
            this.firstLoadStartTimeMillis = System.currentTimeMillis();
        }
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
        this.isPendingRefresh = true;
        i0().w();
    }

    public final void m0(b bVar) {
        this.loadDurationCallback = bVar;
    }

    @Override
    public void onPause() {
        super.onPause();
        bj.b bVar = this.exposureHelper;
        if (bVar != null) {
            bVar.f();
        }
    }
}
