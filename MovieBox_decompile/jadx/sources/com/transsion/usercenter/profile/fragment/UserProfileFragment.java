package com.transsion.usercenter.profile.fragment;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.activity.ComponentActivity;
import androidx.activity.OnBackPressedDispatcher;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.Scopes;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.view.RoomJoinAnimationView;
import com.tn.lib.view.RoomJoinStatus;
import com.tn.lib.view.expand.ExpandView;
import com.tn.lib.widget.R$color;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.PileLayout;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.publish.bean.PublishResult;
import com.transsion.publish.view.UploadView;
import com.transsion.push.PushConstants;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.usercenter.R$drawable;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$mipmap;
import com.transsion.usercenter.R$string;
import com.transsion.usercenter.profile.ProfileSubjectListViewModel;
import com.transsion.usercenter.profile.bean.BffSubscribeInfo;
import com.transsion.usercenter.profile.bean.BffSubscribeItem;
import com.transsion.usercenter.profile.bean.BffUserInfo;
import com.transsion.usercenter.profile.bean.BffUserProfileData;
import com.transsion.usercenter.profile.viewmodel.UserProfileViewModel;
import com.transsion.usercenter.profile.widget.UserProfileTabTitleView;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators.LinePagerIndicator;
import xu.l0;

@Metadata(d1 = {"\u0000°\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0010!\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u0096\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001OB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u0019\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\r\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J!\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0017H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ5\u0010 \u001a\u00020\u00052\b\u0010\u001b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u001d\u001a\u00020\u001c2\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u001c\u0012\u0004\u0012\u00020\u00050\u001eH\u0002¢\u0006\u0004\b \u0010!J\u0017\u0010#\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u001cH\u0002¢\u0006\u0004\b#\u0010$J%\u0010(\u001a\u00020\u00052\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00070%2\u0006\u0010'\u001a\u00020\u001cH\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010,\u001a\u00020\u00052\u0006\u0010+\u001a\u00020*H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0005H\u0002¢\u0006\u0004\b.\u0010\u0004J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0004J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u000200H\u0002¢\u0006\u0004\b2\u00103J\u000f\u00104\u001a\u00020\u0005H\u0002¢\u0006\u0004\b4\u0010\u0004J\u0017\u00107\u001a\u00020\u00052\u0006\u00106\u001a\u000205H\u0002¢\u0006\u0004\b7\u00108J\u001f\u0010;\u001a\u00020\u00052\u0006\u00109\u001a\u00020\u001c2\u0006\u0010:\u001a\u00020\u001cH\u0002¢\u0006\u0004\b;\u0010<J\u000f\u0010=\u001a\u00020\u0005H\u0002¢\u0006\u0004\b=\u0010\u0004J\u0017\u0010@\u001a\u00020\u00022\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0007H\u0016¢\u0006\u0004\bB\u0010CJ\u000f\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0005H\u0016¢\u0006\u0004\bG\u0010\u0004J\u000f\u0010H\u001a\u00020\u0005H\u0016¢\u0006\u0004\bH\u0010\u0004J\u000f\u0010I\u001a\u00020\u0005H\u0016¢\u0006\u0004\bI\u0010\u0004J\u000f\u0010J\u001a\u00020\u0005H\u0016¢\u0006\u0004\bJ\u0010\u0004J\u0017\u0010M\u001a\u00020\u00052\b\u0010L\u001a\u0004\u0018\u00010K¢\u0006\u0004\bM\u0010NR\u0016\u0010Q\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001b\u0010W\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u0018\u0010\b\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0018\u0010[\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010YR\u0016\u0010]\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010PR\u0016\u0010_\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010PR\u0016\u0010b\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010aR\u0016\u0010f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010aR\u0016\u0010h\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010aR\u0016\u0010j\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010aR\u001a\u0010n\u001a\b\u0012\u0004\u0012\u00020\u001c0k8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bl\u0010mR\u0014\u0010p\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bo\u0010aR\u0014\u0010r\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bq\u0010aR\u0014\u0010t\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bs\u0010aR\u0014\u0010v\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bu\u0010aR\u0014\u0010x\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010aR\u0014\u0010z\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010aR\u0014\u0010|\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010aR\u0014\u0010~\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010aR\u0015\u0010\u0080\u0001\u001a\u00020\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u007f\u0010aR\u0016\u0010\u0082\u0001\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010aR\u0018\u0010\u0084\u0001\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0083\u0001\u0010PR\u001b\u0010\u0087\u0001\u001a\u0004\u0018\u00010K8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001c\u0010\u008b\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0001\u0010\u008a\u0001R\"\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008c\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u008d\u0001\u0010T\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R\"\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0091\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\b\u0092\u0001\u0010T\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001¨\u0006\u0097\u0001"}, d2 = {"Lcom/transsion/usercenter/profile/fragment/UserProfileFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lxu/l0;", "<init>", "()V", "", "S0", "", "targetUserId", "Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;", "V0", "(Ljava/lang/String;)Lcom/transsion/usercenter/profile/fragment/UserProfileVideoFragment;", "Landroidx/fragment/app/Fragment;", "U0", "()Landroidx/fragment/app/Fragment;", "l1", "m1", "Landroidx/viewpager2/widget/ViewPager2;", "viewPager", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "indicator", "T0", "(Landroidx/viewpager2/widget/ViewPager2;Lnet/lucode/hackware/magicindicator/MagicIndicator;)V", "Lcom/transsion/usercenter/profile/bean/BffUserProfileData;", Scopes.PROFILE, "P0", "(Lcom/transsion/usercenter/profile/bean/BffUserProfileData;)V", "imageUrl", "", "fallbackColor", "Lkotlin/Function1;", "onColorReady", "W0", "(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)V", "inputColor", "R0", "(I)I", "", "avatarUrls", "finalBfColor", "v1", "(Ljava/util/List;I)V", "", "subscribed", "x1", "(Z)V", "n1", "j1", "Landroid/content/Context;", "context", "w1", "(Landroid/content/Context;)V", "z1", "", "collapsePercentage", "O0", "(F)V", "verticalOffset", "totalScrollRange", "y1", "(II)V", "p1", "Landroid/view/LayoutInflater;", "inflater", "a1", "(Landroid/view/LayoutInflater;)Lxu/l0;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "initViewData", "initViewModel", "retryLoadData", "initListener", "Lcom/transsion/publish/bean/PublishResult;", NotificationCompat.CATEGORY_EVENT, "t1", "(Lcom/transsion/publish/bean/PublishResult;)V", "a", "Z", "isSubscribed", "Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/Lazy;", "X0", "()Lcom/transsion/usercenter/profile/viewmodel/UserProfileViewModel;", "mViewModel", "c", "Ljava/lang/String;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "fromOptId", "e", "lastSubscribeBeforeToggle", "f", "shouldShowSubscribeToast", "g", "I", "statusBarFixedHeight", "h", "titleBarFixedHeight", "i", "topContentExpandedHeight", "j", "lastAppBarOffset", CampaignEx.JSON_KEY_AD_K, "lastAppBarTotalScrollRange", "", "l", "Ljava/util/List;", "tabTitleResIds", "m", "dp22", "n", "initialCoverSize", "o", "finalCoverSize", TtmlNode.TAG_P, "finalHeaderSize", CampaignEx.JSON_KEY_AD_Q, "finalMarginStart", CampaignEx.JSON_KEY_AD_R, "initialMarginStart", "s", "finalMarginTop", "t", "initialMarginTop", TmcStartParams.KEY_URL_SHORT, "collapsedTitlePaddingEnd", "v", "expandedTitlePaddingEnd", "w", "hasMarkLoadResult", "x", "Lcom/transsion/publish/bean/PublishResult;", "publishEventBean", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "y", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "firstUgcVideo", "Lcom/transsion/moviedetailapi/g;", "z", "Y0", "()Lcom/transsion/moviedetailapi/g;", "movieDetailService", "Ljo/a;", "A", "Z0", "()Ljo/a;", "publishedApi", "B", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UserProfileFragment extends PageStatusFragment<l0> {

    public static final Companion INSTANCE = new Companion(null);

    private final Lazy publishedApi;

    private boolean isSubscribed;

    private final Lazy mViewModel;

    private String targetUserId;

    private String fromOptId;

    private boolean lastSubscribeBeforeToggle;

    private boolean shouldShowSubscribeToast;

    private int statusBarFixedHeight;

    private int titleBarFixedHeight;

    private int topContentExpandedHeight;

    private int lastAppBarOffset;

    private int lastAppBarTotalScrollRange;

    private final List tabTitleResIds;

    private final int dp22;

    private final int initialCoverSize;

    private final int finalCoverSize;

    private final int finalHeaderSize;

    private final int finalMarginStart;

    private final int initialMarginStart;

    private final int finalMarginTop;

    private final int initialMarginTop;

    private final int collapsedTitlePaddingEnd;

    private final int expandedTitlePaddingEnd;

    private boolean hasMarkLoadResult;

    private PublishResult publishEventBean;

    private UGCVideo firstUgcVideo;

    private final Lazy movieDetailService;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UserProfileFragment a(String str, String fromOptId) {
            Intrinsics.h(fromOptId, "fromOptId");
            UserProfileFragment userProfileFragment = new UserProfileFragment();
            Bundle bundle = new Bundle();
            bundle.putString("userId", str);
            bundle.putString("fromOptId", fromOptId);
            userProfileFragment.setArguments(bundle);
            return userProfileFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends FragmentStateAdapter {
        b() {
            super(UserProfileFragment.this);
        }

        @Override
        public Fragment createFragment(int i10) {
            if (i10 != 0) {
                Fragment fragmentU0 = UserProfileFragment.this.U0();
                if (fragmentU0 != null) {
                    return fragmentU0;
                }
                UserProfileFragment userProfileFragment = UserProfileFragment.this;
                return userProfileFragment.V0(userProfileFragment.targetUserId);
            }
            if (UserProfileFragment.this.tabTitleResIds.size() != 1) {
                UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
                return userProfileFragment2.V0(userProfileFragment2.targetUserId);
            }
            Fragment fragmentU1 = UserProfileFragment.this.U0();
            if (fragmentU1 != null) {
                return fragmentU1;
            }
            UserProfileFragment userProfileFragment3 = UserProfileFragment.this;
            return userProfileFragment3.V0(userProfileFragment3.targetUserId);
        }

        @Override
        public int getItemCount() {
            return UserProfileFragment.this.tabTitleResIds.size();
        }
    }

    public static final class c extends qj.a {

        final ViewPager2 f55028c;

        c(ViewPager2 viewPager2) {
            this.f55028c = viewPager2;
        }

        public static final void j(ViewPager2 viewPager2, int i10, View view) {
            viewPager2.setCurrentItem(i10, true);
        }

        @Override
        public int a() {
            return UserProfileFragment.this.tabTitleResIds.size();
        }

        @Override
        public xy.c b(Context context) {
            Intrinsics.h(context, "context");
            LinePagerIndicator linePagerIndicator = new LinePagerIndicator(context);
            linePagerIndicator.setMode(2);
            linePagerIndicator.setLineHeight(0.0f);
            linePagerIndicator.setStartInterpolator(new AccelerateInterpolator());
            linePagerIndicator.setEndInterpolator(new DecelerateInterpolator(2.0f));
            linePagerIndicator.setColors(Integer.valueOf(androidx.core.content.b.getColor(context, R$color.transparent)));
            return linePagerIndicator;
        }

        @Override
        public xy.d c(Context context, final int i10) {
            Intrinsics.h(context, "context");
            UserProfileTabTitleView userProfileTabTitleView = new UserProfileTabTitleView(context);
            UserProfileFragment userProfileFragment = UserProfileFragment.this;
            final ViewPager2 viewPager2 = this.f55028c;
            userProfileTabTitleView.setTextById(((Number) userProfileFragment.tabTitleResIds.get(i10)).intValue());
            userProfileTabTitleView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserProfileFragment.c.j(viewPager2, i10, view);
                }
            });
            return userProfileTabTitleView;
        }

        @Override
        public LinearLayout.LayoutParams h(Context context, int i10) {
            Intrinsics.h(context, "context");
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -1);
            int iA = com.blankj.utilcode.util.a0.a(6.0f);
            layoutParams.setMargins(iA, 0, iA, 0);
            return layoutParams;
        }
    }

    public static final class d extends ViewPager2.OnPageChangeCallback {

        final MagicIndicator f55029a;

        final UserProfileFragment f55030b;

        d(MagicIndicator magicIndicator, UserProfileFragment userProfileFragment) {
            this.f55029a = magicIndicator;
            this.f55030b = userProfileFragment;
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            super.onPageScrollStateChanged(i10);
            MagicIndicator magicIndicator = this.f55029a;
            if (magicIndicator != null) {
                magicIndicator.onPageScrollStateChanged(i10);
            }
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
            MagicIndicator magicIndicator = this.f55029a;
            if (magicIndicator != null) {
                magicIndicator.onPageScrolled(i10, f10, i11);
            }
        }

        @Override
        public void onPageSelected(int i10) {
            HashMap mapG;
            super.onPageSelected(i10);
            MagicIndicator magicIndicator = this.f55029a;
            if (magicIndicator != null) {
                magicIndicator.onPageSelected(i10);
            }
            if (i10 < this.f55030b.tabTitleResIds.size()) {
                UserProfileFragment userProfileFragment = this.f55030b;
                String string = userProfileFragment.getString(((Number) userProfileFragment.tabTitleResIds.get(i10)).intValue());
                Intrinsics.g(string, "getString(...)");
                qi.b logViewConfig = this.f55030b.getLogViewConfig();
                if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
                    return;
                }
            }
        }
    }

    public static final class e implements UserProfileVideoFragment.b {
        e() {
        }

        @Override
        public void a(Long l10, String str, UGCVideo uGCVideo) {
            HashMap mapG;
            HashMap mapG2;
            String string;
            if (UserProfileFragment.this.hasMarkLoadResult) {
                return;
            }
            UserProfileFragment.this.firstUgcVideo = uGCVideo;
            UserProfileFragment.this.hasMarkLoadResult = true;
            qi.b logViewConfig = UserProfileFragment.this.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = UserProfileFragment.this.getLogViewConfig();
            if (logViewConfig2 != null && (mapG2 = logViewConfig2.g()) != null) {
                if (l10 == null || (string = l10.toString()) == null) {
                    string = "";
                }
            }
            qi.b logViewConfig3 = UserProfileFragment.this.getLogViewConfig();
            if (logViewConfig3 == null || (mapG = logViewConfig3.g()) == null) {
                return;
            }
            if (str == null) {
                str = "";
            }
        }
    }

    public static final class f extends CustomTarget {

        final Function1 f55032a;

        final UserProfileFragment f55033b;

        final int f55034c;

        f(Function1 function1, UserProfileFragment userProfileFragment, int i10) {
            this.f55032a = function1;
            this.f55033b = userProfileFragment;
            this.f55034c = i10;
        }

        /* JADX WARN: Code duplicated, block: B:28:0x0042 A[PHI: r1
          0x0042: PHI (r1v2 androidx.palette.graphics.a$e) = 
          (r1v1 androidx.palette.graphics.a$e)
          (r1v4 androidx.palette.graphics.a$e)
          (r1v6 androidx.palette.graphics.a$e)
          (r1v8 androidx.palette.graphics.a$e)
          (r1v10 androidx.palette.graphics.a$e)
         binds: [B:9:0x0011, B:13:0x001b, B:17:0x0025, B:21:0x002f, B:25:0x0039] A[DONT_GENERATE, DONT_INLINE]] */
        public static final void b(int i10, Function1 function1, UserProfileFragment userProfileFragment, androidx.palette.graphics.a aVar) {
            androidx.palette.graphics.a.e eVarJ;
            if (aVar == null || (eVarJ = aVar.i()) == null) {
                eVarJ = null;
                androidx.palette.graphics.a.e eVarO = aVar != null ? aVar.o() : null;
                if (eVarO != null) {
                    eVarJ = eVarO;
                } else {
                    eVarO = aVar != null ? aVar.m() : null;
                    if (eVarO != null) {
                        eVarJ = eVarO;
                    } else {
                        eVarO = aVar != null ? aVar.g() : null;
                        if (eVarO != null) {
                            eVarJ = eVarO;
                        } else {
                            eVarO = aVar != null ? aVar.k() : null;
                            if (eVarO != null) {
                                eVarJ = eVarO;
                            } else {
                                eVarO = aVar != null ? aVar.f() : null;
                                if (eVarO != null) {
                                    eVarJ = eVarO;
                                } else if (aVar != null) {
                                    eVarJ = aVar.j();
                                }
                            }
                        }
                    }
                }
            }
            if (eVarJ != null) {
                i10 = eVarJ.e();
            } else if (aVar != null) {
                i10 = aVar.h(i10);
            }
            function1.invoke(Integer.valueOf(userProfileFragment.R0(i10)));
        }

        @Override
        public void onLoadCleared(Drawable drawable) {
        }

        @Override
        public void onLoadFailed(Drawable drawable) {
            this.f55032a.invoke(Integer.valueOf(this.f55033b.R0(this.f55034c)));
        }

        @Override
        public void onResourceReady(Bitmap resource, Transition transition) {
            Intrinsics.h(resource, "resource");
            try {
                androidx.palette.graphics.a.b bVarA = androidx.palette.graphics.a.b(resource).a();
                final int i10 = this.f55034c;
                final Function1 function1 = this.f55032a;
                final UserProfileFragment userProfileFragment = this.f55033b;
                Intrinsics.e(bVarA.b(new androidx.palette.graphics.a.d() {
                    @Override
                    public final void a(androidx.palette.graphics.a aVar) {
                        UserProfileFragment.f.b(i10, function1, userProfileFragment, aVar);
                    }
                }));
            } catch (Exception unused) {
                this.f55032a.invoke(Integer.valueOf(this.f55033b.R0(this.f55034c)));
            }
        }
    }

    public static final class g implements ExpandView.c {
        g() {
        }

        public static final void g(UserProfileFragment userProfileFragment) {
            userProfileFragment.z1();
        }

        public static final void h(UserProfileFragment userProfileFragment) {
            userProfileFragment.y1(userProfileFragment.lastAppBarOffset, userProfileFragment.lastAppBarTotalScrollRange);
        }

        public static final void i(UserProfileFragment userProfileFragment) {
            userProfileFragment.z1();
        }

        public static final void j(UserProfileFragment userProfileFragment) {
            userProfileFragment.y1(userProfileFragment.lastAppBarOffset, userProfileFragment.lastAppBarTotalScrollRange);
        }

        @Override
        public void a(ExpandView expandView) {
            ConstraintLayout constraintLayoutB;
            ExpandView expandView2;
            l0 mViewBinding = UserProfileFragment.this.getMViewBinding();
            if (mViewBinding != null && (expandView2 = mViewBinding.f75668d) != null) {
                final UserProfileFragment userProfileFragment = UserProfileFragment.this;
                expandView2.post(new Runnable() {
                    @Override
                    public final void run() {
                        UserProfileFragment.g.i(userProfileFragment);
                    }
                });
            }
            l0 mViewBinding2 = UserProfileFragment.this.getMViewBinding();
            if (mViewBinding2 == null || (constraintLayoutB = mViewBinding2.getRoot()) == null) {
                return;
            }
            final UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
            constraintLayoutB.post(new Runnable() {
                @Override
                public final void run() {
                    UserProfileFragment.g.j(userProfileFragment2);
                }
            });
        }

        @Override
        public void b(ExpandView expandView) {
            ConstraintLayout constraintLayoutB;
            ExpandView expandView2;
            l0 mViewBinding = UserProfileFragment.this.getMViewBinding();
            if (mViewBinding != null && (expandView2 = mViewBinding.f75668d) != null) {
                final UserProfileFragment userProfileFragment = UserProfileFragment.this;
                expandView2.post(new Runnable() {
                    @Override
                    public final void run() {
                        UserProfileFragment.g.g(userProfileFragment);
                    }
                });
            }
            l0 mViewBinding2 = UserProfileFragment.this.getMViewBinding();
            if (mViewBinding2 == null || (constraintLayoutB = mViewBinding2.getRoot()) == null) {
                return;
            }
            final UserProfileFragment userProfileFragment2 = UserProfileFragment.this;
            constraintLayoutB.post(new Runnable() {
                @Override
                public final void run() {
                    UserProfileFragment.g.h(userProfileFragment2);
                }
            });
        }
    }

    public static final class h extends androidx.activity.u {
        h() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            UserProfileFragment.this.l1();
        }
    }

    public UserProfileFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.mViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UserProfileViewModel.class), new Function0<x0>() {
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
        this.tabTitleResIds = new ArrayList();
        this.dp22 = lj.a.b(24);
        this.initialCoverSize = lj.a.b(52);
        this.finalCoverSize = lj.a.b(24);
        this.finalHeaderSize = lj.a.b(28);
        this.finalMarginStart = lj.a.b(48);
        this.initialMarginStart = lj.a.b(12);
        this.finalMarginTop = lj.a.b(12);
        this.initialMarginTop = lj.a.b(54);
        this.collapsedTitlePaddingEnd = lj.a.b(105);
        this.movieDetailService = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UserProfileFragment.i1();
            }
        });
        this.publishedApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UserProfileFragment.o1();
            }
        });
    }

    private final void O0(float collapsePercentage) {
        AppCompatTextView appCompatTextView;
        RoomJoinAnimationView roomJoinAnimationView;
        l0 mViewBinding;
        RoomJoinAnimationView roomJoinAnimationView2;
        RoomJoinAnimationView roomJoinAnimationView3;
        l0 mViewBinding2;
        RoomJoinAnimationView roomJoinAnimationView4;
        RoomJoinAnimationView roomJoinAnimationView5;
        RoomJoinAnimationView roomJoinAnimationView6;
        ExpandView expandView;
        AppCompatImageView appCompatImageView;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        LinearLayout linearLayout;
        LinearLayout linearLayout2;
        int i10 = this.initialCoverSize;
        float f10 = i10 - ((i10 - this.finalCoverSize) * collapsePercentage);
        float f11 = i10 - ((i10 - this.finalHeaderSize) * collapsePercentage);
        int i11 = this.initialMarginStart;
        float f12 = i11 - ((i11 - this.finalMarginStart) * collapsePercentage);
        int i12 = this.initialMarginTop;
        float f13 = i12 - ((i12 - this.finalMarginTop) * collapsePercentage);
        l0 mViewBinding3 = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = null;
        ViewGroup.LayoutParams layoutParams2 = (mViewBinding3 == null || (linearLayout2 = mViewBinding3.f75677m) == null) ? null : linearLayout2.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams2;
        marginLayoutParams.setMarginStart((int) f12);
        marginLayoutParams.topMargin = (int) f13;
        marginLayoutParams.height = (int) f11;
        l0 mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (linearLayout = mViewBinding4.f75677m) != null) {
            linearLayout.setLayoutParams(marginLayoutParams);
        }
        l0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (shapeableImageView2 = mViewBinding5.f75673i) != null) {
            layoutParams = shapeableImageView2.getLayoutParams();
        }
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
        int i13 = (int) f10;
        layoutParams.width = i13;
        layoutParams.height = i13;
        l0 mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (shapeableImageView = mViewBinding6.f75673i) != null) {
            shapeableImageView.setLayoutParams(layoutParams);
        }
        float f14 = 2 * collapsePercentage;
        if (f14 > 1.0f) {
            f14 = 1.0f;
        }
        l0 mViewBinding7 = getMViewBinding();
        if (mViewBinding7 != null && (appCompatImageView = mViewBinding7.f75674j) != null) {
            appCompatImageView.setAlpha(1 - f14);
        }
        l0 mViewBinding8 = getMViewBinding();
        if (mViewBinding8 != null && (expandView = mViewBinding8.f75668d) != null) {
            expandView.setAlpha(1 - f14);
        }
        if (!Intrinsics.c(X0().q().f(), Boolean.TRUE)) {
            l0 mViewBinding9 = getMViewBinding();
            if (mViewBinding9 != null && (roomJoinAnimationView6 = mViewBinding9.f75683s) != null) {
                roomJoinAnimationView6.setAlpha(1 - f14);
            }
            boolean z10 = ((float) 1) - f14 > 0.0f;
            l0 mViewBinding10 = getMViewBinding();
            if (((mViewBinding10 == null || (roomJoinAnimationView5 = mViewBinding10.f75683s) == null || roomJoinAnimationView5.getVisibility() != 0) ? false : true) != z10 && (mViewBinding2 = getMViewBinding()) != null && (roomJoinAnimationView4 = mViewBinding2.f75683s) != null) {
                roomJoinAnimationView4.setVisibility((!z10 || ij.o.f62115a.i()) ? 8 : 0);
            }
            boolean z11 = collapsePercentage > 0.5f && !this.isSubscribed;
            l0 mViewBinding11 = getMViewBinding();
            if (((mViewBinding11 == null || (roomJoinAnimationView3 = mViewBinding11.f75684t) == null || roomJoinAnimationView3.getVisibility() != 0) ? false : true) != z11 && (mViewBinding = getMViewBinding()) != null && (roomJoinAnimationView2 = mViewBinding.f75684t) != null) {
                roomJoinAnimationView2.setVisibility((!z11 || ij.o.f62115a.i()) ? 8 : 0);
            }
        }
        l0 mViewBinding12 = getMViewBinding();
        int i14 = (mViewBinding12 == null || (roomJoinAnimationView = mViewBinding12.f75684t) == null || roomJoinAnimationView.getVisibility() != 0) ? this.expandedTitlePaddingEnd : this.collapsedTitlePaddingEnd;
        l0 mViewBinding13 = getMViewBinding();
        if (mViewBinding13 == null || (appCompatTextView = mViewBinding13.f75682r) == null) {
            return;
        }
        appCompatTextView.setPaddingRelative(appCompatTextView.getPaddingStart(), appCompatTextView.getPaddingTop(), i14, appCompatTextView.getPaddingBottom());
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0082  */
    /* JADX WARN: Code duplicated, block: B:39:0x0088  */
    /* JADX WARN: Code duplicated, block: B:40:0x008d  */
    /* JADX WARN: Code duplicated, block: B:42:0x0090  */
    private final void P0(BffUserProfileData profile) {
        BffUserInfo userInfo;
        Integer userType;
        BffUserInfo userInfo2;
        String username;
        final List listL;
        Integer followerCount;
        Boolean boolIsSubscribed;
        List<BffSubscribeItem> followerItems;
        String avatar;
        Integer publishCount;
        Integer userType2;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
        final l0 mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        BffUserInfo userInfo3 = profile.getUserInfo();
        if ((userInfo3 == null || (userType2 = userInfo3.getUserType()) == null || userType2.intValue() != 0) && (((userInfo = profile.getUserInfo()) == null || (userType = userInfo.getUserType()) == null || userType.intValue() != 1) && ij.g.f62108a.b())) {
            this.tabTitleResIds.add(Integer.valueOf(R$string.profile_video));
            this.tabTitleResIds.add(Integer.valueOf(R$string.profile_post));
        } else {
            this.tabTitleResIds.add(Integer.valueOf(R$string.profile_post));
        }
        S0();
        BffUserInfo userInfo4 = profile.getUserInfo();
        String str = "";
        if (userInfo4 == null || (username = userInfo4.getNickname()) == null) {
            userInfo2 = profile.getUserInfo();
            if (userInfo2 != null) {
                username = userInfo2.getUsername();
            } else {
                username = null;
            }
            if (username == null) {
                username = "";
            }
        } else {
            if (StringsKt.q0(username)) {
                username = null;
            }
            if (username == null) {
                userInfo2 = profile.getUserInfo();
                if (userInfo2 != null) {
                    username = userInfo2.getUsername();
                } else {
                    username = null;
                }
                if (username == null) {
                    username = "";
                }
            }
        }
        mViewBinding.f75682r.setText(username);
        BffUserInfo userInfo5 = profile.getUserInfo();
        String profile2 = userInfo5 != null ? userInfo5.getProfile() : null;
        if (profile2 == null) {
            profile2 = "";
        }
        String string = StringsKt.n1(profile2).toString();
        if (string.length() == 0) {
            mViewBinding.f75668d.setVisibility(8);
            mViewBinding.f75667c.setPadding(lj.a.b(12), lj.a.b(55), lj.a.b(12), lj.a.b(12));
        } else {
            mViewBinding.f75668d.setVisibility(0);
            mViewBinding.f75668d.m(string);
        }
        int i10 = R$string.user_profile_video_count;
        BffSubscribeInfo subscribeInfo = profile.getSubscribeInfo();
        String string2 = getString(i10, String.valueOf((subscribeInfo == null || (publishCount = subscribeInfo.getPublishCount()) == null) ? 0 : publishCount.intValue()));
        Intrinsics.g(string2, "getString(...)");
        mViewBinding.f75687w.setText(string2);
        BffUserInfo userInfo6 = profile.getUserInfo();
        if (userInfo6 != null && (avatar = userInfo6.getAvatar()) != null) {
            str = avatar;
        }
        ni.f.a aVar = ni.f.f67269a;
        Context contextRequireContext = requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        ni.f.b bVarI = aVar.m(contextRequireContext).g(str).i(R$mipmap.profile_visitor_avatar);
        ShapeableImageView ivRoomCover = mViewBinding.f75673i;
        Intrinsics.g(ivRoomCover, "ivRoomCover");
        bVarI.d(ivRoomCover);
        int color = androidx.core.content.b.getColor(requireContext(), com.transsion.usercenter.R$color.post_detail_top_bg);
        BffSubscribeInfo subscribeInfo2 = profile.getSubscribeInfo();
        if (subscribeInfo2 == null || (followerItems = subscribeInfo2.getFollowerItems()) == null) {
            listL = CollectionsKt.l();
        } else {
            listL = new ArrayList();
            Iterator<T> it = followerItems.iterator();
            while (it.hasNext()) {
                String avatar2 = ((BffSubscribeItem) it.next()).getAvatar();
                if (avatar2 != null) {
                    listL.add(avatar2);
                }
            }
        }
        W0(str, color, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileFragment.Q0(this.f55055a, listL, mViewBinding, ((Integer) obj).intValue());
            }
        });
        BffSubscribeInfo subscribeInfo3 = profile.getSubscribeInfo();
        if (subscribeInfo3 != null && (boolIsSubscribed = subscribeInfo3.isSubscribed()) != null) {
            x1(boolIsSubscribed.booleanValue());
        }
        BffSubscribeInfo subscribeInfo4 = profile.getSubscribeInfo();
        int iIntValue = (subscribeInfo4 == null || (followerCount = subscribeInfo4.getFollowerCount()) == null) ? 0 : followerCount.intValue();
        if (iIntValue <= 0) {
            mViewBinding.f75681q.setVisibility(4);
        } else {
            mViewBinding.f75681q.setVisibility(0);
        }
        mViewBinding.f75681q.setText(iIntValue == 1 ? getString(R$string.one_follower) : getString(R$string.x_followers, String.valueOf(iIntValue)));
    }

    public static final Unit Q0(UserProfileFragment userProfileFragment, List list, l0 l0Var, int i10) {
        userProfileFragment.v1(list, i10);
        l0Var.getRoot().findViewById(R$id.v_top_bg_color).setBackgroundColor(i10);
        l0Var.f75670f.setBackgroundColor(i10);
        return Unit.f64096a;
    }

    public final int R0(int inputColor) {
        float[] fArr = new float[3];
        Color.colorToHSV(inputColor, fArr);
        return Color.HSVToColor(new float[]{fArr[0], fArr[1], RangesKt.g(fArr[2], 0.6f)});
    }

    private final void S0() {
        ViewPager2 viewPager2;
        l0 mViewBinding = getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.f75688x) == null) {
            return;
        }
        viewPager2.setAdapter(new b());
        l0 mViewBinding2 = getMViewBinding();
        T0(viewPager2, mViewBinding2 != null ? mViewBinding2.f75678n : null);
    }

    private final void T0(ViewPager2 viewPager, MagicIndicator indicator) {
        if (indicator != null) {
            ORCommonNavigator oRCommonNavigator = new ORCommonNavigator(requireContext());
            oRCommonNavigator.setFollowTouch(true);
            oRCommonNavigator.setAdapter(new c(viewPager));
            indicator.setNavigator(oRCommonNavigator);
        }
        viewPager.registerOnPageChangeCallback(new d(indicator, this));
        if (indicator != null) {
            indicator.onPageSelected(0);
        }
    }

    public final Fragment U0() {
        Bundle bundle = new Bundle();
        bundle.putInt(EventConstants.KEY_SOURCE, 0);
        bundle.putString("userId", this.targetUserId);
        com.transsion.moviedetailapi.g gVarY0 = Y0();
        if (gVarY0 != null) {
            return gVarY0.e(bundle, ProfileSubjectListViewModel.class);
        }
        return null;
    }

    public final UserProfileVideoFragment V0(String targetUserId) {
        UserProfileVideoFragment userProfileVideoFragmentA = UserProfileVideoFragment.INSTANCE.a(targetUserId);
        userProfileVideoFragmentA.m0(new e());
        return userProfileVideoFragmentA;
    }

    private final void W0(String imageUrl, int fallbackColor, Function1 onColorReady) {
        if (imageUrl == null || StringsKt.q0(imageUrl)) {
            onColorReady.invoke(Integer.valueOf(R0(fallbackColor)));
        } else {
            Glide.with(requireContext()).asBitmap().load2(imageUrl).into(new f(onColorReady, this, fallbackColor));
        }
    }

    private final UserProfileViewModel X0() {
        return (UserProfileViewModel) this.mViewModel.getValue();
    }

    private final com.transsion.moviedetailapi.g Y0() {
        return (com.transsion.moviedetailapi.g) this.movieDetailService.getValue();
    }

    private final jo.a Z0() {
        return (jo.a) this.publishedApi.getValue();
    }

    public static final void b1(UserProfileFragment userProfileFragment, View view) {
        userProfileFragment.m1();
    }

    public static final void c1(UserProfileFragment userProfileFragment, View view) {
        OnBackPressedDispatcher onBackPressedDispatcher;
        FragmentActivity activity = userProfileFragment.getActivity();
        if (activity == null || (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) == null) {
            return;
        }
        onBackPressedDispatcher.l();
    }

    public static final void d1(View view) {
    }

    public static final void e1(UserProfileFragment userProfileFragment, View view) {
        userProfileFragment.m1();
    }

    public static final void f1(UserProfileFragment userProfileFragment, AppBarLayout appBarLayout, int i10) {
        userProfileFragment.lastAppBarOffset = i10;
        userProfileFragment.lastAppBarTotalScrollRange = appBarLayout.getTotalScrollRange();
        userProfileFragment.O0(Math.abs(i10) / appBarLayout.getTotalScrollRange());
        userProfileFragment.y1(i10, appBarLayout.getTotalScrollRange());
    }

    public static final void g1(UserProfileFragment userProfileFragment, View view) {
        userProfileFragment.l1();
    }

    public static final void h1(UserProfileFragment userProfileFragment, View view) {
        wf.a.f74274a.c("Userpage", "click iv_publish", false);
        userProfileFragment.n1();
    }

    public static final com.transsion.moviedetailapi.g i1() {
        return (com.transsion.moviedetailapi.g) TheRouter.d(com.transsion.moviedetailapi.g.class, new Object[0]);
    }

    private final void j1() {
        Object context = getContext();
        if (context instanceof ComponentActivity) {
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UserProfileFragment.k1(this.f55061a, (PublishResult) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishResult.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent((androidx.p009lifecycle.u) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
        }
    }

    public static final Unit k1(UserProfileFragment userProfileFragment, PublishResult evt) {
        Intrinsics.h(evt, "evt");
        userProfileFragment.t1(evt);
        return Unit.f64096a;
    }

    public final void l1() {
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void m1() {
        String str;
        String ops;
        String ugcVideoId;
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        UserInfo userInfoI;
        String subjectId;
        if (com.transsion.baseui.util.c.f42332a.a(2, 2000L) || (str = this.targetUserId) == null || Intrinsics.c(X0().q().f(), Boolean.TRUE)) {
            return;
        }
        HashMap map = new HashMap();
        map.put("module_name", PushConstants.TOPIC_SUBSCRIBE);
        map.put("page_tab_name", getString(R$string.profile_video));
        UGCVideo uGCVideo = this.firstUgcVideo;
        String str2 = "";
        if (uGCVideo == null || (ops = uGCVideo.getOps()) == null) {
            ops = "";
        }
        map.put("ops", ops);
        UGCVideo uGCVideo2 = this.firstUgcVideo;
        if (uGCVideo2 == null || (ugcVideoId = uGCVideo2.getUgcVideoId()) == null) {
            ugcVideoId = "";
        }
        map.put("content_id", ugcVideoId);
        UGCVideo uGCVideo3 = this.firstUgcVideo;
        if (uGCVideo3 != null && (subjectId = uGCVideo3.getSubjectId()) != null) {
            str2 = subjectId;
        }
        map.put("refer_subject_id", str2);
        map.put("content_type", "ugc_video");
        String str3 = this.targetUserId;
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        map.put("uploader_type", Intrinsics.c(str3, (aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId()) ? "me" : "others");
        com.transsion.baselib.helper.a.f42121a.f("Userpage", map);
        boolean z10 = this.isSubscribed;
        this.lastSubscribeBeforeToggle = z10;
        boolean z11 = !z10;
        l0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (roomJoinAnimationView2 = mViewBinding.f75683s) != null) {
            roomJoinAnimationView2.setStatus(RoomJoinStatus.LOADING);
        }
        l0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (roomJoinAnimationView = mViewBinding2.f75684t) != null) {
            roomJoinAnimationView.setStatus(RoomJoinStatus.LOADING);
        }
        this.shouldShowSubscribeToast = true;
        wf.a.f74274a.c("Userpage", "click subscribe toggle -> " + z11, false);
        X0().u(str, z11);
    }

    private final void n1() {
        jo.a aVarZ0;
        Context context = getContext();
        if (context == null || (aVarZ0 = Z0()) == null) {
            return;
        }
        aVarZ0.b(context);
    }

    public static final jo.a o1() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    private final void p1() {
        X0().q().j(getViewLifecycleOwner(), new v(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileFragment.q1(this.f55062a, (Boolean) obj);
            }
        }));
        X0().n().j(getViewLifecycleOwner(), new v(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileFragment.r1(this.f55063a, (Boolean) obj);
            }
        }));
        X0().o().j(getViewLifecycleOwner(), new v(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UserProfileFragment.s1(this.f55064a, (BffUserProfileData) obj);
            }
        }));
    }

    public static final Unit q1(UserProfileFragment userProfileFragment, Boolean bool) {
        AppCompatImageView appCompatImageView;
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        l0 mViewBinding = userProfileFragment.getMViewBinding();
        if (mViewBinding != null && (roomJoinAnimationView2 = mViewBinding.f75683s) != null) {
            roomJoinAnimationView2.setVisibility((Intrinsics.c(bool, Boolean.TRUE) || ij.o.f62115a.i()) ? 8 : 0);
        }
        l0 mViewBinding2 = userProfileFragment.getMViewBinding();
        if (mViewBinding2 != null && (roomJoinAnimationView = mViewBinding2.f75684t) != null) {
            roomJoinAnimationView.setVisibility((Intrinsics.c(bool, Boolean.TRUE) || ij.o.f62115a.i()) ? 8 : 0);
        }
        l0 mViewBinding3 = userProfileFragment.getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f75672h) != null) {
            appCompatImageView.setVisibility(Intrinsics.c(bool, Boolean.TRUE) ? 0 : 8);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0043  */
    public static final Unit r1(UserProfileFragment userProfileFragment, Boolean bool) {
        Unit unit;
        if (bool != null) {
            boolean zBooleanValue = bool.booleanValue();
            userProfileFragment.x1(zBooleanValue);
            String str = userProfileFragment.targetUserId;
            if (str != null) {
                gu.d dVar = new gu.d(str, zBooleanValue);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = gu.d.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, dVar, 0L);
                if (userProfileFragment.shouldShowSubscribeToast) {
                    com.transsion.baseui.util.m.c(zBooleanValue ? com.transsion.baseui.R$string.ugc_video_detail_followed : com.transsion.baseui.R$string.ugc_video_detail_unfollowed);
                    userProfileFragment.shouldShowSubscribeToast = false;
                }
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            if (unit == null) {
                userProfileFragment.x1(userProfileFragment.lastSubscribeBeforeToggle);
                userProfileFragment.shouldShowSubscribeToast = false;
            }
        } else {
            userProfileFragment.x1(userProfileFragment.lastSubscribeBeforeToggle);
            userProfileFragment.shouldShowSubscribeToast = false;
        }
        return Unit.f64096a;
    }

    public static final Unit s1(UserProfileFragment userProfileFragment, BffUserProfileData bffUserProfileData) {
        if (bffUserProfileData != null) {
            userProfileFragment.P0(bffUserProfileData);
        }
        return Unit.f64096a;
    }

    public static final void u1(UserProfileFragment userProfileFragment) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        userProfileFragment.w1(applicationA);
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
    private final void v1(List avatarUrls, int finalBfColor) {
        l0 mViewBinding;
        if (!isAdded() || isDetached() || isRemoving() || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        PileLayout plMemberIc = mViewBinding.f75679o;
        Intrinsics.g(plMemberIc, "plMemberIc");
        plMemberIc.removeAllViews();
        int i10 = this.dp22;
        ColorStateList colorStateListValueOf = ColorStateList.valueOf(finalBfColor);
        Intrinsics.g(colorStateListValueOf, "valueOf(...)");
        cb.n nVarM = cb.n.a().q(0, 10.0f).p(cb.n.f16848m).m();
        Intrinsics.g(nVarM, "build(...)");
        for (String str : CollectionsKt.K0(avatarUrls, 8)) {
            ShapeableImageView shapeableImageView = new ShapeableImageView(requireContext());
            shapeableImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
            shapeableImageView.setShapeAppearanceModel(nVarM);
            shapeableImageView.setStrokeWidth(lj.a.b(2));
            shapeableImageView.setStrokeColor(colorStateListValueOf);
            int iB = lj.a.b(1);
            shapeableImageView.setPadding(iB, iB, iB, iB);
            ni.f.a aVar = ni.f.f67269a;
            Context contextRequireContext = requireContext();
            Intrinsics.g(contextRequireContext, "requireContext(...)");
            aVar.m(contextRequireContext).g(str).i(R$mipmap.profile_visitor_avatar).m(i10).c(i10).d(shapeableImageView);
            plMemberIc.addView(shapeableImageView, i10, i10);
        }
        if (avatarUrls.size() > 8) {
            FrameLayout frameLayout = new FrameLayout(requireContext());
            View view = new View(requireContext());
            GradientDrawable gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(1);
            gradientDrawable.setColor(colorStateListValueOf.getDefaultColor());
            view.setBackground(gradientDrawable);
            ShapeableImageView shapeableImageView2 = new ShapeableImageView(requireContext());
            shapeableImageView2.setScaleType(ImageView.ScaleType.CENTER_CROP);
            shapeableImageView2.setShapeAppearanceModel(nVarM);
            shapeableImageView2.setStrokeWidth(lj.a.b(2));
            shapeableImageView2.setStrokeColor(colorStateListValueOf);
            int iB2 = lj.a.b(1);
            shapeableImageView2.setPadding(iB2, iB2, iB2, iB2);
            shapeableImageView2.setImageResource(R$drawable.ic_member_more);
            frameLayout.addView(view, new FrameLayout.LayoutParams(i10, i10));
            frameLayout.addView(shapeableImageView2, new FrameLayout.LayoutParams(i10, i10));
            plMemberIc.addView(frameLayout, i10, i10);
        }
    }

    private final void w1(Context context) {
        UploadView uploadView = new UploadView(context);
        uploadView.setPageName("Userpage");
        if (!uploadView.getIsShow()) {
            uploadView.setVisibility(0);
            uploadView.setAlpha(1.0f);
            Activity activityB = com.blankj.utilcode.util.a.b();
            if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
                activityB = com.blankj.utilcode.util.a.b();
            }
            if (activityB == null || activityB.isFinishing() || activityB.isDestroyed()) {
                return;
            } else {
                uploadView.show(activityB);
            }
        }
        uploadView.showFloatView(this.publishEventBean);
    }

    private final void x1(boolean subscribed) {
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        this.isSubscribed = subscribed;
        RoomJoinStatus roomJoinStatus = subscribed ? RoomJoinStatus.JOINED : RoomJoinStatus.JOIN;
        l0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (roomJoinAnimationView2 = mViewBinding.f75683s) != null) {
            roomJoinAnimationView2.setStatus(roomJoinStatus);
        }
        l0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (roomJoinAnimationView = mViewBinding2.f75684t) == null) {
            return;
        }
        roomJoinAnimationView.setStatus(roomJoinStatus);
    }

    public final void y1(int verticalOffset, int totalScrollRange) {
        l0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && totalScrollRange >= 0) {
            mViewBinding.f75676l.setAlpha(1.0f - (totalScrollRange == 0 ? 0.0f : Math.abs(verticalOffset) / totalScrollRange));
            if (this.statusBarFixedHeight == 0 || this.topContentExpandedHeight == 0) {
                this.statusBarFixedHeight = mViewBinding.f75675k.getHeight();
                this.titleBarFixedHeight = mViewBinding.f75685u.getHeight();
                this.topContentExpandedHeight = mViewBinding.f75667c.getHeight();
            }
            int i10 = this.topContentExpandedHeight;
            if (i10 == 0) {
                return;
            }
            int iE = this.statusBarFixedHeight + this.titleBarFixedHeight + RangesKt.e(i10 - Math.abs(verticalOffset), 0);
            View viewFindViewById = mViewBinding.getRoot().findViewById(R$id.v_top_bg_color);
            ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            if (((ViewGroup.MarginLayoutParams) bVar).height != iE) {
                ((ViewGroup.MarginLayoutParams) bVar).height = iE + 300;
                viewFindViewById.setLayoutParams(bVar);
            }
            ViewGroup.LayoutParams layoutParams2 = mViewBinding.f75676l.getLayoutParams();
            Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            if (((ViewGroup.MarginLayoutParams) bVar2).height != iE) {
                ((ViewGroup.MarginLayoutParams) bVar2).height = iE;
                mViewBinding.f75676l.setLayoutParams(bVar2);
            }
        }
    }

    public final void z1() {
        final l0 mViewBinding = getMViewBinding();
        if (mViewBinding == null) {
            return;
        }
        mViewBinding.getRoot().post(new Runnable() {
            @Override
            public void run() {
                int height = mViewBinding.f75675k.getHeight();
                int height2 = mViewBinding.f75685u.getHeight();
                int height3 = mViewBinding.f75667c.getHeight();
                int i10 = height + height2 + height3;
                if (i10 <= 0) {
                    mViewBinding.getRoot().post(this);
                    return;
                }
                this.statusBarFixedHeight = height;
                this.titleBarFixedHeight = height2;
                this.topContentExpandedHeight = height3;
                View viewFindViewById = mViewBinding.getRoot().findViewById(R$id.v_top_bg_color);
                ViewGroup.LayoutParams layoutParams = viewFindViewById.getLayoutParams();
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = i10 + 300;
                viewFindViewById.setLayoutParams(bVar);
                ViewGroup.LayoutParams layoutParams2 = mViewBinding.f75676l.getLayoutParams();
                Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
                ((ViewGroup.MarginLayoutParams) bVar2).height = i10;
                mViewBinding.f75676l.setLayoutParams(bVar2);
                View ivTopBg = mViewBinding.f75675k;
                Intrinsics.g(ivTopBg, "ivTopBg");
                uf.c.e(ivTopBg);
            }
        });
    }

    @Override
    public l0 getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        l0 l0VarC = l0.c(inflater);
        Intrinsics.g(l0VarC, "inflate(...)");
        return l0VarC;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        RoomJoinAnimationView roomJoinAnimationView;
        RoomJoinAnimationView roomJoinAnimationView2;
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        l0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f75671g) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserProfileFragment.c1(this.f55049a, view);
                }
            });
        }
        l0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f75674j) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserProfileFragment.d1(view);
                }
            });
        }
        l0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (roomJoinAnimationView2 = mViewBinding3.f75683s) != null) {
            roomJoinAnimationView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UserProfileFragment.e1(this.f55059a, view);
                }
            });
        }
        l0 mViewBinding4 = getMViewBinding();
        if (mViewBinding4 == null || (roomJoinAnimationView = mViewBinding4.f75684t) == null) {
            return;
        }
        roomJoinAnimationView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UserProfileFragment.b1(this.f55060a, view);
            }
        });
    }

    @Override
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        OnBackPressedDispatcher onBackPressedDispatcher;
        AppCompatImageView appCompatImageView2;
        AppBarLayout appBarLayout;
        View view;
        ExpandView expandView;
        l0 mViewBinding = getMViewBinding();
        if (mViewBinding != null && (expandView = mViewBinding.f75668d) != null) {
            expandView.setExpandListener(new g());
        }
        l0 mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (view = mViewBinding2.f75675k) != null) {
            uf.c.e(view);
        }
        l0 mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appBarLayout = mViewBinding3.f75666b) != null) {
            appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() {
                @Override
                public final void onOffsetChanged(AppBarLayout appBarLayout2, int i10) {
                    UserProfileFragment.f1(this.f55051a, appBarLayout2, i10);
                }
            });
        }
        l0 mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView2 = mViewBinding4.f75671g) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    UserProfileFragment.g1(this.f55053a, view2);
                }
            });
        }
        FragmentActivity activity = getActivity();
        if (activity != null && (onBackPressedDispatcher = activity.getOnBackPressedDispatcher()) != null) {
            androidx.p009lifecycle.u viewLifecycleOwner = getViewLifecycleOwner();
            Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            onBackPressedDispatcher.i(viewLifecycleOwner, new h());
        }
        z1();
        l0 mViewBinding5 = getMViewBinding();
        if (mViewBinding5 == null || (appCompatImageView = mViewBinding5.f75672h) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                UserProfileFragment.h1(this.f55054a, view2);
            }
        });
    }

    @Override
    public void initViewModel() {
        String userId;
        UserInfo userInfoI;
        HashMap mapG;
        HashMap mapG2;
        UserInfo userInfoI2;
        HashMap mapG3;
        HashMap mapG4;
        qi.b logViewConfig;
        HashMap mapG5;
        Bundle arguments = getArguments();
        String userId2 = null;
        if (arguments == null || (userId = arguments.getString("userId")) == null) {
            qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
            userId = (aVar == null || (userInfoI = aVar.i()) == null) ? null : userInfoI.getUserId();
        }
        this.targetUserId = userId;
        Bundle arguments2 = getArguments();
        String string = arguments2 != null ? arguments2.getString("fromOptId") : null;
        this.fromOptId = string;
        if (string != null && (logViewConfig = getLogViewConfig()) != null && (mapG5 = logViewConfig.g()) != null) {
        }
        qi.b logViewConfig2 = getLogViewConfig();
        if (logViewConfig2 != null && (mapG4 = logViewConfig2.g()) != null) {
        }
        qi.b logViewConfig3 = getLogViewConfig();
        if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
        }
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
            String str = this.targetUserId;
            qx.a aVar2 = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
            if (aVar2 != null && (userInfoI2 = aVar2.i()) != null) {
                userId2 = userInfoI2.getUserId();
            }
        }
        if (!this.tabTitleResIds.isEmpty()) {
            String string2 = getString(((Number) this.tabTitleResIds.get(0)).intValue());
            Intrinsics.g(string2, "getString(...)");
            qi.b logViewConfig5 = getLogViewConfig();
            if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
            }
        }
        p1();
        X0().p(this.targetUserId);
        j1();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("Userpage", false, 2, null);
    }

    @Override
    public void retryLoadData() {
        UserProfileViewModel userProfileViewModelX0 = X0();
        String str = this.targetUserId;
        if (str == null) {
            str = "";
        }
        userProfileViewModelX0.p(str);
    }

    public final void t1(PublishResult event) {
        l0 mViewBinding;
        AppCompatImageView appCompatImageView;
        this.publishEventBean = event;
        Integer numValueOf = event != null ? Integer.valueOf(event.getState()) : null;
        if (numValueOf == null || numValueOf.intValue() != 0 || (mViewBinding = getMViewBinding()) == null || (appCompatImageView = mViewBinding.f75672h) == null) {
            return;
        }
        appCompatImageView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                UserProfileFragment.u1(this.f55058a);
            }
        }, 1500L);
    }
}
