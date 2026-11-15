package com.transsion.member;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.OnBackPressedDispatcher;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.layoutmanager.NpaGridLayoutManager;
import com.transsion.baseui.dialog.BaseMemberLoadingDialog;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.GradientBorderView;
import com.transsion.member.bean.RedeemResult;
import com.transsion.member.dialog.MemberPromoCodeDialog;
import com.transsion.member.widget.PointView;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberInfo;
import com.transsion.memberapi.MemberSource;
import com.transsion.memberapi.MemberTaskItem;
import com.transsion.memberapi.MemberTaskItemCheckInInfo;
import com.transsion.memberapi.MemberTaskItemInvite;
import com.transsion.memberapi.MemberTaskRewardInfo;
import com.transsion.memberapi.MemberTaskSubmitCheckInRes;
import com.transsion.memberapi.MembershipDetailType;
import com.transsion.memberapi.PointInfo;
import com.transsion.memberapi.SkuCategory;
import com.transsion.memberapi.SkuData;
import com.transsion.memberapi.SkuItem;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.o0;

@Metadata(d1 = {"\u0000Î\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000f\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\b\u0007\u0018\u0000 £\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u00042\u00020\u0005:\u0001hB\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\t\u0010\u0007J\u0019\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u0010\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0012\u0010\u0007J\u0017\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u0019\u001a\u00020\b2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\bH\u0002¢\u0006\u0004\b\u001b\u0010\u0007J\u0017\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u001d\u0010\"\u001a\u00020\b2\f\u0010!\u001a\b\u0012\u0004\u0012\u00020\u000e0 H\u0002¢\u0006\u0004\b\"\u0010#J!\u0010'\u001a\u00020\b2\u0006\u0010%\u001a\u00020$2\b\b\u0002\u0010&\u001a\u00020\u0013H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\bH\u0002¢\u0006\u0004\b)\u0010\u0007J\u000f\u0010*\u001a\u00020\bH\u0002¢\u0006\u0004\b*\u0010\u0007J\u000f\u0010+\u001a\u00020\u0013H\u0002¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\bH\u0002¢\u0006\u0004\b-\u0010\u0007J#\u00100\u001a\u00020\b2\u0006\u0010.\u001a\u00020$2\n\b\u0002\u0010/\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\b2\u0006\u0010/\u001a\u00020$H\u0002¢\u0006\u0004\b2\u00103J+\u00107\u001a\u00020\b2\u0006\u0010/\u001a\u00020$2\b\u00105\u001a\u0004\u0018\u0001042\b\u00106\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b7\u00108J\u0017\u0010;\u001a\u00020\b2\u0006\u0010:\u001a\u000209H\u0002¢\u0006\u0004\b;\u0010<J\u001f\u0010?\u001a\u0002042\u0006\u0010=\u001a\u0002042\u0006\u0010>\u001a\u000209H\u0002¢\u0006\u0004\b?\u0010@J\u0017\u0010C\u001a\u00020\u00022\u0006\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bC\u0010DJ\u000f\u0010E\u001a\u00020$H\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\bH\u0016¢\u0006\u0004\bG\u0010\u0007J\u000f\u0010H\u001a\u00020\bH\u0016¢\u0006\u0004\bH\u0010\u0007J\u0011\u0010J\u001a\u0004\u0018\u00010IH\u0016¢\u0006\u0004\bJ\u0010KJ\u000f\u0010L\u001a\u00020\u0013H\u0016¢\u0006\u0004\bL\u0010,J\u000f\u0010M\u001a\u00020\bH\u0016¢\u0006\u0004\bM\u0010\u0007J\u0019\u0010P\u001a\u00020\b2\b\u0010O\u001a\u0004\u0018\u00010NH\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\bH\u0016¢\u0006\u0004\bR\u0010\u0007J\u000f\u0010S\u001a\u00020\bH\u0016¢\u0006\u0004\bS\u0010\u0007J\u0017\u0010U\u001a\u00020\b2\u0006\u0010T\u001a\u00020\u0013H\u0016¢\u0006\u0004\bU\u0010\u0016J\r\u0010V\u001a\u00020\b¢\u0006\u0004\bV\u0010\u0007J\r\u0010W\u001a\u00020\b¢\u0006\u0004\bW\u0010\u0007J\u0017\u0010Y\u001a\u00020\b2\u0006\u0010X\u001a\u00020\nH\u0016¢\u0006\u0004\bY\u0010\rJ\u000f\u0010Z\u001a\u00020\bH\u0016¢\u0006\u0004\bZ\u0010\u0007J\u0017\u0010[\u001a\u00020\b2\u0006\u0010X\u001a\u00020\nH\u0016¢\u0006\u0004\b[\u0010\rJ\u0015\u0010]\u001a\u00020\b2\u0006\u0010\\\u001a\u000204¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\bH\u0016¢\u0006\u0004\b_\u0010\u0007J\u000f\u0010`\u001a\u00020\bH\u0016¢\u0006\u0004\b`\u0010\u0007J\u0019\u0010c\u001a\u00020\b2\b\u0010b\u001a\u0004\u0018\u00010aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\bH\u0016¢\u0006\u0004\be\u0010\u0007J\u000f\u0010f\u001a\u00020\bH\u0016¢\u0006\u0004\bf\u0010\u0007R$\u0010n\u001a\u0004\u0018\u00010g8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR$\u0010s\u001a\u0004\u0018\u00010$8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bo\u0010p\u001a\u0004\bq\u0010F\"\u0004\br\u00103R\u0018\u0010v\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010uR\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u001b\u0010~\u001a\u00020y8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bz\u0010{\u001a\u0004\b|\u0010}R\"\u0010\u0083\u0001\u001a\u000b\u0012\u0005\u0012\u00030\u0080\u0001\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\"\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0090\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0091\u0001\u0010{\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001R \u0010\u0099\u0001\u001a\u00030\u0095\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0096\u0001\u0010{\u001a\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0019\u0010\u009c\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0019\u0010\u009e\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009b\u0001R\u0019\u0010 \u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010\u009b\u0001R\u0019\u0010¢\u0001\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010\u009b\u0001¨\u0006¤\u0001"}, d2 = {"Lcom/transsion/member/MemberFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lgm/i;", "Landroid/view/View$OnClickListener;", "Lqx/b;", "Lcom/transsion/baselib/report/g;", "<init>", "()V", "", "h1", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "w1", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "Lcom/transsion/memberapi/SkuItem;", "skuItem", "g1", "(Lcom/transsion/memberapi/SkuItem;)V", "I0", "", "isAutoRenew", "f1", "(Z)V", "Lcom/transsion/memberapi/MemberDetail;", "memberDetail", "n1", "(Lcom/transsion/memberapi/MemberDetail;)V", "i1", "Lcom/transsion/memberapi/SkuData;", "data", "p1", "(Lcom/transsion/memberapi/SkuData;)V", "", "redeemList", "j1", "(Ljava/util/List;)V", "", "productId", "isSubscription", "u1", "(Ljava/lang/String;Z)V", "P0", "L0", "d1", "()Z", "H0", "optType", "skuId", "k1", "(Ljava/lang/String;Ljava/lang/String;)V", "m1", "(Ljava/lang/String;)V", "", "code", "message", "l1", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V", "", "alpha", "v1", "(F)V", TtmlNode.ATTR_TTS_COLOR, "fraction", "G0", "(IF)I", "Landroid/view/LayoutInflater;", "inflater", "O0", "(Landroid/view/LayoutInflater;)Lgm/i;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "loadDefaultData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "isShowPageStateLayoutTitle", "initViewModel", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onPause", "onResume", "hidden", "onHiddenChanged", "showLoading", "K0", "user", "onLogin", "onLogout", "onUpdateUserInfo", "points", "t1", "(I)V", "initListener", "retryLoadData", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "logResume", "onDestroy", "Lcom/transsion/memberapi/MemberSource;", "a", "Lcom/transsion/memberapi/MemberSource;", "getSource", "()Lcom/transsion/memberapi/MemberSource;", "s1", "(Lcom/transsion/memberapi/MemberSource;)V", EventConstants.KEY_SOURCE, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Ljava/lang/String;", "getSceneId", "o1", "sceneId", "c", "Lcom/transsnet/loginapi/bean/UserInfo;", "mUserInfo", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/memberapi/MemberDetail;", "Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "e", "Lkotlin/Lazy;", "M0", "()Lcom/transsion/baseui/dialog/BaseMemberLoadingDialog;", "mLoadingDialog", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "f", "Landroidx/activity/result/b;", "loginLaunch", "Lcom/transsion/member/adapter/h;", "g", "Lcom/transsion/member/adapter/h;", "taskAdapter", "Lcom/transsion/member/adapter/g;", "h", "Lcom/transsion/member/adapter/g;", "skuListAdapter", "Lcom/transsion/member/adapter/e;", "i", "Lcom/transsion/member/adapter/e;", "redeemListAdapter", "Lqx/a;", "j", "getMLoginApi", "()Lqx/a;", "mLoginApi", "Lcom/transsion/member/MemberViewModel;", CampaignEx.JSON_KEY_AD_K, "N0", "()Lcom/transsion/member/MemberViewModel;", "memberViewModel", "l", "Z", "isFirstResume", "m", "shouldRefreshPurchasedInfo", "n", "isPremium", "o", "isSelf", TtmlNode.TAG_P, "Member_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MemberFragment extends PageStatusFragment<gm.i> implements View.OnClickListener, qx.b, com.transsion.baselib.report.g {

    public static final Companion INSTANCE = new Companion(null);

    public static final int f44922q = 8;

    private MemberSource source;

    private UserInfo mUserInfo;

    private MemberDetail memberDetail;

    private androidx.activity.result.b loginLaunch;

    private com.transsion.member.adapter.h taskAdapter;

    private com.transsion.member.adapter.g skuListAdapter;

    private com.transsion.member.adapter.e redeemListAdapter;

    private final Lazy memberViewModel;

    private boolean isFirstResume;

    private boolean shouldRefreshPurchasedInfo;

    private boolean isPremium;

    private boolean isSelf;

    private String sceneId = "";

    private final Lazy mLoadingDialog = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MemberFragment.e1();
        }
    });

    private final Lazy mLoginApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MemberFragment.mLoginApi_delegate$lambda$1();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MemberFragment a(MemberSource memberSource, String str) {
            MemberFragment memberFragment = new MemberFragment();
            memberFragment.s1(memberSource);
            memberFragment.o1(str);
            return memberFragment;
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f44938a;

        public static final int[] f44939b;

        static {
            int[] iArr = new int[MembershipDetailType.values().length];
            try {
                iArr[MembershipDetailType.TRIAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MembershipDetailType.SUBSCRIPTION_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MembershipDetailType.FINANCIAL_MEMBER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MembershipDetailType.EXPIRED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f44938a = iArr;
            int[] iArr2 = new int[MemberSource.values().length];
            try {
                iArr2[MemberSource.SOURCE_LANDSCAPE_PLAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[MemberSource.SOURCE_HDDL.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[MemberSource.SOURCE_AD_DIALOG.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[MemberSource.SOURCE_DOWNLOAD_DIALOG.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[MemberSource.SOURCE_OTHER_DOWNLOAD_DIALOG.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[MemberSource.SOURCE_MULTI_DL.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            f44939b = iArr2;
        }
    }

    public static final class c implements Function0 {
        c() {
        }

        public void a() {
            MemberFragment.this.h1();
        }

        @Override
        public Object invoke() {
            a();
            return Unit.f64096a;
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f44941a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f44941a = function;
        }

        @Override
        public final Function a() {
            return this.f44941a;
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
            this.f44941a.invoke(obj);
        }
    }

    public MemberFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.memberViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MemberViewModel.class), new Function0<x0>() {
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
        this.isFirstResume = true;
    }

    private final int G0(int color, float fraction) {
        return Color.argb((int) (Color.alpha(color) * fraction), Color.red(color), Color.green(color), Color.blue(color));
    }

    private final void H0() {
        ImmersionBar.with(this).statusBarDarkFont(false).init();
    }

    private final void I0() {
        Intent intent;
        Intent intent2;
        RecyclerView recyclerView;
        FragmentActivity activity = getActivity();
        if (activity == null || (intent = activity.getIntent()) == null || !intent.getBooleanExtra("extra_member_scroll_bottom", false)) {
            return;
        }
        gm.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView = mViewBinding.f61155t) != null) {
            recyclerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    MemberFragment.J0(this.f45019a);
                }
            }, 500L);
        }
        FragmentActivity activity2 = getActivity();
        if (activity2 == null || (intent2 = activity2.getIntent()) == null) {
            return;
        }
        intent2.removeExtra("extra_member_scroll_bottom");
    }

    public static final void J0(MemberFragment memberFragment) {
        NestedScrollView nestedScrollView;
        gm.i mViewBinding = memberFragment.getMViewBinding();
        if (mViewBinding == null || (nestedScrollView = mViewBinding.f61156u) == null) {
            return;
        }
        nestedScrollView.fullScroll(130);
    }

    private final void L0() {
        ConstraintLayout constraintLayout;
        gm.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f61158w) != null) {
            uf.c.e(constraintLayout);
        }
        FragmentActivity activity = getActivity();
        MemberActivity memberActivity = activity instanceof MemberActivity ? (MemberActivity) activity : null;
        if (memberActivity != null) {
            memberActivity.t0();
        }
    }

    private final BaseMemberLoadingDialog M0() {
        return (BaseMemberLoadingDialog) this.mLoadingDialog.getValue();
    }

    private final MemberViewModel N0() {
        return (MemberViewModel) this.memberViewModel.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Code duplicated, block: B:7:0x0012  */
    private final void P0() {
        String string;
        String string2;
        if (this.isPremium) {
            Context context = getContext();
            if (context != null) {
                string = context.getString(R$string.member_successfully_renewed);
            } else {
                string = null;
            }
        } else {
            Context context2 = getContext();
            if (context2 != null) {
                string = context2.getString(R$string.member_successfully_upgraded_to_premium);
            } else {
                string = null;
            }
        }
        MemberSource memberSource = this.source;
        switch (memberSource == null ? -1 : b.f44939b[memberSource.ordinal()]) {
            case 1:
                Context context3 = getContext();
                if (context3 == null) {
                    string2 = null;
                } else {
                    string2 = context3.getString(R$string.member_back_to_watch);
                }
                break;
            case 2:
                Context context4 = getContext();
                if (context4 == null) {
                    string2 = null;
                } else {
                    string2 = context4.getString(R$string.member_back);
                }
                break;
            case 3:
            case 4:
            case 5:
            case 6:
                Context context5 = getContext();
                if (context5 == null) {
                    string2 = null;
                } else {
                    string2 = context5.getString(R$string.member_back_to_download);
                }
                break;
            default:
                if (!(getActivity() instanceof MemberActivity)) {
                    Context context6 = getContext();
                    if (context6 == null) {
                        string2 = null;
                    } else {
                        string2 = context6.getString(R$string.member_explore_now);
                    }
                } else {
                    Context context7 = getContext();
                    if (context7 == null) {
                        string2 = null;
                    } else {
                        string2 = context7.getString(R$string.member_back);
                    }
                }
                break;
        }
        wf.a.C0922a.g(wf.a.f74274a, "The source is " + this.source + ", title: " + string + ", buttonTitle: " + string2, false, 2, null);
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MemberFragment$handlePurchaseSucceed$1(this, string, string2, null), 3, null);
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            im.b.a.a(bVar, null, 1, null);
        }
        ObserveLoginAction.f44995c.a().i();
    }

    public static final void Q0(MemberFragment memberFragment, View view) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        FragmentActivity activity = memberFragment.getActivity();
        if (activity == null || (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) == null) {
            return;
        }
        onBackPressedDispatcher.l();
    }

    public static final void R0(MemberFragment memberFragment, View view) {
        Navigator.x(TheRouter.c("/member/point_history"), memberFragment.requireContext(), null, 2, null);
    }

    public static final void S0(MemberFragment memberFragment, View view) {
        Navigator.x(TheRouter.c("/member/point_history"), memberFragment.requireContext(), null, 2, null);
    }

    public static final Unit T0(View it) {
        Intrinsics.h(it, "it");
        Navigator.x(TheRouter.c("/rewards/center").K(EventConstants.KEY_SOURCE, "memberdetail"), null, null, 3, null);
        return Unit.f64096a;
    }

    public static final void U0(ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            wf.a.C0922a.f(wf.a.f74274a, "loginStatus", "登录成功", false, 4, null);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "loginStatus", "登录失败或者取消", false, 4, null);
        }
    }

    public static final void V0(MemberFragment memberFragment, View view) {
        MemberPromoCodeDialog memberPromoCodeDialogA = MemberPromoCodeDialog.INSTANCE.a(memberFragment.new c());
        FragmentManager childFragmentManager = memberFragment.getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        memberPromoCodeDialogA.show(childFragmentManager, "MemberPromoCodeDialog");
    }

    public static final void W0(gm.i iVar, MemberFragment memberFragment, View view, int i10, int i11, int i12, int i13) {
        memberFragment.v1(Math.abs(i11 * 1.0f) / (iVar.f61158w.getMeasuredHeight() < 1 ? com.blankj.utilcode.util.a0.a(48.0f) : iVar.f61158w.getMeasuredHeight()));
    }

    public static final Unit X0(MemberFragment memberFragment, SkuData skuData) {
        if (skuData != null) {
            memberFragment.p1(skuData);
        }
        memberFragment.K0();
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x0019  */
    public static final Unit Y0(MemberFragment memberFragment, RedeemResult redeemResult) {
        String string;
        String str;
        if (redeemResult != null) {
            int vipDurationDays = redeemResult.getVipDurationDays();
            if (vipDurationDays == 1) {
                Context context = memberFragment.getContext();
                if (context != null) {
                    string = context.getString(R$string.member_claimed_succeed_1_day);
                    str = string;
                } else {
                    str = null;
                }
            } else {
                Context context2 = memberFragment.getContext();
                if (context2 != null) {
                    string = context2.getString(R$string.member_claimed_succeed_days, Integer.valueOf(vipDurationDays));
                    str = string;
                } else {
                    str = null;
                }
            }
            if (str != null) {
                fh.b.f60176a.g(R$layout.claim_succeed_layout, str, (24 & 4) != 0 ? 0 : 80, (24 & 8) != 0 ? 0 : 0, (24 & 16) != 0 ? 0 : com.blankj.utilcode.util.a0.a(66.0f));
            }
            memberFragment.h1();
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null) {
                im.b.a.a(bVar, null, 1, null);
            }
        } else {
            com.tn.lib.widget.toast.core.h.f40484a.k(com.tn.lib.widget.R$string.failed_toast);
        }
        memberFragment.K0();
        return Unit.f64096a;
    }

    public static final Unit Z0(MemberFragment memberFragment, List list) {
        com.transsion.member.adapter.h hVar = memberFragment.taskAdapter;
        if (hVar != null) {
            hVar.n1(list);
        }
        memberFragment.I0();
        return Unit.f64096a;
    }

    public static final Unit a1(MemberFragment memberFragment, im.e eVar) {
        List<Object> data;
        Object obj;
        Object next;
        List<MemberTaskItemInvite> inviteList;
        memberFragment.h1();
        com.transsion.member.adapter.h hVar = memberFragment.taskAdapter;
        if (hVar != null && (data = hVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (true) {
                obj = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 2) {
                    break;
                }
            }
            MemberTaskItem memberTaskItem = (MemberTaskItem) next;
            if (memberTaskItem != null) {
                int iA = eVar.a();
                String strD = eVar.d();
                MemberTaskRewardInfo memberTaskRewardInfoB = eVar.b();
                if (memberTaskRewardInfoB != null) {
                    if (Intrinsics.c(strD, "0")) {
                        List<MemberTaskItemInvite> inviteList2 = memberTaskItem.getInviteList();
                        if (inviteList2 != null) {
                            for (MemberTaskItemInvite memberTaskItemInvite : inviteList2) {
                                if (memberTaskItemInvite.getStatus() == 1) {
                                    memberTaskItemInvite.setStatus(2);
                                }
                            }
                        }
                    } else if (iA >= 0 && (inviteList = memberTaskItem.getInviteList()) != null) {
                        for (Object obj2 : inviteList) {
                            if (Intrinsics.c(strD, ((MemberTaskItemInvite) obj2).getRewardId())) {
                                obj = obj2;
                                break;
                            }
                        }
                        MemberTaskItemInvite memberTaskItemInvite2 = (MemberTaskItemInvite) obj;
                        if (memberTaskItemInvite2 != null) {
                            memberTaskItemInvite2.setStatus(2);
                        }
                    }
                    memberTaskItem.setRewardInfo(memberTaskRewardInfoB);
                }
                com.transsion.member.adapter.h hVar2 = memberFragment.taskAdapter;
                if (hVar2 != null) {
                    hVar2.notifyDataSetChanged();
                }
            }
        }
        return Unit.f64096a;
    }

    public static final Unit b1(MemberFragment memberFragment, Pair pair) {
        List<Object> data;
        Object next;
        List<MemberTaskItemCheckInInfo> checkInList;
        MemberTaskItemCheckInInfo memberTaskItemCheckInInfo;
        memberFragment.h1();
        com.transsion.member.adapter.h hVar = memberFragment.taskAdapter;
        if (hVar != null && (data = hVar.getData()) != null) {
            Iterator<T> it = data.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                Integer taskSubType = ((MemberTaskItem) next).getTaskSubType();
                if (taskSubType != null && taskSubType.intValue() == 8) {
                    break;
                }
            }
            MemberTaskItem memberTaskItem = (MemberTaskItem) next;
            if (memberTaskItem != null) {
                int iIntValue = ((Number) pair.getFirst()).intValue();
                if (((MemberTaskSubmitCheckInRes) pair.getSecond()) != null && (checkInList = memberTaskItem.getCheckInList()) != null && (memberTaskItemCheckInInfo = checkInList.get(iIntValue)) != null) {
                    memberTaskItemCheckInInfo.setHasCheckIn(true);
                }
                com.transsion.member.adapter.h hVar2 = memberFragment.taskAdapter;
                if (hVar2 != null) {
                    hVar2.notifyDataSetChanged();
                }
            }
        }
        return Unit.f64096a;
    }

    public static final Unit c1(MemberFragment memberFragment, MemberDetail memberDetail) {
        if (memberDetail != null) {
            memberFragment.memberDetail = memberDetail;
            qi.b logViewConfig = memberFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            memberFragment.n1(memberDetail);
            memberFragment.w1(memberDetail.getUserInfo());
        }
        if (memberDetail == null) {
            if (yg.l.f76264a.e()) {
                com.tn.lib.widget.toast.core.h.f40484a.k(com.tn.lib.widget.R$string.failed_toast);
            } else {
                fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_toast);
            }
        }
        memberFragment.K0();
        return Unit.f64096a;
    }

    private final boolean getIsSelf() {
        return this.isSelf;
    }

    public static final BaseMemberLoadingDialog e1() {
        return new BaseMemberLoadingDialog();
    }

    private final void f1(boolean isAutoRenew) {
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        int id2 = 0;
        if (isAutoRenew) {
            gm.i mViewBinding = getMViewBinding();
            if (mViewBinding == null || (appCompatTextView3 = mViewBinding.f61148m) == null) {
                return;
            }
            ViewGroup.LayoutParams layoutParams = appCompatTextView3.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            bVar.f7391t = -1;
            gm.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatTextView4 = mViewBinding2.f61151p) != null) {
                id2 = appCompatTextView4.getId();
            }
            bVar.f7389s = id2;
            bVar.setMarginStart(com.blankj.utilcode.util.a0.a(2.0f));
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.a0.a(18.5f);
            appCompatTextView3.setLayoutParams(bVar);
            return;
        }
        gm.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (appCompatTextView = mViewBinding3.f61148m) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams2 = appCompatTextView.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
        bVar2.f7389s = -1;
        gm.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatTextView2 = mViewBinding4.f61151p) != null) {
            id2 = appCompatTextView2.getId();
        }
        bVar2.f7391t = id2;
        bVar2.setMarginStart(com.blankj.utilcode.util.a0.a(0.0f));
        ((ViewGroup.MarginLayoutParams) bVar2).topMargin = com.blankj.utilcode.util.a0.a(44.0f);
        appCompatTextView.setLayoutParams(bVar2);
    }

    private final void g1(SkuItem skuItem) {
        showLoading();
        N0().J(skuItem);
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    public final void h1() {
        N0().q();
        N0().s();
        com.transsion.member.adapter.h hVar = this.taskAdapter;
        if (hVar != null) {
            hVar.notifyDataSetChanged();
        }
        I0();
    }

    private final void i1() {
        if (this.shouldRefreshPurchasedInfo) {
            P0();
            this.shouldRefreshPurchasedInfo = false;
        }
    }

    private final void j1(List redeemList) {
        gm.i mViewBinding;
        RecyclerView recyclerView;
        PointInfo pointInfo;
        RecyclerView recyclerView2;
        gm.i mViewBinding2 = getMViewBinding();
        RecyclerView.Adapter adapter = null;
        if ((mViewBinding2 != null ? mViewBinding2.f61152q : null) != null) {
            gm.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (recyclerView2 = mViewBinding3.f61152q) != null) {
                adapter = recyclerView2.getAdapter();
            }
            if (adapter == null || (mViewBinding = getMViewBinding()) == null || (recyclerView = mViewBinding.f61152q) == null) {
                return;
            }
            MemberDetail memberDetail = this.memberDetail;
            int point = (memberDetail == null || (pointInfo = memberDetail.getPointInfo()) == null) ? 0 : pointInfo.getPoint();
            Iterator it = redeemList.iterator();
            while (it.hasNext()) {
                ((SkuItem) it.next()).setUserPoints(Integer.valueOf(point));
            }
            if (recyclerView.getAdapter() != null) {
                RecyclerView.Adapter adapter2 = recyclerView.getAdapter();
                Intrinsics.f(adapter2, "null cannot be cast to non-null type com.transsion.member.adapter.RedeemInfoAdapter");
                ((com.transsion.member.adapter.e) adapter2).q1(CollectionsKt.U0(redeemList));
            }
        }
    }

    private final void k1(String optType, String skuId) {
        String strF;
        HashMap map = new HashMap();
        map.put("opt_type", optType);
        if (skuId != null) {
            map.put("skuId", skuId);
        }
        qi.h hVar = qi.h.f69682a;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        hVar.o(strF, map);
    }

    public final void l1(String skuId, Integer code, String message) {
        String strF;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("sku_id", skuId);
        map.put("fail_code", String.valueOf(code));
        String str = "";
        if (message == null) {
            message = "";
        }
        map.put("fail_message", message);
        map.put("result_type", "result_fail");
        qi.h hVar = qi.h.f69682a;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            str = strF;
        }
        hVar.q(str, "purchase", map);
    }

    public final void m1(String skuId) {
        String strF;
        HashMap map = new HashMap();
        map.put("opt_type", "pay_result");
        map.put("sku_id", skuId);
        map.put("result_type", "result_success");
        qi.h hVar = qi.h.f69682a;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        hVar.q(strF, "purchase", map);
    }

    public static final qx.a mLoginApi_delegate$lambda$1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    /* JADX WARN: Code duplicated, block: B:163:0x020d  */
    private final void n1(MemberDetail memberDetail) {
        AppCompatTextView appCompatTextView;
        MemberInfo memberInfo;
        Integer daysLeft;
        MemberInfo memberInfo2;
        Integer daysLeft2;
        AppCompatTextView appCompatTextView2;
        AppCompatTextView appCompatTextView3;
        AppCompatTextView appCompatTextView4;
        GradientBorderView gradientBorderView;
        AppCompatImageView appCompatImageView;
        GradientBorderView gradientBorderView2;
        boolean z10;
        AppCompatTextView appCompatTextView5;
        AppCompatTextView appCompatTextView6;
        AppCompatTextView appCompatTextView7;
        MemberInfo memberInfo3;
        Integer daysLeft3;
        MemberInfo memberInfo4;
        Integer daysLeft4;
        AppCompatTextView appCompatTextView8;
        AppCompatTextView appCompatTextView9;
        String string;
        AppCompatTextView appCompatTextView10;
        MemberInfo memberInfo5;
        String nextRenewDate;
        AppCompatTextView appCompatTextView11;
        GradientBorderView gradientBorderView3;
        AppCompatImageView appCompatImageView2;
        GradientBorderView gradientBorderView4;
        AppCompatTextView appCompatTextView12;
        MemberInfo memberInfo6;
        Integer daysLeft5;
        MemberInfo memberInfo7;
        Integer daysLeft6;
        AppCompatTextView appCompatTextView13;
        AppCompatTextView appCompatTextView14;
        AppCompatTextView appCompatTextView15;
        GradientBorderView gradientBorderView5;
        AppCompatImageView appCompatImageView3;
        GradientBorderView gradientBorderView6;
        AppCompatTextView appCompatTextView16;
        GradientBorderView gradientBorderView7;
        AppCompatImageView appCompatImageView4;
        GradientBorderView gradientBorderView8;
        AppCompatTextView appCompatTextView17;
        GradientBorderView gradientBorderView9;
        AppCompatImageView appCompatImageView5;
        GradientBorderView gradientBorderView10;
        PointInfo pointInfo;
        String string2 = null;
        wf.a.C0922a.g(wf.a.f74274a, "member detail is " + memberDetail, false, 2, null);
        int point = (memberDetail == null || (pointInfo = memberDetail.getPointInfo()) == null) ? 0 : pointInfo.getPoint();
        int i10 = b.f44938a[(memberDetail != null ? MembershipDetailType.INSTANCE.a(memberDetail.getMemberInfo()) : MembershipDetailType.GUEST).ordinal()];
        if (i10 == 1) {
            gm.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (gradientBorderView2 = mViewBinding.f61147l) != null) {
                uf.c.k(gradientBorderView2);
            }
            gm.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f61149n) != null) {
                uf.c.k(appCompatImageView);
            }
            gm.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (gradientBorderView = mViewBinding3.f61140e) != null) {
                uf.c.g(gradientBorderView);
            }
            gm.i mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (appCompatTextView4 = mViewBinding4.f61151p) != null) {
                Context context = getContext();
                appCompatTextView4.setText(context != null ? context.getString(R$string.member_free_trial) : null);
            }
            gm.i mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (appCompatTextView3 = mViewBinding5.f61144i) != null) {
                uf.c.g(appCompatTextView3);
            }
            gm.i mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (appCompatTextView2 = mViewBinding6.f61139d) != null) {
                Context context2 = getContext();
                appCompatTextView2.setText(context2 != null ? context2.getString(R$string.member_extend_your_premium_benefits) : null);
            }
            gm.i mViewBinding7 = getMViewBinding();
            if (mViewBinding7 != null && (appCompatTextView = mViewBinding7.f61148m) != null) {
                Context context3 = getContext();
                if (context3 != null) {
                    string2 = context3.getString(((memberDetail == null || (memberInfo2 = memberDetail.getMemberInfo()) == null || (daysLeft2 = memberInfo2.getDaysLeft()) == null) ? 0 : daysLeft2.intValue()) > 1 ? R$string.member_days_left : R$string.member_day_left, Integer.valueOf((memberDetail == null || (memberInfo = memberDetail.getMemberInfo()) == null || (daysLeft = memberInfo.getDaysLeft()) == null) ? 0 : daysLeft.intValue()));
                }
                appCompatTextView.setText(string2);
            }
            f1(false);
        } else if (i10 == 2) {
            gm.i mViewBinding8 = getMViewBinding();
            if (mViewBinding8 != null && (gradientBorderView4 = mViewBinding8.f61147l) != null) {
                uf.c.k(gradientBorderView4);
            }
            gm.i mViewBinding9 = getMViewBinding();
            if (mViewBinding9 != null && (appCompatImageView2 = mViewBinding9.f61149n) != null) {
                uf.c.k(appCompatImageView2);
            }
            gm.i mViewBinding10 = getMViewBinding();
            if (mViewBinding10 != null && (gradientBorderView3 = mViewBinding10.f61140e) != null) {
                uf.c.g(gradientBorderView3);
            }
            gm.i mViewBinding11 = getMViewBinding();
            if (mViewBinding11 != null && (appCompatTextView11 = mViewBinding11.f61151p) != null) {
                Context context4 = getContext();
                appCompatTextView11.setText(context4 != null ? context4.getString(R$string.member_premium_title) : null);
            }
            if (memberDetail == null || (memberInfo5 = memberDetail.getMemberInfo()) == null || (nextRenewDate = memberInfo5.getNextRenewDate()) == null) {
                z10 = false;
            } else {
                if (nextRenewDate.length() > 0) {
                    z10 = true;
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                gm.i mViewBinding12 = getMViewBinding();
                if (mViewBinding12 != null && (appCompatTextView10 = mViewBinding12.f61144i) != null) {
                    uf.c.k(appCompatTextView10);
                }
                gm.i mViewBinding13 = getMViewBinding();
                if (mViewBinding13 != null && (appCompatTextView9 = mViewBinding13.f61144i) != null) {
                    Context context5 = getContext();
                    if (context5 != null) {
                        int i11 = R$string.member_next_billing_date;
                        MemberInfo memberInfo8 = memberDetail.getMemberInfo();
                        string = context5.getString(i11, memberInfo8 != null ? memberInfo8.getNextRenewDate() : null);
                    } else {
                        string = null;
                    }
                    appCompatTextView9.setText(string);
                }
            } else {
                gm.i mViewBinding14 = getMViewBinding();
                if (mViewBinding14 != null && (appCompatTextView5 = mViewBinding14.f61144i) != null) {
                    uf.c.g(appCompatTextView5);
                }
            }
            gm.i mViewBinding15 = getMViewBinding();
            if (mViewBinding15 != null && (appCompatTextView8 = mViewBinding15.f61139d) != null) {
                Context context6 = getContext();
                appCompatTextView8.setText(context6 != null ? context6.getString(R$string.member_extend_your_premium_benefits) : null);
            }
            gm.i mViewBinding16 = getMViewBinding();
            if (mViewBinding16 != null && (appCompatTextView7 = mViewBinding16.f61148m) != null) {
                Context context7 = getContext();
                if (context7 != null) {
                    string2 = context7.getString(((memberDetail == null || (memberInfo4 = memberDetail.getMemberInfo()) == null || (daysLeft4 = memberInfo4.getDaysLeft()) == null) ? 0 : daysLeft4.intValue()) > 1 ? R$string.member_days_left : R$string.member_day_left, Integer.valueOf((memberDetail == null || (memberInfo3 = memberDetail.getMemberInfo()) == null || (daysLeft3 = memberInfo3.getDaysLeft()) == null) ? 0 : daysLeft3.intValue()));
                }
                appCompatTextView7.setText(string2);
            }
            gm.i mViewBinding17 = getMViewBinding();
            if (mViewBinding17 != null && (appCompatTextView6 = mViewBinding17.f61148m) != null) {
                appCompatTextView6.setCompoundDrawablesWithIntrinsicBounds(com.transsion.baseui.R$mipmap.ic_premium, 0, 0, 0);
            }
            f1(true);
        } else if (i10 == 3) {
            gm.i mViewBinding18 = getMViewBinding();
            if (mViewBinding18 != null && (gradientBorderView6 = mViewBinding18.f61147l) != null) {
                uf.c.k(gradientBorderView6);
            }
            gm.i mViewBinding19 = getMViewBinding();
            if (mViewBinding19 != null && (appCompatImageView3 = mViewBinding19.f61149n) != null) {
                uf.c.k(appCompatImageView3);
            }
            gm.i mViewBinding20 = getMViewBinding();
            if (mViewBinding20 != null && (gradientBorderView5 = mViewBinding20.f61140e) != null) {
                uf.c.g(gradientBorderView5);
            }
            gm.i mViewBinding21 = getMViewBinding();
            if (mViewBinding21 != null && (appCompatTextView15 = mViewBinding21.f61151p) != null) {
                Context context8 = getContext();
                appCompatTextView15.setText(context8 != null ? context8.getString(R$string.member_premium_title) : null);
            }
            gm.i mViewBinding22 = getMViewBinding();
            if (mViewBinding22 != null && (appCompatTextView14 = mViewBinding22.f61144i) != null) {
                uf.c.g(appCompatTextView14);
            }
            gm.i mViewBinding23 = getMViewBinding();
            if (mViewBinding23 != null && (appCompatTextView13 = mViewBinding23.f61139d) != null) {
                Context context9 = getContext();
                appCompatTextView13.setText(context9 != null ? context9.getString(R$string.member_extend_your_premium_benefits) : null);
            }
            gm.i mViewBinding24 = getMViewBinding();
            if (mViewBinding24 != null && (appCompatTextView12 = mViewBinding24.f61148m) != null) {
                Context context10 = getContext();
                if (context10 != null) {
                    string2 = context10.getString(((memberDetail == null || (memberInfo7 = memberDetail.getMemberInfo()) == null || (daysLeft6 = memberInfo7.getDaysLeft()) == null) ? 0 : daysLeft6.intValue()) > 1 ? R$string.member_days_left : R$string.member_day_left, Integer.valueOf((memberDetail == null || (memberInfo6 = memberDetail.getMemberInfo()) == null || (daysLeft5 = memberInfo6.getDaysLeft()) == null) ? 0 : daysLeft5.intValue()));
                }
                appCompatTextView12.setText(string2);
            }
            f1(false);
        } else if (i10 != 4) {
            gm.i mViewBinding25 = getMViewBinding();
            if (mViewBinding25 != null && (gradientBorderView10 = mViewBinding25.f61147l) != null) {
                uf.c.g(gradientBorderView10);
            }
            gm.i mViewBinding26 = getMViewBinding();
            if (mViewBinding26 != null && (appCompatImageView5 = mViewBinding26.f61149n) != null) {
                uf.c.g(appCompatImageView5);
            }
            gm.i mViewBinding27 = getMViewBinding();
            if (mViewBinding27 != null && (gradientBorderView9 = mViewBinding27.f61140e) != null) {
                uf.c.k(gradientBorderView9);
            }
            gm.i mViewBinding28 = getMViewBinding();
            if (mViewBinding28 != null && (appCompatTextView17 = mViewBinding28.f61139d) != null) {
                Context context11 = getContext();
                appCompatTextView17.setText(context11 != null ? context11.getString(R$string.member_your_premium_benefits) : null);
            }
        } else {
            gm.i mViewBinding29 = getMViewBinding();
            if (mViewBinding29 != null && (gradientBorderView8 = mViewBinding29.f61147l) != null) {
                uf.c.g(gradientBorderView8);
            }
            gm.i mViewBinding30 = getMViewBinding();
            if (mViewBinding30 != null && (appCompatImageView4 = mViewBinding30.f61149n) != null) {
                uf.c.g(appCompatImageView4);
            }
            gm.i mViewBinding31 = getMViewBinding();
            if (mViewBinding31 != null && (gradientBorderView7 = mViewBinding31.f61140e) != null) {
                uf.c.k(gradientBorderView7);
            }
            gm.i mViewBinding32 = getMViewBinding();
            if (mViewBinding32 != null && (appCompatTextView16 = mViewBinding32.f61139d) != null) {
                Context context12 = getContext();
                appCompatTextView16.setText(context12 != null ? context12.getString(R$string.member_your_premium_benefits) : null);
            }
        }
        t1(point);
        i1();
    }

    private final void p1(SkuData data) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        PointInfo pointInfo;
        List<SkuItem> skuList = data.getSkuList();
        List listK0 = skuList != null ? CollectionsKt.K0(skuList, 3) : null;
        if (listK0 == null) {
            listK0 = CollectionsKt.l();
        }
        List<SkuItem> skuPointList = data.getSkuPointList();
        List listK1 = skuPointList != null ? CollectionsKt.K0(skuPointList, 3) : null;
        if (listK1 == null) {
            listK1 = CollectionsKt.l();
        }
        List<SkuItem> list = listK0;
        ArrayList arrayList = new ArrayList(CollectionsKt.v(list, 10));
        for (SkuItem skuItem : list) {
            skuItem.setMemberDetail(this.memberDetail);
            arrayList.add(skuItem);
        }
        MemberDetail memberDetail = this.memberDetail;
        int point = (memberDetail == null || (pointInfo = memberDetail.getPointInfo()) == null) ? 0 : pointInfo.getPoint();
        List<SkuItem> list2 = listK1;
        ArrayList arrayList2 = new ArrayList(CollectionsKt.v(list2, 10));
        for (SkuItem skuItem2 : list2) {
            skuItem2.setUserPoints(Integer.valueOf(point));
            arrayList2.add(skuItem2);
        }
        com.transsion.member.adapter.g gVar = this.skuListAdapter;
        if (Intrinsics.c(gVar != null ? gVar.getData() : null, CollectionsKt.U0(arrayList))) {
            com.transsion.member.adapter.e eVar = this.redeemListAdapter;
            if (Intrinsics.c(eVar != null ? eVar.getData() : null, CollectionsKt.U0(arrayList2))) {
                return;
            }
        }
        com.transsion.member.adapter.g gVar2 = new com.transsion.member.adapter.g(CollectionsKt.U0(arrayList));
        gVar2.l(R$id.item_root);
        gVar2.F1(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MemberFragment.q1(this.f45121a, (SkuItem) obj, (View) obj2);
            }
        });
        this.skuListAdapter = gVar2;
        gm.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f61153r) != null) {
            recyclerView2.setLayoutManager(new NpaGridLayoutManager(recyclerView2.getContext(), 3));
            if (recyclerView2.getItemDecorationCount() <= 0) {
                recyclerView2.addItemDecoration(new com.transsion.member.adapter.a(3, com.blankj.utilcode.util.a0.a(8.0f)));
            }
            recyclerView2.setAdapter(this.skuListAdapter);
        }
        com.transsion.member.adapter.e eVar2 = new com.transsion.member.adapter.e(CollectionsKt.U0(arrayList2));
        eVar2.l(R$id.item_root);
        eVar2.F1(new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MemberFragment.r1(this.f45122a, (SkuItem) obj, (View) obj2);
            }
        });
        this.redeemListAdapter = eVar2;
        gm.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (recyclerView = mViewBinding2.f61152q) == null) {
            return;
        }
        recyclerView.setLayoutManager(new NpaGridLayoutManager(recyclerView.getContext(), 3));
        if (recyclerView.getItemDecorationCount() <= 0) {
            recyclerView.addItemDecoration(new com.transsion.member.adapter.a(3, com.blankj.utilcode.util.a0.a(8.0f)));
        }
        recyclerView.setAdapter(this.redeemListAdapter);
    }

    public static final Unit q1(MemberFragment memberFragment, SkuItem item, View view) {
        String str;
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return Unit.f64096a;
        }
        wf.a.C0922a.g(wf.a.f74274a, "The productId and coins: " + item.getSkuId() + ", " + item.getCoin(), false, 2, null);
        String category = item.getCategory();
        SkuCategory skuCategory = SkuCategory.AUTO_RENEW;
        if (Intrinsics.c(category, skuCategory.getValue())) {
            str = item.getDuration() + "_subscription";
        } else {
            str = item.getDuration() + "_purchased";
        }
        memberFragment.k1(str, item.getSkuId());
        qx.a mLoginApi = memberFragment.getMLoginApi();
        if (mLoginApi != null && mLoginApi.a()) {
            memberFragment.u1(item.getSkuId(), Intrinsics.c(item.getCategory(), skuCategory.getValue()));
            return Unit.f64096a;
        }
        qx.a mLoginApi2 = memberFragment.getMLoginApi();
        if (mLoginApi2 != null) {
            mLoginApi2.e(memberFragment);
        }
        qx.a mLoginApi3 = memberFragment.getMLoginApi();
        if (mLoginApi3 != null) {
            Context contextRequireContext = memberFragment.requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            mLoginApi3.k(contextRequireContext);
        }
        return Unit.f64096a;
    }

    public static final Unit r1(MemberFragment memberFragment, SkuItem item, View view) {
        Intrinsics.h(item, "item");
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 2000L)) {
            return Unit.f64096a;
        }
        wf.a.C0922a.g(wf.a.f74274a, "The productId and coins: " + item.getSkuId() + ", " + item.getCoin(), false, 2, null);
        String duration = item.getDuration();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(duration);
        sb2.append("_reward");
        memberFragment.k1(sb2.toString(), item.getSkuId());
        memberFragment.g1(item);
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002b  */
    private final void u1(final String productId, boolean isSubscription) {
        boolean z10;
        MemberInfo memberInfo;
        MemberInfo memberInfo2;
        MemberDetail memberDetail = this.memberDetail;
        if ((memberDetail == null || (memberInfo2 = memberDetail.getMemberInfo()) == null) ? false : memberInfo2.isActive()) {
            MemberDetail memberDetail2 = this.memberDetail;
            z10 = memberDetail2 != null && (memberInfo = memberDetail2.getMemberInfo()) != null && memberInfo.getMemberType() == 2;
        }
        this.isPremium = z10;
        wf.a.C0922a.g(wf.a.f74274a, "before pay isPremium: " + z10, false, 2, null);
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        FragmentActivity activity = getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null) {
            com.transsion.payment.lib.f.f45914b.a().e(appCompatActivity, productId, null, isSubscription, null, new com.transsion.payment.lib.b() {
                @Override
                public void a(Integer num, String str, boolean z11, String str2) {
                    wf.a.C0922a.m(wf.a.f74274a, "Payment failed " + str + ", " + num, false, 2, null);
                    if (num != null && num.intValue() == -30) {
                        Ref.BooleanRef booleanRef2 = booleanRef;
                        if (booleanRef2.element) {
                            return;
                        }
                        booleanRef2.element = true;
                        com.tn.lib.widget.toast.core.h hVar = com.tn.lib.widget.toast.core.h.f40484a;
                        Context context = this.f44943a.getContext();
                        hVar.l(context != null ? context.getString(R$string.member_pay_pending) : null);
                        return;
                    }
                    if (num != null && num.intValue() == 1003) {
                        this.f44943a.l1(productId, num, str);
                        com.tn.lib.widget.toast.core.h hVar2 = com.tn.lib.widget.toast.core.h.f40484a;
                        Context context2 = this.f44943a.getContext();
                        hVar2.l(context2 != null ? context2.getString(R$string.member_pay_processing) : null);
                        if (this.f44943a.getContext() != null) {
                            this.f44943a.K0();
                            return;
                        }
                        return;
                    }
                    this.f44943a.l1(productId, num, str);
                    com.tn.lib.widget.toast.core.h hVar3 = com.tn.lib.widget.toast.core.h.f40484a;
                    Context context3 = this.f44943a.getContext();
                    hVar3.l(context3 != null ? context3.getString(R$string.member_pay_failed) : null);
                    if (this.f44943a.getContext() != null) {
                        this.f44943a.K0();
                    }
                }

                @Override
                public void b(boolean z11) {
                    if (z11) {
                        this.f44943a.showLoading();
                    }
                }

                /* JADX WARN: Code duplicated, block: B:20:0x0050  */
                @Override
                public void c(int i10, String balance, String str) {
                    boolean z11;
                    MemberInfo memberInfo3;
                    MemberInfo memberInfo4;
                    Intrinsics.h(balance, "balance");
                    wf.a.C0922a c0922a = wf.a.f74274a;
                    wf.a.C0922a.g(c0922a, "Payment succeed " + str, false, 2, null);
                    MemberDetail memberDetail3 = this.f44943a.memberDetail;
                    if ((memberDetail3 == null || (memberInfo4 = memberDetail3.getMemberInfo()) == null) ? false : memberInfo4.isActive()) {
                        MemberDetail memberDetail4 = this.f44943a.memberDetail;
                        if ((memberDetail4 == null || (memberInfo3 = memberDetail4.getMemberInfo()) == null || memberInfo3.getMemberType() != 2) ? false : true) {
                            z11 = true;
                        } else {
                            z11 = false;
                        }
                    } else {
                        z11 = false;
                    }
                    wf.a.C0922a.g(c0922a, "after pay isPremium:  " + z11, false, 2, null);
                    this.f44943a.shouldRefreshPurchasedInfo = true;
                    wf.a.C0922a.g(c0922a, "Should refresh purchased info", false, 2, null);
                    this.f44943a.m1(productId);
                    kotlinx.coroutines.k.d(o0.a(kotlinx.coroutines.y0.c()), null, null, new MemberFragment$startPay$1$1$success$1(this.f44943a, null), 3, null);
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this.f44943a), null, null, new MemberFragment$startPay$1$1$success$2(str, null), 3, null);
                    if (this.f44943a.getContext() != null) {
                        this.f44943a.K0();
                    }
                }
            });
        }
    }

    private final void v1(float alpha) {
        gm.i mViewBinding;
        ConstraintLayout constraintLayout;
        if (!isAdded() || (mViewBinding = getMViewBinding()) == null || (constraintLayout = mViewBinding.f61158w) == null) {
            return;
        }
        constraintLayout.setBackgroundColor(G0(androidx.core.content.b.getColor(requireContext(), com.tn.lib.widget.R$color.gray_dark_00), RangesKt.g(alpha, 1.0f)));
    }

    private final void w1(UserInfo userInfo) {
        gm.i mViewBinding;
        if (userInfo == null || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        ni.f.a aVar = ni.f.f67269a;
        Context context = mViewBinding.f61137b.getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarI = aVar.m(context).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar);
        ShapeableImageView ivAvatarPremium = mViewBinding.f61137b;
        Intrinsics.g(ivAvatarPremium, "ivAvatarPremium");
        bVarI.d(ivAvatarPremium);
        mViewBinding.f61143h.setText(androidx.core.text.a.c().m(userInfo.getNickname(), androidx.core.text.t.f7944a));
    }

    public final void K0() {
        if (M0().isAdded()) {
            M0().dismissAllowingStateLoss();
        } else {
            wf.a.C0922a.g(wf.a.f74274a, "Dialog not is added", false, 2, null);
        }
    }

    @Override
    public gm.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        gm.i iVarC = gm.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        AppCompatTextView appCompatTextView;
        PointView pointView;
        PointView pointView2;
        AppCompatImageView appCompatImageView;
        gm.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView = mViewBinding.f61138c) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberFragment.Q0(this.f45123a, view);
                }
            });
        }
        gm.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (pointView2 = mViewBinding2.f61141f) != null) {
            pointView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberFragment.R0(this.f45124a, view);
                }
            });
        }
        gm.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (pointView = mViewBinding3.f61150o) != null) {
            pointView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberFragment.S0(this.f45125a, view);
                }
            });
        }
        gm.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (appCompatTextView = mViewBinding4.f61161z) == null) {
            return;
        }
        uf.c.c(appCompatTextView, 0L, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.T0((View) obj);
            }
        }, 1, null);
    }

    @Override
    public void initViewData() {
        RecyclerView recyclerView;
        qx.a mLoginApi;
        L0();
        if (getIsSelf() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.e(this);
        }
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                MemberFragment.U0((ActivityResult) obj);
            }
        });
        final gm.i mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            if (getActivity() instanceof MemberActivity) {
                mViewBinding.f61138c.setVisibility(0);
            } else {
                mViewBinding.f61138c.setVisibility(8);
            }
            mViewBinding.f61160y.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MemberFragment.V0(this.f45126a, view);
                }
            });
            gm.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (recyclerView = mViewBinding2.f61155t) != null) {
                recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
                recyclerView.addItemDecoration(new com.transsion.member.adapter.h.a());
                com.transsion.member.adapter.h hVar = new com.transsion.member.adapter.h(this, N0(), this);
                this.taskAdapter = hVar;
                recyclerView.setAdapter(hVar);
            }
            H0();
            mViewBinding.f61156u.setOnScrollChangeListener(new View.OnScrollChangeListener() {
                @Override
                public final void onScrollChange(View view, int i10, int i11, int i12, int i13) {
                    MemberFragment.W0(mViewBinding, this, view, i10, i11, i12, i13);
                }
            });
            v1(0.0f);
        }
    }

    @Override
    public void initViewModel() {
        MemberViewModel memberViewModelN0 = N0();
        memberViewModelN0.v().j(getViewLifecycleOwner(), new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.c1(this.f45129a, (MemberDetail) obj);
            }
        }));
        memberViewModelN0.A().j(getViewLifecycleOwner(), new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.X0(this.f45130a, (SkuData) obj);
            }
        }));
        memberViewModelN0.x().j(getViewLifecycleOwner(), new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.Y0(this.f45096a, (RedeemResult) obj);
            }
        }));
        memberViewModelN0.D().j(getViewLifecycleOwner(), new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.Z0(this.f45097a, (List) obj);
            }
        }));
        memberViewModelN0.C().j(getViewLifecycleOwner(), new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.a1(this.f45098a, (im.e) obj);
            }
        }));
        memberViewModelN0.B().j(getViewLifecycleOwner(), new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MemberFragment.b1(this.f45099a, (Pair) obj);
            }
        }));
        N0().E();
        w1(this.mUserInfo);
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public void loadDefaultData() {
        LinearLayoutCompat linearLayoutCompat;
        RecyclerView recyclerView;
        LinearLayoutCompat linearLayoutCompat2;
        RecyclerView recyclerView2;
        super.loadDefaultData();
        try {
            Result.Companion companion = Result.INSTANCE;
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null ? bVar.c() : false) {
                gm.i mViewBinding = getMViewBinding();
                if (mViewBinding != null && (recyclerView2 = mViewBinding.f61153r) != null) {
                    recyclerView2.setVisibility(0);
                }
                gm.i mViewBinding2 = getMViewBinding();
                if (mViewBinding2 != null && (linearLayoutCompat2 = mViewBinding2.f61145j) != null) {
                    linearLayoutCompat2.setVisibility(0);
                }
            } else {
                gm.i mViewBinding3 = getMViewBinding();
                if (mViewBinding3 != null && (recyclerView = mViewBinding3.f61153r) != null) {
                    recyclerView.setVisibility(8);
                }
                gm.i mViewBinding4 = getMViewBinding();
                if (mViewBinding4 != null && (linearLayoutCompat = mViewBinding4.f61145j) != null) {
                    linearLayoutCompat.setVisibility(8);
                }
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public void logResume() {
        super.logResume();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("memberdetail", false, 2, null);
    }

    public final void o1(String str) {
        this.sceneId = str;
    }

    @Override
    public void onClick(View v10) {
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0046  */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        boolean z10;
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        HashMap mapG4;
        UserInfo userInfoI;
        super.onCreate(savedInstanceState);
        qx.a mLoginApi = getMLoginApi();
        String userId = null;
        UserInfo userInfoI2 = mLoginApi != null ? mLoginApi.i() : null;
        this.mUserInfo = userInfoI2;
        String userId2 = userInfoI2 != null ? userInfoI2.getUserId() : null;
        if (userId2 == null || userId2.length() == 0) {
            z10 = true;
        } else {
            UserInfo userInfo = this.mUserInfo;
            String userId3 = userInfo != null ? userInfo.getUserId() : null;
            qx.a mLoginApi2 = getMLoginApi();
            if (mLoginApi2 != null && (userInfoI = mLoginApi2.i()) != null) {
                userId = userInfoI.getUserId();
            }
            if (Intrinsics.c(userId3, userId)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        this.isSelf = z10;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG4 = logViewConfig.g()) != null) {
        }
        if (this.source != null) {
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 == null || (mapG3 = logViewConfig2.g()) == null) {
                return;
            }
            MemberSource memberSource = this.source;
            Intrinsics.e(memberSource);
            return;
        }
        if (getActivity() instanceof MemberActivity) {
            qi.b logViewConfig3 = getLogViewConfig();
            if (logViewConfig3 == null || (mapG2 = logViewConfig3.g()) == null) {
                return;
            }
            return;
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 == null || (mapG = logViewConfig4.g()) == null) {
            return;
        }
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
                h1();
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onLogin(UserInfo user) {
        Intrinsics.h(user, "user");
        qx.b.a.a(this, user);
        h1();
        N0().r();
    }

    @Override
    public void onLogout() {
        qx.b.a.b(this);
        h1();
        N0().r();
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onResume() {
        super.onResume();
        h1();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
        if (this.isFirstResume) {
            this.isFirstResume = false;
        } else {
            N0().r();
        }
    }

    @Override
    public void onUpdateUserInfo(UserInfo user) {
        Intrinsics.h(user, "user");
        if (getIsSelf()) {
            w1(user);
        }
    }

    @Override
    public void retryLoadData() {
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        if (bVar != null) {
            im.b.a.a(bVar, null, 1, null);
        }
    }

    public final void s1(MemberSource memberSource) {
        this.source = memberSource;
    }

    public final void showLoading() {
        M0().l0(this, "LoadingDialog");
    }

    public final void t1(int points) {
        List<SkuItem> skuPointList;
        PointView pointView;
        PointView pointView2;
        PointInfo pointInfo;
        MemberDetail memberDetail = this.memberDetail;
        if (memberDetail != null && (pointInfo = memberDetail.getPointInfo()) != null) {
            pointInfo.setPoint(points);
        }
        gm.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (pointView2 = mViewBinding.f61150o) != null) {
            pointView2.setPoints(points);
        }
        gm.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (pointView = mViewBinding2.f61141f) != null) {
            pointView.setPoints(points);
        }
        SkuData skuDataZ = N0().z();
        if (skuDataZ == null || (skuPointList = skuDataZ.getSkuPointList()) == null) {
            return;
        }
        j1(skuPointList);
    }
}
