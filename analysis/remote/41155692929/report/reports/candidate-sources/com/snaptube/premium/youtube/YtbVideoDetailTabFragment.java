package com.snaptube.premium.youtube;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.phoenix.extensions.PagerSlidingTabStrip;
import com.snaptube.ads.AdFlavor;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.base.ktx.ObservableKt;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.exoplayer.impl.VideoDetailInfo;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.mixed_list.NavigableMultiTabFragment;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.app.d;
import com.snaptube.premium.fragment.youtube.YtbWaterFallCommentsFragment;
import com.snaptube.premium.log.ReportPropertyBuilder;
import com.snaptube.premium.log.video.VideoTracker;
import com.snaptube.premium.playback.detail.VideoPlaybackFragment;
import com.snaptube.premium.views.playback.AppBarLayoutWithoutInterceptBehavior;
import com.snaptube.premium.views.playback.NestRecyclerViewFrameLayout;
import com.snaptube.premium.youtube.comment.CommentViewModel;
import com.vungle.ads.internal.protos.Sdk;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import com.wandoujia.em.common.protomodel.ListPageResponse;
import com.wandoujia.em.common.protomodel.Tab;
import com.wandoujia.em.common.protomodel.TabResponse;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.SourceDebugExtension;
import o.a58;
import o.ah7;
import o.bh7;
import o.cw0;
import o.cy2;
import o.dx2;
import o.ei0;
import o.fc1;
import o.hh9;
import o.ih6;
import o.ih9;
import o.jh9;
import o.ke3;
import o.kf5;
import o.kf9;
import o.kh3;
import o.kh9;
import o.l44;
import o.n19;
import o.or3;
import o.pv2;
import o.ri0;
import o.t14;
import o.t44;
import o.ti3;
import o.u0;
import o.ux2;
import o.vq6;
import o.wi3;
import o.wz7;
import o.x24;
import o.xz7;
import o.z34;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rx.c;

@Metadata(d1 = {"\u0000ä\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\b*\u0002\u0096\u0001\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000f\u0010\rJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0003J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u0017\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u001e\u0010\u0015J\u000f\u0010\u001f\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u001f\u0010 J!\u0010#\u001a\u00020\u00072\b\u0010!\u001a\u0004\u0018\u00010\u00162\b\u0010\"\u001a\u0004\u0018\u00010\u0016¢\u0006\u0004\b#\u0010$J-\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b,\u0010-J\u0019\u0010.\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b.\u0010/J!\u00101\u001a\u00020\u00072\u0006\u00100\u001a\u00020+2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b1\u00102J\u0019\u00103\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b3\u0010/J/\u0010:\u001a\u00020\u00072\f\u00106\u001a\b\u0012\u0004\u0012\u000205042\u0006\u00107\u001a\u00020\n2\b\u00109\u001a\u0004\u0018\u000108H\u0014¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0007H\u0014¢\u0006\u0004\b<\u0010\u0003J\u001f\u0010@\u001a\u00020\u00072\u0006\u0010>\u001a\u00020=2\u0006\u0010&\u001a\u00020?H\u0016¢\u0006\u0004\b@\u0010AJ\u000f\u0010C\u001a\u00020BH\u0014¢\u0006\u0004\bC\u0010DJ)\u0010I\u001a\u00020\u00182\u0006\u0010F\u001a\u00020E2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00122\u0006\u0010H\u001a\u00020GH\u0016¢\u0006\u0004\bI\u0010JJ\r\u0010K\u001a\u00020\u0007¢\u0006\u0004\bK\u0010\u0003J\u001b\u0010N\u001a\u0004\u0018\u00010L2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bN\u0010OJ\u000f\u0010P\u001a\u00020\u0007H\u0016¢\u0006\u0004\bP\u0010\u0003J\u000f\u0010Q\u001a\u00020\u0007H\u0016¢\u0006\u0004\bQ\u0010\u0003J\u000f\u0010R\u001a\u00020\u0007H\u0016¢\u0006\u0004\bR\u0010\u0003J\u0017\u0010T\u001a\u00020\u00072\u0006\u0010S\u001a\u00020\u0018H\u0014¢\u0006\u0004\bT\u0010UJ\u0017\u0010W\u001a\u00020\u00182\u0006\u0010V\u001a\u00020\nH\u0016¢\u0006\u0004\bW\u0010XR\u0018\u0010\\\u001a\u0004\u0018\u00010Y8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bZ\u0010[R\u001b\u0010b\u001a\u00020]8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b^\u0010_\u001a\u0004\b`\u0010aR\u001b\u0010g\u001a\u00020c8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bd\u0010_\u001a\u0004\be\u0010fR\u0018\u0010j\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010iR\u0018\u0010n\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bl\u0010mR\u0018\u0010q\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u001b\u0010u\u001a\u00020\u00188BX\u0082\u0084\u0002¢\u0006\f\n\u0004\br\u0010_\u001a\u0004\bs\u0010tR\u0018\u0010!\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010iR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010|\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010yR\u001d\u0010\u0081\u0001\u001a\u00020}8BX\u0082\u0084\u0002¢\u0006\r\n\u0004\b~\u0010_\u001a\u0005\b\u007f\u0010\u0080\u0001R\u0018\u0010\u0083\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0082\u0001\u0010iR\u0019\u0010\u0086\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001b\u0010\u008b\u0001\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u008a\u0001R\u001c\u0010\u008f\u0001\u001a\u0005\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008e\u0001R\u001b\u0010\u0091\u0001\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0088\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0018\u0010\u0099\u0001\u001a\u00030\u0096\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0017\u0010\u009c\u0001\u001a\u00020Y8BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u009a\u0001\u0010\u009b\u0001¨\u0006\u009d\u0001"}, d2 = {"Lcom/snaptube/premium/youtube/YtbVideoDetailTabFragment;", "Lcom/snaptube/mixed_list/NavigableMultiTabFragment;", "<init>", "()V", "Lo/wi3;", "o4", "()Lo/wi3;", "Lo/mg8;", "C4", "y4", "", "verticalOffset", "p4", "(I)V", "top", "G4", "B4", "A4", "Lcom/wandoujia/em/common/protomodel/Card;", "card", "J4", "(Lcom/wandoujia/em/common/protomodel/Card;)V", "", "action", "", "H4", "(Ljava/lang/String;)Z", "Lcom/snaptube/premium/views/playback/NestRecyclerViewFrameLayout;", "u4", "()Lcom/snaptube/premium/views/playback/NestRecyclerViewFrameLayout;", "x4", "w4", "()Ljava/lang/String;", "videoTitle", IntentUtil.POS, "F4", "(Ljava/lang/String;Ljava/lang/String;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "onCreate", "(Landroid/os/Bundle;)V", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "onActivityCreated", "", "Lo/wz7;", "delegates", "selectedTabIndex", "Lcom/wandoujia/em/common/protomodel/ListPageResponse;", "page", "E3", "(Ljava/util/List;ILcom/wandoujia/em/common/protomodel/ListPageResponse;)V", "X2", "Landroid/view/Menu;", "menu", "Landroid/view/MenuInflater;", "onCreateOptionsMenu", "(Landroid/view/Menu;Landroid/view/MenuInflater;)V", "Lo/u0;", "M2", "()Lo/u0;", "Landroid/content/Context;", "context", "Landroid/content/Intent;", "intent", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "n4", "Lcom/wandoujia/em/common/protomodel/TabResponse;", "response", "r3", "(Lcom/wandoujia/em/common/protomodel/TabResponse;)Lcom/wandoujia/em/common/protomodel/TabResponse;", "onDestroyView", "onDestroy", "A3", "visible", "K3", "(Z)V", "position", "k2", "(I)Z", "Lo/pv2;", "L", "Lo/pv2;", "_binding", "Lcom/snaptube/premium/youtube/VideoDetailDataHelper$VideoDetailViewModel;", "M", "Lo/t14;", "v4", "()Lcom/snaptube/premium/youtube/VideoDetailDataHelper$VideoDetailViewModel;", "viewModel", "Lcom/snaptube/premium/youtube/comment/CommentViewModel;", "N", "s4", "()Lcom/snaptube/premium/youtube/comment/CommentViewModel;", "commentViewModel", "O", "Ljava/lang/String;", "commentNextOffset", "Lo/ke3;", "P", "Lo/ke3;", "mixedListDelegate", "Q", "Lo/wi3;", "parseListener", "R", "q4", "()Z", "authorIsLive", "S", "Lo/ah7;", "T", "Lo/ah7;", "listSkeletonScreen", "U", "commentSkeletonScreen", "Lo/ti3;", "V", "t4", "()Lo/ti3;", "userManager", "W", "tabsReportStr", "X", "Z", "tabExposureReported", "Y", "Landroid/view/View;", "commentSectionView", "Lcom/wandoujia/em/common/protomodel/Card;", "headerCard", "Lcom/snaptube/premium/fragment/youtube/YtbWaterFallCommentsFragment;", "f0", "Lcom/snaptube/premium/fragment/youtube/YtbWaterFallCommentsFragment;", "ytbWaterFallCommentsFragment", "v0", "headCardView", "Lcom/snaptube/ads/nativead/AdView;", "w0", "Lcom/snaptube/ads/nativead/AdView;", "adView", "com/snaptube/premium/youtube/YtbVideoDetailTabFragment$a", "x0", "Lcom/snaptube/premium/youtube/YtbVideoDetailTabFragment$a;", "onOffsetChangedListener", "r4", "()Lo/pv2;", "binding", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nYtbVideoDetailTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 YtbVideoDetailTabFragment.kt\ncom/snaptube/premium/youtube/YtbVideoDetailTabFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Any.kt\ncom/snaptube/ktx/AnyKt\n*L\n1#1,541:1\n84#2,6:542\n56#2,10:548\n262#3,2:558\n262#3,2:560\n260#3:562\n262#3,2:563\n329#3,4:565\n1#4:569\n8#5:570\n*S KotlinDebug\n*F\n+ 1 YtbVideoDetailTabFragment.kt\ncom/snaptube/premium/youtube/YtbVideoDetailTabFragment\n*L\n90#1:542,6\n91#1:548,10\n228#1:558,2\n232#1:560,2\n283#1:562\n354#1:563,2\n356#1:565,4\n399#1:570\n*E\n"})
public final class YtbVideoDetailTabFragment extends NavigableMultiTabFragment {

    public pv2 _binding;

    public final t14 viewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(VideoDetailDataHelper.VideoDetailViewModel.class), new YtbVideoDetailTabFragment$special$$inlined$activityViewModels$default$1(this), new YtbVideoDetailTabFragment$special$$inlined$activityViewModels$default$2(this));

    public final t14 commentViewModel;

    public String commentNextOffset;

    public ke3 mixedListDelegate;

    public wi3 parseListener;

    public final t14 authorIsLive;

    public String videoTitle;

    public ah7 listSkeletonScreen;

    public ah7 commentSkeletonScreen;

    public final t14 userManager;

    public String tabsReportStr;

    public boolean tabExposureReported;

    public View commentSectionView;

    public Card headerCard;

    public YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment;

    public View headCardView;

    public AdView adView;

    public final a onOffsetChangedListener;

    public static final class a implements AppBarLayout.d {
        public a() {
        }

        @Override
        public void a(AppBarLayout appBarLayout, int i) {
            or3.f(appBarLayout, "appBar");
            if (FragmentKt.d(YtbVideoDetailTabFragment.this)) {
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                View viewB4 = YtbVideoDetailTabFragment.b4(YtbVideoDetailTabFragment.this);
                int height = totalScrollRange - (viewB4 != null ? viewB4.getHeight() : 0);
                int iAbs = Math.abs(i);
                View viewB5 = YtbVideoDetailTabFragment.b4(YtbVideoDetailTabFragment.this);
                int height2 = iAbs - (viewB5 != null ? viewB5.getHeight() : 0);
                if (height2 < 0) {
                    YtbVideoDetailTabFragment.W3(YtbVideoDetailTabFragment.this, i);
                    return;
                }
                float fMin = Math.min(1.0f, height2 / height);
                YtbVideoDetailTabFragment.X3(YtbVideoDetailTabFragment.this).l.setAlpha(fMin);
                float height3 = (1 - fMin) * YtbVideoDetailTabFragment.X3(YtbVideoDetailTabFragment.this).l.getHeight();
                YtbVideoDetailTabFragment.X3(YtbVideoDetailTabFragment.this).l.setTranslationY(height3);
                PagerSlidingTabStrip pagerSlidingTabStrip = YtbVideoDetailTabFragment.X3(YtbVideoDetailTabFragment.this).l;
                or3.e(pagerSlidingTabStrip, "tabs");
                if (pagerSlidingTabStrip.getVisibility() == 0 && !YtbVideoDetailTabFragment.e4(YtbVideoDetailTabFragment.this) && YtbVideoDetailTabFragment.X3(YtbVideoDetailTabFragment.this).l.getTranslationY() <= 1.0d) {
                    VideoTracker.h(YtbVideoDetailTabFragment.f4(YtbVideoDetailTabFragment.this), YtbVideoDetailTabFragment.d4(YtbVideoDetailTabFragment.this).getCount(), YtbVideoDetailTabFragment.this.m(), YtbVideoDetailTabFragment.h4(YtbVideoDetailTabFragment.this), YtbVideoDetailTabFragment.i4(YtbVideoDetailTabFragment.this), YtbVideoDetailTabFragment.g4(YtbVideoDetailTabFragment.this).d());
                    YtbVideoDetailTabFragment.k4(YtbVideoDetailTabFragment.this, true);
                }
                YtbVideoDetailTabFragment.l4(YtbVideoDetailTabFragment.this, -((int) height3));
            }
        }
    }

    public static final class b implements kf5, cy2 {
        public final dx2 a;

        public b(dx2 dx2Var) {
            or3.f(dx2Var, "function");
            this.a = dx2Var;
        }

        @Override
        public final ux2 a() {
            return this.a;
        }

        public final boolean equals(Object obj) {
            if ((obj instanceof kf5) && (obj instanceof cy2)) {
                return or3.a(a(), ((cy2) obj).a());
            }
            return false;
        }

        public final int hashCode() {
            return a().hashCode();
        }

        @Override
        public final void onChanged(Object obj) {
            this.a.invoke(obj);
        }
    }

    public YtbVideoDetailTabFragment() {
        YtbVideoDetailTabFragment$special$$inlined$viewModels$default$1 ytbVideoDetailTabFragment$special$$inlined$viewModels$default$1 = new YtbVideoDetailTabFragment$special$$inlined$viewModels$default$1(this);
        this.commentViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(CommentViewModel.class), new YtbVideoDetailTabFragment$special$$inlined$viewModels$default$2(ytbVideoDetailTabFragment$special$$inlined$viewModels$default$1), new YtbVideoDetailTabFragment$special$$inlined$viewModels$default$3(ytbVideoDetailTabFragment$special$$inlined$viewModels$default$1, this));
        this.authorIsLive = kotlin.b.b(new YtbVideoDetailTabFragment$authorIsLive$2(this));
        this.userManager = kotlin.b.b(YtbVideoDetailTabFragment$userManager$2.INSTANCE);
        this.tabsReportStr = "";
        this.onOffsetChangedListener = new a();
    }

    private final void A4() {
        x24 x24VarK2 = K2();
        if (x24VarK2 != null) {
            s4().M().i(x24VarK2, new b(new YtbVideoDetailTabFragment$initEvents$1$1(this)));
            wi3 wi3Var = this.parseListener;
            if (wi3Var != null) {
                v4().B(wi3Var.o0()).i(x24VarK2, new b(new YtbVideoDetailTabFragment$initEvents$1$2$1(this)));
            }
        }
    }

    private final void B4() {
        View view = this.headCardView;
        TextView textView = view != null ? (TextView) view.findViewById(R.id.video_title) : null;
        if (textView != null) {
            textView.setText(this.videoTitle);
        }
        ah7 ah7Var = this.commentSkeletonScreen;
        if (ah7Var == null) {
            this.commentSkeletonScreen = bh7.a.d(r4().d, R.layout.layout_skeleton_item_youtube_video_comment);
        } else if (ah7Var != null) {
            ah7Var.a();
        }
    }

    public static final void D4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        or3.f(ytbVideoDetailTabFragment, "this$0");
        ytbVideoDetailTabFragment.a3(6);
    }

    public static final void E4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        View childAt;
        or3.f(ytbVideoDetailTabFragment, "this$0");
        if (FragmentKt.d(ytbVideoDetailTabFragment) && ytbVideoDetailTabFragment.g.s()) {
            PagerSlidingTabStrip pagerSlidingTabStrip = ytbVideoDetailTabFragment.g;
            LinearLayout tabsContainer = pagerSlidingTabStrip.getTabsContainer();
            pagerSlidingTabStrip.scrollTo((tabsContainer == null || (childAt = tabsContainer.getChildAt(0)) == null) ? 0 : childAt.getRight(), 0);
        }
    }

    private final void G4(int top) {
        PagerSlidingTabStrip pagerSlidingTabStrip = r4().l;
        or3.e(pagerSlidingTabStrip, "tabs");
        if (pagerSlidingTabStrip.getVisibility() == 0) {
            r4().e.setPadding(0, top, 0, 0);
        }
    }

    private final boolean H4(String action) {
        Dialog dialog;
        cw0.k();
        if (getActivity() == null) {
            return false;
        }
        if (or3.a(action, "snaptube.intent.action.CLICK_COMMENT_EMPTY") && !t4().d() && getContext() != null) {
            NavigationManager.a1(getContext(), "from_ytb_video_detail_tab");
            return true;
        }
        NestRecyclerViewFrameLayout nestRecyclerViewFrameLayoutU4 = u4();
        if (nestRecyclerViewFrameLayoutU4 == null) {
            return true;
        }
        YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment = this.ytbWaterFallCommentsFragment;
        if (ytbWaterFallCommentsFragment != null && (dialog = ytbWaterFallCommentsFragment.getDialog()) != null && dialog.isShowing()) {
            return true;
        }
        nestRecyclerViewFrameLayoutU4.j();
        YtbWaterFallCommentsFragment ytbWaterFallCommentsFragmentA = YtbWaterFallCommentsFragment.INSTANCE.a(m(), this.commentNextOffset, (nestRecyclerViewFrameLayoutU4.getBottom() - nestRecyclerViewFrameLayoutU4.getMinTop()) + requireContext().getResources().getDimensionPixelSize(R.dimen.navigation_bar_height), false);
        ytbWaterFallCommentsFragmentA.H2(new jh9(this));
        this.ytbWaterFallCommentsFragment = ytbWaterFallCommentsFragmentA;
        ytbWaterFallCommentsFragmentA.show(getChildFragmentManager(), "YtbWaterFallCommentsFragment");
        return true;
    }

    public static final void I4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, DialogInterface dialogInterface) {
        or3.f(ytbVideoDetailTabFragment, "this$0");
        ytbVideoDetailTabFragment.ytbWaterFallCommentsFragment = null;
    }

    private final void J4(Card card) {
        if (this.headCardView == null) {
            return;
        }
        n19 n19Var = new n19(this, this.headCardView, this);
        n19Var.s(1183, this.headCardView);
        n19Var.m(card);
        this.headerCard = card;
    }

    public static void R3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        z4(ytbVideoDetailTabFragment);
    }

    public static void S3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        E4(ytbVideoDetailTabFragment);
    }

    public static void T3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, DialogInterface dialogInterface) {
        I4(ytbVideoDetailTabFragment, dialogInterface);
    }

    public static void U3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        D4(ytbVideoDetailTabFragment);
    }

    public static final View V3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, int i) {
        return ytbVideoDetailTabFragment.C2(i);
    }

    public static final void W3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, int i) {
        ytbVideoDetailTabFragment.p4(i);
    }

    public static final pv2 X3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.r4();
    }

    public static final View Y3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.commentSectionView;
    }

    public static final ah7 Z3(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.commentSkeletonScreen;
    }

    public static final CommentViewModel a4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.s4();
    }

    public static final View b4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.headCardView;
    }

    public static final Card c4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.headerCard;
    }

    public static final u0 d4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.i;
    }

    public static final boolean e4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.tabExposureReported;
    }

    public static final String f4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.tabsReportStr;
    }

    public static final ti3 g4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.t4();
    }

    public static final String h4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.videoTitle;
    }

    public static final String i4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        return ytbVideoDetailTabFragment.w4();
    }

    public static final void j4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, View view) {
        ytbVideoDetailTabFragment.commentSectionView = view;
    }

    public static final void k4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, boolean z) {
        ytbVideoDetailTabFragment.tabExposureReported = z;
    }

    public static final void l4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, int i) {
        ytbVideoDetailTabFragment.G4(i);
    }

    public static final void m4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment, Card card) {
        ytbVideoDetailTabFragment.J4(card);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final wi3 o4() {
        for (Fragment parentFragment = getParentFragment(); parentFragment != 0; parentFragment = parentFragment.getParentFragment()) {
            if (parentFragment instanceof wi3) {
                return (wi3) parentFragment;
            }
        }
        return null;
    }

    private final void p4(int verticalOffset) {
        int height = r4().i.b().getHeight();
        float height2 = r4().l.getHeight();
        if (Math.abs(verticalOffset) >= height || r4().l.getTranslationY() == height2) {
            return;
        }
        r4().l.setAlpha(0.0f);
        r4().l.setTranslationY(height2);
        G4(-((int) height2));
    }

    private final CommentViewModel s4() {
        return (CommentViewModel) this.commentViewModel.getValue();
    }

    private final ti3 t4() {
        return (ti3) this.userManager.getValue();
    }

    private final NestRecyclerViewFrameLayout u4() {
        Fragment parentFragment = getParentFragment();
        if (parentFragment instanceof VideoPlaybackFragment) {
            return ((VideoPlaybackFragment) parentFragment).D3();
        }
        return null;
    }

    private final String w4() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.getBoolean("video_is_live")) {
            return kf9.j(m()) ? "shorts_video" : "non_shorts_video";
        }
        return "live";
    }

    private final void y4() {
        r4().b.post(new kh9(this));
        r4().b.b(this.onOffsetChangedListener);
        AppBarLayoutWithoutInterceptBehavior appBarLayoutWithoutInterceptBehavior = r4().b;
        or3.e(appBarLayoutWithoutInterceptBehavior, "appBarLayout");
        com.snaptube.premium.views.playback.a.a(appBarLayoutWithoutInterceptBehavior, !getTabs().isEmpty());
    }

    public static final void z4(YtbVideoDetailTabFragment ytbVideoDetailTabFragment) {
        or3.f(ytbVideoDetailTabFragment, "this$0");
        if (FragmentKt.d(ytbVideoDetailTabFragment)) {
            float height = ytbVideoDetailTabFragment.r4().l.getHeight();
            ytbVideoDetailTabFragment.r4().l.setAlpha(0.0f);
            ytbVideoDetailTabFragment.r4().l.setTranslationY(height);
            ytbVideoDetailTabFragment.G4(-((int) height));
        }
    }

    @Override
    public void A3() {
        super.A3();
        kh3 kh3VarK = vq6.K();
        ReportPropertyBuilder reportPropertyBuilder = new ReportPropertyBuilder();
        Bundle arguments = getArguments();
        kh3VarK.h("/youtube_details", reportPropertyBuilder.setProperty("from", arguments != null ? arguments.getString(IntentUtil.POS) : null));
    }

    public final void C4() {
        AdView adView = (AdView) C2(R.id.adview);
        this.adView = adView;
        if (adView == null || !PhoenixApplication.C().n()) {
            AdView adView2 = this.adView;
            if (adView2 == null) {
                return;
            }
            adView2.setVisibility(8);
            return;
        }
        AdView adView3 = this.adView;
        if (adView3 == null) {
            return;
        }
        adView3.setVisibility(0);
        AdsPos adsPos = AdsPos.NATIVE_YOUTUBE_DETAILS_TOP_BANNER;
        int iB0 = PhoenixApplication.C().y().b0(adsPos.pos());
        boolean zS0 = PhoenixApplication.C().y().s0(adsPos.pos());
        AdFlavor adFlavorFindByFlavor = AdFlavor.findByFlavor(iB0);
        adView3.setLayoutId(adFlavorFindByFlavor != null ? adFlavorFindByFlavor.resId : R.layout.card_ad_unit_youtube_details_top_banner_margin_16);
        adView3.setPlacementAlias(adsPos.pos());
        adView3.setShowCtaAction(zS0);
        adView3.setAdMargins(16, 8, 16, 4);
        adView3.o0();
        c cVarG = RxBus.d().c(1052).g(RxBus.f).g(y2());
        or3.e(cVarG, "compose(...)");
        ObservableKt.i(cVarG, new YtbVideoDetailTabFragment$initTopAdCard$1(adView3));
    }

    @Override
    public void E3(List delegates, int selectedTabIndex, ListPageResponse page) {
        String str;
        Object next;
        or3.f(delegates, "delegates");
        super.E3(delegates, selectedTabIndex, page);
        if (delegates.size() == 1) {
            PagerSlidingTabStrip pagerSlidingTabStrip = r4().l;
            or3.e(pagerSlidingTabStrip, "tabs");
            pagerSlidingTabStrip.setVisibility(8);
            r4().e.setPadding(0, 0, 0, 0);
            NestedScrollView nestedScrollView = r4().k;
            or3.e(nestedScrollView, "svContainer");
            ViewGroup.LayoutParams layoutParams = nestedScrollView.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type com.google.android.material.appbar.CollapsingToolbarLayout.LayoutParams");
            }
            CollapsingToolbarLayout.c cVar = (CollapsingToolbarLayout.c) layoutParams;
            cVar.a(0);
            nestedScrollView.setLayoutParams(cVar);
        }
        if (page == null || l44.a(page)) {
            return;
        }
        Map<String, String> map = page.extras;
        if (map == null || (str = map.get("report_params")) == null) {
            str = "";
        }
        this.tabsReportStr = str;
        List<Card> list = page.card;
        or3.e(list, "card");
        Iterator<T> it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
            Integer num = ((Card) next).cardId;
            if (num != null && num.intValue() == 1183) {
                break;
            }
        }
        Card card = (Card) next;
        if (card != null) {
            J4(card);
            x4(card);
            v4().M(card);
            this.commentNextOffset = ri0.h(card, 20061);
            CommentViewModel commentViewModelS4 = s4();
            Object obj = this.t.get();
            or3.e(obj, "get(...)");
            commentViewModelS4.T((z34) obj, this.commentNextOffset);
        }
        AppBarLayoutWithoutInterceptBehavior appBarLayoutWithoutInterceptBehavior = r4().b;
        or3.e(appBarLayoutWithoutInterceptBehavior, "appBarLayout");
        com.snaptube.premium.views.playback.a.a(appBarLayoutWithoutInterceptBehavior, true);
        this.g.post(new hh9(this));
    }

    public final void F4(String videoTitle, String pos) {
        Bundle bundleRequireArguments;
        if (getArguments() == null) {
            bundleRequireArguments = new Bundle();
        } else {
            bundleRequireArguments = requireArguments();
            or3.e(bundleRequireArguments, "requireArguments(...)");
        }
        bundleRequireArguments.putString(IntentUtil.VIDEO_TITLE, videoTitle);
        bundleRequireArguments.putString(IntentUtil.POS, pos);
        setArguments(bundleRequireArguments);
    }

    @Override
    public void K3(boolean visible) {
        if (!visible) {
            bh7.a.c(this.listSkeletonScreen);
            return;
        }
        ah7 ah7Var = this.listSkeletonScreen;
        if (ah7Var == null) {
            this.listSkeletonScreen = bh7.a.d(r4().j, R.layout.layout_skeleton_video_details);
        } else if (ah7Var != null) {
            ah7Var.a();
        }
    }

    @Override
    public u0 M2() {
        return new xz7(requireContext(), getChildFragmentManager(), true);
    }

    @Override
    public void X2() {
        this.g = r4().l;
    }

    @Override
    public boolean k2(int position) {
        String string;
        Bundle bundleA;
        List listI = this.i.i();
        or3.e(listI, "getTabFragmentDelegates(...)");
        wz7 wz7Var = (wz7) CollectionsKt___CollectionsKt.X(listI, position);
        if (wz7Var == null || (bundleA = wz7Var.a()) == null || (string = bundleA.getString("recommend_tab_type")) == null) {
            string = "other";
        }
        VideoTracker.r(string);
        return super.k2(position);
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        or3.f(context, "context");
        or3.f(intent, "intent");
        String action = intent.getAction();
        if (or3.a("snaptube.intent.action.CLICK_COMMENT_SECTION", action) || or3.a("snaptube.intent.action.CLICK_COMMENT_EMPTY", action)) {
            return H4(action);
        }
        if (!or3.a("snaptube.intent.action.CLICK_COMMENT_RETRY", action)) {
            ke3 ke3Var = this.mixedListDelegate;
            if (ke3Var != null) {
                return ke3Var.l0(context, card, intent);
            }
            return false;
        }
        CommentViewModel commentViewModelS4 = s4();
        Object obj = this.t.get();
        or3.e(obj, "get(...)");
        commentViewModelS4.T((z34) obj, this.commentNextOffset);
        return true;
    }

    public final void n4() {
        YtbWaterFallCommentsFragment ytbWaterFallCommentsFragment = this.ytbWaterFallCommentsFragment;
        if (ytbWaterFallCommentsFragment != null) {
            ytbWaterFallCommentsFragment.dismiss();
        }
    }

    @Override
    public void onActivityCreated(Bundle savedInstanceState) {
        super.onActivityCreated(savedInstanceState);
        a58.a.post(new ih9(this));
        this.g.r(true);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        String string;
        super.onCreate(savedInstanceState);
        this.mixedListDelegate = ((d) fc1.c(getContext())).c();
        this.parseListener = o4();
        Bundle arguments = getArguments();
        if (arguments == null || (string = arguments.getString(IntentUtil.VIDEO_TITLE)) == null) {
            string = "";
        }
        this.videoTitle = string;
        wi3 wi3Var = this.parseListener;
        if (wi3Var != null) {
            ei0 ei0VarG = ei0.x().w(1183).g(Sdk.SDKError.Reason.AD_SERVER_ERROR_VALUE, this.videoTitle);
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                t44 t44Var = new t44(false, false, 3, null);
                t44Var.c(q4());
                t44Var.d(arguments2.getBoolean("video_is_live"));
                ei0VarG.A(t44Var);
                ei0VarG.g(20023, arguments2.getString("author_avtar"));
            }
            Card cardK = ei0VarG.k();
            ArrayList arrayList = new ArrayList();
            or3.c(cardK);
            arrayList.add(cardK);
            v4().R(wi3Var.o0(), cardK);
        }
    }

    @Override
    public void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        ActionBar supportActionBar;
        or3.f(menu, "menu");
        or3.f(inflater, "inflater");
        super.onCreateOptionsMenu(menu, inflater);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (!(activity instanceof AppCompatActivity)) {
                activity = null;
            }
            AppCompatActivity appCompatActivity = (AppCompatActivity) activity;
            if (appCompatActivity == null || (supportActionBar = appCompatActivity.getSupportActionBar()) == null) {
                return;
            }
            supportActionBar.hide();
        }
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        this._binding = pv2.c(inflater, container, false);
        return r4().b();
    }

    @Override
    public void onDestroy() {
        wi3 wi3Var = this.parseListener;
        if (wi3Var != null) {
            v4().t(wi3Var.o0());
        }
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        r4().b.p(this.onOffsetChangedListener);
        AdView adView = this.adView;
        if (adView != null) {
            adView.U();
        }
        this._binding = null;
        super.onDestroyView();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        r4().e.setScrollEnabled(false);
        this.headCardView = view.findViewById(R.id.layout_header);
        y4();
        B4();
        A4();
        C4();
    }

    public final boolean q4() {
        return ((Boolean) this.authorIsLive.getValue()).booleanValue();
    }

    @Override
    public TabResponse r3(TabResponse response) {
        if (response == null) {
            return null;
        }
        List<Tab> list = response.tab;
        or3.e(list, "tab");
        if (!list.isEmpty()) {
            return response;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new Tab(getString(R.string.all), "https://snaptubeapp.com/list/youtube/watch/tab_recommend?url=" + m(), Boolean.TRUE));
        return response.newBuilder().tab(arrayList).build();
    }

    public final pv2 r4() {
        pv2 pv2Var = this._binding;
        or3.c(pv2Var);
        return pv2Var;
    }

    public final VideoDetailDataHelper.VideoDetailViewModel v4() {
        return (VideoDetailDataHelper.VideoDetailViewModel) this.viewModel.getValue();
    }

    public final void x4(Card card) {
        RxBus.d().i(new RxBus.d(1263, card));
        wi3 wi3Var = this.parseListener;
        if (wi3Var != null) {
            VideoDetailInfo videoDetailInfo = new VideoDetailInfo();
            videoDetailInfo.l = ri0.D(card);
            wi3Var.P(videoDetailInfo);
            if (q4()) {
                t44 t44Var = new t44(false, false, 3, null);
                t44Var.c(true);
                card.data = t44Var;
            }
            v4().R(wi3Var.o0(), card);
        }
    }
}
