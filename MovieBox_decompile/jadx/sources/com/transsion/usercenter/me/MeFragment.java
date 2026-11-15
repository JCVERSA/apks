package com.transsion.usercenter.me;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.kids.KidsAccountManager;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.usercenter.profile.bean.MeHistoryInfo;
import com.transsion.usercenter.profile.bean.MeItemInfo;
import com.transsion.web.api.WebConstants;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
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
import xu.h0;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\t\n\u0002\b\t\u0018\u0000 K2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u00012B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u0017\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\f\u0010\u0005J\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u001f\u0010\u0011\u001a\u00020\u00062\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0013\u0010\u0005J\u0017\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J!\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ!\u0010\u001e\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\b\u001e\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0016¢\u0006\u0004\b \u0010\u0005J\u0017\u0010#\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0006H\u0016¢\u0006\u0004\b%\u0010\u0005J\u0017\u0010(\u001a\u00020\u00062\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010,\u001a\u00020\u0006H\u0016¢\u0006\u0004\b,\u0010\u0005J\u000f\u0010-\u001a\u00020\u0006H\u0016¢\u0006\u0004\b-\u0010\u0005J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100R\u001b\u00106\u001a\u0002018BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u00103\u001a\u0004\b4\u00105R\u001d\u0010;\u001a\u0004\u0018\u0001078BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00103\u001a\u0004\b9\u0010:R\u0018\u0010?\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u0010>R\u0016\u0010B\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010AR\"\u0010J\u001a\u00020C8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bD\u0010E\u001a\u0004\bF\u0010G\"\u0004\bH\u0010I¨\u0006L"}, d2 = {"Lcom/transsion/usercenter/me/MeFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxu/h0;", "Lqx/b;", "<init>", "()V", "", "s0", "Lcom/transsion/usercenter/profile/bean/MeItemInfo;", WebConstants.FIELD_ITEM, "x0", "(Lcom/transsion/usercenter/profile/bean/MeItemInfo;)V", "n0", "q0", "", "", "historyList", "y0", "(Ljava/util/List;)V", "w0", "Landroid/view/LayoutInflater;", "inflater", "k0", "(Landroid/view/LayoutInflater;)Lxu/h0;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "lazyLoadData", "onResume", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "onLogout", "", "hidden", "onHiddenChanged", "(Z)V", "logResume", "logPause", "onPause", "onDestroy", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Lcom/transsion/usercenter/me/MeViewmodel;", "a", "Lkotlin/Lazy;", "j0", "()Lcom/transsion/usercenter/me/MeViewmodel;", "mViewModel", "Lqx/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "getMLoginApi", "()Lqx/a;", "mLoginApi", "Lcom/transsion/usercenter/me/adapter/o;", "c", "Lcom/transsion/usercenter/me/adapter/o;", "mAdapter", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "needResumeRefreshData", "", "e", "J", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", "f", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MeFragment extends BaseFragment<h0> implements qx.b {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy mViewModel;

    private final Lazy mLoginApi;

    private com.transsion.usercenter.me.adapter.o mAdapter;

    private boolean needResumeRefreshData;

    private long resumeTimeStamp;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MeFragment a() {
            return new MeFragment();
        }

        private Companion() {
        }
    }

    static final class b implements c0, FunctionAdapter {

        private final Function1 f54792a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54792a = function;
        }

        @Override
        public final Function a() {
            return this.f54792a;
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
            this.f54792a.invoke(obj);
        }
    }

    public MeFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MeViewmodel.class), new Function0<x0>() {
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
        this.mLoginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MeFragment.mLoginApi_delegate$lambda$0();
            }
        });
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    private final MeViewmodel j0() {
        return (MeViewmodel) this.mViewModel.getValue();
    }

    public static final Unit l0(MeFragment meFragment, List list) {
        qi.b logViewConfig = meFragment.getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        com.transsion.usercenter.me.adapter.o oVar = meFragment.mAdapter;
        if (oVar != null) {
            oVar.n1(list);
        }
        return Unit.f64096a;
    }

    public static final Unit m0(MeFragment meFragment, List list) {
        meFragment.y0(list);
        return Unit.f64096a;
    }

    public static final qx.a mLoginApi_delegate$lambda$0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void n0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MeFragment.o0(this.f54874a, (yw.e) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = yw.e.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MeFragment.p0(this.f54875a, (yw.d) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = yw.d.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
    }

    public static final Unit o0(MeFragment meFragment, yw.e value) {
        Intrinsics.h(value, "value");
        meFragment.j0().w();
        return Unit.f64096a;
    }

    public static final Unit p0(MeFragment meFragment, yw.d value) {
        Intrinsics.h(value, "value");
        meFragment.j0().w();
        return Unit.f64096a;
    }

    private final void q0() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MeFragment.r0(this.f54873a, (KidsAccountManager.a) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = KidsAccountManager.a.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit r0(MeFragment meFragment, KidsAccountManager.a value) {
        Intrinsics.h(value, "value");
        meFragment.lazyLoadData();
        return Unit.f64096a;
    }

    private final void s0() {
        h0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            ConstraintLayout root = mViewBinding.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            uf.c.e(root);
            AppCompatImageView ivQrCode = mViewBinding.f75593c;
            Intrinsics.g(ivQrCode, "ivQrCode");
            uf.c.c(ivQrCode, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MeFragment.t0(this.f54870a, (View) obj);
                }
            }, 1, null);
            com.transsion.usercenter.me.adapter.o oVar = new com.transsion.usercenter.me.adapter.o(null, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MeFragment.u0(this.f54871a, (MeItemInfo) obj);
                }
            }, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MeFragment.v0(this.f54872a, (MeItemInfo) obj);
                }
            }, 1, null);
            this.mAdapter = oVar;
            mViewBinding.f75592b.setAdapter(oVar);
            mViewBinding.f75592b.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        }
    }

    public static final Unit t0(MeFragment meFragment, View it) {
        Intrinsics.h(it, "it");
        Navigator.x(TheRouter.c("/profile/qr_code"), meFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    public static final Unit u0(MeFragment meFragment, MeItemInfo item) {
        Intrinsics.h(item, "item");
        meFragment.x0(item);
        return Unit.f64096a;
    }

    public static final Unit v0(MeFragment meFragment, MeItemInfo item) {
        Intrinsics.h(item, "item");
        meFragment.needResumeRefreshData = true;
        return Unit.f64096a;
    }

    private final void w0() {
        bp.a aVar = (bp.a) TheRouter.d(bp.a.class, new Object[0]);
        if (aVar != null) {
            Context applicationContext = requireContext().getApplicationContext();
            Intrinsics.g(applicationContext, "getApplicationContext(...)");
            u viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            aVar.a(applicationContext, v.a(viewLifecycleOwner));
        }
    }

    private final void x0(MeItemInfo item) {
        if (item.getType() == 5 || item.getType() == 1) {
            this.needResumeRefreshData = true;
        }
    }

    private final void y0(List historyList) {
        com.transsion.usercenter.me.adapter.o oVar = this.mAdapter;
        if (oVar == null) {
            return;
        }
        int i10 = 0;
        for (Object obj : oVar.getData()) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            MeItemInfo meItemInfo = (MeItemInfo) obj;
            if (meItemInfo.getType() == 4) {
                Object data = meItemInfo.getData();
                MeHistoryInfo meHistoryInfo = data instanceof MeHistoryInfo ? (MeHistoryInfo) data : null;
                if (meHistoryInfo != null) {
                    meHistoryInfo.setList(historyList);
                } else {
                    meItemInfo.setData(new MeHistoryInfo(historyList));
                }
                oVar.notifyItemChanged(i10);
                return;
            }
            i10 = i11;
        }
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        j0().E().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MeFragment.l0(this.f54868a, (List) obj);
            }
        }));
        j0().A().j(this, new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MeFragment.m0(this.f54869a, (List) obj);
            }
        }));
        n0();
        q0();
        qx.a mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.e(this);
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        s0();
    }

    @Override
    public h0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        h0 h0VarC = h0.c(inflater);
        Intrinsics.g(h0VarC, "inflate(...)");
        return h0VarC;
    }

    @Override
    public void lazyLoadData() {
        j0().x();
        j0().y();
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            bVar.o();
        }
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f42196a.n("profiledetail", Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public qi.b newLogViewConfig() {
        UserInfo userInfoI;
        String userId = null;
        qi.b bVar = new qi.b("profiledetail", false, 2, null);
        bVar.g().put("user_status", "me");
        HashMap mapG = bVar.g();
        qx.a mLoginApi = getMLoginApi();
        if (mLoginApi != null && (userInfoI = mLoginApi.i()) != null) {
            userId = userInfoI.getUserId();
        }
        mapG.put("user_id", String.valueOf(userId));
        return bVar;
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        qx.a mLoginApi = getMLoginApi();
        if (mLoginApi != null) {
            mLoginApi.j(this);
        }
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                lazyLoadData();
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        lazyLoadData();
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
        lazyLoadData();
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.needResumeRefreshData) {
            this.needResumeRefreshData = false;
            lazyLoadData();
        }
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
        w0();
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }
}
