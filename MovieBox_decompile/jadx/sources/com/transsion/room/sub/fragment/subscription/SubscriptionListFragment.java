package com.transsion.room.sub.fragment.subscription;

import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.room.sub.adapter.subscription.s;
import com.transsion.room.sub.bean.subscription.SubscriptionFollowingsData;
import com.transsion.room.sub.bean.subscription.UserInfoFollowings;
import com.transsion.room.sub.fragment.subscription.SubscriptionListFragment;
import com.transsion.room.sub.viewmodel.subscription.SubFollowingsViewModel;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import fp.u;
import java.util.ArrayList;
import java.util.List;
import kotlin.Function;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import qi.h;
import r6.f;
import wf.a;
import yg.l;

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\u0018\u0000 @2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001%B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u001d\u0010\n\u001a\u00020\t2\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0002¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0010\u0010\u0005J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001c\u0010\u0005J\u0019\u0010\u001e\u001a\u00020\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0005J\u000f\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b\"\u0010#R\u0016\u0010'\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\u0018\u0010*\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010)R\u0018\u0010-\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010,R\u0018\u00100\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b.\u0010/R\u0018\u00103\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0018\u00107\u001a\u0004\u0018\u0001048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b5\u00106R\u0016\u0010;\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R\u0016\u0010=\u001a\u0002088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010:R\u0014\u0010?\u001a\u00020\u00158\u0002X\u0082D¢\u0006\u0006\n\u0004\b>\u0010/¨\u0006A"}, d2 = {"Lcom/transsion/room/sub/fragment/subscription/SubscriptionListFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lfp/u;", "Lcom/transsion/room/sub/adapter/subscription/b;", "<init>", "()V", "", "Lcom/transsion/room/sub/bean/subscription/UserInfoFollowings;", "userItem", "", "z0", "(Ljava/util/List;)V", "x0", "Lcom/transsion/room/sub/adapter/subscription/s;", "q0", "()Lcom/transsion/room/sub/adapter/subscription/s;", "t0", "Landroid/view/LayoutInflater;", "inflater", "p0", "(Landroid/view/LayoutInflater;)Lfp/u;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "initViewModel", "initListener", "retryLoadData", "loadDefaultData", "userId", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(Ljava/lang/String;)V", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "", "a", "Z", "isLoadingFollowings", "Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;", "Lcom/transsion/room/sub/viewmodel/subscription/SubFollowingsViewModel;", "followingsViewModel", "c", "Ljava/lang/Boolean;", "hasMoreFollowings", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Ljava/lang/String;", "cursorFollowings", "e", "Lcom/transsion/room/sub/adapter/subscription/s;", "sFollowingsAdapter", "Lbj/b;", "f", "Lbj/b;", "mExposureHelper", "", "g", "J", "firstLoadStartTimeMillis", "h", "durationMySubscriptionList", "i", "PAGE_NAME", "j", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class SubscriptionListFragment extends PageStatusFragment<u> implements com.transsion.room.sub.adapter.subscription.b {

    private boolean isLoadingFollowings;

    private SubFollowingsViewModel followingsViewModel;

    private String cursorFollowings;

    private s sFollowingsAdapter;

    private bj.b mExposureHelper;

    private long firstLoadStartTimeMillis;

    private long durationMySubscriptionList;

    private Boolean hasMoreFollowings = Boolean.FALSE;

    private final String PAGE_NAME = "/subscription/my_subscription";

    static final class b implements c0, FunctionAdapter {

        private final Function1 f49757a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49757a = function;
        }

        @Override
        public final Function a() {
            return this.f49757a;
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
            this.f49757a.invoke(obj);
        }
    }

    private final s q0() {
        s sVar = new s(new ArrayList(), this.mExposureHelper, false);
        sVar.h0().z(true);
        sVar.h0().y(true);
        sVar.h0().E(2);
        sVar.h0().D(new f() {
            @Override
            public final void a() {
                SubscriptionListFragment.r0(this.f66678a);
            }
        });
        this.sFollowingsAdapter = sVar;
        Intrinsics.e(sVar);
        return sVar;
    }

    public static final void r0(final SubscriptionListFragment subscriptionListFragment) {
        RecyclerView recyclerView;
        if (l.f76264a.e() && subscriptionListFragment.hasMoreFollowings != null) {
            a.C0922a.f(a.f74274a, "SubscriptionListFragment", "initSubscriptionListAdapter: trigger load more", false, 4, null);
            SubFollowingsViewModel subFollowingsViewModel = subscriptionListFragment.followingsViewModel;
            if (subFollowingsViewModel != null) {
                subFollowingsViewModel.h(subscriptionListFragment.cursorFollowings);
                return;
            }
            return;
        }
        a.C0922a.z(a.f74274a, "SubscriptionListFragment", "initSubscriptionListAdapter: no network, load more failed", false, 4, null);
        u mViewBinding = subscriptionListFragment.getMViewBinding();
        if (mViewBinding == null || (recyclerView = mViewBinding.f60445c) == null) {
            return;
        }
        recyclerView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubscriptionListFragment.s0(this.f66679a);
            }
        }, 300L);
    }

    public static final void s0(SubscriptionListFragment subscriptionListFragment) {
        t6.f fVarH0;
        s sVar = subscriptionListFragment.sFollowingsAdapter;
        if (sVar == null || (fVarH0 = sVar.h0()) == null) {
            return;
        }
        fVarH0.v();
    }

    private final void t0() {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        RecyclerView recyclerView3;
        SwipeRefreshLayout swipeRefreshLayout;
        u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f60448f) != null) {
            swipeRefreshLayout.setEnabled(true);
            swipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    SubscriptionListFragment.u0(this.f66677a);
                }
            });
        }
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(getContext());
        linearLayoutManager.setOrientation(1);
        linearLayoutManager.setItemPrefetchEnabled(false);
        u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView3 = mViewBinding2.f60445c) != null) {
            recyclerView3.setLayoutManager(linearLayoutManager);
        }
        u mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (recyclerView2 = mViewBinding3.f60445c) != null) {
            recyclerView2.setHasFixedSize(true);
        }
        s sVarQ0 = q0();
        this.sFollowingsAdapter = sVarQ0;
        if (sVarQ0 != null) {
            sVarQ0.Q1(this);
        }
        u mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (recyclerView = mViewBinding4.f60445c) == null) {
            return;
        }
        recyclerView.setAdapter(this.sFollowingsAdapter);
    }

    public static final void u0(SubscriptionListFragment subscriptionListFragment) {
        a.C0922a.f(a.f74274a, "SubscriptionListFragment", "initRecyclerView: user pull to refresh", false, 4, null);
        SubFollowingsViewModel subFollowingsViewModel = subscriptionListFragment.followingsViewModel;
        if (subFollowingsViewModel != null) {
            subFollowingsViewModel.i();
        }
    }

    public static final void v0(SubscriptionListFragment subscriptionListFragment, View view) {
        FragmentActivity activity = subscriptionListFragment.getActivity();
        if (activity != null) {
            activity.onBackPressed();
        }
    }

    public static final Unit w0(SubscriptionListFragment subscriptionListFragment, SubscriptionFollowingsData subscriptionFollowingsData) {
        SwipeRefreshLayout swipeRefreshLayout;
        t6.f fVarH0;
        t6.f fVarH1;
        t6.f fVarH2;
        s sVar;
        List<Object> data;
        t6.f fVarH3;
        t6.f fVarH4;
        subscriptionListFragment.hasMoreFollowings = subscriptionFollowingsData != null ? Boolean.valueOf(subscriptionFollowingsData.getHasMore()) : null;
        subscriptionListFragment.cursorFollowings = subscriptionFollowingsData != null ? subscriptionFollowingsData.getNextCursor() : null;
        SubFollowingsViewModel subFollowingsViewModel = subscriptionListFragment.followingsViewModel;
        Boolean boolValueOf = subFollowingsViewModel != null ? Boolean.valueOf(subFollowingsViewModel.g()) : null;
        a.C0922a c0922a = a.f74274a;
        a.C0922a.f(c0922a, "SubscriptionListFragment", "Followings observe start", false, 4, null);
        subscriptionListFragment.showContentView();
        s sVar2 = subscriptionListFragment.sFollowingsAdapter;
        if (sVar2 != null && (fVarH3 = sVar2.h0()) != null && fVarH3.r()) {
            s sVar3 = subscriptionListFragment.sFollowingsAdapter;
            if (sVar3 != null && (fVarH4 = sVar3.h0()) != null) {
                fVarH4.s();
            }
            a.C0922a.f(c0922a, "SubscriptionListFragment", "Followings observe loadMoreComplete", false, 4, null);
        }
        if ((subscriptionFollowingsData != null ? subscriptionFollowingsData.getUsers() : null) != null) {
            List<UserInfoFollowings> users = subscriptionFollowingsData.getUsers();
            Integer numValueOf = users != null ? Integer.valueOf(users.size()) : null;
            a.C0922a.f(c0922a, "SubscriptionListFragment", "subscriptionFollowingsBean: received " + numValueOf + " items, currentListSize=" + subscriptionListFragment.sFollowingsAdapter + "?.data?.size}, hasMore=" + subscriptionFollowingsData.getHasMore(), false, 4, null);
            Boolean bool = subscriptionListFragment.hasMoreFollowings;
            Boolean bool2 = Boolean.TRUE;
            if (!Intrinsics.c(bool, bool2) || subscriptionListFragment.hasMoreFollowings == null) {
                a.C0922a.f(c0922a, "SubscriptionListFragment", "ugcVideoFavoriteBean: no more data, load more end", false, 4, null);
                s sVar4 = subscriptionListFragment.sFollowingsAdapter;
                if (sVar4 != null && (fVarH2 = sVar4.h0()) != null) {
                    t6.f.u(fVarH2, false, 1, null);
                }
                s sVar5 = subscriptionListFragment.sFollowingsAdapter;
                if (sVar5 != null && (fVarH1 = sVar5.h0()) != null) {
                    fVarH1.z(false);
                }
                s sVar6 = subscriptionListFragment.sFollowingsAdapter;
                if (sVar6 != null && (fVarH0 = sVar6.h0()) != null) {
                    fVarH0.y(false);
                }
                a.C0922a.f(c0922a, "SubscriptionListFragment", "Followings observe loadMoreEnd", false, 4, null);
            }
            s sVar7 = subscriptionListFragment.sFollowingsAdapter;
            if (sVar7 == null || (data = sVar7.getData()) == null || !data.isEmpty() || numValueOf == null || numValueOf.intValue() != 0) {
                List<UserInfoFollowings> users2 = subscriptionFollowingsData.getUsers();
                Intrinsics.e(users2);
                subscriptionListFragment.z0(users2);
                if (numValueOf != null && numValueOf.intValue() == 0 && Intrinsics.c(boolValueOf, bool2) && (sVar = subscriptionListFragment.sFollowingsAdapter) != null) {
                    sVar.Y0(subscriptionListFragment.getEmptyView(false));
                }
                a.C0922a.f(c0922a, "SubscriptionListFragment", "Followings observe updateFollowingsData", false, 4, null);
            } else {
                a.C0922a.f(c0922a, "SubscriptionListFragment", "subscriptionFollowingsBean: empty data", false, 4, null);
                a.C0922a.f(c0922a, "SubscriptionListFragment", "Followings observe setEmptyView", false, 4, null);
                s sVar8 = subscriptionListFragment.sFollowingsAdapter;
                if (sVar8 != null) {
                    sVar8.Y0(subscriptionListFragment.getEmptyView(false));
                }
            }
            qi.b logViewConfig = subscriptionListFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
        }
        u mViewBinding = subscriptionListFragment.getMViewBinding();
        if (mViewBinding != null && (swipeRefreshLayout = mViewBinding.f60448f) != null) {
            swipeRefreshLayout.setRefreshing(false);
        }
        return Unit.f64096a;
    }

    private final void x0() {
        ConstraintLayout root;
        showLoadingView();
        if (this.isLoadingFollowings) {
            return;
        }
        this.isLoadingFollowings = true;
        SubFollowingsViewModel subFollowingsViewModel = this.followingsViewModel;
        if (subFollowingsViewModel != null) {
            subFollowingsViewModel.f("");
        }
        u mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubscriptionListFragment.y0(this.f66676a);
            }
        }, 2000L);
    }

    public static final void y0(SubscriptionListFragment subscriptionListFragment) {
        SwipeRefreshLayout swipeRefreshLayout;
        u mViewBinding = subscriptionListFragment.getMViewBinding();
        if (mViewBinding == null || (swipeRefreshLayout = mViewBinding.f60448f) == null) {
            return;
        }
        swipeRefreshLayout.setRefreshing(false);
    }

    private final void z0(List userItem) {
        List<Object> data;
        List<Object> data2;
        s sVar = this.sFollowingsAdapter;
        int size = 0;
        int size2 = (sVar == null || (data2 = sVar.getData()) == null) ? 0 : data2.size();
        SubFollowingsViewModel subFollowingsViewModel = this.followingsViewModel;
        Boolean boolValueOf = subFollowingsViewModel != null ? Boolean.valueOf(subFollowingsViewModel.g()) : null;
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.c(boolValueOf, bool) || size2 == 0) {
            s sVar2 = this.sFollowingsAdapter;
            if (sVar2 != null) {
                sVar2.n1(userItem);
            }
            a.C0922a.f(a.f74274a, "SubscriptionListFragment", "updateData: refresh or first load, replace data. size: " + size2 + " -> " + userItem.size(), false, 4, null);
        } else {
            s sVar3 = this.sFollowingsAdapter;
            if (sVar3 != null) {
                sVar3.q(userItem);
            }
            s sVar4 = this.sFollowingsAdapter;
            if (sVar4 != null && (data = sVar4.getData()) != null) {
                size = data.size();
            }
            a.C0922a.f(a.f74274a, "SubscriptionListFragment", "updateData: load more, add " + userItem.size() + " items, list size: " + size2 + " -> " + size, false, 4, null);
        }
        if ((Intrinsics.c(boolValueOf, bool) || size2 == 0) && !userItem.isEmpty()) {
        }
    }

    @Override
    public void b(String userId) {
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userId), getContext(), null, 2, null);
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
        ImageView imageView;
        this.firstLoadStartTimeMillis = SystemClock.elapsedRealtime();
        t0();
        u mViewBinding = getMViewBinding();
        if (mViewBinding == null || (imageView = mViewBinding.f60446d) == null) {
            return;
        }
        imageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubscriptionListFragment.v0(this.f66675a, view);
            }
        });
    }

    @Override
    public void initViewModel() {
        b0 b0VarE;
        SubFollowingsViewModel subFollowingsViewModel = this.followingsViewModel;
        if (subFollowingsViewModel == null || (b0VarE = subFollowingsViewModel.e()) == null) {
            return;
        }
        b0VarE.j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return SubscriptionListFragment.w0(this.f66674a, (SubscriptionFollowingsData) obj);
            }
        }));
    }

    @Override
    public void loadDefaultData() {
        x0();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b(this.PAGE_NAME, false, 2, null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        long jElapsedRealtime = SystemClock.elapsedRealtime() - this.firstLoadStartTimeMillis;
        this.durationMySubscriptionList = jElapsedRealtime;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("页面停留时长为: ");
        sb2.append(jElapsedRealtime);
        sb2.append(" ");
        com.transsion.baselib.helper.a.f42121a.k(this.PAGE_NAME, h.f69682a.h(), String.valueOf(this.durationMySubscriptionList));
    }

    @Override
    public u getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.followingsViewModel = (SubFollowingsViewModel) new v0(activity).a(SubFollowingsViewModel.class);
        }
        u uVarC = u.c(getLayoutInflater());
        Intrinsics.g(uVarC, "inflate(...)");
        return uVarC;
    }

    @Override
    public void retryLoadData() {
        x0();
    }
}
