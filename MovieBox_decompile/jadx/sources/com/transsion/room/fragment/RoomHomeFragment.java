package com.transsion.room.fragment;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.ComponentActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import androidx.viewpager2.widget.ViewPager2;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.RoomCacheAnimationView;
import com.tn.lib.view.RoomCacheStatus;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$string;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.baseui.widget.NestedSwipeRefreshLayout;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.RoomBean;
import com.transsion.moviedetailapi.bean.RoomItem;
import com.transsion.moviedetailapi.bean.RoomTabBean;
import com.transsion.moviedetailapi.bean.RoomTabItem;
import com.transsion.moviedetailapi.bean.RoomTabType;
import com.transsion.publish.bean.PublishResult;
import com.transsion.publish.view.UploadView;
import com.transsion.room.activity.RoomHomeActivity;
import com.transsion.room.api.RoomHomeCacheEvent;
import com.transsion.room.api.RoomHomeParentType;
import com.transsion.room.api.RoomHomeRefreshCacheEvent;
import com.transsion.room.api.RoomTabId;
import com.transsion.room.dialog.RequestCacheRoomDialog;
import com.transsion.room.view.RoomHomeTabTitleView;
import com.transsion.room.viewmodel.RoomViewModel;
import com.transsion.room.widget.CommunityRoomsView;
import com.transsion.web.api.WebConstants;
import com.transsion.web.fragment.WebFragmentV2;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.JoinRoomEvent;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010%\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u0000 |2\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004:\u0001}B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u000f\u0010\u0012\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0006J\u000f\u0010\u0013\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0013\u0010\u0006J\u000f\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0017\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0019\u0010\"\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010 H\u0016¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u0007H\u0016¢\u0006\u0004\b$\u0010\u0006J\u000f\u0010%\u001a\u00020\u0007H\u0016¢\u0006\u0004\b%\u0010\u0006J\u000f\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\u0006J\u0017\u0010*\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010\u001bJ\u0019\u0010,\u001a\u00020\u00072\b\u0010+\u001a\u0004\u0018\u00010&H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0016¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0016¢\u0006\u0004\b/\u0010\u0006J\u000f\u00100\u001a\u00020\u0007H\u0016¢\u0006\u0004\b0\u0010\u0006J\u000f\u00101\u001a\u00020\u0007H\u0016¢\u0006\u0004\b1\u0010\u0006J\u000f\u00102\u001a\u00020\u0007H\u0016¢\u0006\u0004\b2\u0010\u0006J\u000f\u00103\u001a\u00020\u0007H\u0016¢\u0006\u0004\b3\u0010\u0006J\u0017\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\b6\u00107J-\u0010=\u001a\u00020\u00072\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u0002042\f\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00030;H\u0016¢\u0006\u0004\b=\u0010>J\u0017\u0010A\u001a\u00020\u00072\b\u0010@\u001a\u0004\u0018\u00010?¢\u0006\u0004\bA\u0010BJ\u000f\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bD\u0010EJ\u0011\u0010G\u001a\u0004\u0018\u00010FH\u0016¢\u0006\u0004\bG\u0010HJ\u0011\u0010J\u001a\u0004\u0018\u00010IH\u0016¢\u0006\u0004\bJ\u0010KJ\u0015\u0010L\u001a\b\u0012\u0004\u0012\u00020\u00030;H\u0016¢\u0006\u0004\bL\u0010MJ\u0019\u0010O\u001a\u0004\u0018\u00010N2\u0006\u00105\u001a\u000204H\u0016¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u000204H\u0016¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\u0007H\u0016¢\u0006\u0004\bS\u0010\u0006J\u000f\u0010T\u001a\u00020\u0007H\u0016¢\u0006\u0004\bT\u0010\u0006J\u000f\u0010U\u001a\u00020\u0007H\u0016¢\u0006\u0004\bU\u0010\u0006R\u001b\u0010[\u001a\u00020V8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bW\u0010X\u001a\u0004\bY\u0010ZR\u0018\u0010@\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010]R\u0018\u0010`\u001a\u0004\u0018\u00010N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010_R$\u0010d\u001a\u0010\u0012\u0004\u0012\u000204\u0012\u0006\u0012\u0004\u0018\u00010N0a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010g\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010l\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010iR\u0018\u0010p\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010iR\u0019\u0010v\u001a\u0004\u0018\u00010q8\u0006¢\u0006\f\n\u0004\br\u0010s\u001a\u0004\bt\u0010uR\u001d\u0010{\u001a\u0004\u0018\u00010w8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bx\u0010X\u001a\u0004\by\u0010z¨\u0006~"}, d2 = {"Lcom/transsion/room/fragment/RoomHomeFragment;", "Lcom/transsion/room/fragment/RoomBaseFragment;", "Lfp/q;", "Lcom/transsion/moviedetailapi/bean/RoomTabItem;", "Lep/g;", "<init>", "()V", "", "r1", "b1", "c1", "", "W0", "()Z", "T0", "m1", "w1", "loadData", "z1", "k1", "i1", "Landroid/content/Context;", "context", "A1", "(Landroid/content/Context;)V", "isTabClick", "t1", "(Z)V", "Landroid/view/LayoutInflater;", "inflater", "X0", "(Landroid/view/LayoutInflater;)Lfp/q;", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "lazyLoadData", "lazyLoadWithoutNet", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewData", "e", "pageFrom", "z", "(Ljava/lang/String;)V", "initViewModel", "initListener", TmcConstants.NAVIGATION_ON_START, "retryLoadData", "onResume", "q1", "", RequestParameters.POSITION, "v0", "(I)V", "Lcom/transsion/room/view/RoomHomeTabTitleView;", "tabView", "index", "", "tabList", "x0", "(Lcom/transsion/room/view/RoomHomeTabTitleView;ILjava/util/List;)V", "Lcom/transsion/publish/bean/PublishResult;", "eventBean", "u1", "(Lcom/transsion/publish/bean/PublishResult;)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "Landroidx/viewpager2/widget/ViewPager2;", "z0", "()Landroidx/viewpager2/widget/ViewPager2;", "Lnet/lucode/hackware/magicindicator/MagicIndicator;", "u0", "()Lnet/lucode/hackware/magicindicator/MagicIndicator;", "y0", "()Ljava/util/List;", "Landroidx/fragment/app/Fragment;", "m0", "(I)Landroidx/fragment/app/Fragment;", "B", "()I", "v", "G", "P", "Lcom/transsion/room/viewmodel/RoomViewModel;", "g", "Lkotlin/Lazy;", "V0", "()Lcom/transsion/room/viewmodel/RoomViewModel;", "mRoomViewModel", "h", "Lcom/transsion/publish/bean/PublishResult;", "i", "Landroidx/fragment/app/Fragment;", "mExploreFragment", "", "j", "Ljava/util/Map;", "mRefreshViewMap", CampaignEx.JSON_KEY_AD_K, "I", "mExplorePosition", "l", "Ljava/lang/String;", "insertPostId", "m", "insertPostOps", "n", "parentTypeName", "o", "cache", "Lcom/transsion/mb/config/manager/ConfigBean;", TtmlNode.TAG_P, "Lcom/transsion/mb/config/manager/ConfigBean;", "getRoomCacheOpen", "()Lcom/transsion/mb/config/manager/ConfigBean;", "roomCacheOpen", "Ljo/a;", CampaignEx.JSON_KEY_AD_Q, "U0", "()Ljo/a;", "mPublishedApi", CampaignEx.JSON_KEY_AD_R, "a", "Room_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class RoomHomeFragment extends RoomBaseFragment<fp.q, RoomTabItem> implements ep.g {

    public static final Companion INSTANCE = new Companion(null);

    private static final String f49466s = "net_without_wifi_image_tab";

    private PublishResult eventBean;

    private Fragment mExploreFragment;

    private int mExplorePosition;

    private String insertPostId;

    private String insertPostOps;

    private String parentTypeName;

    private final Lazy mRoomViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(RoomViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private Map mRefreshViewMap = new LinkedHashMap();

    private String cache = com.transsion.baselib.report.launch.b.f42221a.b().getString("room_cache_data", "");

    private final ConfigBean roomCacheOpen = cm.f.f17019c.a().c("room_cache_open", true);

    private final Lazy mPublishedApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return RoomHomeFragment.h1();
        }
    });

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static RoomHomeFragment b(Companion companion, RoomHomeParentType roomHomeParentType, String str, String str2, int i10, Object obj) {
            if ((i10 & 2) != 0) {
                str = null;
            }
            if ((i10 & 4) != 0) {
                str2 = null;
            }
            return companion.a(roomHomeParentType, str, str2);
        }

        public final RoomHomeFragment a(RoomHomeParentType parentType, String str, String str2) {
            Intrinsics.h(parentType, "parentType");
            RoomHomeFragment roomHomeFragment = new RoomHomeFragment();
            roomHomeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("post_id", str), TuplesKt.a("ops", str2), TuplesKt.a("parent_type", parentType.name())));
            return roomHomeFragment;
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f49478a;

        static {
            int[] iArr = new int[NetworkType.values().length];
            try {
                iArr[NetworkType.NETWORK_2G.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[NetworkType.NETWORK_3G.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[NetworkType.NETWORK_4G.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[NetworkType.NETWORK_5G.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            f49478a = iArr;
        }
    }

    public static final class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override
        public void onPageScrollStateChanged(int i10) {
            super.onPageScrollStateChanged(i10);
        }

        @Override
        public void onPageScrolled(int i10, float f10, int i11) {
            super.onPageScrolled(i10, f10, i11);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onPageSelected(int i10) {
            RoomCacheAnimationView roomCacheAnimationView;
            super.onPageSelected(i10);
            fp.q qVar = (fp.q) RoomHomeFragment.this.getMViewBinding();
            if (qVar == null || (roomCacheAnimationView = qVar.f60422d) == null) {
                return;
            }
            roomCacheAnimationView.setVisibility(i10 == RoomHomeFragment.this.mExplorePosition && RoomHomeFragment.this.W0() ? 0 : 8);
        }
    }

    static final class d implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f49480a;

        d(Function1 function) {
            Intrinsics.h(function, "function");
            this.f49480a = function;
        }

        @Override
        public final Function a() {
            return this.f49480a;
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
            this.f49480a.invoke(obj);
        }
    }

    public static final class e extends CountDownTimer {
        e() {
            super(5000L, 1000L);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void onFinish() {
            BubbleTextView bubbleTextView;
            fp.q qVar = (fp.q) RoomHomeFragment.this.getMViewBinding();
            if (qVar == null || (bubbleTextView = qVar.f60420b) == null) {
                return;
            }
            uf.c.g(bubbleTextView);
        }

        @Override
        public void onTick(long j10) {
        }
    }

    private final void A1(Context context) {
        UploadView uploadView = new UploadView(context);
        uploadView.setPageName("room_home");
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
        uploadView.showFloatView(this.eventBean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void T0() {
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("room_cache_data", "");
        this.cache = string;
        if (string == null || string.length() == 0) {
            fp.q qVar = (fp.q) getMViewBinding();
            if (qVar == null || (roomCacheAnimationView = qVar.f60422d) == null) {
                return;
            }
            roomCacheAnimationView.setStatus(RoomCacheStatus.START);
            return;
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 == null || (roomCacheAnimationView2 = qVar2.f60422d) == null) {
            return;
        }
        roomCacheAnimationView2.setStatus(RoomCacheStatus.END);
    }

    private final jo.a U0() {
        return (jo.a) this.mPublishedApi.getValue();
    }

    private final RoomViewModel V0() {
        return (RoomViewModel) this.mRoomViewModel.getValue();
    }

    public final boolean W0() {
        ConfigBean configBean = this.roomCacheOpen;
        String value = configBean != null ? configBean.getValue() : null;
        if (value != null && value.length() != 0) {
            ConfigBean configBean2 = this.roomCacheOpen;
            if (Intrinsics.c(configBean2 != null ? configBean2.getValue() : null, "true")) {
                return true;
            }
        }
        return false;
    }

    public static final void Y0(RoomHomeFragment roomHomeFragment, View view) {
        roomHomeFragment.q1();
    }

    public static final void Z0(RoomHomeFragment roomHomeFragment, View view) {
        roomHomeFragment.q1();
    }

    public static final void a1(RoomHomeFragment roomHomeFragment, View view) {
        String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("room_cache_data", "");
        if (string == null || string.length() == 0) {
            roomHomeFragment.w1();
            return;
        }
        io.b bVarQ0 = roomHomeFragment.q0();
        if (bVarQ0 != null) {
            bVarQ0.n(roomHomeFragment.mExploreFragment);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void b1() {
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        c1();
        String str = this.cache;
        if (str == null || str.length() == 0) {
            fp.q qVar = (fp.q) getMViewBinding();
            if (qVar == null || (roomCacheAnimationView = qVar.f60422d) == null) {
                return;
            }
            roomCacheAnimationView.setStatus(RoomCacheStatus.START);
            return;
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 == null || (roomCacheAnimationView2 = qVar2.f60422d) == null) {
            return;
        }
        roomCacheAnimationView2.setStatus(RoomCacheStatus.END);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void c1() {
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        ConfigBean configBean = this.roomCacheOpen;
        String value = configBean != null ? configBean.getValue() : null;
        if (value != null && value.length() != 0) {
            ConfigBean configBean2 = this.roomCacheOpen;
            if (Intrinsics.c(configBean2 != null ? configBean2.getValue() : null, "true")) {
                fp.q qVar = (fp.q) getMViewBinding();
                if (qVar == null || (roomCacheAnimationView2 = qVar.f60422d) == null) {
                    return;
                }
                uf.c.k(roomCacheAnimationView2);
                return;
            }
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 == null || (roomCacheAnimationView = qVar2.f60422d) == null) {
            return;
        }
        uf.c.g(roomCacheAnimationView);
    }

    public static final void d1(RoomHomeFragment roomHomeFragment) {
        roomHomeFragment.r1();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void e1(RoomHomeFragment roomHomeFragment, AppBarLayout appBarLayout, int i10) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        fp.q qVar = (fp.q) roomHomeFragment.getMViewBinding();
        if (qVar == null || (nestedSwipeRefreshLayout = qVar.f60425g) == null) {
            return;
        }
        nestedSwipeRefreshLayout.setEnabled(i10 >= 0);
    }

    public static final Unit f1(RoomHomeFragment roomHomeFragment, RoomTabBean roomTabBean) {
        List<RoomTabItem> items;
        List<RoomTabItem> items2;
        List<RoomTabItem> items3;
        String value;
        List<RoomTabItem> items4;
        NetworkType networkTypeC = yg.l.f76264a.c();
        int i10 = -1;
        int i11 = networkTypeC == null ? -1 : b.f49478a[networkTypeC.ordinal()];
        int i12 = 0;
        if (i11 == 1 || i11 == 2 || i11 == 3 || i11 == 4) {
            ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), f49466s, false, 2, null);
            if ((configBeanD == null || (value = configBeanD.getValue()) == null) ? false : Boolean.parseBoolean(value)) {
                if (roomTabBean != null && (items3 = roomTabBean.getItems()) != null) {
                    Iterator<RoomTabItem> it = items3.iterator();
                    while (it.hasNext()) {
                        if (Intrinsics.c(it.next().getTabId(), "images")) {
                            i10 = i12;
                            break;
                        }
                        i12++;
                    }
                    i12 = i10;
                } else if (roomTabBean != null && (items2 = roomTabBean.getItems()) != null) {
                    Iterator<RoomTabItem> it2 = items2.iterator();
                    while (it2.hasNext()) {
                        if (Intrinsics.c(it2.next().getTabId(), roomTabBean.getDefTabId())) {
                            i10 = i12;
                            break;
                        }
                        i12++;
                    }
                    i12 = i10;
                }
            } else if (roomTabBean != null && (items = roomTabBean.getItems()) != null) {
                Iterator<RoomTabItem> it3 = items.iterator();
                while (it3.hasNext()) {
                    if (Intrinsics.c(it3.next().getTabId(), roomTabBean.getDefTabId())) {
                        i10 = i12;
                        break;
                    }
                    i12++;
                }
                i12 = i10;
            }
        } else if (roomTabBean != null && (items4 = roomTabBean.getItems()) != null) {
            Iterator<RoomTabItem> it4 = items4.iterator();
            while (it4.hasNext()) {
                if (Intrinsics.c(it4.next().getTabId(), roomTabBean.getDefTabId())) {
                    i10 = i12;
                    break;
                }
                i12++;
            }
            i12 = i10;
        }
        roomHomeFragment.w0(i12);
        roomHomeFragment.initViewPager();
        roomHomeFragment.s0();
        return Unit.f64096a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit g1(RoomHomeFragment roomHomeFragment, RoomBean roomBean) {
        fp.q qVar;
        CommunityRoomsView communityRoomsView;
        CommunityRoomsView communityRoomsView2;
        CommunityRoomsView communityRoomsView3;
        CommunityRoomsView communityRoomsView4;
        List<RoomItem> items = roomBean != null ? roomBean.getItems() : null;
        if (items != null && !items.isEmpty()) {
            fp.q qVar2 = (fp.q) roomHomeFragment.getMViewBinding();
            if ((qVar2 == null || (communityRoomsView4 = qVar2.f60428j) == null || communityRoomsView4.getVisibility() != 0) && (qVar = (fp.q) roomHomeFragment.getMViewBinding()) != null && (communityRoomsView = qVar.f60428j) != null) {
                uf.c.k(communityRoomsView);
            }
            fp.q qVar3 = (fp.q) roomHomeFragment.getMViewBinding();
            if (qVar3 != null && (communityRoomsView3 = qVar3.f60428j) != null) {
                List<RoomItem> items2 = roomBean != null ? roomBean.getItems() : null;
                Intrinsics.e(items2);
                communityRoomsView3.setList(items2);
            }
            fp.q qVar4 = (fp.q) roomHomeFragment.getMViewBinding();
            if (qVar4 != null && (communityRoomsView2 = qVar4.f60428j) != null) {
                communityRoomsView2.setReportName("room_home", "room_home_community");
            }
        }
        return Unit.f64096a;
    }

    public static final jo.a h1() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    private final void i1() {
        Object context = getContext();
        if (context instanceof ComponentActivity) {
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return RoomHomeFragment.j1(this.f49575a, (PublishResult) obj);
                }
            };
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = PublishResult.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.observeEvent((androidx.p009lifecycle.u) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
        }
    }

    public static final Unit j1(RoomHomeFragment roomHomeFragment, PublishResult it) {
        Intrinsics.h(it, "it");
        roomHomeFragment.u1(it);
        return Unit.f64096a;
    }

    private final void k1() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomHomeFragment.l1(this.f49584a, (JoinRoomEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = JoinRoomEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent(this, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit l1(RoomHomeFragment roomHomeFragment, JoinRoomEvent value) {
        CommunityRoomsView communityRoomsView;
        List<RoomItem> dataList;
        Object next;
        Context context;
        Intrinsics.h(value, "value");
        if (value.getJoin()) {
            Context context2 = roomHomeFragment.getContext();
            if (context2 != null) {
                RoomViewModel.u(roomHomeFragment.V0(), context2, null, 0, 6, null);
            }
        } else {
            fp.q qVar = (fp.q) roomHomeFragment.getMViewBinding();
            if (qVar != null && (communityRoomsView = qVar.f60428j) != null && (dataList = communityRoomsView.getDataList()) != null) {
                Iterator<T> it = dataList.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!Intrinsics.c(((RoomItem) next).getGroupId(), value.getGroupId()));
                if (((RoomItem) next) != null && (context = roomHomeFragment.getContext()) != null) {
                    RoomViewModel.u(roomHomeFragment.V0(), context, null, 0, 6, null);
                }
            }
        }
        return Unit.f64096a;
    }

    private final void loadData() {
        Context context = getContext();
        if (context != null) {
            RoomViewModel.u(V0(), context, null, 0, 6, null);
        }
    }

    private final void m1() {
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomHomeFragment.n1(this.f49578a, (RoomHomeCacheEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = RoomHomeCacheEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(this, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomHomeFragment.o1((RoomHomeRefreshCacheEvent) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = RoomHomeRefreshCacheEvent.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent(this, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit n1(RoomHomeFragment roomHomeFragment, RoomHomeCacheEvent it) {
        RoomCacheAnimationView roomCacheAnimationView;
        Intrinsics.h(it, "it");
        fp.q qVar = (fp.q) roomHomeFragment.getMViewBinding();
        if (qVar != null && (roomCacheAnimationView = qVar.f60422d) != null) {
            roomCacheAnimationView.setStatus(RoomCacheStatus.END);
        }
        roomHomeFragment.cache = com.transsion.baselib.report.launch.b.f42221a.b().getString("room_cache_data", "");
        return Unit.f64096a;
    }

    public static final Unit o1(RoomHomeRefreshCacheEvent it) {
        Intrinsics.h(it, "it");
        return Unit.f64096a;
    }

    public static final void p1(RoomHomeFragment roomHomeFragment) {
        ViewPager2 viewPager2Z0 = roomHomeFragment.z0();
        if (viewPager2Z0 != null) {
            viewPager2Z0.setCurrentItem(roomHomeFragment.o0(), false);
        }
        ep.k.f59780a.q(false);
    }

    private final void r1() {
        loadData();
        T0();
        androidx.p010savedstate.e eVar = (Fragment) this.mRefreshViewMap.get(Integer.valueOf(getMSelectTabIndex()));
        if (eVar != null) {
            io.c cVar = eVar instanceof io.c ? (io.c) eVar : null;
            if (cVar != null) {
                cVar.doRefresh(new Function0() {
                    @Override
                    public final Object invoke() {
                        return RoomHomeFragment.s1(this.f49541a);
                    }
                });
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit s1(RoomHomeFragment roomHomeFragment) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        fp.q qVar;
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout2;
        fp.q qVar2 = (fp.q) roomHomeFragment.getMViewBinding();
        if (qVar2 != null && (nestedSwipeRefreshLayout = qVar2.f60425g) != null && nestedSwipeRefreshLayout.isRefreshing() && (qVar = (fp.q) roomHomeFragment.getMViewBinding()) != null && (nestedSwipeRefreshLayout2 = qVar.f60425g) != null) {
            nestedSwipeRefreshLayout2.setRefreshing(false);
        }
        return Unit.f64096a;
    }

    private final void t1(boolean isTabClick) {
        String str;
        List<RoomTabItem> items;
        RoomTabItem roomTabItem;
        String tabId;
        Map mapM = MapsKt.m(TuplesKt.a("opt_type", isTabClick ? "tab_refresh" : "feed_error"));
        try {
            Result.Companion companion = Result.INSTANCE;
            RoomTabBean roomTabBean = (RoomTabBean) V0().G().f();
            if (roomTabBean == null || (items = roomTabBean.getItems()) == null || (roomTabItem = items.get(getMSelectTabIndex())) == null || (tabId = roomTabItem.getTabId()) == null) {
                str = null;
            } else {
                str = (String) mapM.put("subpage_name", "room_home_" + tabId);
            }
            Result.m453constructorimpl(str);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
        qi.h.f69682a.o("room_home", mapM);
    }

    public static final void v1(RoomHomeFragment roomHomeFragment) {
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        roomHomeFragment.A1(applicationA);
    }

    private final void w1() {
        RequestCacheRoomDialog requestCacheRoomDialogA = RequestCacheRoomDialog.INSTANCE.a();
        requestCacheRoomDialogA.t0(new Function0() {
            @Override
            public final Object invoke() {
                return RoomHomeFragment.x1(this.f49587a);
            }
        });
        Dialog dialog = requestCacheRoomDialogA.getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(true);
        }
        requestCacheRoomDialogA.j0(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                RoomHomeFragment.y1(dialogInterface);
            }
        });
        requestCacheRoomDialogA.k0(getContext(), "room_cache_dialog");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final Unit x1(RoomHomeFragment roomHomeFragment) {
        fp.q qVar;
        RoomCacheAnimationView roomCacheAnimationView;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return Unit.f64096a;
        }
        io.b bVarQ0 = roomHomeFragment.q0();
        if (bVarQ0 != null) {
            bVarQ0.g(roomHomeFragment.mExploreFragment, false);
        }
        String str = roomHomeFragment.cache;
        if ((str == null || str.length() == 0) && (qVar = (fp.q) roomHomeFragment.getMViewBinding()) != null && (roomCacheAnimationView = qVar.f60422d) != null) {
            roomCacheAnimationView.setStatus(RoomCacheStatus.LOADING);
        }
        return Unit.f64096a;
    }

    public static final void y1(DialogInterface dialogInterface) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void z1() {
        BubbleTextView bubbleTextView;
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        if (bVar.b().getBoolean("show_room_cache_guide", false) || !W0()) {
            return;
        }
        e eVar = new e();
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null && (bubbleTextView = qVar.f60420b) != null) {
            uf.c.k(bubbleTextView);
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 == null || qVar2.f60420b == null) {
            return;
        }
        eVar.start();
        bVar.b().putBoolean("show_room_cache_guide", true);
    }

    @Override
    public int B() {
        return getMSelectTabIndex();
    }

    @Override
    public void G() {
        T0();
    }

    @Override
    public void P() {
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.k(true);
        }
    }

    @Override
    public fp.q getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        fp.q qVarC = fp.q.c(inflater);
        Intrinsics.g(qVarC, "inflate(...)");
        return qVarC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void e(boolean isTabClick) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        AppBarLayout appBarLayout;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        t1(isTabClick);
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null && (appBarLayout = qVar.f60421c) != null) {
            appBarLayout.setExpanded(true);
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 != null && (nestedSwipeRefreshLayout = qVar2.f60425g) != null) {
            nestedSwipeRefreshLayout.setRefreshing(true);
        }
        r1();
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initListener() {
        ViewPager2 viewPager2;
        RoomCacheAnimationView roomCacheAnimationView;
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null && (appCompatImageView = qVar.f60423e) != null) {
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomHomeFragment.Y0(this.f49572a, view);
                }
            });
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 != null && (gradientTextView = qVar2.f60427i) != null) {
            gradientTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomHomeFragment.Z0(this.f49595a, view);
                }
            });
        }
        fp.q qVar3 = (fp.q) getMViewBinding();
        if (qVar3 != null && (roomCacheAnimationView = qVar3.f60422d) != null) {
            roomCacheAnimationView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    RoomHomeFragment.a1(this.f49599a, view);
                }
            });
        }
        fp.q qVar4 = (fp.q) getMViewBinding();
        if (qVar4 == null || (viewPager2 = qVar4.f60429k) == null) {
            return;
        }
        viewPager2.registerOnPageChangeCallback(new c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        AppBarLayout appBarLayout;
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null && (nestedSwipeRefreshLayout = qVar.f60425g) != null) {
            nestedSwipeRefreshLayout.setProgressBackgroundColorSchemeColor(androidx.core.content.b.getColor(nestedSwipeRefreshLayout.getContext(), R$color.bg_01));
            nestedSwipeRefreshLayout.setColorSchemeColors(androidx.core.content.b.getColor(nestedSwipeRefreshLayout.getContext(), R$color.main_gradient_center), androidx.core.content.b.getColor(nestedSwipeRefreshLayout.getContext(), R$color.main_gradient_start));
            nestedSwipeRefreshLayout.setOnRefreshListener(new SwipeRefreshLayout.j() {
                @Override
                public final void a() {
                    RoomHomeFragment.d1(this.f49528a);
                }
            });
        }
        fp.q qVar2 = (fp.q) getMViewBinding();
        if (qVar2 != null && (appBarLayout = qVar2.f60421c) != null) {
            appBarLayout.addOnOffsetChangedListener(new AppBarLayout.g() {
                @Override
                public final void onOffsetChanged(AppBarLayout appBarLayout2, int i10) {
                    RoomHomeFragment.e1(this.f49531a, appBarLayout2, i10);
                }
            });
        }
        fp.q qVar3 = (fp.q) getMViewBinding();
        if (qVar3 != null && (appCompatImageView = qVar3.f60423e) != null && !(getActivity() instanceof RoomHomeActivity)) {
            ViewGroup.LayoutParams layoutParams = appCompatImageView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.bottomMargin = com.transsion.usercenter.setting.labelsfeedback.a.b(104);
            appCompatImageView.setLayoutParams(marginLayoutParams);
        }
        b1();
    }

    @Override
    public void initViewModel() {
        super.initViewModel();
        V0().v().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomHomeFragment.g1(this.f49534a, (RoomBean) obj);
            }
        }));
        V0().G().j(this, new d(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return RoomHomeFragment.f1(this.f49537a, (RoomTabBean) obj);
            }
        }));
        i1();
        k1();
        m1();
    }

    @Override
    public void lazyLoadData() {
        V0().H();
        loadData();
    }

    @Override
    public void lazyLoadWithoutNet() {
        V0().H();
        loadData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Fragment m0(int position) {
        List<RoomTabItem> items;
        RoomTabItem roomTabItem;
        Fragment fragmentC;
        fp.q qVar;
        fp.q qVar2;
        RoomCacheAnimationView roomCacheAnimationView;
        RoomCacheAnimationView roomCacheAnimationView2;
        try {
            RoomTabBean roomTabBean = (RoomTabBean) V0().G().f();
            if (roomTabBean != null && (items = roomTabBean.getItems()) != null && (roomTabItem = items.get(position)) != null) {
                String tabId = roomTabItem.getTabId();
                if (Intrinsics.c(tabId, RoomTabId.EXPLORE.getValue())) {
                    io.b bVarQ0 = q0();
                    fragmentC = bVarQ0 != null ? bVarQ0.d(this.parentTypeName, this.insertPostId, this.insertPostOps) : null;
                    this.mExplorePosition = position;
                    if (getMSelectTabIndex() == position && (((qVar = (fp.q) getMViewBinding()) == null || (roomCacheAnimationView2 = qVar.f60422d) == null || roomCacheAnimationView2.getVisibility() != 0) && W0() && (qVar2 = (fp.q) getMViewBinding()) != null && (roomCacheAnimationView = qVar2.f60422d) != null)) {
                        uf.c.k(roomCacheAnimationView);
                    }
                    this.mExploreFragment = fragmentC;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                } else if (Intrinsics.c(tabId, RoomTabId.NEARBY.getValue())) {
                    io.b bVarQ1 = q0();
                    fragmentC = bVarQ1 != null ? bVarQ1.l(this.parentTypeName) : null;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                } else if (Intrinsics.c(tabId, RoomTabId.DISCOVER.getValue())) {
                    io.b bVarQ2 = q0();
                    fragmentC = bVarQ2 != null ? bVarQ2.b(this.parentTypeName, roomTabItem, position) : null;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                } else if (Intrinsics.c(roomTabItem.getType(), RoomTabType.H5.getValue())) {
                    WebFragmentV2 webFragmentV2B = WebFragmentV2.INSTANCE.b();
                    Pair pairA = TuplesKt.a("url", roomTabItem.getUrl());
                    Boolean bool = Boolean.TRUE;
                    webFragmentV2B.setArguments(androidx.core.os.d.b(pairA, TuplesKt.a(WebConstants.FIELD_STATUS_BAR_HIDDEN, bool), TuplesKt.a(WebConstants.FIELD_TOOL_BAR_HIDDEN, bool)));
                    fragmentC = webFragmentV2B;
                } else {
                    io.b bVarQ3 = q0();
                    fragmentC = bVarQ3 != null ? bVarQ3.c(this.parentTypeName, roomTabItem, position) : null;
                    this.mRefreshViewMap.put(Integer.valueOf(position), fragmentC);
                }
                if (fragmentC != null) {
                    return fragmentC;
                }
            }
            io.b bVarQ4 = q0();
            Fragment fragmentD = bVarQ4 != null ? bVarQ4.d(this.parentTypeName, this.insertPostId, this.insertPostOps) : null;
            this.mExploreFragment = fragmentD;
            return fragmentD;
        } catch (Throwable unused) {
            io.b bVarQ5 = q0();
            Fragment fragmentD2 = bVarQ5 != null ? bVarQ5.d(this.parentTypeName, this.insertPostId, this.insertPostOps) : null;
            this.mExploreFragment = fragmentD2;
            return fragmentD2;
        }
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("room_home", false, 2, null);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        this.insertPostId = arguments != null ? arguments.getString("post_id") : null;
        Bundle arguments2 = getArguments();
        this.insertPostOps = arguments2 != null ? arguments2.getString("ops") : null;
        Bundle arguments3 = getArguments();
        this.parentTypeName = arguments3 != null ? arguments3.getString("parent_type") : null;
    }

    @Override
    public void onResume() {
        ViewPager2 viewPager2Z0;
        super.onResume();
        z1();
        c1();
        if (!ep.k.f59780a.f() || (viewPager2Z0 = z0()) == null) {
            return;
        }
        viewPager2Z0.postDelayed(new Runnable() {
            @Override
            public final void run() {
                RoomHomeFragment.p1(this.f49543a);
            }
        }, 200L);
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    public void q1() {
        jo.a aVarU0;
        Context context = getContext();
        if (context == null || (aVarU0 = U0()) == null) {
            return;
        }
        aVarU0.b(context);
    }

    @Override
    public void retryLoadData() {
        loadData();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public MagicIndicator u0() {
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null) {
            return qVar.f60424f;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void u1(PublishResult eventBean) {
        fp.q qVar;
        AppCompatImageView appCompatImageView;
        this.eventBean = eventBean;
        Integer numValueOf = eventBean != null ? Integer.valueOf(eventBean.getState()) : null;
        if (numValueOf == null || numValueOf.intValue() != 0 || (qVar = (fp.q) getMViewBinding()) == null || (appCompatImageView = qVar.f60423e) == null) {
            return;
        }
        appCompatImageView.postDelayed(new Runnable() {
            @Override
            public final void run() {
                RoomHomeFragment.v1(this.f49592a);
            }
        }, 1500L);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void v() {
        RoomCacheAnimationView roomCacheAnimationView;
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.no_network_toast);
            return;
        }
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null && (roomCacheAnimationView = qVar.f60422d) != null) {
            roomCacheAnimationView.setStatus(RoomCacheStatus.LOADING);
        }
        io.b bVarQ0 = q0();
        if (bVarQ0 != null) {
            bVarQ0.g(this.mExploreFragment, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void v0(int position) {
        NestedSwipeRefreshLayout nestedSwipeRefreshLayout;
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar == null || (nestedSwipeRefreshLayout = qVar.f60425g) == null) {
            return;
        }
        nestedSwipeRefreshLayout.setEnabled(this.mRefreshViewMap.containsKey(Integer.valueOf(position)));
    }

    @Override
    public void x0(RoomHomeTabTitleView tabView, int index, List tabList) {
        Intrinsics.h(tabView, "tabView");
        Intrinsics.h(tabList, "tabList");
        RoomTabItem roomTabItem = (RoomTabItem) tabList.get(index);
        tabView.setTitle(roomTabItem.getName());
        tabView.setBadge(roomTabItem);
    }

    @Override
    public List getMTabs() {
        List<RoomTabItem> items;
        ArrayList arrayList = new ArrayList();
        RoomTabBean roomTabBean = (RoomTabBean) V0().G().f();
        if (roomTabBean != null && (items = roomTabBean.getItems()) != null) {
            Iterator<T> it = items.iterator();
            while (it.hasNext()) {
                arrayList.add((RoomTabItem) it.next());
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void z(String pageFrom) {
        ViewPager2 viewPager2;
        HashMap mapG;
        HashMap mapG2;
        if (pageFrom != null && pageFrom.length() != 0) {
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG2 = logViewConfig.g()) != null) {
            }
            String str = getActivity() instanceof RoomHomeActivity ? "sub_page" : "main";
            qi.b logViewConfig2 = getLogViewConfig();
            if (logViewConfig2 != null && (mapG = logViewConfig2.g()) != null) {
            }
        }
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar == null || (viewPager2 = qVar.f60429k) == null) {
            return;
        }
        viewPager2.setCurrentItem(n0());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public ViewPager2 z0() {
        fp.q qVar = (fp.q) getMViewBinding();
        if (qVar != null) {
            return qVar.f60429k;
        }
        return null;
    }
}
