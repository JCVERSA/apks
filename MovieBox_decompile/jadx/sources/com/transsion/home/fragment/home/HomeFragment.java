package com.transsion.home.fragment.home;

import android.app.Application;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import androidx.p009lifecycle.y0;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.integration.constants.IntegrationConstants;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.TnTextView;
import com.transsion.baseui.activity.BaseActivity;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.baseui.widget.BlurredSectorView;
import com.transsion.baseui.widget.magicindicator.ORCommonNavigator;
import com.transsion.edcation.CourseManager;
import com.transsion.home.R$drawable;
import com.transsion.home.bean.AppTab;
import com.transsion.home.bean.BottomTabItem;
import com.transsion.home.bean.GradeGroup;
import com.transsion.home.bean.GradeItem;
import com.transsion.home.bean.HomePreferencesConfig;
import com.transsion.home.bean.HomePreferencesRefreshType;
import com.transsion.home.bean.HomeTabItem;
import com.transsion.home.fragment.dialog.CategoryDiscoverDialog;
import com.transsion.home.fragment.dialog.GradeSelectDialog;
import com.transsion.home.fragment.dialog.HomePreferencesEnterPopDialog;
import com.transsion.home.fragment.tab.BaseHomeSubFragment;
import com.transsion.home.fragment.tab.EmptyFragment;
import com.transsion.home.fragment.tab.MovieFragment;
import com.transsion.home.fragment.tab.SubShortTvFragment;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.home.fragment.tab.TopRoomFragment;
import com.transsion.home.fragment.tab.TrendingFragment;
import com.transsion.home.fragment.tab.TrendingUGCFragment;
import com.transsion.home.p004enum.HomeTabId;
import com.transsion.home.p004enum.HomeTabType;
import com.transsion.home.viewmodel.HomePreferencesViewModel;
import com.transsion.home.viewmodel.preload.PreloadTrendingData;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.transsnet.downloader.util.DownloadSDCardUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;
import net.lucode.hackware.magicindicator.buildins.commonnavigator.CommonNavigator;

@Metadata(d1 = {"\u0000²\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0015\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0007\u0018\u0000 \u0098\u00012\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001hB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\n\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\r\u0010\r\u001a\u00020\f¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\r\u0010\u0013\u001a\u00020\t¢\u0006\u0004\b\u0013\u0010\u0004J!\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00052\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0014\u0010\u000bJ\u000f\u0010\u0015\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0015\u0010\u0004J\u0019\u0010\u0018\u001a\u00020\t2\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\tH\u0016¢\u0006\u0004\b\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\tH\u0016¢\u0006\u0004\b \u0010\u0004J\u000f\u0010!\u001a\u00020\tH\u0016¢\u0006\u0004\b!\u0010\u0004J\r\u0010#\u001a\u00020\"¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\tH\u0016¢\u0006\u0004\b%\u0010\u0004J\u000f\u0010&\u001a\u00020\tH\u0016¢\u0006\u0004\b&\u0010\u0004J\u0015\u0010(\u001a\u00020\t2\u0006\u0010'\u001a\u00020\u001a¢\u0006\u0004\b(\u0010\u001dJ\r\u0010)\u001a\u00020\t¢\u0006\u0004\b)\u0010\u0004J\u001d\u0010,\u001a\u00020\t2\u0006\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\f¢\u0006\u0004\b,\u0010-J\u0017\u0010/\u001a\u00020\t2\u0006\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\u001a¢\u0006\u0004\b1\u00102J\u001d\u00105\u001a\u00020\t2\u0006\u00103\u001a\u00020\"2\u0006\u00104\u001a\u00020\u001a¢\u0006\u0004\b5\u00106J\r\u00107\u001a\u00020\t¢\u0006\u0004\b7\u0010\u0004J\u0015\u00109\u001a\b\u0012\u0004\u0012\u00020\"08H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010=\u001a\u00020\t2\u0006\u0010<\u001a\u00020;H\u0002¢\u0006\u0004\b=\u0010>J\u0017\u0010?\u001a\u00020\t2\u0006\u0010<\u001a\u00020;H\u0002¢\u0006\u0004\b?\u0010>J\u000f\u0010@\u001a\u00020\tH\u0002¢\u0006\u0004\b@\u0010\u0004J\u000f\u0010A\u001a\u00020\tH\u0002¢\u0006\u0004\bA\u0010\u0004J\u000f\u0010B\u001a\u00020\tH\u0002¢\u0006\u0004\bB\u0010\u0004J\u000f\u0010C\u001a\u00020\tH\u0002¢\u0006\u0004\bC\u0010\u0004J\u0019\u0010E\u001a\u00020\t2\b\u0010D\u001a\u0004\u0018\u00010\"H\u0002¢\u0006\u0004\bE\u0010FJ\u0019\u0010I\u001a\u00020\t2\b\u0010H\u001a\u0004\u0018\u00010GH\u0002¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\tH\u0002¢\u0006\u0004\bK\u0010\u0004J\u0017\u0010N\u001a\u00020M2\u0006\u0010L\u001a\u00020\fH\u0002¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\tH\u0002¢\u0006\u0004\bP\u0010\u0004J\u001f\u0010R\u001a\u00020\f2\u0006\u0010Q\u001a\u00020\"2\u0006\u0010+\u001a\u00020\fH\u0002¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\tH\u0002¢\u0006\u0004\bT\u0010\u0004J\u000f\u0010U\u001a\u00020\tH\u0002¢\u0006\u0004\bU\u0010\u0004J\u001f\u0010W\u001a\u00020\t2\u0006\u0010L\u001a\u00020\f2\u0006\u0010V\u001a\u00020\u001aH\u0002¢\u0006\u0004\bW\u0010XJ\u001b\u0010\\\u001a\u0004\u0018\u00010[2\b\u0010Z\u001a\u0004\u0018\u00010YH\u0002¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020\tH\u0002¢\u0006\u0004\b^\u0010\u0004J\u0017\u0010`\u001a\u00020\t2\u0006\u0010_\u001a\u00020\fH\u0002¢\u0006\u0004\b`\u0010aJ\u000f\u0010b\u001a\u00020\tH\u0002¢\u0006\u0004\bb\u0010\u0004J\u000f\u0010c\u001a\u00020\tH\u0002¢\u0006\u0004\bc\u0010\u0004J\u0019\u0010f\u001a\u00020\t2\b\u0010e\u001a\u0004\u0018\u00010dH\u0002¢\u0006\u0004\bf\u0010gR\u0018\u0010H\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0016\u0010l\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bj\u0010kR\u001c\u0010p\u001a\b\u0012\u0002\b\u0003\u0018\u00010m8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010oR\u001b\u0010v\u001a\u00020q8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010uR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010}\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010|R\u0017\u0010\u0080\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0018\u0010\u0082\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010kR\u001b\u0010\u0085\u0001\u001a\u0004\u0018\u00010[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0018\u0010\u0087\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010kR\u0018\u0010\u0089\u0001\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0088\u0001\u0010kR\u0018\u0010\u008b\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u008a\u0001\u0010\u007fR\u001a\u0010\u008f\u0001\u001a\u00030\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001c\u0010\u0093\u0001\u001a\u0005\u0018\u00010\u0090\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001¨\u0006\u0099\u0001"}, d2 = {"Lcom/transsion/home/fragment/home/HomeFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Lqk/p;", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "I0", "()I", "Landroid/view/LayoutInflater;", "inflater", "K0", "(Landroid/view/LayoutInflater;)Lqk/p;", "b1", "initData", "lazyLoadData", "Landroid/content/Intent;", "intent", "newIntent", "(Landroid/content/Intent;)V", "", "hidden", "onHiddenChanged", "(Z)V", "logPause", "logResume", "onResume", "onPause", "", "J0", "()Ljava/lang/String;", "onDestroyView", "onDestroy", "isWhite", "D0", "u1", "tabCode", "tabId", "t1", "(Ljava/lang/String;I)V", "outState", "onSaveInstanceState", "(Landroid/os/Bundle;)V", "Y0", "()Z", "pageTabName", "isRefresh", "a1", "(Ljava/lang/String;Z)V", "v1", "", "L0", "()Ljava/util/List;", "Lcom/transsion/home/bean/HomePreferencesConfig;", XLogUtil.TAG, "N0", "(Lcom/transsion/home/bean/HomePreferencesConfig;)V", "m1", "f1", "X0", "R0", "w1", AppMeasurementSdk.ConditionalUserProperty.VALUE, "r1", "(Ljava/lang/String;)V", "Lcom/transsion/home/bean/AppTab;", "appTab", "x1", "(Lcom/transsion/home/bean/AppTab;)V", "initViewPager", RequestParameters.POSITION, "Landroidx/fragment/app/Fragment;", "E0", "(I)Landroidx/fragment/app/Fragment;", "B0", "code", "H0", "(Ljava/lang/String;I)I", "d1", "j1", "smoothScroll", "c1", "(IZ)V", "", "navigator", "Landroid/widget/HorizontalScrollView;", "G0", "(Ljava/lang/Object;)Landroid/widget/HorizontalScrollView;", "k1", "scrollX", "O0", "(I)V", "p1", "Z0", "Lcom/transsion/home/bean/HomeTabItem;", "tabItem", "M0", "(Lcom/transsion/home/bean/HomeTabItem;)V", "a", "Lcom/transsion/home/bean/AppTab;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "mSelectTabIndex", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "c", "Lcom/transsion/home/fragment/tab/BaseHomeSubFragment;", "trendingFragment", "Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "F0", "()Lcom/transsion/home/viewmodel/HomePreferencesViewModel;", "homePreferencesViewModel", "Lcom/transsion/home/fragment/home/HomeSearchViewManager;", "e", "Lcom/transsion/home/fragment/home/HomeSearchViewManager;", "mHomeSearchViewManager", "f", "Landroid/os/Bundle;", "mSavedInstanceState", "g", "Z", "isHandlingRedirect", "h", "lastValidPosition", "i", "Landroid/widget/HorizontalScrollView;", "cachedScrollView", "j", "lastTopTabScrollX", CampaignEx.JSON_KEY_AD_K, "scrollStartSelectIndex", "l", "isTopTabScrolling", "", "m", "J", "resumeTimeStamp", "Landroid/os/Handler;", "n", "Landroid/os/Handler;", "scrollStopHandler", "Ljava/lang/Runnable;", "o", "Ljava/lang/Runnable;", "scrollStopRunnable", TtmlNode.TAG_P, "Home_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class HomeFragment extends BaseFragment<qk.p> {

    public static final int f43919q = 8;

    private static int f43920r;

    private AppTab appTab;

    private int mSelectTabIndex = f43920r;

    private BaseHomeSubFragment trendingFragment;

    private final Lazy homePreferencesViewModel;

    private HomeSearchViewManager mHomeSearchViewManager;

    private Bundle mSavedInstanceState;

    private boolean isHandlingRedirect;

    private int lastValidPosition;

    private HorizontalScrollView cachedScrollView;

    private int lastTopTabScrollX;

    private int scrollStartSelectIndex;

    private boolean isTopTabScrolling;

    private long resumeTimeStamp;

    private Handler scrollStopHandler;

    private Runnable scrollStopRunnable;

    public class b {

        public static final int[] f43936a;

        static {
            int[] iArr = new int[HomeTabType.values().length];
            try {
                iArr[HomeTabType.SUB_OPERATION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[HomeTabType.SUBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[HomeTabType.H5TAB.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[HomeTabType.TRENDING.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[HomeTabType.SHORT_TV_TAB.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[HomeTabType.SUB_ROOM.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            f43936a = iArr;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        public static final void b(HomeFragment homeFragment, int i10) {
            MagicIndicator magicIndicator;
            qk.p mViewBinding = homeFragment.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f69823k) != null) {
                magicIndicator.onPageSelected(i10);
            }
            homeFragment.c1(i10, false);
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            MagicIndicator magicIndicator;
            super.onPageScrollStateChanged(i10);
            qk.p mViewBinding = HomeFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f69823k) == null) {
                return;
            }
            magicIndicator.onPageScrollStateChanged(i10);
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            MagicIndicator magicIndicator;
            super.onPageScrolled(i10, f10, i11);
            qk.p mViewBinding = HomeFragment.this.getMViewBinding();
            if (mViewBinding == null || (magicIndicator = mViewBinding.f69823k) == null) {
                return;
            }
            magicIndicator.onPageScrolled(i10, f10, i11);
        }

        @Override
        public void onPageSelected(final int i10) {
            MagicIndicator magicIndicator;
            String name;
            List<HomeTabItem> homeTabs;
            List<HomeTabItem> homeTabs2;
            super.onPageSelected(i10);
            if (HomeFragment.this.isHandlingRedirect || i10 < 0 || HomeFragment.this.mSelectTabIndex == i10) {
                return;
            }
            AppTab appTab = HomeFragment.this.appTab;
            HomeTabItem homeTabItem = (appTab == null || (homeTabs2 = appTab.getHomeTabs()) == null) ? null : homeTabs2.get(i10);
            if (homeTabItem == null || !homeTabItem.isOpenLandPage()) {
                HomeFragment.this.lastValidPosition = i10;
                qk.p mViewBinding = HomeFragment.this.getMViewBinding();
                if (mViewBinding != null && (magicIndicator = mViewBinding.f69823k) != null) {
                    final HomeFragment homeFragment = HomeFragment.this;
                    magicIndicator.post(new Runnable() {
                        @Override
                        public final void run() {
                            HomeFragment.c.b(homeFragment, i10);
                        }
                    });
                }
            } else {
                HomeFragment.this.isHandlingRedirect = true;
                ij.k.h(homeTabItem.getUrl(), null, 1, null);
            }
            AppTab appTab2 = HomeFragment.this.appTab;
            HomeTabItem homeTabItem2 = (appTab2 == null || (homeTabs = appTab2.getHomeTabs()) == null) ? null : homeTabs.get(i10);
            com.transsion.baselib.helper.a aVar = com.transsion.baselib.helper.a.f42121a;
            String strJ0 = HomeFragment.this.J0();
            if (homeTabItem2 == null || (name = homeTabItem2.getName()) == null) {
                name = "";
            }
            aVar.n(strJ0, name);
            HomeFragment.this.mSelectTabIndex = i10;
            HomeFragment homeFragment2 = HomeFragment.this;
            homeFragment2.a1(homeFragment2.J0(), false);
            if (HomeFragment.this.isAdded()) {
                Fragment fragmentK0 = HomeFragment.this.getChildFragmentManager().k0("f" + HomeFragment.this.mSelectTabIndex);
                if (fragmentK0 instanceof BaseHomeSubFragment) {
                    ((BaseHomeSubFragment) fragmentK0).o0();
                } else {
                    HomeFragment.this.D0(false);
                }
            }
            if (Intrinsics.c(homeTabItem2 != null ? homeTabItem2.getTabCode() : null, "Education") && HomeFragment.this.isAdded() && !HomeFragment.this.isDetached() && !HomeFragment.this.isRemoving()) {
                CourseManager courseManager = CourseManager.f42905a;
                FragmentManager supportFragmentManager = HomeFragment.this.requireActivity().getSupportFragmentManager();
                Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
                courseManager.g(supportFragmentManager);
            }
            HomeFragment.this.v1();
        }
    }

    public static final class d extends FragmentStateAdapter {
        d() {
            super(HomeFragment.this);
        }

        @Override
        public Fragment createFragment(int i10) {
            return HomeFragment.this.E0(i10);
        }

        @Override
        public int getItemCount() {
            List<HomeTabItem> homeTabs;
            AppTab appTab = HomeFragment.this.appTab;
            if (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) {
                return 0;
            }
            return homeTabs.size();
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f43939a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f43939a = function;
        }

        @Override
        public final Function a() {
            return this.f43939a;
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
            this.f43939a.invoke(obj);
        }
    }

    public static final class f implements yg.m {
        f() {
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
            Intrinsics.h(network, "network");
            Intrinsics.h(networkCapabilities, "networkCapabilities");
            HomeSearchViewManager homeSearchViewManager = HomeFragment.this.mHomeSearchViewManager;
            if (homeSearchViewManager != null) {
                homeSearchViewManager.I(network, networkCapabilities);
            }
        }
    }

    public HomeFragment() {
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return this;
            }
        };
        this.homePreferencesViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(HomePreferencesViewModel.class), new Function0<x0>() {
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
        this.scrollStartSelectIndex = -1;
    }

    /* JADX WARN: Code duplicated, block: B:58:0x00b4  */
    private final void B0() {
        int i10;
        int i11;
        ViewPager2 viewPager2;
        MagicIndicator magicIndicator;
        ViewPager2 viewPager3;
        List<HomeTabItem> homeTabs;
        List<HomeTabItem> homeTabs2;
        BottomTabItem homeBottomTab;
        ViewPager2 viewPager4;
        qk.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (viewPager4 = mViewBinding.f69831s) != null) {
            viewPager4.registerOnPageChangeCallback(new c());
        }
        AppTab appTab = this.appTab;
        String defaultSubTabCode = (appTab == null || (homeBottomTab = appTab.getHomeBottomTab()) == null) ? null : homeBottomTab.getDefaultSubTabCode();
        AppTab appTab2 = this.appTab;
        if (appTab2 == null || (homeTabs2 = appTab2.getHomeTabs()) == null) {
            i10 = -1;
            i11 = -1;
        } else {
            int i12 = 0;
            i10 = -1;
            i11 = -1;
            for (Object obj : homeTabs2) {
                int i13 = i12 + 1;
                if (i12 < 0) {
                    CollectionsKt.u();
                }
                HomeTabItem homeTabItem = (HomeTabItem) obj;
                if (defaultSubTabCode != null) {
                    if (Intrinsics.c(defaultSubTabCode, homeTabItem != null ? homeTabItem.getTabCode() : null)) {
                        i11 = i12;
                    }
                }
                if (Intrinsics.c(homeTabItem != null ? homeTabItem.getType() : null, HomeTabType.TRENDING.getValue())) {
                    i10 = i12;
                }
                if (homeTabItem != null ? Intrinsics.c(homeTabItem.isEducationTab(), Boolean.TRUE) : false) {
                    HomeTabId.INSTANCE.a(homeTabItem.getTabId());
                }
                i12 = i13;
            }
        }
        if (i11 >= 0) {
            i10 = i11;
        }
        f43920r = i10;
        Bundle bundle = this.mSavedInstanceState;
        int i14 = bundle != null ? bundle.getInt("current_tab", -1) : -1;
        if (i14 < 0) {
            i14 = f43920r;
        } else {
            AppTab appTab3 = this.appTab;
            if (i14 >= ((appTab3 == null || (homeTabs = appTab3.getHomeTabs()) == null) ? 0 : homeTabs.size())) {
                i14 = f43920r;
            }
        }
        this.mSelectTabIndex = i14;
        qk.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (viewPager3 = mViewBinding2.f69831s) != null) {
            viewPager3.setCurrentItem(this.mSelectTabIndex, false);
        }
        qk.p mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (magicIndicator = mViewBinding3.f69823k) != null) {
            magicIndicator.post(new Runnable() {
                @Override
                public final void run() {
                    HomeFragment.C0(this.f43971a);
                }
            });
        }
        qk.p mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (viewPager2 = mViewBinding4.f69831s) != null) {
            viewPager2.setOffscreenPageLimit(1);
        }
        v1();
    }

    public static final void C0(HomeFragment homeFragment) {
        MagicIndicator magicIndicator;
        qk.p mViewBinding = homeFragment.getMViewBinding();
        if (mViewBinding != null && (magicIndicator = mViewBinding.f69823k) != null) {
            magicIndicator.onPageSelected(homeFragment.mSelectTabIndex);
        }
        homeFragment.a1(homeFragment.J0(), true);
        homeFragment.k1();
    }

    public final Fragment E0(int position) {
        Integer tabId;
        Integer tabId2;
        Integer tabId3;
        Integer tabId4;
        Integer tabId5;
        Integer tabId6;
        List<HomeTabItem> homeTabs;
        int iIntValue = 1;
        AppTab appTab = this.appTab;
        HomeTabItem homeTabItem = (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) ? null : homeTabs.get(position);
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c("HomeFragment", "getFragment: " + (homeTabItem != null ? homeTabItem.getType() : null) + "&position:" + position + "&tabCode:" + (homeTabItem != null ? homeTabItem.getTabCode() : null) + "&displayType:" + (homeTabItem != null ? homeTabItem.getDisplayType() : null), true);
        HomeTabType.Companion companion = HomeTabType.INSTANCE;
        if (companion.a(homeTabItem != null ? homeTabItem.getType() : null) == HomeTabType.SUB_NOVEL) {
            dj.a aVar = dj.a.f59043a;
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            aVar.d(applicationA);
        }
        if (homeTabItem != null && homeTabItem.isOpenLandPage()) {
            wf.a.C0922a.f(c0922a, "HomeFragment", "getFragment isOpenLandPage", false, 4, null);
            return new EmptyFragment();
        }
        HomeTabType homeTabTypeA = companion.a(homeTabItem != null ? homeTabItem.getType() : null);
        switch (homeTabTypeA == null ? -1 : b.f43936a[homeTabTypeA.ordinal()]) {
            case 1:
                SubTabFragment.Companion companion2 = SubTabFragment.INSTANCE;
                if (homeTabItem != null && (tabId = homeTabItem.getTabId()) != null) {
                    iIntValue = tabId.intValue();
                }
                return companion2.b(iIntValue, homeTabItem != null ? homeTabItem.getTabCode() : null);
            case 2:
                MovieFragment.Companion companion3 = MovieFragment.INSTANCE;
                if (homeTabItem != null && (tabId2 = homeTabItem.getTabId()) != null) {
                    iIntValue = tabId2.intValue();
                }
                return MovieFragment.Companion.b(companion3, iIntValue, false, null, homeTabItem != null ? homeTabItem.getTabCode() : null, 6, null);
            case 3:
                WebFragmentV2 webFragmentV2B = WebFragmentV2.INSTANCE.b();
                Pair pairA = TuplesKt.a("url", homeTabItem != null ? homeTabItem.getUrl() : null);
                Boolean bool = Boolean.TRUE;
                webFragmentV2B.setArguments(androidx.core.os.d.b(pairA, TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, bool), TuplesKt.a(WebConstants.TAB_CODE, homeTabItem != null ? homeTabItem.getTabCode() : null), TuplesKt.a(WebConstants.NEED_HEADER, bool), TuplesKt.a("nested_scroll_intercept", bool), TuplesKt.a(WebConstants.HEADER_BG, Integer.valueOf(R$drawable.home_title_gradient_bg))));
                return webFragmentV2B;
            case 4:
                ij.g gVar = ij.g.f62108a;
                if ((gVar.b() && (this.trendingFragment instanceof TrendingFragment)) || (!gVar.b() && (this.trendingFragment instanceof TrendingUGCFragment))) {
                    this.trendingFragment = null;
                }
                BaseHomeSubFragment baseHomeSubFragment = this.trendingFragment;
                if (baseHomeSubFragment != null) {
                    return baseHomeSubFragment;
                }
                if (gVar.b()) {
                    TrendingUGCFragment.Companion aVar2 = TrendingUGCFragment.INSTANCE;
                    if (homeTabItem != null && (tabId4 = homeTabItem.getTabId()) != null) {
                        iIntValue = tabId4.intValue();
                    }
                    TrendingUGCFragment trendingUGCFragmentA = aVar2.a(iIntValue, homeTabItem != null ? homeTabItem.getTabCode() : null);
                    this.trendingFragment = trendingUGCFragmentA;
                    return trendingUGCFragmentA;
                }
                TrendingFragment.Companion aVar3 = TrendingFragment.INSTANCE;
                if (homeTabItem != null && (tabId3 = homeTabItem.getTabId()) != null) {
                    iIntValue = tabId3.intValue();
                }
                TrendingFragment trendingFragmentA = aVar3.a(iIntValue, homeTabItem != null ? homeTabItem.getTabCode() : null);
                this.trendingFragment = trendingFragmentA;
                return trendingFragmentA;
            case 5:
                return SubShortTvFragment.INSTANCE.a((homeTabItem == null || (tabId5 = homeTabItem.getTabId()) == null) ? 13 : tabId5.intValue());
            case 6:
                return new TopRoomFragment();
            default:
                MovieFragment.Companion companion4 = MovieFragment.INSTANCE;
                if (homeTabItem != null && (tabId6 = homeTabItem.getTabId()) != null) {
                    iIntValue = tabId6.intValue();
                }
                return MovieFragment.Companion.b(companion4, iIntValue, false, null, homeTabItem != null ? homeTabItem.getTabCode() : null, 6, null);
        }
    }

    private final HomePreferencesViewModel F0() {
        return (HomePreferencesViewModel) this.homePreferencesViewModel.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0075  */
    private final HorizontalScrollView G0(Object navigator) {
        HorizontalScrollView horizontalScrollView;
        LinearLayout titleContainer;
        boolean z10 = navigator instanceof CommonNavigator;
        if (z10) {
            try {
                Field declaredField = CommonNavigator.class.getDeclaredField("a");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(navigator);
                if (obj instanceof HorizontalScrollView) {
                    horizontalScrollView = (HorizontalScrollView) obj;
                } else {
                    horizontalScrollView = null;
                }
            } catch (Exception e10) {
                wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "setupTopTabScrollListener: failed to get scrollView from CommonNavigator, " + e10.getMessage(), false, 4, null);
            }
        } else if (navigator instanceof ORCommonNavigator) {
            try {
                Field declaredField2 = ORCommonNavigator.class.getDeclaredField("a");
                declaredField2.setAccessible(true);
                Object obj2 = declaredField2.get(navigator);
                if (obj2 instanceof HorizontalScrollView) {
                    horizontalScrollView = (HorizontalScrollView) obj2;
                } else {
                    horizontalScrollView = null;
                }
            } catch (Exception e11) {
                wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "setupTopTabScrollListener: failed to get scrollView from ORCommonNavigator, " + e11.getMessage(), false, 4, null);
            }
        } else {
            horizontalScrollView = null;
        }
        if (horizontalScrollView != null) {
            return horizontalScrollView;
        }
        if (z10) {
            titleContainer = ((CommonNavigator) navigator).getTitleContainer();
        } else {
            titleContainer = navigator instanceof ORCommonNavigator ? ((ORCommonNavigator) navigator).getTitleContainer() : null;
        }
        ViewParent parent = titleContainer != null ? titleContainer.getParent() : null;
        while (parent != null && !(parent instanceof HorizontalScrollView)) {
            parent = parent.getParent();
        }
        return parent instanceof HorizontalScrollView ? (HorizontalScrollView) parent : null;
    }

    private final int H0(String code, int tabId) {
        List<HomeTabItem> homeTabs;
        AppTab appTab;
        List<HomeTabItem> homeTabs2;
        Integer tabId2;
        int i10 = 0;
        if (tabId >= 0 && (appTab = this.appTab) != null && (homeTabs2 = appTab.getHomeTabs()) != null) {
            int i11 = 0;
            for (Object obj : homeTabs2) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                HomeTabItem homeTabItem = (HomeTabItem) obj;
                if (homeTabItem != null && (tabId2 = homeTabItem.getTabId()) != null && tabId2.intValue() == tabId) {
                    return i11;
                }
                i11 = i12;
            }
        }
        AppTab appTab2 = this.appTab;
        if (appTab2 != null && (homeTabs = appTab2.getHomeTabs()) != null) {
            for (Object obj2 : homeTabs) {
                int i13 = i10 + 1;
                if (i10 < 0) {
                    CollectionsKt.u();
                }
                HomeTabItem homeTabItem2 = (HomeTabItem) obj2;
                if (Intrinsics.c(homeTabItem2 != null ? homeTabItem2.getTabCode() : null, code)) {
                    return i10;
                }
                i10 = i13;
            }
        }
        return f43920r;
    }

    private final List L0() {
        String name;
        List<HomeTabItem> homeTabs;
        ArrayList arrayList = new ArrayList();
        qk.p mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f69823k : null;
        vy.a navigator = magicIndicator != null ? magicIndicator.getNavigator() : null;
        if (this.appTab != null && navigator != null) {
            LinearLayout titleContainer = navigator instanceof CommonNavigator ? ((CommonNavigator) navigator).getTitleContainer() : navigator instanceof ORCommonNavigator ? ((ORCommonNavigator) navigator).getTitleContainer() : null;
            if (titleContainer == null) {
                return arrayList;
            }
            HorizontalScrollView horizontalScrollViewG0 = this.cachedScrollView;
            if (horizontalScrollViewG0 == null) {
                horizontalScrollViewG0 = G0(navigator);
            }
            int scrollX = horizontalScrollViewG0 != null ? horizontalScrollViewG0.getScrollX() : 0;
            int width = horizontalScrollViewG0 != null ? horizontalScrollViewG0.getWidth() : titleContainer.getMeasuredWidth();
            int childCount = titleContainer.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = titleContainer.getChildAt(i10);
                AppTab appTab = this.appTab;
                HomeTabItem homeTabItem = (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) ? null : (HomeTabItem) CollectionsKt.l0(homeTabs, i10);
                int left = childAt.getLeft() - scrollX;
                int right = childAt.getRight() - scrollX;
                if (left < width && right > 0 && homeTabItem != null && (name = homeTabItem.getName()) != null) {
                    arrayList.add(name);
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:44:0x00a0 A[Catch: all -> 0x0029, TryCatch #0 {all -> 0x0029, blocks: (B:4:0x0003, B:6:0x000b, B:8:0x0011, B:9:0x0016, B:11:0x001c, B:13:0x0024, B:17:0x002d, B:22:0x003c, B:25:0x0044, B:27:0x004a, B:29:0x0056, B:31:0x005a, B:33:0x0060, B:36:0x0068, B:39:0x007e, B:41:0x0092, B:43:0x0096, B:45:0x00bd, B:44:0x00a0, B:20:0x0038), top: B:52:0x0003 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:44:0x00a0, please report this as an issue */
    private final void M0(HomeTabItem tabItem) {
        Object objM453constructorimpl;
        Integer numValueOf;
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        RecyclerView.Adapter adapter;
        List<HomeTabItem> homeTabs;
        if (tabItem == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            AppTab appTab = this.appTab;
            Unit unit = null;
            if (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) {
                numValueOf = null;
            } else {
                Iterator<HomeTabItem> it = homeTabs.iterator();
                int i10 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i10 = -1;
                        break;
                    }
                    HomeTabItem next = it.next();
                    if (Intrinsics.c(next != null ? next.getTabId() : null, tabItem.getTabId())) {
                        break;
                    } else {
                        i10++;
                    }
                }
                numValueOf = Integer.valueOf(i10);
            }
            if (numValueOf == null || numValueOf.intValue() < 0) {
                wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Category not found in current tabs: " + tabItem, false, 4, null);
                unit = Unit.f64096a;
            } else {
                int iIntValue = numValueOf.intValue();
                qk.p mViewBinding = getMViewBinding();
                if (iIntValue < ((mViewBinding == null || (viewPager3 = mViewBinding.f69831s) == null || (adapter = viewPager3.getAdapter()) == null) ? 0 : adapter.getItemCount())) {
                    HashMap map = new HashMap();
                    map.put("dialog_name", "home_switch_tab");
                    String name = tabItem.getName();
                    if (name == null) {
                        name = "";
                    }
                    map.put("module_name", name);
                    qi.h.f69682a.o(J0(), map);
                    qk.p mViewBinding2 = getMViewBinding();
                    if (mViewBinding2 != null && (viewPager2 = mViewBinding2.f69831s) != null) {
                        viewPager2.setCurrentItem(numValueOf.intValue(), false);
                        unit = Unit.f64096a;
                    }
                } else {
                    wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Category not found in current tabs: " + tabItem, false, 4, null);
                    unit = Unit.f64096a;
                }
            }
            objM453constructorimpl = Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "handleCategorySelection: failed to find tab, " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0085  */
    private final void N0(HomePreferencesConfig config) {
        HomeTabItem homeTabItem;
        ViewPager2 viewPager2;
        String refreshType = config.getRefreshType();
        if (Intrinsics.c(refreshType, HomePreferencesRefreshType.ALL_TOP_TAB.getValue())) {
            String tabCode = config.getTabCode();
            Integer tabId = config.getTabId();
            if (H0(tabCode, tabId != null ? tabId.intValue() : -1) < 0) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, "HomePreferences", "refresh all tab----2", false, 4, null);
            b1();
            dl.a aVar = new dl.a();
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = dl.a.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, aVar, 0L);
            return;
        }
        if (!Intrinsics.c(refreshType, HomePreferencesRefreshType.CUR_PAGE.getValue())) {
            Intrinsics.c(refreshType, HomePreferencesRefreshType.NO_REFRESH.getValue());
            return;
        }
        AppTab appTab = this.appTab;
        List<HomeTabItem> homeTabs = appTab != null ? appTab.getHomeTabs() : null;
        int iH0 = this.mSelectTabIndex;
        if (iH0 < 0) {
            homeTabItem = null;
        } else {
            if (iH0 >= (homeTabs != null ? homeTabs.size() : 0) || homeTabs == null) {
                homeTabItem = null;
            } else {
                homeTabItem = homeTabs.get(iH0);
            }
        }
        boolean zH = StringsKt.H(homeTabItem != null ? homeTabItem.getTabCode() : null, config.getTabCode(), true);
        if (!zH) {
            String tabCode2 = config.getTabCode();
            Integer tabId2 = config.getTabId();
            iH0 = H0(tabCode2, tabId2 != null ? tabId2.intValue() : -1);
        }
        if (iH0 < 0) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "HomePreferences", "refresh cur page----2", false, 4, null);
        if (!zH) {
            qk.p mViewBinding = getMViewBinding();
            if (mViewBinding != null && (viewPager2 = mViewBinding.f69831s) != null) {
                viewPager2.setCurrentItem(iH0, false);
            }
            this.mSelectTabIndex = iH0;
        }
        b1();
        Fragment fragmentK0 = getChildFragmentManager().k0("f" + iH0);
        if (fragmentK0 instanceof BaseHomeSubFragment) {
            ((BaseHomeSubFragment) fragmentK0).c0();
        }
    }

    private final void O0(int scrollX) {
        Handler handler;
        if (scrollX != this.lastTopTabScrollX) {
            if (!this.isTopTabScrolling) {
                this.scrollStartSelectIndex = this.mSelectTabIndex;
                this.isTopTabScrolling = true;
            }
            Runnable runnable = this.scrollStopRunnable;
            if (runnable != null && (handler = this.scrollStopHandler) != null) {
                handler.removeCallbacks(runnable);
            }
            this.scrollStopRunnable = new Runnable() {
                @Override
                public final void run() {
                    HomeFragment.P0(this.f43974a);
                }
            };
            Handler handler2 = new Handler(Looper.getMainLooper());
            this.scrollStopHandler = handler2;
            Runnable runnable2 = this.scrollStopRunnable;
            if (runnable2 != null) {
                handler2.postDelayed(runnable2, 100L);
            }
        } else if (this.isTopTabScrolling) {
            this.isTopTabScrolling = false;
            this.scrollStartSelectIndex = this.mSelectTabIndex;
        }
        this.lastTopTabScrollX = scrollX;
    }

    public static final void P0(HomeFragment homeFragment) {
        homeFragment.isTopTabScrolling = false;
        String strJ0 = homeFragment.J0();
        if (strJ0.length() > 0) {
            homeFragment.a1(strJ0, false);
        }
    }

    public static final Unit Q0(HomeFragment homeFragment, ij.n value) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        ViewPager2 viewPager2;
        Intrinsics.h(value, "value");
        String strA = value.a();
        boolean z10 = strA == null || strA.length() == 0;
        qk.p mViewBinding = homeFragment.getMViewBinding();
        if (mViewBinding != null && (viewPager2 = mViewBinding.f69831s) != null) {
            viewPager2.setUserInputEnabled(z10);
        }
        if (z10) {
            HomeSearchViewManager homeSearchViewManager = homeFragment.mHomeSearchViewManager;
            if (homeSearchViewManager != null) {
                homeSearchViewManager.C(homeFragment.appTab);
            }
        } else {
            HomeSearchViewManager homeSearchViewManager2 = homeFragment.mHomeSearchViewManager;
            if (homeSearchViewManager2 != null) {
                homeSearchViewManager2.n();
            }
            HomeSearchViewManager homeSearchViewManager3 = homeFragment.mHomeSearchViewManager;
            if (homeSearchViewManager3 != null) {
                homeSearchViewManager3.C(homeFragment.appTab);
            }
            qk.p mViewBinding2 = homeFragment.getMViewBinding();
            if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.f69821i) != null) {
                uf.c.g(appCompatImageView2);
            }
            qk.p mViewBinding3 = homeFragment.getMViewBinding();
            if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f69820h) != null) {
                uf.c.g(appCompatImageView);
            }
        }
        return Unit.f64096a;
    }

    private final void R0() {
        List<HomeTabItem> homeTabs;
        PreloadTrendingData.a aVar = PreloadTrendingData.f44531n;
        AppTab appTab = (AppTab) aVar.a().C().f();
        this.appTab = appTab;
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "homeTabFromCache = " + appTab, false, 4, null);
        if (this.appTab == null) {
            aVar.a().C().j(getViewLifecycleOwner(), new e(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return HomeFragment.S0(this.f43983a, (AppTab) obj);
                }
            }));
        }
        aVar.a().D().p(this);
        aVar.a().D().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HomeFragment.T0(this.f43984a, (AppTab) obj);
            }
        }));
        AppTab appTab2 = this.appTab;
        if (appTab2 != null && (homeTabs = appTab2.getHomeTabs()) != null && (!homeTabs.isEmpty())) {
            initViewPager();
        }
        w1();
    }

    public static final Unit S0(HomeFragment homeFragment, AppTab appTab) {
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "homeTabFromCache2 = " + appTab, false, 4, null);
        if (homeFragment.isAdded()) {
            homeFragment.x1(appTab);
        }
        PreloadTrendingData.f44531n.a().C().p(homeFragment);
        return Unit.f64096a;
    }

    public static final Unit T0(final HomeFragment homeFragment, final AppTab appTab) {
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "LanguageRestart homeTabFromNet2 = " + appTab, false, 4, null);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                HomeFragment.U0(this.f43968a, appTab);
            }
        }, 100L);
        return Unit.f64096a;
    }

    public static final void U0(HomeFragment homeFragment, AppTab appTab) {
        if (homeFragment.isAdded()) {
            homeFragment.x1(appTab);
        }
    }

    public static final Unit V0(HomeFragment homeFragment, HomePreferencesConfig homePreferencesConfig) {
        Intrinsics.e(homePreferencesConfig);
        homeFragment.N0(homePreferencesConfig);
        return Unit.f64096a;
    }

    public static final Unit W0(HomeFragment homeFragment, HomePreferencesConfig homePreferencesConfig) {
        Intrinsics.e(homePreferencesConfig);
        homeFragment.m1(homePreferencesConfig);
        return Unit.f64096a;
    }

    private final void X0() {
        try {
            Field declaredField = ViewPager2.class.getDeclaredField("mRecyclerView");
            Intrinsics.g(declaredField, "getDeclaredField(...)");
            declaredField.setAccessible(true);
            qk.p mViewBinding = getMViewBinding();
            Object obj = declaredField.get(mViewBinding != null ? mViewBinding.f69831s : null);
            Intrinsics.f(obj, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView");
            RecyclerView recyclerView = (RecyclerView) obj;
            Field declaredField2 = RecyclerView.class.getDeclaredField("mTouchSlop");
            Intrinsics.g(declaredField2, "getDeclaredField(...)");
            declaredField2.setAccessible(true);
            Object obj2 = declaredField2.get(recyclerView);
            Intrinsics.f(obj2, "null cannot be cast to non-null type kotlin.Int");
            declaredField2.set(recyclerView, Integer.valueOf(((Integer) obj2).intValue() * 2));
            wf.a.C0922a.f(wf.a.f74274a, "invoke", "testOver", false, 4, null);
        } catch (Exception e10) {
            wf.a.C0922a.f(wf.a.f74274a, "invoke", "Exception " + e10.getMessage(), false, 4, null);
        }
    }

    private final void Z0() {
        List<HomeTabItem> homeTabs;
        AppTab appTab = this.appTab;
        if (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) {
            return;
        }
        Iterator<HomeTabItem> it = homeTabs.iterator();
        int i10 = 0;
        while (true) {
            if (!it.hasNext()) {
                i10 = -1;
                break;
            }
            HomeTabItem next = it.next();
            if (next != null) {
                Integer tabId = next.getTabId();
                int value = HomeTabId.UGC_Kids_Education.getValue();
                if (tabId != null && tabId.intValue() == value) {
                    break;
                }
            }
            i10++;
        }
        if (i10 < 0) {
            return;
        }
        Fragment fragmentK0 = getChildFragmentManager().k0("f" + i10);
        if (fragmentK0 instanceof BaseHomeSubFragment) {
            ((BaseHomeSubFragment) fragmentK0).c0();
        }
    }

    public final void c1(int position, boolean smoothScroll) {
        Object objM453constructorimpl;
        qk.p mViewBinding;
        MagicIndicator magicIndicator;
        vy.a navigator;
        LinearLayout titleContainer;
        String value;
        Boolean boolM1;
        try {
            Result.Companion companion = Result.INSTANCE;
            ConfigBean configBeanC = cm.f.f17019c.a().c("home_tab_menu_show", true);
            if (!((configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue()) || (mViewBinding = getMViewBinding()) == null || (magicIndicator = mViewBinding.f69823k) == null || (navigator = magicIndicator.getNavigator()) == null) {
                return;
            }
            if (navigator instanceof CommonNavigator) {
                titleContainer = ((CommonNavigator) navigator).getTitleContainer();
            } else {
                titleContainer = navigator instanceof ORCommonNavigator ? ((ORCommonNavigator) navigator).getTitleContainer() : null;
            }
            if (titleContainer != null && position >= 0 && position < titleContainer.getChildCount()) {
                HorizontalScrollView horizontalScrollViewG0 = this.cachedScrollView;
                if (horizontalScrollViewG0 == null) {
                    horizontalScrollViewG0 = G0(navigator);
                    this.cachedScrollView = horizontalScrollViewG0;
                    if (horizontalScrollViewG0 == null) {
                        return;
                    }
                }
                View childAt = titleContainer.getChildAt(position);
                int left = (childAt.getLeft() + (childAt.getWidth() / 2)) - (horizontalScrollViewG0.getWidth() / 2);
                int iE = RangesKt.e(titleContainer.getWidth() - horizontalScrollViewG0.getWidth(), 0);
                if (left < 0) {
                    left = 0;
                } else if (left > iE) {
                    left = iE;
                }
                if (smoothScroll) {
                    horizontalScrollViewG0.smoothScrollTo(left, 0);
                } else {
                    horizontalScrollViewG0.scrollTo(left, 0);
                }
                objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
            }
            return;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "scrollTopTabToPosition: failed to scroll top tab, " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    private final void d1() {
        ConstraintLayout root;
        final int i10 = this.lastValidPosition;
        qk.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.postDelayed(new Runnable() {
            @Override
            public final void run() {
                HomeFragment.e1(this.f43985a, i10);
            }
        }, 1000L);
    }

    public static final void e1(HomeFragment homeFragment, int i10) {
        ViewPager2 viewPager2;
        MagicIndicator magicIndicator;
        if (homeFragment.isAdded()) {
            qk.p mViewBinding = homeFragment.getMViewBinding();
            if (mViewBinding != null && (magicIndicator = mViewBinding.f69823k) != null) {
                magicIndicator.onPageSelected(i10);
            }
            qk.p mViewBinding2 = homeFragment.getMViewBinding();
            if (mViewBinding2 != null && (viewPager2 = mViewBinding2.f69831s) != null) {
                viewPager2.setCurrentItem(i10, false);
            }
            homeFragment.isHandlingRedirect = false;
            homeFragment.mSelectTabIndex = i10;
            homeFragment.D0(false);
        }
    }

    private final void f1() {
        AppCompatImageButton appCompatImageButton;
        ConstraintLayout constraintLayout;
        X0();
        j1();
        qk.p mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayout = mViewBinding.f69817e) != null) {
            constraintLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    HomeFragment.i1(this.f43977a, view);
                }
            });
        }
        qk.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatImageButton = mViewBinding2.f69814b) == null) {
            return;
        }
        appCompatImageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                HomeFragment.g1(this.f43978a, view);
            }
        });
    }

    public static final void g1(final HomeFragment homeFragment, View view) {
        Object objM453constructorimpl;
        ViewPager2 viewPager2;
        com.transsion.baselib.helper.a.f42121a.n(homeFragment.J0(), "home_top_tab_more_menu");
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Menu button clicked, showing category discover dialog", false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            CategoryDiscoverDialog categoryDiscoverDialogA = CategoryDiscoverDialog.INSTANCE.a();
            AppTab appTab = homeFragment.appTab;
            categoryDiscoverDialogA.s0(appTab != null ? appTab.getHomeTabs() : null);
            qk.p mViewBinding = homeFragment.getMViewBinding();
            categoryDiscoverDialogA.r0((mViewBinding == null || (viewPager2 = mViewBinding.f69831s) == null) ? 0 : viewPager2.getCurrentItem());
            categoryDiscoverDialogA.q0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return HomeFragment.h1(this.f43970a, (HomeTabItem) obj);
                }
            });
            categoryDiscoverDialogA.l0(homeFragment, "category_discover");
            HashMap map = new HashMap();
            map.put("dialog_name", "home_switch_tab");
            qi.h.f69682a.q(homeFragment.J0(), "dialog_show", map);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Failed to show category discover dialog: " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
    }

    public static final Unit h1(HomeFragment homeFragment, HomeTabItem homeTabItem) {
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Selected category: " + homeTabItem, false, 4, null);
        homeFragment.M0(homeTabItem);
        return Unit.f64096a;
    }

    public static final void i1(HomeFragment homeFragment, View view) {
        homeFragment.p1();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("module_name", "grade_select");
        com.transsion.baselib.helper.a.f42121a.i(homeFragment.J0(), linkedHashMap);
    }

    private final void initViewPager() {
        ViewPager2 viewPager2;
        ViewPager2 viewPager3;
        if (isAdded()) {
            qk.p mViewBinding = getMViewBinding();
            if (mViewBinding != null && (viewPager3 = mViewBinding.f69831s) != null) {
                viewPager3.setUserInputEnabled(!ij.o.f62115a.i());
            }
            wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "fragment count " + getChildFragmentManager().y0().size(), false, 4, null);
            qk.p mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (viewPager2 = mViewBinding2.f69831s) != null) {
                viewPager2.setAdapter(new d());
            }
            B0();
        }
    }

    private final void j1() {
        setNetListener(new f());
    }

    private final void k1() {
        MagicIndicator magicIndicator;
        vy.a navigator;
        qk.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (magicIndicator = mViewBinding.f69823k) == null || (navigator = magicIndicator.getNavigator()) == null) {
            return;
        }
        final HorizontalScrollView horizontalScrollViewG0 = G0(navigator);
        this.cachedScrollView = horizontalScrollViewG0;
        if (horizontalScrollViewG0 == null) {
            wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "setupTopTabScrollListener: scrollView is null, cannot setup scroll listener", false, 4, null);
            return;
        }
        this.lastTopTabScrollX = horizontalScrollViewG0.getScrollX();
        this.scrollStartSelectIndex = this.mSelectTabIndex;
        horizontalScrollViewG0.getViewTreeObserver().addOnScrollChangedListener(new ViewTreeObserver.OnScrollChangedListener() {
            @Override
            public final void onScrollChanged() {
                HomeFragment.l1(horizontalScrollViewG0, this);
            }
        });
    }

    public static final void l1(HorizontalScrollView horizontalScrollView, HomeFragment homeFragment) {
        homeFragment.O0(horizontalScrollView.getScrollX());
    }

    private final void m1(final HomePreferencesConfig config) {
        Object objM453constructorimpl;
        FragmentActivity activity = getActivity();
        if (activity == null || !activity.isDestroyed()) {
            FragmentActivity activity2 = getActivity();
            if (activity2 == null || !activity2.isFinishing()) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    HomePreferencesEnterPopDialog homePreferencesEnterPopDialogA = HomePreferencesEnterPopDialog.INSTANCE.a();
                    homePreferencesEnterPopDialogA.t0(config);
                    zk.c.f76806a.n(config);
                    F0().D(config);
                    homePreferencesEnterPopDialogA.u0(new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return HomeFragment.n1(this.f43979a, config, (List) obj);
                        }
                    });
                    homePreferencesEnterPopDialogA.v0(new Function0() {
                        @Override
                        public final Object invoke() {
                            return HomeFragment.o1(this.f43981a, config);
                        }
                    });
                    homePreferencesEnterPopDialogA.l0(this, "HomePreferencesEnterPopDialog");
                    objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
                }
                Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
                if (thM456exceptionOrNullimpl != null) {
                    wf.a.C0922a.l(wf.a.f74274a, "HomeFragment", "showEnterPopDialog error: " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
                }
            }
        }
    }

    public static final Unit n1(HomeFragment homeFragment, HomePreferencesConfig homePreferencesConfig, List selected) {
        Intrinsics.h(selected, "selected");
        homeFragment.F0().B(homePreferencesConfig);
        homeFragment.F0().L(homePreferencesConfig, selected);
        zk.c.f76806a.m(homePreferencesConfig, selected);
        return Unit.f64096a;
    }

    public static final Unit o1(HomeFragment homeFragment, HomePreferencesConfig homePreferencesConfig) {
        homeFragment.F0().C(homePreferencesConfig);
        zk.c.f76806a.o(homePreferencesConfig);
        return Unit.f64096a;
    }

    private final void p1() {
        List<GradeGroup> arrayList;
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (activity.isDestroyed() || activity.isFinishing()) {
                activity = null;
            }
            if (activity == null) {
                return;
            }
            GradeSelectDialog gradeSelectDialog = new GradeSelectDialog();
            AppTab appTab = this.appTab;
            if (appTab == null || (arrayList = appTab.getHomeGradeList()) == null) {
                arrayList = new ArrayList<>();
            }
            gradeSelectDialog.x0(arrayList, J0());
            gradeSelectDialog.z0(ij.o.f62115a.e());
            gradeSelectDialog.y0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return HomeFragment.q1(this.f43964a, (GradeItem) obj);
                }
            });
            FragmentManager supportFragmentManager = activity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            gradeSelectDialog.show(supportFragmentManager, "GradeSelectDialog");
        }
    }

    public static final Unit q1(HomeFragment homeFragment, GradeItem gradeItem) {
        String name;
        String grade;
        TnTextView tnTextView;
        String name2;
        String str = "";
        if (gradeItem == null || (name = gradeItem.getName()) == null) {
            name = "";
        }
        if (gradeItem == null || (grade = gradeItem.getGrade()) == null) {
            grade = "";
        }
        ij.o oVar = ij.o.f62115a;
        oVar.m(name);
        oVar.l(grade);
        zk.e eVar = zk.e.f76812a;
        eVar.b().putString("selected_grade_name", name);
        eVar.b().putString("selected_grade", grade);
        qk.p mViewBinding = homeFragment.getMViewBinding();
        if (mViewBinding != null && (tnTextView = mViewBinding.f69827o) != null) {
            if (gradeItem != null && (name2 = gradeItem.getName()) != null) {
                str = name2;
            }
            tnTextView.setText(str);
        }
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Grade selected: " + (gradeItem != null ? gradeItem.getName() : null) + ", saved: " + name, false, 4, null);
        homeFragment.Z0();
        return Unit.f64096a;
    }

    public final void r1(String value) {
        qk.p mViewBinding;
        AppCompatImageButton appCompatImageButton;
        AppCompatImageButton appCompatImageButton2;
        Boolean boolM1;
        boolean zBooleanValue = (value == null || (boolM1 = StringsKt.m1(value)) == null) ? false : boolM1.booleanValue();
        qk.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageButton2 = mViewBinding2.f69814b) != null) {
            appCompatImageButton2.setVisibility(zBooleanValue ? 0 : 8);
        }
        wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "Menu button visibility: " + zBooleanValue, false, 4, null);
        if (!zBooleanValue || (mViewBinding = getMViewBinding()) == null || (appCompatImageButton = mViewBinding.f69814b) == null) {
            return;
        }
        appCompatImageButton.post(new Runnable() {
            @Override
            public final void run() {
                HomeFragment.s1(this.f43966a);
            }
        });
    }

    public static final void s1(HomeFragment homeFragment) {
        com.transsion.baselib.helper.a.f42121a.m(homeFragment.J0(), CollectionsKt.e("home_top_tab_more_menu"), false);
    }

    private final void w1() {
        ConfigBean configBeanC = cm.f.f17019c.a().c("home_tab_menu_show", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        r1(value);
        if (value == null || value.length() == 0) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new HomeFragment$updateMenuButtonVisibility$1(this, null), 3, null);
        }
    }

    private final void x1(AppTab appTab) {
        List<HomeTabItem> homeTabs;
        List<HomeTabItem> homeTabs2;
        HomeTabItem homeTabItem;
        HomeTabItem homeTabItem2;
        if (appTab != null) {
            List<HomeTabItem> homeTabs3 = appTab.getHomeTabs();
            if ((homeTabs3 != null ? homeTabs3.size() : 0) > 0) {
                String version = appTab.getVersion();
                AppTab appTab2 = this.appTab;
                if (Intrinsics.c(version, appTab2 != null ? appTab2.getVersion() : null)) {
                    List<HomeTabItem> homeTabs4 = appTab.getHomeTabs();
                    String name = (homeTabs4 == null || (homeTabItem2 = homeTabs4.get(0)) == null) ? null : homeTabItem2.getName();
                    AppTab appTab3 = this.appTab;
                    if (Intrinsics.c(name, (appTab3 == null || (homeTabs2 = appTab3.getHomeTabs()) == null || (homeTabItem = homeTabs2.get(0)) == null) ? null : homeTabItem.getName())) {
                        List<HomeTabItem> homeTabs5 = appTab.getHomeTabs();
                        Integer numValueOf = homeTabs5 != null ? Integer.valueOf(homeTabs5.size()) : null;
                        AppTab appTab4 = this.appTab;
                        if (Intrinsics.c(numValueOf, (appTab4 == null || (homeTabs = appTab4.getHomeTabs()) == null) ? null : Integer.valueOf(homeTabs.size()))) {
                            return;
                        }
                    }
                }
                this.appTab = appTab;
                this.trendingFragment = null;
                initViewPager();
                HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
                if (homeSearchViewManager != null) {
                    homeSearchViewManager.O(appTab);
                }
            }
        }
    }

    public final void D0(boolean isWhite) {
        FragmentActivity activity = getActivity();
        BaseActivity baseActivity = activity instanceof BaseActivity ? (BaseActivity) activity : null;
        if (baseActivity != null) {
            baseActivity.changeStatusFontColor(isWhite, true);
        }
        HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
        if (homeSearchViewManager != null) {
            homeSearchViewManager.l(isWhite);
        }
    }

    public final int getMSelectTabIndex() {
        return this.mSelectTabIndex;
    }

    public final String J0() {
        HomeTabItem homeTabItem;
        String tabCode;
        AppTab appTab = this.appTab;
        List<HomeTabItem> homeTabs = appTab != null ? appTab.getHomeTabs() : null;
        int i10 = this.mSelectTabIndex;
        if (i10 >= 0) {
            return (i10 >= (homeTabs != null ? homeTabs.size() : 0) || homeTabs == null || (homeTabItem = homeTabs.get(this.mSelectTabIndex)) == null || (tabCode = homeTabItem.getTabCode()) == null) ? "" : tabCode;
        }
        return "";
    }

    @Override
    public qk.p getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        qk.p pVarC = qk.p.c(inflater);
        Intrinsics.g(pVarC, "inflate(...)");
        return pVarC;
    }

    public final boolean Y0() {
        Fragment fragmentK0 = getChildFragmentManager().k0("f" + this.mSelectTabIndex);
        return (fragmentK0 instanceof WebFragmentV2) && ((WebFragmentV2) fragmentK0).h1();
    }

    public final void a1(String pageTabName, boolean isRefresh) {
        Intrinsics.h(pageTabName, "pageTabName");
        com.transsion.baselib.helper.a.f42121a.m(pageTabName, L0(), isRefresh);
    }

    public final void b1() {
        Fragment fragmentK0 = getChildFragmentManager().k0("f" + this.mSelectTabIndex);
        if (fragmentK0 instanceof BaseHomeSubFragment) {
            ((BaseHomeSubFragment) fragmentK0).p0();
        }
    }

    @Override
    public void initData(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        DownloadSDCardUtil.f57674a.c();
        cw.b.f58659a.c().d();
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HomeFragment.Q0(this.f43962a, (ij.n) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = ij.n.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        qk.p mViewBinding;
        BlurredSectorView blurredSectorView;
        Intrinsics.h(view, "view");
        androidx.p009lifecycle.v.a(this);
        this.mSavedInstanceState = savedInstanceState;
        R0();
        f1();
        qk.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null) {
            HomeSearchViewManager homeSearchViewManager = new HomeSearchViewManager(mViewBinding2, this);
            this.mHomeSearchViewManager = homeSearchViewManager;
            homeSearchViewManager.C(this.appTab);
        }
        zk.e eVar = zk.e.f76812a;
        String string = eVar.b().getString("selected_grade_name", "All");
        if (string != null && string.length() != 0) {
            ij.o.f62115a.m(string);
        }
        String string2 = eVar.b().getString("selected_grade", "UN_GRADE");
        if (string2 != null && string2.length() != 0) {
            ij.o.f62115a.l(string2);
        }
        v1();
        if (Build.VERSION.SDK_INT <= 23 && (mViewBinding = getMViewBinding()) != null && (blurredSectorView = mViewBinding.f69826n) != null) {
            blurredSectorView.setVisibility(8);
        }
        if (ij.o.f62115a.i()) {
            return;
        }
        F0().A();
        F0().x().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HomeFragment.V0(this.f43975a, (HomePreferencesConfig) obj);
            }
        }));
        F0().s().j(getViewLifecycleOwner(), new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return HomeFragment.W0(this.f43976a, (HomePreferencesConfig) obj);
            }
        }));
    }

    @Override
    public void lazyLoadData() {
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            com.transsion.baselib.report.e.f42196a.n(IntegrationConstants.NAVIGATION_BAR_HOME_ACTION_DEFAULT, Long.valueOf(SystemClock.elapsedRealtime() - this.resumeTimeStamp), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public void newIntent(Intent intent) {
        String stringExtra;
        ViewPager2 viewPager2;
        super.newIntent(intent);
        try {
            if (!isAdded()) {
                setArguments(intent != null ? intent.getExtras() : null);
                return;
            }
            if (intent == null || (stringExtra = intent.getStringExtra("topTab")) == null) {
                stringExtra = "Trending";
            }
            this.mSelectTabIndex = H0(stringExtra, intent != null ? intent.getIntExtra("secondTabIndex", -1) : -1);
            qk.p mViewBinding = getMViewBinding();
            if (mViewBinding == null || (viewPager2 = mViewBinding.f69831s) == null) {
                return;
            }
            viewPager2.setCurrentItem(this.mSelectTabIndex);
        } catch (Exception e10) {
            wf.a.C0922a.f(wf.a.f74274a, "HomeFragment", "error= " + e10.getMessage(), false, 4, null);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        DownloadSDCardUtil.f57674a.e();
        PreloadTrendingData.f44531n.a().D().p(this);
        HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
        if (homeSearchViewManager != null) {
            homeSearchViewManager.L();
        }
        HomeSearchViewManager homeSearchViewManager2 = this.mHomeSearchViewManager;
        if (homeSearchViewManager2 != null) {
            homeSearchViewManager2.n();
        }
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
        this.trendingFragment = null;
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (isResumed()) {
            if (hidden) {
                logPause();
                HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
                if (homeSearchViewManager != null) {
                    homeSearchViewManager.L();
                }
            } else {
                logResume();
                HomeSearchViewManager homeSearchViewManager2 = this.mHomeSearchViewManager;
                if (homeSearchViewManager2 != null) {
                    homeSearchViewManager2.M(true);
                }
                HomeSearchViewManager homeSearchViewManager3 = this.mHomeSearchViewManager;
                if (homeSearchViewManager3 != null) {
                    homeSearchViewManager3.G();
                }
            }
        }
        com.transsion.baseui.activity.k.h(null, this, hidden, null, 9, null);
    }

    @Override
    public void onPause() {
        super.onPause();
        com.transsion.baseui.activity.k.l(null, this, null, 5, null);
        wf.a.f74274a.d("onPause fragment count " + getChildFragmentManager().y0().size(), true);
        HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
        if (homeSearchViewManager != null) {
            homeSearchViewManager.L();
        }
        if (this.isHandlingRedirect) {
            d1();
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        com.transsion.baseui.activity.k.p(null, this, "visible=" + isVisible() + " fragment:" + this, 1, null);
        HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
        if (homeSearchViewManager != null) {
            homeSearchViewManager.M(true);
        }
        Bundle bundle = this.mSavedInstanceState;
        Integer numValueOf = bundle != null ? Integer.valueOf(bundle.getInt("saved_search_color", 2)) : null;
        if ((numValueOf != null && numValueOf.intValue() == 0) || (numValueOf != null && numValueOf.intValue() == 1)) {
            Fragment fragmentK0 = getChildFragmentManager().k0("f" + this.mSelectTabIndex);
            if (fragmentK0 instanceof BaseHomeSubFragment) {
                ((BaseHomeSubFragment) fragmentK0).b0(numValueOf != null && numValueOf.intValue() == 1);
            } else {
                D0(numValueOf != null && numValueOf.intValue() == 1);
            }
            this.mSavedInstanceState = null;
        }
    }

    @Override
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.h(outState, "outState");
        super.onSaveInstanceState(outState);
        outState.putInt("current_tab", this.mSelectTabIndex);
        HomeSearchViewManager homeSearchViewManager = this.mHomeSearchViewManager;
        int i10 = 0;
        if (homeSearchViewManager != null && homeSearchViewManager.D()) {
            i10 = 1;
        }
        outState.putInt("saved_search_color", i10);
    }

    public final void t1(String tabCode, int tabId) {
        ViewPager2 viewPager2;
        Intrinsics.h(tabCode, "tabCode");
        int iH0 = H0(tabCode, tabId);
        qk.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.f69831s) == null) {
            return;
        }
        viewPager2.setCurrentItem(iH0, false);
    }

    public final void u1() {
        ViewPager2 viewPager2;
        BaseHomeSubFragment baseHomeSubFragment = this.trendingFragment;
        if (baseHomeSubFragment instanceof TrendingFragment) {
            Intrinsics.f(baseHomeSubFragment, "null cannot be cast to non-null type com.transsion.home.fragment.tab.TrendingFragment");
            ((TrendingFragment) baseHomeSubFragment).f2();
        } else if (baseHomeSubFragment instanceof TrendingUGCFragment) {
            Intrinsics.f(baseHomeSubFragment, "null cannot be cast to non-null type com.transsion.home.fragment.tab.TrendingUGCFragment");
            ((TrendingUGCFragment) baseHomeSubFragment).t1();
        }
        qk.p mViewBinding = getMViewBinding();
        if (mViewBinding == null || (viewPager2 = mViewBinding.f69831s) == null) {
            return;
        }
        viewPager2.setCurrentItem(f43920r, false);
    }

    public final void v1() {
        qk.p mViewBinding;
        TnTextView tnTextView;
        AppCompatImageView appCompatImageView;
        ConstraintLayout constraintLayout;
        List<HomeTabItem> homeTabs;
        AppTab appTab = this.appTab;
        HomeTabItem homeTabItem = (appTab == null || (homeTabs = appTab.getHomeTabs()) == null) ? null : (HomeTabItem) CollectionsKt.l0(homeTabs, this.mSelectTabIndex);
        boolean zH = HomeTabId.INSTANCE.h(homeTabItem != null ? homeTabItem.getTabId() : null, false);
        ij.o oVar = ij.o.f62115a;
        boolean z10 = oVar.i() && zH;
        qk.p mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (constraintLayout = mViewBinding2.f69817e) != null) {
            constraintLayout.setVisibility(z10 ? 0 : 8);
        }
        qk.p mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f69819g) != null) {
            appCompatImageView.setVisibility(z10 ? 8 : 0);
        }
        if (!z10 || (mViewBinding = getMViewBinding()) == null || (tnTextView = mViewBinding.f69827o) == null) {
            return;
        }
        tnTextView.setText(oVar.f());
    }
}
