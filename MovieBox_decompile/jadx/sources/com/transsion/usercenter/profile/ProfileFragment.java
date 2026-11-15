package com.transsion.usercenter.profile;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResult;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.android.material.tabs.TabLayout;
import com.google.android.material.tabs.TabLayoutMediator;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.NoTouchToolBar;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.TnTextView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$mipmap;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.edit.ProfileEditCenterActivity;
import com.transsion.usercenter.message.UserMessageActivity;
import com.transsion.usercenter.profile.bean.BlockInfo;
import com.transsion.usercenter.profile.bean.CoverUrl;
import com.transsion.usercenter.profile.bean.EntranceInfo;
import com.transsion.usercenter.profile.bean.Group;
import com.transsion.usercenter.profile.bean.ProfileEntranceInfo;
import com.transsion.usercenter.profile.bean.ProfileInfo;
import com.transsion.usercenter.profile.dialog.BlockDialog;
import com.transsion.usercenter.profile.report.ReportDialog;
import com.transsion.usercenter.profile.see.ProfileSeeActivity;
import com.transsion.usercenter.setting.SettingActivity;
import com.transsion.usercenter.widget.MyRoomView;
import com.transsion.usercenterapi.ReportType;
import com.transsion.usercenterapi.UpdateResultEvent;
import com.transsion.version.update.UpdateManager;
import com.transsion.web.api.WebPageIdentity;
import com.transsion.wrapperad.view.NativeSlideshowView;
import com.transsnet.downloader.adapter.u0;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import xu.r0;

@Metadata(d1 = {"\u0000Â\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 §\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001[B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0019\u0010\u000e\u001a\u00020\u00072\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J?\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u00162\b\u0010\u0018\u001a\u0004\u0018\u00010\u00162\b\u0010\u0019\u001a\u0004\u0018\u00010\u00162\b\u0010\u001a\u001a\u0004\u0018\u00010\u0016H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u001dH\u0002¢\u0006\u0004\b \u0010\u001fJ\u001b\u0010#\u001a\u00020\u0007*\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u001f\u0010'\u001a\u00020\u00142\u0006\u0010%\u001a\u00020\u00142\u0006\u0010&\u001a\u00020!H\u0002¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0002¢\u0006\u0004\b)\u0010\u0006J\u000f\u0010*\u001a\u00020\u0007H\u0002¢\u0006\u0004\b*\u0010\u0006J\u001b\u0010,\u001a\u00020\u0007*\u00020+2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u001dH\u0002¢\u0006\u0004\b.\u0010\u001fJ\u0019\u00101\u001a\u00020\u00072\b\u00100\u001a\u0004\u0018\u00010/H\u0002¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0007H\u0002¢\u0006\u0004\b3\u0010\u0006J\u0017\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u000204H\u0002¢\u0006\u0004\b6\u00107J\u0017\u00109\u001a\u00020\u00072\u0006\u00108\u001a\u000204H\u0002¢\u0006\u0004\b9\u00107J\u000f\u0010:\u001a\u00020\u0007H\u0002¢\u0006\u0004\b:\u0010\u0006J\u0017\u0010=\u001a\u00020\u00022\u0006\u0010<\u001a\u00020;H\u0016¢\u0006\u0004\b=\u0010>J\u0019\u0010A\u001a\u00020\u00072\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bA\u0010BJ!\u0010D\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+2\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bD\u0010EJ!\u0010F\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+2\b\u0010@\u001a\u0004\u0018\u00010?H\u0016¢\u0006\u0004\bF\u0010EJ\u000f\u0010G\u001a\u00020\u0007H\u0016¢\u0006\u0004\bG\u0010\u0006J\u0017\u0010I\u001a\u00020\u00072\u0006\u0010H\u001a\u00020\u001dH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u0007H\u0016¢\u0006\u0004\bK\u0010\u0006J\u000f\u0010L\u001a\u00020\u0007H\u0016¢\u0006\u0004\bL\u0010\u0006J\u000f\u0010M\u001a\u00020\u0007H\u0016¢\u0006\u0004\bM\u0010\u0006J\u000f\u0010N\u001a\u00020\u0007H\u0016¢\u0006\u0004\bN\u0010\u0006J\u0017\u0010O\u001a\u00020\u00072\u0006\u0010C\u001a\u00020+H\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0007H\u0016¢\u0006\u0004\bQ\u0010\u0006J\u0017\u0010S\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\fH\u0016¢\u0006\u0004\bS\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00072\u0006\u0010R\u001a\u00020\fH\u0016¢\u0006\u0004\bT\u0010\u000fJ\u000f\u0010U\u001a\u00020\u0007H\u0016¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010W\u001a\u00020VH\u0016¢\u0006\u0004\bW\u0010XJ\u0015\u0010Z\u001a\u00020\u00072\u0006\u0010Y\u001a\u00020\u001d¢\u0006\u0004\bZ\u0010JR\u0018\u0010]\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010\\R\u0018\u0010`\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R\u001b\u0010f\u001a\u00020a8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bb\u0010c\u001a\u0004\bd\u0010eR\u0018\u0010j\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u001d\u0010o\u001a\u0004\u0018\u00010k8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010c\u001a\u0004\bm\u0010nR\u001e\u0010t\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u001e\u0010v\u001a\n\u0012\u0004\u0012\u00020q\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010sR\u0016\u0010y\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010}\u001a\u00020z8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0016\u0010\u007f\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010xR \u0010\u0082\u0001\u001a\u0004\u0018\u00010k8BX\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b\u0080\u0001\u0010c\u001a\u0005\b\u0081\u0001\u0010nR\u0019\u0010\u0085\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0019\u0010\u0087\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0084\u0001R \u0010\u008c\u0001\u001a\u00030\u0088\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0089\u0001\u0010c\u001a\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001f\u0010\u0090\u0001\u001a\u00020\u00148\u0006X\u0086D¢\u0006\u0010\n\u0006\b\u008d\u0001\u0010\u0084\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001f\u0010\u0093\u0001\u001a\u00020\u00148\u0006X\u0086D¢\u0006\u0010\n\u0006\b\u0091\u0001\u0010\u0084\u0001\u001a\u0006\b\u0092\u0001\u0010\u008f\u0001R)\u0010\u0098\u0001\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u0094\u0001\u0010\u0084\u0001\u001a\u0006\b\u0095\u0001\u0010\u008f\u0001\"\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001a\u0010\u009c\u0001\u001a\u00030\u0099\u00018\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u0018\u0010 \u0001\u001a\u00030\u009d\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R(\u0010¦\u0001\u001a\u00020z8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b¡\u0001\u0010|\u001a\u0006\b¢\u0001\u0010£\u0001\"\u0006\b¤\u0001\u0010¥\u0001¨\u0006¨\u0001"}, d2 = {"Lcom/transsion/usercenter/profile/ProfileFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lxu/j0;", "Landroid/view/View$OnClickListener;", "Lqx/b;", "<init>", "()V", "", "g1", "G0", "D0", "O0", "Lcom/transsnet/loginapi/bean/UserInfo;", "userInfo", "m1", "(Lcom/transsnet/loginapi/bean/UserInfo;)V", "Lcom/transsion/usercenter/profile/bean/ProfileInfo;", "profileInfo", "k1", "(Lcom/transsion/usercenter/profile/bean/ProfileInfo;)V", "", RewardPlus.AMOUNT, "Lcom/transsion/usercenter/profile/bean/CoverUrl;", "url1", "url2", "url3", "url4", "h1", "(ILcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;Lcom/transsion/usercenter/profile/bean/CoverUrl;)V", "", "X0", "()Z", "W0", "", "alpha", "j1", "(Lxu/j0;F)V", TtmlNode.ATTR_TTS_COLOR, "fraction", "z0", "(IF)I", "d1", ToolBar.REFRESH, "Landroid/view/View;", "A0", "(Landroid/view/View;F)V", "checkLogin", "Lcom/transsion/usercenter/profile/bean/EntranceInfo;", "entranceInfo", "F0", "(Lcom/transsion/usercenter/profile/bean/EntranceInfo;)V", "C0", "", "moduleName", "e1", "(Ljava/lang/String;)V", "tabName", "f1", "c1", "Landroid/view/LayoutInflater;", "inflater", "I0", "(Landroid/view/LayoutInflater;)Lxu/j0;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "initData", "onResume", "hidden", "onHiddenChanged", "(Z)V", "logPause", "onPause", "logResume", "lazyLoadData", "onClick", "(Landroid/view/View;)V", "onDestroy", "user", "onUpdateUserInfo", "onLogin", "onLogout", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "isExpand", "B0", "a", "Lcom/transsnet/loginapi/bean/UserInfo;", "mUserInfo", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/usercenter/profile/bean/ProfileInfo;", "mProfileInfo", "Lcom/transsion/usercenter/profile/ProfileViewModel;", "c", "Lkotlin/Lazy;", "H0", "()Lcom/transsion/usercenter/profile/ProfileViewModel;", "mProfileViewModel", "Lcom/transsion/usercenter/profile/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/usercenter/profile/f;", "mNoticeMessageViewModel", "Lqx/a;", "e", "getLoginApi", "()Lqx/a;", "loginApi", "Landroidx/activity/result/b;", "Landroid/content/Intent;", "f", "Landroidx/activity/result/b;", "loginLaunch", "g", "seeListLaunch", "h", "Z", "isNeedShowLoginActivity", "", "i", "J", "recordRefreshingTime", "j", "isSelf", CampaignEx.JSON_KEY_AD_K, "getMLoginApi", "mLoginApi", "l", "I", "mTabSelectIndex", "m", "refreshTime", "Landroid/os/Handler;", "n", "getMHandler", "()Landroid/os/Handler;", "mHandler", "o", "getMaxStep", "()I", "maxStep", TtmlNode.TAG_P, "getStep", "step", CampaignEx.JSON_KEY_AD_Q, "getDefault", "setDefault", "(I)V", "default", "Lkj/h;", CampaignEx.JSON_KEY_AD_R, "Lkj/h;", "mLoadingDialog", "Landroid/view/animation/DecelerateInterpolator;", "s", "Landroid/view/animation/DecelerateInterpolator;", "appbarChildAlphaDecelerateInterpolator", "t", "getResumeTimeStamp", "()J", "setResumeTimeStamp", "(J)V", "resumeTimeStamp", TmcStartParams.KEY_URL_SHORT, "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ProfileFragment extends BaseFragment<xu.j0> implements View.OnClickListener, qx.b {

    public static final Companion INSTANCE = new Companion(null);

    private UserInfo mUserInfo;

    private ProfileInfo mProfileInfo;

    private final Lazy mProfileViewModel;

    private f mNoticeMessageViewModel;

    private final Lazy loginApi;

    private androidx.activity.result.b loginLaunch;

    private androidx.activity.result.b seeListLaunch;

    private boolean isNeedShowLoginActivity;

    private long recordRefreshingTime;

    private boolean isSelf;

    private final Lazy mLoginApi;

    private int mTabSelectIndex;

    private int refreshTime;

    private final Lazy mHandler;

    private final int maxStep;

    private final int step;

    private int default;

    private kj.h mLoadingDialog;

    private final DecelerateInterpolator appbarChildAlphaDecelerateInterpolator;

    private long resumeTimeStamp;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final ProfileFragment a(String str, UserInfo userInfo) {
            ProfileFragment profileFragment = new ProfileFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("userInfo", userInfo);
            bundle.putString("userId", str);
            profileFragment.setArguments(bundle);
            return profileFragment;
        }

        private Companion() {
        }
    }

    public static final class b implements TabLayout.OnTabSelectedListener {
        b() {
        }

        @Override
        public void onTabReselected(TabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(TabLayout.Tab tab) {
            View customView = tab != null ? tab.getCustomView() : null;
            Intrinsics.f(customView, "null cannot be cast to non-null type android.widget.TextView");
            TextView textView = (TextView) customView;
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            textView.setTypeface(uf.a.a(context));
        }

        @Override
        public void onTabUnselected(TabLayout.Tab tab) {
            TextView textView = (TextView) (tab != null ? tab.getCustomView() : null);
            if (textView == null) {
                return;
            }
            Context context = textView.getContext();
            Intrinsics.g(context, "getContext(...)");
            textView.setTypeface(uf.a.d(context));
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override
        public void onPageSelected(int i10) {
            super.onPageSelected(i10);
            ProfileFragment.this.mTabSelectIndex = i10;
        }
    }

    public static final class d implements u0.b {
        d() {
        }

        public static final Unit d(ProfileFragment profileFragment) {
            profileFragment.d1();
            return Unit.f64096a;
        }

        @Override
        public void a(int i10, int i11) {
        }

        @Override
        public void b(int i10, int i11, int i12, boolean z10) {
            String userId;
            UserInfo userInfo;
            if (i12 == 1) {
                BlockDialog.Companion aVar = BlockDialog.INSTANCE;
                String value = ReportType.USER.getValue();
                ProfileInfo profileInfo = ProfileFragment.this.mProfileInfo;
                BlockDialog blockDialogA = aVar.a(value, z10, profileInfo != null ? profileInfo.getUserInfo() : null);
                Context contextRequireContext = ProfileFragment.this.requireContext();
                final ProfileFragment profileFragment = ProfileFragment.this;
                blockDialogA.A0(contextRequireContext, "block", new Function0() {
                    @Override
                    public final Object invoke() {
                        return ProfileFragment.d.d(profileFragment);
                    }
                });
                return;
            }
            ReportDialog.Companion aVar2 = ReportDialog.INSTANCE;
            String value2 = ReportType.USER.getValue();
            ProfileInfo profileInfo2 = ProfileFragment.this.mProfileInfo;
            if (profileInfo2 == null || (userInfo = profileInfo2.getUserInfo()) == null || (userId = userInfo.getUserId()) == null) {
                userId = "";
            }
            aVar2.a(value2, userId).k0(ProfileFragment.this.requireContext(), "report");
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f54942a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f54942a = function;
        }

        @Override
        public final Function a() {
            return this.f54942a;
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
            this.f54942a.invoke(obj);
        }
    }

    public ProfileFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mProfileViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(ProfileViewModel.class), new Function0<x0>() {
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
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileFragment.Z0();
            }
        });
        this.mLoginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileFragment.mLoginApi_delegate$lambda$1();
            }
        });
        this.refreshTime = 15;
        this.mHandler = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ProfileFragment.a1();
            }
        });
        this.maxStep = 128;
        this.step = 2;
        this.default = 1;
        this.appbarChildAlphaDecelerateInterpolator = new DecelerateInterpolator();
    }

    private final void A0(View view, float f10) {
        view.setAlpha(f10);
    }

    private final void C0() {
        if (isAdded()) {
            zg.g gVar = zg.g.f76786a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            if (gVar.a(contextRequireContext)) {
                refresh();
                return;
            }
            kj.h hVar = this.mLoadingDialog;
            if (hVar == null) {
                Intrinsics.y("mLoadingDialog");
                hVar = null;
            }
            hVar.dismiss();
            com.tn.lib.widget.toast.core.h.f40484a.k(R$string.no_network);
        }
    }

    private final void D0() {
        LinearLayoutCompat linearLayoutCompat;
        View view;
        View view2;
        TabLayout tabLayout;
        View view3;
        LinearLayoutCompat linearLayoutCompat2;
        LinearLayoutCompat linearLayoutCompat3;
        TnTextView tnTextView;
        LinearLayoutCompat linearLayoutCompat4;
        View view4;
        TnTextView tnTextView2;
        View view5;
        TabLayout tabLayout2;
        View view6;
        LinearLayoutCompat linearLayoutCompat5;
        LinearLayoutCompat linearLayoutCompat6;
        BlockInfo blockInfo;
        BlockInfo blockInfo2;
        ProfileInfo profileInfo = this.mProfileInfo;
        boolean block = (profileInfo == null || (blockInfo2 = profileInfo.getBlockInfo()) == null) ? false : blockInfo2.getBlock();
        ProfileInfo profileInfo2 = this.mProfileInfo;
        boolean blocked = (profileInfo2 == null || (blockInfo = profileInfo2.getBlockInfo()) == null) ? false : blockInfo.getBlocked();
        if (getIsSelf() || !(block || blocked)) {
            xu.j0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (linearLayoutCompat3 = mViewBinding.B) != null) {
                linearLayoutCompat3.setVisibility(0);
            }
            xu.j0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (linearLayoutCompat2 = mViewBinding2.f75634w) != null) {
                linearLayoutCompat2.setVisibility(0);
            }
            xu.j0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view3 = mViewBinding3.R) != null) {
                view3.setVisibility(0);
            }
            xu.j0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (tabLayout = mViewBinding4.E) != null) {
                tabLayout.setVisibility(0);
            }
            xu.j0 mViewBinding5 = getMViewBinding();
            if (mViewBinding5 != null && (view2 = mViewBinding5.f75616e) != null) {
                view2.setVisibility(0);
            }
            xu.j0 mViewBinding6 = getMViewBinding();
            if (mViewBinding6 != null && (view = mViewBinding6.Y) != null) {
                view.setVisibility(8);
            }
            xu.j0 mViewBinding7 = getMViewBinding();
            if (mViewBinding7 == null || (linearLayoutCompat = mViewBinding7.f75632u) == null) {
                return;
            }
            linearLayoutCompat.setVisibility(8);
            return;
        }
        xu.j0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (linearLayoutCompat6 = mViewBinding8.B) != null) {
            linearLayoutCompat6.setVisibility(4);
        }
        xu.j0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (linearLayoutCompat5 = mViewBinding9.f75634w) != null) {
            linearLayoutCompat5.setVisibility(4);
        }
        xu.j0 mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (view6 = mViewBinding10.R) != null) {
            view6.setVisibility(4);
        }
        xu.j0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (tabLayout2 = mViewBinding11.E) != null) {
            tabLayout2.setVisibility(4);
        }
        xu.j0 mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (view5 = mViewBinding12.f75616e) != null) {
            view5.setVisibility(4);
        }
        if (blocked) {
            xu.j0 mViewBinding13 = getMViewBinding();
            if (mViewBinding13 != null && (tnTextView2 = mViewBinding13.H) != null) {
                tnTextView2.setTextById(R$string.str_block_been);
            }
        } else {
            xu.j0 mViewBinding14 = getMViewBinding();
            if (mViewBinding14 != null && (tnTextView = mViewBinding14.H) != null) {
                tnTextView.setTextAction(new Function0() {
                    @Override
                    public final Object invoke() {
                        return ProfileFragment.E0(this.f55154a);
                    }
                });
            }
        }
        xu.j0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (view4 = mViewBinding15.Y) != null) {
            view4.setVisibility(0);
        }
        xu.j0 mViewBinding16 = getMViewBinding();
        if (mViewBinding16 == null || (linearLayoutCompat4 = mViewBinding16.f75632u) == null) {
            return;
        }
        linearLayoutCompat4.setVisibility(0);
    }

    public static final CharSequence E0(ProfileFragment profileFragment) {
        UserInfo userInfo;
        String string = profileFragment.getString(R$string.str_block_blocked);
        ProfileInfo profileInfo = profileFragment.mProfileInfo;
        return string + " " + ((profileInfo == null || (userInfo = profileInfo.getUserInfo()) == null) ? null : userInfo.getNickname());
    }

    private final void F0(EntranceInfo entranceInfo) {
        r0 r0Var;
        String jumpUrl;
        String title;
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (r0Var = mViewBinding.f75617f) == null) {
            return;
        }
        im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
        boolean z10 = bVar != null ? bVar.z() : false;
        if (!getIsSelf() || entranceInfo == null || (jumpUrl = entranceInfo.getJumpUrl()) == null || jumpUrl.length() == 0 || (title = entranceInfo.getTitle()) == null || title.length() == 0 || !z10) {
            ConstraintLayout root = r0Var.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            uf.c.g(root);
        } else {
            ConstraintLayout root2 = r0Var.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            uf.c.k(root2);
            r0Var.f75744d.setText(entranceInfo.getTitle());
            r0Var.f75742b.setText(entranceInfo.getDescription());
        }
    }

    private final void G0() {
        ConstraintLayout constraintLayout;
        NoTouchToolBar noTouchToolBar;
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (noTouchToolBar = mViewBinding.F) != null) {
            uf.c.e(noTouchToolBar);
        }
        xu.j0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (constraintLayout = mViewBinding2.G) != null) {
            uf.c.e(constraintLayout);
        }
        FragmentActivity activity = getActivity();
        ProfileActivity profileActivity = activity instanceof ProfileActivity ? (ProfileActivity) activity : null;
        if (profileActivity != null) {
            profileActivity.t0();
        }
    }

    private final ProfileViewModel H0() {
        return (ProfileViewModel) this.mProfileViewModel.getValue();
    }

    public static final Unit J0(ProfileFragment profileFragment, ProfileInfo profileInfo) {
        if (profileInfo != null) {
            profileFragment.k1(profileInfo);
        }
        kj.h hVar = profileFragment.mLoadingDialog;
        if (hVar == null) {
            Intrinsics.y("mLoadingDialog");
            hVar = null;
        }
        hVar.dismiss();
        return Unit.f64096a;
    }

    public static final Unit K0(final ProfileFragment profileFragment, Pair pair) {
        MyRoomView myRoomView;
        List list;
        Unit unit = null;
        ArrayList arrayListH = CollectionsKt.h(null, null, null);
        profileFragment.getClass();
        if (pair != null && (list = (List) pair.getSecond()) != null) {
            int i10 = 0;
            for (Object obj : list) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                DownloadBean downloadBean = (DownloadBean) obj;
                arrayListH.set(i10, new MyRoomView.b(downloadBean.getCover(), downloadBean.getType()));
                i10 = i11;
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            xu.j0 mViewBinding = profileFragment.getMViewBinding();
            if (mViewBinding != null && (myRoomView = mViewBinding.f75636y) != null) {
                myRoomView.showDownloadsData(2, Integer.valueOf(pair != null ? ((Number) pair.getFirst()).intValue() : 0), (MyRoomView.b) arrayListH.get(0), (MyRoomView.b) arrayListH.get(1), (MyRoomView.b) arrayListH.get(2), new Function0() {
                    @Override
                    public final Object invoke() {
                        return ProfileFragment.L0(this.f55093a);
                    }
                });
                unit = Unit.f64096a;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        return Unit.f64096a;
    }

    public static final Unit L0(ProfileFragment profileFragment) {
        profileFragment.e1("downloads");
        Navigator.x(TheRouter.c("/download/panel_activity"), profileFragment.requireContext(), null, 2, null);
        return Unit.f64096a;
    }

    public static final Unit M0(ProfileFragment profileFragment, ProfileEntranceInfo profileEntranceInfo) {
        profileFragment.F0(profileEntranceInfo != null ? profileEntranceInfo.getEntranceInfo() : null);
        return Unit.f64096a;
    }

    public static final Unit N0(ProfileFragment profileFragment, Integer num) {
        View view;
        View view2;
        xu.j0 mViewBinding = profileFragment.getMViewBinding();
        if (mViewBinding != null && (view2 = mViewBinding.W) != null) {
            view2.setVisibility(num.intValue() > 0 ? 0 : 8);
        }
        xu.j0 mViewBinding2 = profileFragment.getMViewBinding();
        if (mViewBinding2 != null && (view = mViewBinding2.X) != null) {
            view.setVisibility(num.intValue() > 0 ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void O0() {
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            TabLayoutMediator tabLayoutMediator = new TabLayoutMediator(mViewBinding.E, mViewBinding.S, new TabLayoutMediator.TabConfigurationStrategy() {
                @Override
                public final void onConfigureTab(TabLayout.Tab tab, int i10) {
                    ProfileFragment.P0(this.f55092a, tab, i10);
                }
            });
            mViewBinding.E.addOnTabSelectedListener((TabLayout.OnTabSelectedListener) new b());
            tabLayoutMediator.attach();
        }
    }

    public static final void P0(final ProfileFragment profileFragment, final TabLayout.Tab tab, int i10) {
        Intrinsics.h(tab, "tab");
        Context contextRequireContext = profileFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        TnTextView tnTextView = new TnTextView(contextRequireContext);
        Integer[] numArr = {Integer.valueOf(R$string.profile_post), Integer.valueOf(R$string.profile_like)};
        ColorStateList colorStateList = new ColorStateList(new int[][]{new int[]{R.attr.state_selected}, new int[0]}, new int[]{androidx.core.content.b.getColor(profileFragment.requireContext(), R$color.text_01), androidx.core.content.b.getColor(profileFragment.requireContext(), R$color.text_02)});
        tnTextView.setTextById(numArr[i10].intValue());
        tnTextView.setGravity(17);
        tnTextView.setTextSize(16.0f);
        tnTextView.setTextColor(colorStateList);
        tab.setCustomView(tnTextView);
        tab.view.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ProfileFragment.Q0(tab, profileFragment, view);
            }
        });
    }

    public static final void Q0(TabLayout.Tab tab, ProfileFragment profileFragment, View view) {
        ViewPager2 viewPager2;
        tab.select();
        xu.j0 mViewBinding = profileFragment.getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.S) == null || viewPager2.getCurrentItem() != 0) {
            profileFragment.f1("like");
        } else {
            profileFragment.f1("post");
        }
    }

    public static final Unit R0(xu.j0 j0Var, ProfileFragment profileFragment, UpdateResultEvent it) {
        Intrinsics.h(it, "it");
        if (it.getHasUpdate()) {
            j0Var.D.setVisibility(profileFragment.isSelf ? 0 : 8);
            j0Var.C.setVisibility(profileFragment.isSelf ? 0 : 8);
            j0Var.f75630s.setVisibility(profileFragment.isSelf ? 0 : 8);
            j0Var.f75631t.setVisibility(profileFragment.isSelf ? 0 : 8);
            j0Var.O.setVisibility(profileFragment.isSelf ? 0 : 8);
        } else {
            View settingRedTips = j0Var.D;
            Intrinsics.g(settingRedTips, "settingRedTips");
            uf.c.g(settingRedTips);
            View settingBlankRedTips = j0Var.C;
            Intrinsics.g(settingBlankRedTips, "settingBlankRedTips");
            uf.c.g(settingBlankRedTips);
            AppCompatImageView ivUpdate = j0Var.f75630s;
            Intrinsics.g(ivUpdate, "ivUpdate");
            uf.c.g(ivUpdate);
            AppCompatImageView updateRedTips = j0Var.P;
            Intrinsics.g(updateRedTips, "updateRedTips");
            uf.c.g(updateRedTips);
            AppCompatImageView ivUpdateBlank = j0Var.f75631t;
            Intrinsics.g(ivUpdateBlank, "ivUpdateBlank");
            uf.c.g(ivUpdateBlank);
            View updateBlankRedTips = j0Var.O;
            Intrinsics.g(updateBlankRedTips, "updateBlankRedTips");
            uf.c.g(updateBlankRedTips);
        }
        return Unit.f64096a;
    }

    public static final void S0(ProfileFragment profileFragment, xu.j0 j0Var, AppBarLayout appBarLayout, int i10) {
        profileFragment.j1(j0Var, Math.abs(i10 * 1.0f) / (appBarLayout != null ? appBarLayout.getTotalScrollRange() : i10));
    }

    public static final void T0(ProfileFragment profileFragment, float f10, boolean z10) {
        if (!z10 || f10 <= 0.0f || f10 >= 0.1f) {
            return;
        }
        kj.h hVar = profileFragment.mLoadingDialog;
        if (hVar == null) {
            Intrinsics.y("mLoadingDialog");
            hVar = null;
        }
        if (hVar.isShowing() || System.currentTimeMillis() - profileFragment.recordRefreshingTime <= 500) {
            return;
        }
        profileFragment.recordRefreshingTime = System.currentTimeMillis();
        profileFragment.C0();
    }

    public static final void U0(ActivityResult it) {
        Intrinsics.h(it, "it");
        if (it.getResultCode() == -1) {
            wf.a.C0922a.f(wf.a.f74274a, "loginStatus", "登录成功", false, 4, null);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, "loginStatus", "登录失败或者取消", false, 4, null);
        }
    }

    public static final void V0(ProfileFragment profileFragment, ActivityResult it) {
        Intent data;
        ProfileInfo profileInfo;
        Intrinsics.h(it, "it");
        if (it.getResultCode() != -1 || (data = it.getData()) == null || (profileInfo = profileFragment.mProfileInfo) == null) {
            return;
        }
        profileInfo.getMySubject().setWantToSeeCount(data.getIntExtra("want2SeeCount", profileInfo.getMySubject().getWantToSeeCount()));
    }

    private final boolean getIsSelf() {
        return this.isSelf;
    }

    private final boolean X0() {
        UserInfo userInfoI;
        qx.a mLoginApi = getMLoginApi();
        if (mLoginApi != null && (userInfoI = mLoginApi.i()) != null && userInfoI.getUserType() == 0 && getIsSelf()) {
            return true;
        }
        ProfileInfo profileInfo = this.mProfileInfo;
        return profileInfo != null && profileInfo.isVisitor();
    }

    public static final void Y0(xu.j0 j0Var) {
        j0Var.S.setCurrentItem(1);
    }

    public static final qx.a Z0() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final Handler a1() {
        return new Handler(Looper.getMainLooper());
    }

    public static final Unit b1(ProfileFragment profileFragment) {
        EntranceInfo entranceInfo;
        ProfileEntranceInfo profileEntranceInfo = (ProfileEntranceInfo) profileFragment.H0().l().f();
        if (profileEntranceInfo != null && (entranceInfo = profileEntranceInfo.getEntranceInfo()) != null) {
            String jumpUrl = entranceInfo.getJumpUrl();
            int jumpType = entranceInfo.getJumpType();
            StringBuilder sb2 = new StringBuilder();
            sb2.append("jumpUrl :");
            sb2.append(jumpUrl);
            sb2.append(", jumpType:");
            sb2.append(jumpType);
            if (jumpUrl == null || jumpUrl.length() == 0) {
                return Unit.f64096a;
            }
            if (entranceInfo.getJumpType() == 2) {
                Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", jumpUrl), profileFragment.requireContext(), null, 2, null);
            } else {
                hj.b bVar = hj.b.f61369a;
                Context contextRequireContext = profileFragment.requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                hj.b.d(bVar, contextRequireContext, jumpUrl, null, 4, null);
            }
        }
        return Unit.f64096a;
    }

    private final void c1() {
        Navigator.x(TheRouter.c("/profile/qr_code"), requireContext(), null, 2, null);
    }

    private final boolean checkLogin() {
        qx.a loginApi = getLoginApi();
        if (loginApi == null || loginApi.a()) {
            return true;
        }
        androidx.activity.result.b bVar = this.loginLaunch;
        if (bVar == null) {
            this.isNeedShowLoginActivity = true;
        }
        if (bVar == null) {
            return false;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        bVar.a(loginApi.p(contextRequireContext));
        return false;
    }

    public final void d1() {
        if (isHidden()) {
            return;
        }
        ProfileViewModel profileViewModelH0 = H0();
        UserInfo userInfo = this.mUserInfo;
        profileViewModelH0.k(userInfo != null ? userInfo.getUserId() : null);
        if (this.isSelf) {
            H0().j();
            H0().i();
        }
    }

    private final void e1(String moduleName) {
        String userId;
        String strF;
        HashMap map = new HashMap();
        UserInfo userInfo = this.mUserInfo;
        String str = "";
        if (userInfo == null || (userId = userInfo.getUserId()) == null) {
            userId = "";
        }
        map.put("user_id", userId);
        map.put("user_status", this.isSelf ? "me" : "others");
        map.put("module_name", moduleName);
        qi.h hVar = qi.h.f69682a;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (strF = logViewConfig.f()) != null) {
            str = strF;
        }
        hVar.o(str, map);
    }

    private final void f1(String tabName) {
        String strF;
        HashMap map = new HashMap();
        map.put("page_tab_name", tabName);
        qi.h hVar = qi.h.f69682a;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (strF = logViewConfig.f()) == null) {
            strF = "";
        }
        hVar.o(strF, map);
    }

    private final void g1() {
        MyRoomView myRoomView;
        MyRoomView myRoomView2;
        View view;
        View view2;
        LinearLayoutCompat linearLayoutCompat;
        LinearLayoutCompat linearLayoutCompat2;
        TnTextView tnTextView;
        TnTextView tnTextView2;
        AppCompatTextView appCompatTextView;
        AppCompatTextView appCompatTextView2;
        ShapeableImageView shapeableImageView;
        TnTextView tnTextView3;
        TnTextView tnTextView4;
        AppCompatTextView appCompatTextView3;
        ShapeableImageView shapeableImageView2;
        xu.j0 mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = null;
        ViewGroup.LayoutParams layoutParams2 = (mViewBinding == null || (shapeableImageView2 = mViewBinding.f75618g) == null) ? null : shapeableImageView2.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams2;
        xu.j0 mViewBinding2 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams3 = (mViewBinding2 == null || (appCompatTextView3 = mViewBinding2.N) == null) ? null : appCompatTextView3.getLayoutParams();
        Intrinsics.f(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams3;
        xu.j0 mViewBinding3 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams4 = (mViewBinding3 == null || (tnTextView4 = mViewBinding3.J) == null) ? null : tnTextView4.getLayoutParams();
        Intrinsics.f(layoutParams4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams4;
        xu.j0 mViewBinding4 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams5 = (mViewBinding4 == null || (tnTextView3 = mViewBinding4.M) == null) ? null : tnTextView3.getLayoutParams();
        Intrinsics.f(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams5;
        bVar.f7395v = 0;
        bVar.setMarginStart(0);
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = lj.a.b(32);
        xu.j0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (shapeableImageView = mViewBinding5.f75618g) != null) {
            shapeableImageView.setLayoutParams(bVar);
        }
        ((ViewGroup.MarginLayoutParams) bVar2).topMargin = lj.a.b(8);
        bVar2.setMarginStart(0);
        bVar2.setMarginEnd(0);
        ((ViewGroup.MarginLayoutParams) bVar2).width = -2;
        bVar2.f7369i = -1;
        bVar2.f7373k = -1;
        bVar2.f7389s = -1;
        bVar2.f7395v = -1;
        bVar2.O = -1;
        bVar2.N = 2;
        int i10 = R$id.iv_avatar;
        bVar2.f7371j = i10;
        bVar2.f7391t = i10;
        bVar2.f7393u = R$id.tv_gender;
        xu.j0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (appCompatTextView2 = mViewBinding6.N) != null) {
            appCompatTextView2.setLayoutParams(bVar2);
        }
        xu.j0 mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (appCompatTextView = mViewBinding7.N) != null) {
            appCompatTextView.setMaxWidth(lj.a.b(200));
        }
        ((ViewGroup.MarginLayoutParams) bVar3).topMargin = 0;
        bVar3.setMarginStart(lj.a.b(4));
        bVar3.f7391t = -1;
        bVar3.f7371j = -1;
        int i11 = R$id.tv_user_name;
        bVar3.f7389s = i11;
        bVar3.f7369i = i11;
        bVar3.f7395v = R$id.iv_avatar;
        bVar3.f7375l = i11;
        xu.j0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (tnTextView2 = mViewBinding8.J) != null) {
            tnTextView2.setLayoutParams(bVar3);
        }
        bVar4.setMarginStart(0);
        bVar4.f7389s = -1;
        bVar4.f7375l = -1;
        int i12 = R$id.iv_avatar;
        bVar4.f7391t = i12;
        bVar4.f7395v = i12;
        bVar4.f7371j = R$id.tv_user_name;
        xu.j0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (tnTextView = mViewBinding9.M) != null) {
            tnTextView.setLayoutParams(bVar4);
        }
        xu.j0 mViewBinding10 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams6 = (mViewBinding10 == null || (linearLayoutCompat2 = mViewBinding10.f75634w) == null) ? null : linearLayoutCompat2.getLayoutParams();
        Intrinsics.f(layoutParams6, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar5 = (ConstraintLayout.b) layoutParams6;
        bVar5.f7399x = lj.a.b(71);
        xu.j0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (linearLayoutCompat = mViewBinding11.f75634w) != null) {
            linearLayoutCompat.setLayoutParams(bVar5);
        }
        xu.j0 mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (view2 = mViewBinding12.Q) != null) {
            layoutParams = view2.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar6 = (ConstraintLayout.b) layoutParams;
        bVar6.f7399x = lj.a.b(71);
        xu.j0 mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (view = mViewBinding13.Q) != null) {
            view.setLayoutParams(bVar6);
        }
        xu.j0 mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (myRoomView2 = mViewBinding14.f75635x) != null) {
            myRoomView2.resetUserUi();
        }
        xu.j0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 == null || (myRoomView = mViewBinding15.f75637z) == null) {
            return;
        }
        myRoomView.resetUserUi();
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    private final Handler getMHandler() {
        return (Handler) this.mHandler.getValue();
    }

    private final qx.a getMLoginApi() {
        return (qx.a) this.mLoginApi.getValue();
    }

    private final void h1(int amount, CoverUrl url1, CoverUrl url2, CoverUrl url3, CoverUrl url4) {
        MyRoomView myRoomView;
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (myRoomView = mViewBinding.f75637z) == null) {
            return;
        }
        myRoomView.showCollectionData(3, getIsSelf(), Integer.valueOf(amount), url1, url2, url3, url4, new Function0() {
            @Override
            public final Object invoke() {
                return ProfileFragment.i1(this.f55098a);
            }
        });
    }

    public static final Unit i1(ProfileFragment profileFragment) {
        ProfileInfo profileInfo = profileFragment.mProfileInfo;
        if (profileInfo != null) {
            profileFragment.e1("want_to_see");
            Intent intent = new Intent(profileFragment.requireContext(), (Class<?>) ProfileSeeActivity.class);
            intent.putExtra("userId", profileInfo.getUserInfo().getUserId());
            androidx.activity.result.b bVar = profileFragment.seeListLaunch;
            if (bVar != null) {
                bVar.a(intent);
            }
        }
        return Unit.f64096a;
    }

    private final void j1(xu.j0 j0Var, float f10) {
        float interpolation;
        View view;
        View view2;
        View view3;
        if (isAdded()) {
            if (f10 < 0.2f) {
                interpolation = 0.0f;
            } else {
                interpolation = f10 < 0.4f ? this.appbarChildAlphaDecelerateInterpolator.getInterpolation((f10 - 0.2f) * 5.0f) : 1.0f;
            }
            B0(interpolation == 1.0f);
            if (getIsSelf()) {
                AppCompatImageView ivSetting = j0Var.f75627p;
                Intrinsics.g(ivSetting, "ivSetting");
                float f11 = 1 - interpolation;
                A0(ivSetting, f11);
                AppCompatImageView ivSettingBlank = j0Var.f75628q;
                Intrinsics.g(ivSettingBlank, "ivSettingBlank");
                A0(ivSettingBlank, interpolation);
                if (UpdateManager.f55354f.a().g()) {
                    View settingRedTips = j0Var.D;
                    Intrinsics.g(settingRedTips, "settingRedTips");
                    A0(settingRedTips, f11);
                    View settingBlankRedTips = j0Var.C;
                    Intrinsics.g(settingBlankRedTips, "settingBlankRedTips");
                    A0(settingBlankRedTips, interpolation);
                    AppCompatImageView ivUpdate = j0Var.f75630s;
                    Intrinsics.g(ivUpdate, "ivUpdate");
                    A0(ivUpdate, f11);
                    AppCompatImageView updateRedTips = j0Var.P;
                    Intrinsics.g(updateRedTips, "updateRedTips");
                    A0(updateRedTips, f11);
                    AppCompatImageView ivUpdateBlank = j0Var.f75631t;
                    Intrinsics.g(ivUpdateBlank, "ivUpdateBlank");
                    A0(ivUpdateBlank, interpolation);
                    View updateBlankRedTips = j0Var.O;
                    Intrinsics.g(updateBlankRedTips, "updateBlankRedTips");
                    A0(updateBlankRedTips, interpolation);
                }
                AppCompatImageView ivNotice = j0Var.f75623l;
                Intrinsics.g(ivNotice, "ivNotice");
                A0(ivNotice, f11);
                View viewRed = j0Var.W;
                Intrinsics.g(viewRed, "viewRed");
                A0(viewRed, f11);
                AppCompatImageView ivQrCode = j0Var.f75625n;
                Intrinsics.g(ivQrCode, "ivQrCode");
                A0(ivQrCode, f11);
                AppCompatImageView ivNoticeBlank = j0Var.f75624m;
                Intrinsics.g(ivNoticeBlank, "ivNoticeBlank");
                A0(ivNoticeBlank, interpolation);
                View viewRedBlank = j0Var.X;
                Intrinsics.g(viewRedBlank, "viewRedBlank");
                A0(viewRedBlank, interpolation);
                AppCompatImageView ivQrCodeBlank = j0Var.f75626o;
                Intrinsics.g(ivQrCodeBlank, "ivQrCodeBlank");
                A0(ivQrCodeBlank, interpolation);
                xu.j0 mViewBinding = getMViewBinding();
                if (mViewBinding != null && (view = mViewBinding.W) != null && view.getVisibility() == 0) {
                    xu.j0 mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (view3 = mViewBinding2.W) != null) {
                        A0(view3, f11);
                    }
                    xu.j0 mViewBinding3 = getMViewBinding();
                    if (mViewBinding3 != null && (view2 = mViewBinding3.X) != null) {
                        A0(view2, interpolation);
                    }
                }
                AppCompatImageView ivMore = j0Var.f75621j;
                Intrinsics.g(ivMore, "ivMore");
                uf.c.g(ivMore);
                AppCompatImageView ivMoreBlank = j0Var.f75622k;
                Intrinsics.g(ivMoreBlank, "ivMoreBlank");
                uf.c.g(ivMoreBlank);
            } else {
                AppCompatImageView ivMore2 = j0Var.f75621j;
                Intrinsics.g(ivMore2, "ivMore");
                A0(ivMore2, 1 - interpolation);
                AppCompatImageView ivMoreBlank2 = j0Var.f75622k;
                Intrinsics.g(ivMoreBlank2, "ivMoreBlank");
                A0(ivMoreBlank2, interpolation);
                ConstraintLayout root = j0Var.f75617f.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                uf.c.g(root);
            }
            if (getActivity() instanceof ProfileActivity) {
                AppCompatImageView ivBack = j0Var.f75619h;
                Intrinsics.g(ivBack, "ivBack");
                uf.c.k(ivBack);
                TnTextView ivBackBlack = j0Var.f75620i;
                Intrinsics.g(ivBackBlack, "ivBackBlack");
                uf.c.k(ivBackBlack);
                AppCompatImageView ivBack2 = j0Var.f75619h;
                Intrinsics.g(ivBack2, "ivBack");
                A0(ivBack2, 1 - interpolation);
                TnTextView ivBackBlack2 = j0Var.f75620i;
                Intrinsics.g(ivBackBlack2, "ivBackBlack");
                A0(ivBackBlack2, interpolation);
            } else {
                j0Var.f75619h.setVisibility(8);
                j0Var.f75620i.setVisibility(8);
            }
            j0Var.F.setIntercept(!(interpolation == 0.0f));
            ShapeableImageView ivTitleAvatar = j0Var.f75629r;
            Intrinsics.g(ivTitleAvatar, "ivTitleAvatar");
            A0(ivTitleAvatar, interpolation);
            TnTextView tvTitleUserName = j0Var.L;
            Intrinsics.g(tvTitleUserName, "tvTitleUserName");
            A0(tvTitleUserName, interpolation);
            j0Var.F.setBackgroundColor(z0(androidx.core.content.b.getColor(requireContext(), R$color.bg_01), interpolation));
        }
    }

    private final void k1(ProfileInfo profileInfo) {
        f fVar;
        MyRoomView myRoomView;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        this.mProfileInfo = profileInfo;
        m1(profileInfo.getUserInfo());
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (myRoomView = mViewBinding.f75635x) != null) {
            boolean isSelf = getIsSelf();
            Group myGroup = profileInfo.getMyGroup();
            myRoomView.showMyRoomData(1, isSelf, myGroup != null ? myGroup.getCount() : null, profileInfo.getMyGroupIconByIndex(0), profileInfo.getMyGroupIconByIndex(1), profileInfo.getMyGroupIconByIndex(2), profileInfo.getMyGroupIconByIndex(3), new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ProfileFragment.l1(this.f55090a, ((Integer) obj).intValue());
                }
            });
        }
        ArrayList arrayListH = CollectionsKt.h(null, null, null, null);
        List<CoverUrl> wantSubjects = profileInfo.getMySubject().getWantSubjects();
        if (wantSubjects != null) {
            int i10 = 0;
            for (Object obj : wantSubjects) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                CoverUrl coverUrl = (CoverUrl) obj;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    arrayListH.set(i10, coverUrl);
                    Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m453constructorimpl(ResultKt.a(th2));
                }
                i10 = i11;
            }
        }
        h1(profileInfo.getMySubject().getWantToSeeCount(), (CoverUrl) arrayListH.get(0), (CoverUrl) arrayListH.get(1), (CoverUrl) arrayListH.get(2), (CoverUrl) arrayListH.get(3));
        if (getIsSelf() && (fVar = this.mNoticeMessageViewModel) != null) {
            fVar.d();
        }
        D0();
    }

    public static final Unit l1(ProfileFragment profileFragment, int i10) {
        if (i10 == 4) {
            profileFragment.e1("myrooms");
            if (profileFragment.getIsSelf()) {
                Navigator.x(TheRouter.c("/room/list"), profileFragment.requireContext(), null, 2, null);
            } else {
                Navigator navigatorC = TheRouter.c("/room/others_list");
                UserInfo userInfo = profileFragment.mUserInfo;
                Navigator.x(navigatorC.K("user_id", userInfo != null ? userInfo.getUserId() : null), profileFragment.requireContext(), null, 2, null);
            }
        } else if (i10 == 5 && profileFragment.getIsSelf()) {
            profileFragment.e1("addroom");
            Navigator.x(TheRouter.c("/room/home"), profileFragment.requireContext(), null, 2, null);
        }
        return Unit.f64096a;
    }

    private final void m1(final UserInfo userInfo) {
        int i10;
        HashMap mapG;
        if (userInfo == null) {
            return;
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String userId = userInfo.getUserId();
            if (userId == null) {
                userId = "";
            }
            mapG.put("user_id", userId);
            mapG.put("user_status", this.isSelf ? "me" : "others");
        }
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f75614c.setForeground(androidx.core.content.b.getDrawable(requireContext(), R$color.cl31_30_p));
            ViewGroup.LayoutParams layoutParams = mViewBinding.f75614c.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            ViewGroup.LayoutParams layoutParams3 = mViewBinding.Q.getLayoutParams();
            Intrinsics.f(layoutParams3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams3;
            if (X0()) {
                mViewBinding.K.setVisibility(0);
                mViewBinding.J.setVisibility(8);
                mViewBinding.I.setVisibility(8);
                ni.f.a aVar = ni.f.f67269a;
                Context context = mViewBinding.f75618g.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                String avatar = userInfo.getAvatar();
                if (avatar == null) {
                    avatar = "";
                }
                ni.f.b bVarI = bVarM.g(avatar).i(R$mipmap.profile_visitor_avatar);
                ShapeableImageView ivAvatar = mViewBinding.f75618g;
                Intrinsics.g(ivAvatar, "ivAvatar");
                bVarI.d(ivAvatar);
                Context context2 = mViewBinding.f75629r.getContext();
                Intrinsics.g(context2, "getContext(...)");
                ni.f.b bVarM2 = aVar.m(context2);
                String avatar2 = userInfo.getAvatar();
                ni.f.b bVarI2 = bVarM2.g(avatar2 != null ? avatar2 : "").i(R$mipmap.profile_visitor_avatar);
                ShapeableImageView ivTitleAvatar = mViewBinding.f75629r;
                Intrinsics.g(ivTitleAvatar, "ivTitleAvatar");
                bVarI2.d(ivTitleAvatar);
                layoutParams2.height = com.blankj.utilcode.util.a0.a(getIsSelf() ? 176.0f : 185.0f) + com.blankj.utilcode.util.d.c();
                ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.a0.a(106.0f) + com.blankj.utilcode.util.d.c();
                bVar.f7371j = mViewBinding.K.getId();
            } else {
                mViewBinding.K.setVisibility(8);
                mViewBinding.I.setVisibility(getIsSelf() ? 0 : 8);
                ni.f.a aVar2 = ni.f.f67269a;
                Context context3 = mViewBinding.f75618g.getContext();
                Intrinsics.g(context3, "getContext(...)");
                ni.f.b bVarI3 = aVar2.m(context3).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar);
                ShapeableImageView ivAvatar2 = mViewBinding.f75618g;
                Intrinsics.g(ivAvatar2, "ivAvatar");
                bVarI3.d(ivAvatar2);
                Context context4 = mViewBinding.f75629r.getContext();
                Intrinsics.g(context4, "getContext(...)");
                ni.f.b bVarI4 = aVar2.m(context4).g(userInfo.getAvatar()).i(com.tn.lib.widget.R$mipmap.profile_default_avatar);
                ShapeableImageView ivTitleAvatar2 = mViewBinding.f75629r;
                Intrinsics.g(ivTitleAvatar2, "ivTitleAvatar");
                bVarI4.d(ivTitleAvatar2);
                if (userInfo.getGender() == 0) {
                    i10 = 0;
                } else {
                    i10 = userInfo.getGender() == 1 ? R$mipmap.profile_man : R$mipmap.profile_female;
                }
                mViewBinding.J.setCompoundDrawablesWithIntrinsicBounds(i10, 0, 0, 0);
                if (userInfo.getAge() <= 0) {
                    mViewBinding.J.setTextWithString("");
                } else if (userInfo.getGender() == 0) {
                    mViewBinding.J.setTextAction(new Function0() {
                        @Override
                        public final Object invoke() {
                            return ProfileFragment.n1(this.f55094a, userInfo);
                        }
                    });
                } else {
                    mViewBinding.J.setTextWithString(String.valueOf(userInfo.getAge()));
                }
                if (userInfo.getGender() != 0 || userInfo.getAge() > 0) {
                    if (mViewBinding.J.getVisibility() != 0) {
                        mViewBinding.J.setVisibility(0);
                        ViewGroup.LayoutParams layoutParams4 = mViewBinding.I.getLayoutParams();
                        Intrinsics.f(layoutParams4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams4;
                        bVar2.setMarginStart(com.blankj.utilcode.util.a0.a(8.0f));
                        mViewBinding.I.setLayoutParams(bVar2);
                    }
                } else if (mViewBinding.J.getVisibility() != 8) {
                    mViewBinding.J.setVisibility(8);
                    ViewGroup.LayoutParams layoutParams5 = mViewBinding.I.getLayoutParams();
                    Intrinsics.f(layoutParams5, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams5;
                    bVar3.setMarginStart(com.blankj.utilcode.util.a0.a(16.0f));
                    mViewBinding.I.setLayoutParams(bVar3);
                }
                layoutParams2.height = com.blankj.utilcode.util.a0.a(getIsSelf() ? 156.0f : 175.0f) + com.blankj.utilcode.util.d.c();
                bVar.f7371j = (mViewBinding.J.getVisibility() == 0 ? mViewBinding.J : mViewBinding.I).getId();
            }
            mViewBinding.f75614c.setLayoutParams(layoutParams2);
            mViewBinding.Q.setLayoutParams(bVar);
            mViewBinding.L.setText(userInfo.getNickname());
            mViewBinding.N.setText(androidx.core.text.a.c().m(userInfo.getNickname(), androidx.core.text.t.f7944a));
            mViewBinding.M.setTextAction(new Function0() {
                @Override
                public final Object invoke() {
                    return ProfileFragment.o1(this.f55096a, userInfo);
                }
            });
            mViewBinding.f75627p.setVisibility(getIsSelf() ? 0 : 8);
            if (UpdateManager.f55354f.a().g()) {
                mViewBinding.D.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.C.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.f75630s.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.P.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.f75631t.setVisibility(getIsSelf() ? 0 : 8);
                mViewBinding.O.setVisibility(getIsSelf() ? 0 : 8);
            }
        }
    }

    public static final qx.a mLoginApi_delegate$lambda$1() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public static final CharSequence n1(ProfileFragment profileFragment, UserInfo userInfo) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String string = profileFragment.getString(R$string.years_old);
        Intrinsics.g(string, "getString(...)");
        String str = String.format(string, Arrays.copyOf(new Object[]{Integer.valueOf(userInfo.getAge())}, 1));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    public static final CharSequence o1(ProfileFragment profileFragment, UserInfo userInfo) {
        return profileFragment.getString(R$string.profile_one_room_id, userInfo.getUsername());
    }

    private final void refresh() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        d1();
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager3 = mViewBinding.S) != null && (adapter = viewPager3.getAdapter()) != null && (adapter instanceof com.transsion.usercenter.profile.adapter.b)) {
            ((com.transsion.usercenter.profile.adapter.b) adapter).h(this.mTabSelectIndex);
        }
        xu.j0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (viewPager2 = mViewBinding2.S) == null) {
            return;
        }
        viewPager2.setCurrentItem(this.mTabSelectIndex);
    }

    private final int z0(int color, float fraction) {
        return Color.argb((int) (Color.alpha(color) * fraction), Color.red(color), Color.green(color), Color.blue(color));
    }

    public final void B0(boolean isExpand) {
        ImmersionBar immersionBarWith = ImmersionBar.with(this);
        boolean z10 = false;
        if (isExpand && !ij.y.f62128a.a()) {
            z10 = true;
        }
        immersionBarWith.statusBarDarkFont(z10).init();
    }

    @Override
    public xu.j0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xu.j0 j0VarC = xu.j0.c(inflater);
        Intrinsics.g(j0VarC, "inflate(...)");
        return j0VarC;
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        androidx.p009lifecycle.b0 b0VarH;
        qx.a mLoginApi;
        Intrinsics.h(view, "view");
        super.initData(view, savedInstanceState);
        if (getIsSelf() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.e(this);
        }
        ProfileViewModel profileViewModelH0 = H0();
        profileViewModelH0.p().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileFragment.J0(this.f55155a, (ProfileInfo) obj);
            }
        }));
        profileViewModelH0.m().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileFragment.K0(this.f55183a, (Pair) obj);
            }
        }));
        profileViewModelH0.l().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ProfileFragment.M0(this.f55186a, (ProfileEntranceInfo) obj);
            }
        }));
        m1(this.mUserInfo);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            f fVar = (f) new v0(activity).a(f.class);
            this.mNoticeMessageViewModel = fVar;
            if (fVar != null && (b0VarH = fVar.h()) != null) {
                b0VarH.j(getViewLifecycleOwner(), new e(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ProfileFragment.N0(this.f55187a, (Integer) obj);
                    }
                }));
            }
        }
        if (getIsSelf()) {
            H0().j();
        }
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        MyRoomView myRoomView;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        AppCompatImageView appCompatImageView5;
        AppCompatImageView appCompatImageView6;
        MyRoomView myRoomView2;
        View view2;
        View view3;
        MyRoomView myRoomView3;
        View view4;
        MyRoomView myRoomView4;
        MyRoomView myRoomView5;
        Intrinsics.h(view, "view");
        G0();
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        this.mLoadingDialog = new kj.h(contextRequireContext);
        this.loginLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                ProfileFragment.U0((ActivityResult) obj);
            }
        });
        this.seeListLaunch = registerForActivityResult(new f.j(), new androidx.activity.result.a() {
            @Override
            public final void a(Object obj) {
                ProfileFragment.V0(this.f55081a, (ActivityResult) obj);
            }
        });
        final xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f75613b.addOnOffsetChangedListener(new AppBarLayout.g() {
                @Override
                public final void onOffsetChanged(AppBarLayout appBarLayout, int i10) {
                    ProfileFragment.S0(this.f55084a, mViewBinding, appBarLayout, i10);
                }
            });
            j1(mViewBinding, 0.0f);
            mViewBinding.f75627p.setVisibility(this.isSelf ? 0 : 8);
            if (UpdateManager.f55354f.a().g()) {
                mViewBinding.D.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.f75630s.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.P.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.f75631t.setVisibility(this.isSelf ? 0 : 8);
                mViewBinding.O.setVisibility(this.isSelf ? 0 : 8);
            }
            ViewGroup.LayoutParams layoutParams = mViewBinding.f75613b.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
            if (cVarF instanceof FixAppBarLayoutBehavior) {
                ((FixAppBarLayoutBehavior) cVarF).S0(new FixAppBarLayoutBehavior.d() {
                    @Override
                    public final void a(float f10, boolean z10) {
                        ProfileFragment.T0(this.f55087a, f10, z10);
                    }
                });
            }
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ProfileFragment.R0(mViewBinding, this, (UpdateResultEvent) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = UpdateResultEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
            mViewBinding.f75627p.setOnClickListener(this);
            mViewBinding.f75628q.setOnClickListener(this);
            mViewBinding.f75630s.setOnClickListener(this);
            mViewBinding.f75631t.setOnClickListener(this);
            mViewBinding.f75621j.setOnClickListener(this);
            mViewBinding.f75622k.setOnClickListener(this);
            mViewBinding.f75623l.setOnClickListener(this);
            mViewBinding.f75624m.setOnClickListener(this);
            mViewBinding.K.setOnClickListener(this);
            mViewBinding.I.setOnClickListener(this);
            mViewBinding.f75618g.setOnClickListener(this);
            mViewBinding.f75619h.setOnClickListener(this);
            mViewBinding.f75620i.setOnClickListener(this);
            mViewBinding.f75625n.setOnClickListener(this);
            mViewBinding.f75617f.f75743c.setOnClickListener(this);
        }
        xu.j0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (myRoomView5 = mViewBinding2.f75635x) != null) {
            myRoomView5.setTitle(R$string.profile_my_room);
        }
        xu.j0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (myRoomView4 = mViewBinding3.f75636y) != null) {
            myRoomView4.setTitle(R$string.profile_my_downloads);
        }
        if (getIsSelf()) {
            xu.j0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (myRoomView = mViewBinding4.f75637z) == null) {
                return;
            }
            myRoomView.setTitle(R$string.profile_your_list);
            return;
        }
        xu.j0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (view4 = mViewBinding5.T) != null) {
            view4.setVisibility(8);
        }
        xu.j0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (myRoomView3 = mViewBinding6.f75636y) != null) {
            myRoomView3.setVisibility(8);
        }
        xu.j0 mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (view3 = mViewBinding7.U) != null) {
            view3.setVisibility(8);
        }
        xu.j0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (view2 = mViewBinding8.V) != null) {
            view2.setVisibility(0);
        }
        xu.j0 mViewBinding9 = getMViewBinding();
        if (mViewBinding9 != null && (myRoomView2 = mViewBinding9.f75637z) != null) {
            myRoomView2.setTitle(R$string.profile_list);
        }
        xu.j0 mViewBinding10 = getMViewBinding();
        if (mViewBinding10 != null && (appCompatImageView6 = mViewBinding10.f75625n) != null) {
            uf.c.g(appCompatImageView6);
        }
        xu.j0 mViewBinding11 = getMViewBinding();
        if (mViewBinding11 != null && (appCompatImageView5 = mViewBinding11.f75626o) != null) {
            uf.c.g(appCompatImageView5);
        }
        xu.j0 mViewBinding12 = getMViewBinding();
        if (mViewBinding12 != null && (appCompatImageView4 = mViewBinding12.f75621j) != null) {
            uf.c.g(appCompatImageView4);
        }
        xu.j0 mViewBinding13 = getMViewBinding();
        if (mViewBinding13 != null && (appCompatImageView3 = mViewBinding13.f75622k) != null) {
            uf.c.g(appCompatImageView3);
        }
        xu.j0 mViewBinding14 = getMViewBinding();
        if (mViewBinding14 != null && (appCompatImageView2 = mViewBinding14.f75623l) != null) {
            uf.c.g(appCompatImageView2);
        }
        xu.j0 mViewBinding15 = getMViewBinding();
        if (mViewBinding15 != null && (appCompatImageView = mViewBinding15.f75624m) != null) {
            uf.c.g(appCompatImageView);
        }
        g1();
    }

    @Override
    public void lazyLoadData() {
        final xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.S.setOffscreenPageLimit(1);
            ViewPager2 viewPager2 = mViewBinding.S;
            UserInfo userInfo = this.mUserInfo;
            viewPager2.setAdapter(new com.transsion.usercenter.profile.adapter.b(userInfo != null ? userInfo.getUserId() : null, this));
            mViewBinding.S.registerOnPageChangeCallback(new c());
            O0();
            if (X0()) {
                mViewBinding.S.post(new Runnable() {
                    @Override
                    public final void run() {
                        ProfileFragment.Y0(mViewBinding);
                    }
                });
            }
        }
        H0().i();
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
        return new qi.b("profiledetail", false, 2, null);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override
    public void onClick(View view) {
        View view2;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        BlockInfo blockInfo;
        BlockInfo blockInfo2;
        ShapeableImageView shapeableImageView;
        Intrinsics.h(view, "view");
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L)) {
            return;
        }
        int id2 = view.getId();
        if (id2 == R$id.tv_login) {
            e1("login");
            qx.a mLoginApi = getMLoginApi();
            if (mLoginApi != null) {
                Context contextRequireContext = requireContext();
                Intrinsics.g(contextRequireContext, "requireContext(...)");
                mLoginApi.k(contextRequireContext);
                return;
            }
            return;
        }
        boolean block = false;
        if (id2 == R$id.tv_find_movie) {
            e1("findmovies");
            Navigator.x(TheRouter.c("/main/tab").F("tabIndex", 0).K("topTab", "Trending"), requireContext(), null, 2, null);
            return;
        }
        if (id2 == R$id.iv_setting || id2 == R$id.iv_setting_blank) {
            e1("setting");
            FragmentActivity activity = getActivity();
            if (activity != null) {
                SettingActivity.Companion aVar = SettingActivity.INSTANCE;
                ProfileInfo profileInfo = this.mProfileInfo;
                aVar.a(activity, profileInfo != null ? profileInfo.getFissionState() : null);
                return;
            }
            return;
        }
        if (id2 == R$id.iv_update || id2 == R$id.iv_update_blank) {
            e1("update");
            if (UpdateManager.f55354f.a().g()) {
                FragmentActivity activity2 = getActivity();
                if (activity2 != null) {
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new ProfileFragment$onClick$2$1(activity2, this, null), 3, null);
                    return;
                }
                return;
            }
            xu.j0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView3 = mViewBinding.f75630s) != null) {
                uf.c.g(appCompatImageView3);
            }
            xu.j0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.P) != null) {
                uf.c.g(appCompatImageView2);
            }
            xu.j0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f75631t) != null) {
                uf.c.g(appCompatImageView);
            }
            xu.j0 mViewBinding4 = getMViewBinding();
            if (mViewBinding4 == null || (view2 = mViewBinding4.O) == null) {
                return;
            }
            uf.c.g(view2);
            return;
        }
        if (id2 == R$id.iv_notice_blank || id2 == R$id.iv_notice) {
            e1("notice");
            startActivity(new Intent(getActivity(), (Class<?>) UserMessageActivity.class));
            f fVar = this.mNoticeMessageViewModel;
            if (fVar != null) {
                fVar.e();
                return;
            }
            return;
        }
        if (id2 == R$id.tv_edit) {
            e1("editinfo");
            if (checkLogin()) {
                com.transsion.usercenter.edit.u uVarA = com.transsion.usercenter.edit.u.f54638b.a();
                xu.j0 mViewBinding5 = getMViewBinding();
                uVarA.f((mViewBinding5 == null || (shapeableImageView = mViewBinding5.f75618g) == null) ? null : shapeableImageView.getDrawable());
                FragmentActivity activity3 = getActivity();
                if (activity3 != null) {
                    ProfileEditCenterActivity.Companion aVar2 = ProfileEditCenterActivity.INSTANCE;
                    ProfileInfo profileInfo2 = this.mProfileInfo;
                    aVar2.a(activity3, profileInfo2 != null ? profileInfo2.getUserInfo() : null);
                    return;
                }
                return;
            }
            return;
        }
        if (id2 == R$id.iv_back || id2 == R$id.iv_back_black) {
            FragmentActivity activity4 = getActivity();
            if (activity4 != null) {
                activity4.onBackPressed();
                return;
            }
            return;
        }
        if (id2 != R$id.iv_more && id2 != R$id.iv_more_blank) {
            if (id2 == R$id.tvJump) {
                com.transsion.baseui.util.d.b(0L, new Function0() {
                    @Override
                    public final Object invoke() {
                        return ProfileFragment.b1(this.f55188a);
                    }
                }, 1, null);
                return;
            } else {
                if (id2 == R$id.iv_qr_code || id2 == R$id.iv_qr_code_blank) {
                    c1();
                    return;
                }
                return;
            }
        }
        if (this.mProfileInfo == null) {
            return;
        }
        iv.c cVar = new iv.c();
        xu.j0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatImageView4 = mViewBinding6.f75621j) == null) {
            return;
        }
        ProfileInfo profileInfo3 = this.mProfileInfo;
        if (profileInfo3 != null && (blockInfo2 = profileInfo3.getBlockInfo()) != null) {
            block = blockInfo2.getBlock();
        }
        ProfileInfo profileInfo4 = this.mProfileInfo;
        cVar.g(appCompatImageView4, (profileInfo4 == null || (blockInfo = profileInfo4.getBlockInfo()) == null || !blockInfo.getBlocked()) ? block : true);
        cVar.f(new d());
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0080  */
    @Override
    public void onCreate(Bundle savedInstanceState) {
        boolean z10;
        NativeSlideshowView nativeSlideshowView;
        NativeSlideshowView nativeSlideshowView2;
        JsonElement jsonElement;
        UserInfo userInfoI;
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        String userId = null;
        this.mUserInfo = (UserInfo) (arguments != null ? arguments.getSerializable("userInfo") : null);
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("userId") : null;
        if (this.mUserInfo == null) {
            if (string == null || string.length() == 0) {
                qx.a loginApi = getLoginApi();
                this.mUserInfo = loginApi != null ? loginApi.i() : null;
            } else {
                UserInfo userInfo = new UserInfo();
                userInfo.setUserId(string);
                this.mUserInfo = userInfo;
            }
        }
        UserInfo userInfo2 = this.mUserInfo;
        String userId2 = userInfo2 != null ? userInfo2.getUserId() : null;
        if (userId2 == null || userId2.length() == 0) {
            z10 = true;
        } else {
            UserInfo userInfo3 = this.mUserInfo;
            String userId3 = userInfo3 != null ? userInfo3.getUserId() : null;
            qx.a mLoginApi = getMLoginApi();
            if (mLoginApi != null && (userInfoI = mLoginApi.i()) != null) {
                userId = userInfoI.getUserId();
            }
            if (Intrinsics.c(userId3, userId)) {
                z10 = true;
            } else {
                z10 = false;
            }
        }
        this.isSelf = z10;
        JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("ProfileDetailBottomScene");
        this.refreshTime = (jsonObjectB == null || (jsonElement = jsonObjectB.get("refreshTime")) == null) ? 15 : jsonElement.getAsInt();
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (nativeSlideshowView2 = mViewBinding.A) != null) {
            nativeSlideshowView2.setSceneId("ProfileDetailBottomScene");
        }
        xu.j0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (nativeSlideshowView = mViewBinding2.A) == null) {
            return;
        }
        nativeSlideshowView.initAd();
    }

    @Override
    public void onDestroy() {
        NativeSlideshowView nativeSlideshowView;
        qx.a mLoginApi;
        super.onDestroy();
        if (getIsSelf() && (mLoginApi = getMLoginApi()) != null) {
            mLoginApi.j(this);
        }
        getMHandler().removeCallbacksAndMessages(null);
        xu.j0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (nativeSlideshowView = mViewBinding.A) == null) {
            return;
        }
        nativeSlideshowView.destroy();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
            } else {
                d1();
                logResume();
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onLogin(UserInfo user) {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        ViewPager2 viewPager4;
        Intrinsics.h(user, "user");
        if (getIsSelf()) {
            this.mUserInfo = user;
            this.mProfileInfo = null;
            xu.j0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (viewPager4 = mViewBinding.S) != null) {
                UserInfo userInfo = this.mUserInfo;
                viewPager4.setAdapter(new com.transsion.usercenter.profile.adapter.b(userInfo != null ? userInfo.getUserId() : null, this));
            }
            xu.j0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (viewPager3 = mViewBinding2.S) != null && (adapter = viewPager3.getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
            xu.j0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (viewPager2 = mViewBinding3.S) == null) {
                return;
            }
            viewPager2.setCurrentItem(this.mTabSelectIndex);
        }
    }

    @Override
    public void onLogout() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        ViewPager2 viewPager4;
        if (getIsSelf()) {
            qx.a loginApi = getLoginApi();
            this.mUserInfo = loginApi != null ? loginApi.i() : null;
            this.mProfileInfo = null;
            ProfileViewModel profileViewModelH0 = H0();
            UserInfo userInfo = this.mUserInfo;
            profileViewModelH0.k(userInfo != null ? userInfo.getUserId() : null);
            this.mTabSelectIndex = 1;
            xu.j0 mViewBinding = getMViewBinding();
            if (mViewBinding != null && (viewPager4 = mViewBinding.S) != null) {
                UserInfo userInfo2 = this.mUserInfo;
                viewPager4.setAdapter(new com.transsion.usercenter.profile.adapter.b(userInfo2 != null ? userInfo2.getUserId() : null, this));
            }
            xu.j0 mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (viewPager3 = mViewBinding2.S) != null && (adapter = viewPager3.getAdapter()) != null) {
                adapter.notifyDataSetChanged();
            }
            xu.j0 mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (viewPager2 = mViewBinding3.S) == null) {
                return;
            }
            viewPager2.setCurrentItem(this.mTabSelectIndex);
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
    }

    @Override
    public void onResume() {
        super.onResume();
        d1();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible(), 1, null);
    }

    @Override
    public void onUpdateUserInfo(UserInfo user) {
        Intrinsics.h(user, "user");
        if (getIsSelf()) {
            m1(user);
        }
    }
}
