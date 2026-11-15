package com.transsion.rewardscenter.ui;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$mipmap;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.rewardscenter.R$string;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.prize.PrizeListView;
import com.transsion.rewardscenter.redeem.RedeemView;
import com.transsion.rewardscenter.utils.AppInstallBroadcastHelper;
import com.transsion.rewardscenter.view.PrizeFlowView;
import com.transsion.rewardscenter.view.RewardsCenterTaskView;
import com.transsion.rewardscenterapi.Banner;
import com.transsion.rewardscenterapi.DrawResult;
import com.transsion.rewardscenterapi.Lottery;
import com.transsion.rewardscenterapi.PrizeFlow;
import com.transsion.rewardscenterapi.Redeem;
import com.transsion.rewardscenterapi.Rule;
import com.transsion.rewardscenterapi.SkuPoint;
import com.transsion.rewardscenterapi.Task;
import com.transsion.rewardscenterapi.TopUpType;
import com.transsion.rewardscenterapi.User;
import com.transsion.rewardscenterapi.UserPrize;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u0000 j2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001kB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\t\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0002¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u000f\u0010\u001b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001b\u0010\u0005J\u000f\u0010\u001c\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001c\u0010\u0005J\u0011\u0010\u001e\u001a\u0004\u0018\u00010\u001dH\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u0011\u0010 \u001a\u0004\u0018\u00010\u001dH\u0014¢\u0006\u0004\b \u0010\u001fJ\u0019\u0010#\u001a\u00020\b2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\bH\u0016¢\u0006\u0004\b%\u0010\u0005J\u000f\u0010&\u001a\u00020\bH\u0016¢\u0006\u0004\b&\u0010\u0005J\u000f\u0010'\u001a\u00020\bH\u0016¢\u0006\u0004\b'\u0010\u0005J\u0017\u0010*\u001a\u00020\u00022\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b*\u0010+J\u000f\u0010,\u001a\u00020\u0011H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\bH\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\bH\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\bH\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\bH\u0016¢\u0006\u0004\b4\u0010\u0005J\r\u00105\u001a\u00020\b¢\u0006\u0004\b5\u0010\u0005J\r\u00106\u001a\u00020\b¢\u0006\u0004\b6\u0010\u0005J\r\u00107\u001a\u00020\b¢\u0006\u0004\b7\u0010\u0005J\u0015\u0010:\u001a\u00020\b2\u0006\u00109\u001a\u000208¢\u0006\u0004\b:\u0010;J\u0017\u0010>\u001a\u00020\b2\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J!\u0010D\u001a\u00020\b2\u0006\u0010A\u001a\u00020@2\n\b\u0002\u0010C\u001a\u0004\u0018\u00010B¢\u0006\u0004\bD\u0010ER\u0018\u0010H\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010GR\u0018\u0010J\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010GR\u0016\u0010N\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001b\u0010W\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u001b\u0010\\\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010T\u001a\u0004\bZ\u0010[R\u001d\u0010a\u001a\u0004\u0018\u00010]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010T\u001a\u0004\b_\u0010`R\u0016\u0010c\u001a\u00020K8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010MR\"\u0010i\u001a\u0010\u0012\f\u0012\n f*\u0004\u0018\u00010e0e0d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bg\u0010h¨\u0006l"}, d2 = {"Lcom/transsion/rewardscenter/ui/RewardsCenterFragment;", "Lcom/transsion/rewardscenter/ui/FitStatusBarFragment;", "Lyo/d;", "Lqx/b;", "<init>", "()V", "Lcom/transsion/rewardscenterapi/Lottery;", "lottery", "", "u1", "(Lcom/transsion/rewardscenterapi/Lottery;)V", "Lcom/transsion/rewardscenterapi/User;", "info", "x1", "(Lcom/transsion/rewardscenterapi/User;)V", "", "point", "", "R0", "(I)Ljava/lang/String;", "prizeId", "l1", "(Ljava/lang/String;)V", "s1", "y1", "p1", "v1", "Q0", "n1", "Landroid/view/View;", "n0", "()Landroid/view/View;", "o0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onDestroy", "Landroid/view/LayoutInflater;", "inflater", "U0", "(Landroid/view/LayoutInflater;)Lyo/d;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "initViewData", "initViewModel", "initListener", "retryLoadData", "q1", "showLoading", "P0", "Lcom/transsion/rewardscenterapi/DrawResult;", "drawResult", "k1", "(Lcom/transsion/rewardscenterapi/DrawResult;)V", "Lcom/transsnet/loginapi/bean/UserInfo;", "user", "onLogin", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "Lcom/transsion/rewardscenterapi/TopUpType;", "topUpType", "Lcom/transsion/rewardscenterapi/SkuPoint;", "skuPoint", "z1", "(Lcom/transsion/rewardscenterapi/TopUpType;Lcom/transsion/rewardscenterapi/SkuPoint;)V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", EventConstants.KEY_SOURCE, "c", "sceneId", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Z", "isFromAdTask", "e", "Lcom/transsion/rewardscenterapi/SkuPoint;", "bannerSkuPoint", "Lcom/transsion/rewardscenter/model/RewardsCenterModel;", "f", "Lkotlin/Lazy;", "T0", "()Lcom/transsion/rewardscenter/model/RewardsCenterModel;", "rewardsCenterModel", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "g", "S0", "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "loadingDialog", "Lqx/a;", "h", "getLoginApi", "()Lqx/a;", "loginApi", "i", "isFirstResume", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "kotlin.jvm.PlatformType", "j", "Landroidx/activity/result/b;", "claimRewardLauncher", CampaignEx.JSON_KEY_AD_K, "a", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RewardsCenterFragment extends FitStatusBarFragment<yo.d> implements qx.b {

    public static final int f49229l = 8;

    private String source;

    private String sceneId;

    private boolean isFromAdTask;

    private SkuPoint bannerSkuPoint;

    private final Lazy rewardsCenterModel;

    private final Lazy loadingDialog;

    private final Lazy loginApi;

    private boolean isFirstResume;

    private final androidx.activity.result.b claimRewardLauncher;

    static final class b implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49239a;

        b(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49239a = function;
        }

        @Override
        public final Function a() {
            return this.f49239a;
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
            this.f49239a.invoke(obj);
        }
    }

    public static final class c implements RequestListener {
        c() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            CardView cardView;
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            yo.d dVar = (yo.d) RewardsCenterFragment.this.getMViewBinding();
            if (dVar != null && (cardView = dVar.f76305g) != null) {
                ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.height = -2;
                } else {
                    layoutParams = null;
                }
                cardView.setLayoutParams(layoutParams);
                com.transsion.rewardscenter.utils.q.b("banner");
            }
            return false;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            CardView cardView;
            Intrinsics.h(target, "target");
            yo.d dVar = (yo.d) RewardsCenterFragment.this.getMViewBinding();
            if (dVar != null && (cardView = dVar.f76305g) != null) {
                uf.c.g(cardView);
            }
            wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "--> banner image load failed", false, 4, null);
            return false;
        }
    }

    public RewardsCenterFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.rewardsCenterModel = FragmentViewModelLazyKt.a(this, Reflection.b(RewardsCenterModel.class), new Function0<x0>() {
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
        this.loadingDialog = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RewardsCenterFragment.m1();
            }
        });
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return RewardsCenterFragment.loginApi_delegate$lambda$1();
            }
        });
        this.isFirstResume = true;
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                RewardsCenterFragment.O0(this.f49271a, (ActivityResult) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.claimRewardLauncher = bVarRegisterForActivityResult;
    }

    public static void A1(RewardsCenterFragment rewardsCenterFragment, TopUpType topUpType, SkuPoint skuPoint, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            skuPoint = null;
        }
        rewardsCenterFragment.z1(topUpType, skuPoint);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void O0(RewardsCenterFragment rewardsCenterFragment, ActivityResult it) {
        yo.d dVar;
        PrizeListView prizeListView;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1) {
            rewardsCenterFragment.T0().A(null);
            return;
        }
        String strQ = rewardsCenterFragment.T0().q();
        rewardsCenterFragment.T0().A(null);
        if (strQ != null && (dVar = (yo.d) rewardsCenterFragment.getMViewBinding()) != null && (prizeListView = dVar.f76307i) != null) {
            prizeListView.markClaimed(strQ);
        }
        String string = rewardsCenterFragment.getString(R$string.success_claim);
        Intrinsics.g(string, "getString(...)");
        com.transsion.rewardscenter.utils.p.a(true, string);
    }

    private final void Q0() {
        Fragment fragmentK0 = getParentFragmentManager().k0("PhoneBottomSheetFragment");
        PhoneBottomSheetFragment phoneBottomSheetFragment = fragmentK0 instanceof PhoneBottomSheetFragment ? (PhoneBottomSheetFragment) fragmentK0 : null;
        if (phoneBottomSheetFragment == null) {
            return;
        }
        phoneBottomSheetFragment.dismissAllowingStateLoss();
    }

    private final String R0(int point) {
        if (point < 1000) {
            return String.valueOf(point);
        }
        if (point < 10000) {
            String str = String.format("%,d", Arrays.copyOf(new Object[]{Integer.valueOf(point)}, 1));
            Intrinsics.g(str, "format(...)");
            return str;
        }
        if (point < 1000000) {
            return (point / 1000) + CampaignEx.JSON_KEY_AD_K;
        }
        return (point / 1000000) + "M";
    }

    private final BaseMemberLoadingDialog S0() {
        return (BaseMemberLoadingDialog) this.loadingDialog.getValue();
    }

    private final RewardsCenterModel T0() {
        return (RewardsCenterModel) this.rewardsCenterModel.getValue();
    }

    public static final Unit V0(RewardsCenterFragment rewardsCenterFragment, View it) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        Intrinsics.h(it, "it");
        rewardsCenterFragment.getParentFragmentManager().g1();
        FragmentActivity activity = rewardsCenterFragment.getActivity();
        if (activity != null && (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) != null) {
            onBackPressedDispatcher.l();
        }
        return Unit.f64096a;
    }

    public static final Unit W0(RewardsCenterFragment rewardsCenterFragment, View it) {
        Intrinsics.h(it, "it");
        rewardsCenterFragment.p1();
        return Unit.f64096a;
    }

    public static final Unit X0(RewardsCenterFragment rewardsCenterFragment, View it) {
        Intrinsics.h(it, "it");
        rewardsCenterFragment.p1();
        return Unit.f64096a;
    }

    public static final Unit Y0(RewardsCenterFragment rewardsCenterFragment, View it) {
        Intrinsics.h(it, "it");
        rewardsCenterFragment.n1();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit Z0(RewardsCenterFragment rewardsCenterFragment, View it) {
        RewardsCenterTaskView rewardsCenterTaskView;
        Intrinsics.h(it, "it");
        yo.d dVar = (yo.d) rewardsCenterFragment.getMViewBinding();
        if (dVar != null && (rewardsCenterTaskView = dVar.f76312n) != null) {
            rewardsCenterTaskView.scrollToSelf();
        }
        return Unit.f64096a;
    }

    public static final void a1(RewardsCenterFragment rewardsCenterFragment, View view) {
        User userW = rewardsCenterFragment.T0().w();
        if (userW == null || userW.isLogin()) {
            return;
        }
        rewardsCenterFragment.y1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit b1(RewardsCenterFragment rewardsCenterFragment, Redeem redeem) {
        CardView cardView;
        List<SkuPoint> skuPointList;
        RedeemView redeemView;
        if (redeem != null) {
            yo.d dVar = (yo.d) rewardsCenterFragment.getMViewBinding();
            if (dVar != null && (redeemView = dVar.f76310l) != null) {
                redeemView.setRedeemData(redeem);
            }
            if (redeem.getLotteryPrize() != null || ((skuPointList = redeem.getSkuPointList()) != null && !skuPointList.isEmpty())) {
                yo.d dVar2 = (yo.d) rewardsCenterFragment.getMViewBinding();
                if (dVar2 != null && (cardView = dVar2.f76309k) != null) {
                    uf.c.k(cardView);
                }
                com.transsion.rewardscenter.utils.q.b("redeem_rewards");
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit c1(final RewardsCenterFragment rewardsCenterFragment, Task task) {
        yo.d dVar;
        RewardsCenterTaskView rewardsCenterTaskView;
        CardView cardView;
        RewardsCenterTaskView rewardsCenterTaskView2;
        if (task != null) {
            yo.d dVar2 = (yo.d) rewardsCenterFragment.getMViewBinding();
            if (dVar2 != null && (rewardsCenterTaskView2 = dVar2.f76312n) != null) {
                rewardsCenterTaskView2.setTaskData(task);
            }
            yo.d dVar3 = (yo.d) rewardsCenterFragment.getMViewBinding();
            if (dVar3 != null && (cardView = dVar3.f76311m) != null) {
                uf.c.k(cardView);
            }
            com.transsion.rewardscenter.utils.q.b("earn_points");
            if (rewardsCenterFragment.isFromAdTask && (dVar = (yo.d) rewardsCenterFragment.getMViewBinding()) != null && (rewardsCenterTaskView = dVar.f76312n) != null) {
                rewardsCenterTaskView.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        RewardsCenterFragment.d1(this.f49256a);
                    }
                }, 500L);
            }
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void d1(RewardsCenterFragment rewardsCenterFragment) {
        RewardsCenterTaskView rewardsCenterTaskView;
        yo.d dVar = (yo.d) rewardsCenterFragment.getMViewBinding();
        if (dVar == null || (rewardsCenterTaskView = dVar.f76312n) == null) {
            return;
        }
        rewardsCenterTaskView.scrollToSelf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit e1(RewardsCenterFragment rewardsCenterFragment, Rule rule) {
        ArrayList arrayList;
        String strS0;
        AppCompatTextView appCompatTextView;
        if (rule != null) {
            List<String> terms = rule.getTerms();
            if (terms != null) {
                arrayList = new ArrayList();
                for (Object obj : terms) {
                    if (((String) obj).length() > 0) {
                        arrayList.add(obj);
                    }
                }
            } else {
                arrayList = null;
            }
            if (arrayList == null || arrayList.size() != 0) {
                List<String> terms2 = rule.getTerms();
                if (terms2 == null || (strS0 = CollectionsKt.s0(terms2, "\n", null, null, 0, null, null, 62, null)) == null) {
                    strS0 = "";
                }
                yo.d dVar = (yo.d) rewardsCenterFragment.getMViewBinding();
                if (dVar != null && (appCompatTextView = dVar.f76316r) != null) {
                    appCompatTextView.setText(strS0);
                }
            }
        }
        return Unit.f64096a;
    }

    public static final Unit f1(RewardsCenterFragment rewardsCenterFragment, Boolean bool) {
        if (bool.booleanValue()) {
            rewardsCenterFragment.showLoading();
        } else {
            rewardsCenterFragment.P0();
        }
        return Unit.f64096a;
    }

    public static final Unit g1(RewardsCenterFragment rewardsCenterFragment, Pair pair) {
        String string;
        if (pair == null) {
            return Unit.f64096a;
        }
        rewardsCenterFragment.T0().m().n(null);
        if (Intrinsics.c((String) pair.getFirst(), "400")) {
            string = (String) pair.getSecond();
            if (string == null) {
                string = rewardsCenterFragment.getString(R$string.claim_failed);
                Intrinsics.g(string, "getString(...)");
            }
        } else {
            string = rewardsCenterFragment.getString(R$string.claim_failed);
            Intrinsics.g(string, "getString(...)");
        }
        com.transsion.rewardscenter.utils.p.a(false, string);
        return Unit.f64096a;
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit h1(RewardsCenterFragment rewardsCenterFragment, Pair pair) {
        PrizeListView prizeListView;
        PrizeListView prizeListView2;
        if (pair == null) {
            return Unit.f64096a;
        }
        String str = (String) pair.component1();
        boolean zBooleanValue = ((Boolean) pair.component2()).booleanValue();
        rewardsCenterFragment.T0().n().n(null);
        if (zBooleanValue) {
            yo.d dVar = (yo.d) rewardsCenterFragment.getMViewBinding();
            if (dVar != null && (prizeListView2 = dVar.f76307i) != null) {
                prizeListView2.markClaimed(str);
            }
            String string = rewardsCenterFragment.getString(R$string.success_claim);
            Intrinsics.g(string, "getString(...)");
            com.transsion.rewardscenter.utils.p.a(true, string);
        } else {
            yo.d dVar2 = (yo.d) rewardsCenterFragment.getMViewBinding();
            if (dVar2 != null && (prizeListView = dVar2.f76307i) != null) {
                prizeListView.markTopUp(str);
            }
        }
        bp.a aVar = (bp.a) TheRouter.d(bp.a.class, new Object[0]);
        if (aVar != null) {
            aVar.b();
        }
        return Unit.f64096a;
    }

    public static final Unit i1(RewardsCenterFragment rewardsCenterFragment, Lottery lottery) {
        rewardsCenterFragment.u1(lottery);
        return Unit.f64096a;
    }

    public static final Unit j1(RewardsCenterFragment rewardsCenterFragment, User user) {
        if (user != null) {
            rewardsCenterFragment.x1(user);
        }
        return Unit.f64096a;
    }

    private final void l1(String prizeId) {
        Intent intentL = TheRouter.c("/rewards/claim_reward").l(requireContext());
        intentL.putExtra("prize_id", prizeId);
        this.claimRewardLauncher.a(intentL);
    }

    public static final qx.a loginApi_delegate$lambda$1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final BaseMemberLoadingDialog m1() {
        return new BaseMemberLoadingDialog();
    }

    private final void n1() {
        User userW = T0().w();
        if (userW != null) {
            if (userW.isLogin()) {
                z1(TopUpType.BANNER, this.bannerSkuPoint);
            } else {
                y1();
            }
            HashMap map = new HashMap();
            map.put("is_login", userW.isLogin() ? "1" : "0");
            com.transsion.rewardscenter.utils.q.a("banner", map);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit o1(RewardsCenterFragment rewardsCenterFragment, String it) {
        RewardsCenterTaskView rewardsCenterTaskView;
        Intrinsics.h(it, "it");
        yo.d dVar = (yo.d) rewardsCenterFragment.getMViewBinding();
        if (dVar != null && (rewardsCenterTaskView = dVar.f76312n) != null) {
            rewardsCenterTaskView.onPackageInstall(it);
        }
        return Unit.f64096a;
    }

    private final void p1() {
        Navigator.x(TheRouter.c("/member/point_history"), requireContext(), null, 2, null);
    }

    public static final Unit r1(RewardsCenterFragment rewardsCenterFragment) {
        rewardsCenterFragment.P0();
        return Unit.f64096a;
    }

    private final void s1() {
        FragmentManager supportFragmentManager;
        FragmentActivity activity = getActivity();
        if (activity == null || (supportFragmentManager = activity.getSupportFragmentManager()) == null) {
            return;
        }
        supportFragmentManager.G1("treasure_wheel_result_dismissed", getViewLifecycleOwner(), new androidx.fragment.app.t() {
            @Override
            public final void a(String str, Bundle bundle) {
                RewardsCenterFragment.t1(this.f49252a, str, bundle);
            }
        });
    }

    public static final void t1(RewardsCenterFragment rewardsCenterFragment, String str, Bundle bundle) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(bundle, "<unused var>");
        wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "--> TreasureWheelStateDialog dismissed", false, 4, null);
        RewardsCenterModel.j(rewardsCenterFragment.T0(), null, 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void u1(Lottery lottery) {
        ConstraintLayout constraintLayout;
        List<DrawResult> prizeItems;
        PrizeListView prizeListView;
        String imageUrl;
        AppCompatImageView appCompatImageView;
        CardView cardView;
        PrizeFlowView prizeFlowView;
        PrizeFlowView prizeFlowView2;
        if (lottery != null) {
            List<PrizeFlow> prizeFlows = lottery.getPrizeFlows();
            if (prizeFlows != null && !prizeFlows.isEmpty()) {
                yo.d dVar = (yo.d) getMViewBinding();
                if (dVar != null && (prizeFlowView2 = dVar.f76304f) != null) {
                    prizeFlowView2.setPrizeFlows(prizeFlows);
                }
                yo.d dVar2 = (yo.d) getMViewBinding();
                if (dVar2 != null && (prizeFlowView = dVar2.f76304f) != null) {
                    uf.c.k(prizeFlowView);
                }
            }
            Banner banner = lottery.getBanner();
            if (banner != null && (imageUrl = banner.getImageUrl()) != null && !StringsKt.q0(imageUrl) && banner.getEnable()) {
                this.bannerSkuPoint = banner.getSku();
                yo.d dVar3 = (yo.d) getMViewBinding();
                if (dVar3 != null && (cardView = dVar3.f76305g) != null) {
                    uf.c.k(cardView);
                    ViewGroup.LayoutParams layoutParams = cardView.getLayoutParams();
                    layoutParams.height = 0;
                    cardView.setLayoutParams(layoutParams);
                }
                yo.d dVar4 = (yo.d) getMViewBinding();
                if (dVar4 != null && (appCompatImageView = dVar4.f76301c) != null) {
                    Glide.with(this).load2(banner.getImageUrl()).listener(new c()).into(appCompatImageView);
                }
            }
            UserPrize userPrize = lottery.getUserPrize();
            if (userPrize != null) {
                yo.d dVar5 = (yo.d) getMViewBinding();
                if (dVar5 != null && (prizeListView = dVar5.f76307i) != null) {
                    prizeListView.setData(userPrize);
                }
                if (userPrize.getDrawChance() == null && ((prizeItems = userPrize.getPrizeItems()) == null || prizeItems.isEmpty())) {
                    return;
                }
                yo.d dVar6 = (yo.d) getMViewBinding();
                if (dVar6 != null && (constraintLayout = dVar6.f76308j) != null) {
                    uf.c.k(constraintLayout);
                }
                com.transsion.rewardscenter.utils.q.b("prize_list");
            }
        }
    }

    private final void v1() {
        getParentFragmentManager().G1("phone_bottom_sheet_result", getViewLifecycleOwner(), new androidx.fragment.app.t() {
            @Override
            public final void a(String str, Bundle bundle) {
                RewardsCenterFragment.w1(this.f49258a, str, bundle);
            }
        });
    }

    public static final void w1(RewardsCenterFragment rewardsCenterFragment, String str, Bundle bundle) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(bundle, "bundle");
        rewardsCenterFragment.Q0();
        TopUpType topUpType = TopUpType.BANNER;
        int i10 = bundle.getInt(EventConstants.KEY_SOURCE, topUpType.getValue());
        String string = bundle.getString("number");
        if (string == null) {
            string = "";
        }
        String string2 = bundle.getString("cc");
        if (string2 == null) {
            string2 = "";
        }
        String string3 = bundle.getString("iso");
        String str2 = string3 != null ? string3 : "";
        com.transsion.rewardscenter.utils.b.f49288a.g(string2, str2, string);
        if (i10 != topUpType.getValue() && i10 != TopUpType.REDEEM.getValue()) {
            if (i10 == TopUpType.PHONE_CREDIT.getValue()) {
                rewardsCenterFragment.T0().B(string2, string, str2);
            }
        } else {
            RewardsCenterModel rewardsCenterModelT0 = rewardsCenterFragment.T0();
            FragmentActivity activity = rewardsCenterFragment.getActivity();
            Intrinsics.f(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            rewardsCenterModelT0.y((AppCompatActivity) activity, string);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void x1(User info) {
        String nickname;
        yo.d dVar;
        yo.h hVar;
        ShapeableImageView shapeableImageView;
        yo.h hVar2;
        AppCompatTextView appCompatTextView;
        yo.h hVar3;
        AppCompatTextView appCompatTextView2;
        yo.d dVar2 = (yo.d) getMViewBinding();
        if (dVar2 != null && (hVar3 = dVar2.f76303e) != null && (appCompatTextView2 = hVar3.f76346g) != null) {
            appCompatTextView2.setText(R0(info.getPoint()));
        }
        if (info.isLogin()) {
            nickname = info.getNickname();
            if (nickname == null) {
                nickname = "";
            }
        } else {
            nickname = "Log in";
        }
        String strM = androidx.core.text.a.c().m(nickname, androidx.core.text.t.f7944a);
        yo.d dVar3 = (yo.d) getMViewBinding();
        if (dVar3 != null && (hVar2 = dVar3.f76303e) != null && (appCompatTextView = hVar2.f76345f) != null) {
            appCompatTextView.setText(strM);
        }
        String avatar = info.getAvatar();
        if (avatar == null || (dVar = (yo.d) getMViewBinding()) == null || (hVar = dVar.f76303e) == null || (shapeableImageView = hVar.f76342c) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        aVar.m(contextRequireContext).g(avatar).i(R$mipmap.profile_default_avatar).d(shapeableImageView);
    }

    private final void y1() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            qx.a loginApi = getLoginApi();
            if (loginApi != null) {
                loginApi.j(this);
            }
            qx.a loginApi2 = getLoginApi();
            if (loginApi2 != null) {
                loginApi2.e(this);
            }
            qx.a loginApi3 = getLoginApi();
            if (loginApi3 != null) {
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                loginApi3.k(contextRequireContext);
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public final void P0() {
        try {
            Result.Companion companion = Result.INSTANCE;
            S0().dismissAllowingStateLoss();
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public yo.d getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        yo.d dVarC = yo.d.c(inflater);
        Intrinsics.g(dVarC, "inflate(...)");
        return dVarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initListener() {
        yo.h hVar;
        yo.h hVar2;
        yo.h hVar3;
        AppCompatTextView appCompatTextView;
        AppCompatImageView appCompatImageView;
        yo.h hVar4;
        AppCompatTextView appCompatTextView2;
        yo.h hVar5;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar != null && (appCompatImageView3 = dVar.f76300b) != null) {
            uf.c.c(appCompatImageView3, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.V0(this.f49254a, (View) obj);
                }
            }, 1, null);
        }
        yo.d dVar2 = (yo.d) getMViewBinding();
        if (dVar2 != null && (hVar5 = dVar2.f76303e) != null && (appCompatImageView2 = hVar5.f76341b) != null) {
            uf.c.c(appCompatImageView2, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.W0(this.f49260a, (View) obj);
                }
            }, 1, null);
        }
        yo.d dVar3 = (yo.d) getMViewBinding();
        if (dVar3 != null && (hVar4 = dVar3.f76303e) != null && (appCompatTextView2 = hVar4.f76346g) != null) {
            uf.c.c(appCompatTextView2, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.X0(this.f49261a, (View) obj);
                }
            }, 1, null);
        }
        yo.d dVar4 = (yo.d) getMViewBinding();
        if (dVar4 != null && (appCompatImageView = dVar4.f76301c) != null) {
            uf.c.c(appCompatImageView, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.Y0(this.f49263a, (View) obj);
                }
            }, 1, null);
        }
        yo.d dVar5 = (yo.d) getMViewBinding();
        if (dVar5 != null && (hVar3 = dVar5.f76303e) != null && (appCompatTextView = hVar3.f76344e) != null) {
            uf.c.c(appCompatTextView, 0L, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RewardsCenterFragment.Z0(this.f49265a, (View) obj);
                }
            }, 1, null);
        }
        com.transsion.baseui.util.o oVar = com.transsion.baseui.util.o.f42360a;
        yo.d dVar6 = (yo.d) getMViewBinding();
        ShapeableImageView shapeableImageView = null;
        AppCompatTextView appCompatTextView3 = (dVar6 == null || (hVar2 = dVar6.f76303e) == null) ? null : hVar2.f76345f;
        yo.d dVar7 = (yo.d) getMViewBinding();
        if (dVar7 != null && (hVar = dVar7.f76303e) != null) {
            shapeableImageView = hVar.f76342c;
        }
        oVar.a(new View[]{appCompatTextView3, shapeableImageView}, new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                RewardsCenterFragment.a1(this.f49267a, view);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        PrizeListView prizeListView;
        RewardsCenterTaskView rewardsCenterTaskView;
        RedeemView redeemView;
        super.initViewData();
        androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        RewardsCenterModel rewardsCenterModelT0 = T0();
        WeakReference weakReference = new WeakReference(this);
        androidx.p009lifecycle.u viewLifecycleOwner2 = getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner2, "getViewLifecycleOwner(...)");
        zo.a aVar = new zo.a(viewLifecycleOwner, rewardsCenterModelT0, weakReference, androidx.p009lifecycle.v.a(viewLifecycleOwner2));
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar != null && (redeemView = dVar.f76310l) != null) {
            redeemView.setCtxConfig(aVar);
        }
        yo.d dVar2 = (yo.d) getMViewBinding();
        if (dVar2 != null && (rewardsCenterTaskView = dVar2.f76312n) != null) {
            rewardsCenterTaskView.setCtxConfig(aVar);
        }
        yo.d dVar3 = (yo.d) getMViewBinding();
        if (dVar3 == null || (prizeListView = dVar3.f76307i) == null) {
            return;
        }
        prizeListView.setCtxConfig(aVar);
    }

    @Override
    public void initViewModel() {
        T0().p().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.i1(this.f49278a, (Lottery) obj);
            }
        }));
        T0().x().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.j1(this.f49279a, (User) obj);
            }
        }));
        T0().r().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.b1(this.f49280a, (Redeem) obj);
            }
        }));
        T0().v().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.c1(this.f49242a, (Task) obj);
            }
        }));
        T0().t().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.e1(this.f49244a, (Rule) obj);
            }
        }));
        T0().o().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.f1(this.f49246a, (Boolean) obj);
            }
        }));
        T0().m().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.g1(this.f49248a, (Pair) obj);
            }
        }));
        T0().n().j(getViewLifecycleOwner(), new b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.h1(this.f49250a, (Pair) obj);
            }
        }));
        v1();
        s1();
    }

    public final void k1(DrawResult drawResult) {
        Intrinsics.h(drawResult, "drawResult");
        User userW = T0().w();
        if (userW == null || !userW.isLogin()) {
            y1();
            return;
        }
        String drawResultId = drawResult.getDrawResultId();
        if (drawResultId == null) {
            String string = getString(com.tn.lib.widget.R$string.common_failed);
            Intrinsics.g(string, "getString(...)");
            com.transsion.rewardscenter.utils.p.a(false, string);
            return;
        }
        T0().A(drawResultId);
        String prizeType = drawResult.getPrizeType();
        if (prizeType != null) {
            int iHashCode = prizeType.hashCode();
            if (iHashCode == -277650678) {
                if (prizeType.equals("PHONE_CREDIT")) {
                    A1(this, TopUpType.PHONE_CREDIT, null, 2, null);
                }
            } else if (iHashCode == -206450473) {
                if (prizeType.equals("PHYSICAL")) {
                    l1(drawResultId);
                }
            } else if (iHashCode == 84989 && prizeType.equals("VIP")) {
                T0().f(drawResultId);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected View n0() {
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar != null) {
            return dVar.f76315q;
        }
        return null;
    }

    @Override
    public qi.b newLogViewConfig() {
        UserInfo userInfoI;
        String userId = null;
        qi.b bVar = new qi.b("rewards_center", false, 2, null);
        bVar.g().put("user_status", "me");
        HashMap mapG = bVar.g();
        qx.a loginApi = getLoginApi();
        if (loginApi != null && (userInfoI = loginApi.i()) != null) {
            userId = userInfoI.getUserId();
        }
        mapG.put("user_id", String.valueOf(userId));
        return bVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected View o0() {
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar != null) {
            return dVar.f76313o;
        }
        return null;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        HashMap mapG;
        HashMap mapG2;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.source = arguments.getString(EventConstants.KEY_SOURCE);
            this.sceneId = arguments.getString("scene_id");
            this.isFromAdTask = arguments.getBoolean("is_from_ad_task", false);
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
            }
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            }
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null) {
            logViewConfig3.k(true);
        }
        AppInstallBroadcastHelper appInstallBroadcastHelper = AppInstallBroadcastHelper.f49281a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        appInstallBroadcastHelper.a(contextRequireContext, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RewardsCenterFragment.o1(this.f49276a, (String) obj);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onDestroy() {
        Unit unit;
        RewardsCenterTaskView rewardsCenterTaskView;
        PrizeFlowView prizeFlowView;
        super.onDestroy();
        AppInstallBroadcastHelper appInstallBroadcastHelper = AppInstallBroadcastHelper.f49281a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        appInstallBroadcastHelper.b(contextRequireContext);
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar != null && (prizeFlowView = dVar.f76304f) != null) {
            prizeFlowView.destroy();
        }
        yo.d dVar2 = (yo.d) getMViewBinding();
        if (dVar2 != null && (rewardsCenterTaskView = dVar2.f76312n) != null) {
            rewardsCenterTaskView.destroy();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            qx.a loginApi = getLoginApi();
            if (loginApi != null) {
                loginApi.j(this);
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        RewardsCenterModel.j(T0(), null, 1, null);
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onPause() {
        RewardsCenterTaskView rewardsCenterTaskView;
        super.onPause();
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar == null || (rewardsCenterTaskView = dVar.f76312n) == null) {
            return;
        }
        rewardsCenterTaskView.onPause();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onResume() {
        RewardsCenterTaskView rewardsCenterTaskView;
        super.onResume();
        if (this.isFirstResume) {
            this.isFirstResume = false;
            q1();
        }
        yo.d dVar = (yo.d) getMViewBinding();
        if (dVar == null || (rewardsCenterTaskView = dVar.f76312n) == null) {
            return;
        }
        rewardsCenterTaskView.onResume();
    }

    @Override
    public void onUpdateUserInfo(UserInfo userInfo) {
        qx.b.a.c(this, userInfo);
    }

    public final void q1() {
        showLoading();
        T0().i(new Function0() {
            @Override
            public final Object invoke() {
                return RewardsCenterFragment.r1(this.f49277a);
            }
        });
    }

    @Override
    public void retryLoadData() {
    }

    public final void showLoading() {
        S0().l0(this, "LoadingDialog");
    }

    public final void z1(TopUpType topUpType, SkuPoint skuPoint) {
        Intrinsics.h(topUpType, "topUpType");
        if (getParentFragmentManager().k0("PhoneBottomSheetFragment") != null) {
            return;
        }
        PhoneBottomSheetFragment.INSTANCE.a(topUpType, skuPoint).show(getParentFragmentManager(), "PhoneBottomSheetFragment");
    }
}
