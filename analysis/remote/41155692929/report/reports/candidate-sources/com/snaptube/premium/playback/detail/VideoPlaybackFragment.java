package com.snaptube.premium.playback.detail;

import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResult;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.view.Lifecycle;
import androidx.view.k;
import com.google.android.material.appbar.AppBarLayout;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.mbridge.msdk.playercommon.exoplayer2.trackselection.AdaptiveTrackSelection;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.mraid.SnapAdConstants;
import com.snaptube.base.BaseFragment;
import com.snaptube.dataadapter.IYouTubeDataAdapter;
import com.snaptube.dataadapter.model.Button;
import com.snaptube.dataadapter.plugin.push.impl.IntentUtil;
import com.snaptube.exoplayer.impl.BasePlayerView;
import com.snaptube.exoplayer.impl.VideoCreator;
import com.snaptube.exoplayer.impl.VideoDetailInfo;
import com.snaptube.exoplayer.impl.VideoPlayInfo;
import com.snaptube.ktx.fragment.FragmentKt;
import com.snaptube.mixed_list.fragment.MixedListFragment;
import com.snaptube.mixed_list.imageload.ImageLoaderWrapper;
import com.snaptube.mixed_list.view.FABBatchDownload;
import com.snaptube.permission.PermissionHelper;
import com.snaptube.player.OnlineMediaQueueManager;
import com.snaptube.plugin.extension.nonlifecycle.ad.StartDownloadAdViewModel;
import com.snaptube.plugin.extension.nonlifecycle.root.ChooseFormatFragment;
import com.snaptube.plugin.extension.nonlifecycle.youtube.data.StartDownloadEvent;
import com.snaptube.premium.NavigationManager;
import com.snaptube.premium.R;
import com.snaptube.premium.activity.ExploreActivity;
import com.snaptube.premium.activity.VideoPlaybackActivity;
import com.snaptube.premium.activity.VideoPlaybackActivityTransTheme;
import com.snaptube.premium.activity.YtbPlaylistFragment;
import com.snaptube.premium.activity.YtbPlaylistTabFragment;
import com.snaptube.premium.activity.YtbVideoDetailsFragment;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.batch_download.BatchVideoSelectManager;
import com.snaptube.premium.behavior.FloatingVideoBehavior;
import com.snaptube.premium.configs.Config;
import com.snaptube.premium.log.video.VideoTracker;
import com.snaptube.premium.minibar.MiniBarReportUtilsKt;
import com.snaptube.premium.minibar.OnlineMusicPlaybackController;
import com.snaptube.premium.playback.OnlineVideoPlaybackHelper;
import com.snaptube.premium.playback.history.VideoHistoryStackManager;
import com.snaptube.premium.service.PlayerService;
import com.snaptube.premium.service.playback.PlayerType;
import com.snaptube.premium.share.SharePopupFragment;
import com.snaptube.premium.user.viewmodel.YtbUserAccountViewModel;
import com.snaptube.premium.utils.RecommendVideoDistinctManager;
import com.snaptube.premium.utils.WindowPlayUtils;
import com.snaptube.premium.viewmodel.UiDarkConfig;
import com.snaptube.premium.views.CommonPopupView;
import com.snaptube.premium.views.playback.NestRecyclerViewFrameLayout;
import com.snaptube.premium.views.viewanimator.VideoFrameFlyInAnimator;
import com.snaptube.premium.youtube.VideoDetailDataHelper;
import com.snaptube.premium.youtube.YtbVideoAboutFragment;
import com.snaptube.premium.youtube.YtbVideoDetailTabFragment;
import com.snaptube.util.ProductionEnv;
import com.snaptube.util.ViewExtKt;
import com.trello.rxlifecycle.android.FragmentEvent;
import com.wandoujia.base.utils.RxBus;
import com.wandoujia.em.common.protomodel.Card;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.SourceDebugExtension;
import o.a58;
import o.a6;
import o.a80;
import o.az7;
import o.b6;
import o.b88;
import o.bh5;
import o.bq8;
import o.cg3;
import o.cu7;
import o.cy2;
import o.dx2;
import o.e6;
import o.fa0;
import o.fc1;
import o.fd;
import o.fv7;
import o.g6;
import o.gb;
import o.hb3;
import o.ht8;
import o.ie3;
import o.ih6;
import o.it8;
import o.jb;
import o.je3;
import o.jt8;
import o.jv2;
import o.ke3;
import o.kf5;
import o.kf9;
import o.kt8;
import o.l38;
import o.lt8;
import o.mf3;
import o.mg8;
import o.mt2;
import o.mt8;
import o.n58;
import o.nb3;
import o.nr8;
import o.nt8;
import o.od;
import o.or3;
import o.ot8;
import o.pg1;
import o.ph3;
import o.pj5;
import o.pn0;
import o.pt8;
import o.py6;
import o.qe8;
import o.qt8;
import o.qw2;
import o.ri0;
import o.rm5;
import o.rt8;
import o.ry6;
import o.s5;
import o.sm1;
import o.sr7;
import o.t14;
import o.ti3;
import o.ti7;
import o.tm1;
import o.tt3;
import o.uf3;
import o.ux2;
import o.vs8;
import o.wi3;
import o.wm1;
import o.wu0;
import o.wu7;
import o.x24;
import o.xy5;
import o.y24;
import o.yi3;
import o.yj8;
import o.yq3;
import o.za3;
import o.zv4;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000°\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e*\u0002â\u0002\u0018\u0000 ú\u00022\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u00062\u00020\u00072\u00020\b2\u00020\t2\u00020\n2\u00020\u000b2\u00020\f2\u00020\r:\u0006\u0098\u0001û\u0002ü\u0002B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u000fJ\u000f\u0010\u0013\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u000fJ\u000f\u0010\u0014\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0014\u0010\u000fJ\u0019\u0010\u0017\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J!\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u001f\u0010\u000fJ\u000f\u0010 \u001a\u00020\u0010H\u0002¢\u0006\u0004\b \u0010\u000fJ\u000f\u0010!\u001a\u00020\u0010H\u0002¢\u0006\u0004\b!\u0010\u000fJ\u000f\u0010\"\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\"\u0010\u000fJ\u000f\u0010#\u001a\u00020\u0010H\u0002¢\u0006\u0004\b#\u0010\u000fJ\u000f\u0010$\u001a\u00020\u0010H\u0002¢\u0006\u0004\b$\u0010\u000fJ\u001f\u0010(\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0002¢\u0006\u0004\b(\u0010)J\u001f\u0010*\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0002¢\u0006\u0004\b*\u0010)J\u000f\u0010+\u001a\u00020\u0010H\u0002¢\u0006\u0004\b+\u0010\u000fJ\u0011\u0010,\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0010H\u0002¢\u0006\u0004\b.\u0010\u000fJ\u0017\u00100\u001a\u00020/2\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b0\u00101J\u0017\u00102\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b2\u00103J?\u0010:\u001a\u0002092\b\u00104\u001a\u0004\u0018\u00010\u00192\b\u00105\u001a\u0004\u0018\u00010\u00192\b\u00106\u001a\u0004\u0018\u00010\u00192\b\u00108\u001a\u0004\u0018\u0001072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b:\u0010;J\u000f\u0010<\u001a\u00020\u0010H\u0002¢\u0006\u0004\b<\u0010\u000fJ\u000f\u0010=\u001a\u00020\u0010H\u0002¢\u0006\u0004\b=\u0010\u000fJ\u000f\u0010>\u001a\u00020\u0010H\u0002¢\u0006\u0004\b>\u0010\u000fJ\u000f\u0010?\u001a\u00020\u0010H\u0002¢\u0006\u0004\b?\u0010\u000fJ\u0017\u0010@\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b@\u00103J\u0017\u0010A\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\bA\u00103J\u000f\u0010B\u001a\u00020\u0010H\u0002¢\u0006\u0004\bB\u0010\u000fJ\u000f\u0010C\u001a\u00020/H\u0002¢\u0006\u0004\bC\u0010DJ\u001f\u0010E\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0002¢\u0006\u0004\bE\u0010)J\u0017\u0010F\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\bF\u00103J\u000f\u0010G\u001a\u00020\u0010H\u0002¢\u0006\u0004\bG\u0010\u000fJ\u0019\u0010I\u001a\u00020\u00192\b\u0010H\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\bI\u0010JJ\u0019\u0010K\u001a\u0004\u0018\u0001092\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\bK\u0010LJ\u0019\u0010O\u001a\u00020\u00102\b\u0010N\u001a\u0004\u0018\u00010MH\u0002¢\u0006\u0004\bO\u0010PJ\u0017\u0010R\u001a\u00020\u00102\u0006\u0010Q\u001a\u00020/H\u0002¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0010H\u0002¢\u0006\u0004\bT\u0010\u000fJ\u0017\u0010V\u001a\u00020\u00102\u0006\u0010U\u001a\u00020/H\u0002¢\u0006\u0004\bV\u0010SJ\u0017\u0010W\u001a\u00020\u00102\u0006\u0010U\u001a\u00020/H\u0002¢\u0006\u0004\bW\u0010SJ\u000f\u0010X\u001a\u00020\u0010H\u0002¢\u0006\u0004\bX\u0010\u000fJ\u000f\u0010Y\u001a\u00020\u0010H\u0002¢\u0006\u0004\bY\u0010\u000fJ\u000f\u0010Z\u001a\u00020\u0010H\u0002¢\u0006\u0004\bZ\u0010\u000fJ\u000f\u0010[\u001a\u00020\u0010H\u0002¢\u0006\u0004\b[\u0010\u000fJ\u000f\u0010\\\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\\\u0010\u000fJ\u000f\u0010]\u001a\u00020\u0010H\u0002¢\u0006\u0004\b]\u0010\u000fJ\u000f\u0010^\u001a\u00020\u0010H\u0002¢\u0006\u0004\b^\u0010\u000fJ\u000f\u0010_\u001a\u00020\u0010H\u0002¢\u0006\u0004\b_\u0010\u000fJ\u000f\u0010`\u001a\u00020\u0010H\u0002¢\u0006\u0004\b`\u0010\u000fJ\u0017\u0010b\u001a\u00020\u00102\u0006\u0010a\u001a\u00020/H\u0002¢\u0006\u0004\bb\u0010SJc\u0010l\u001a\u00020\u00102\b\u0010c\u001a\u0004\u0018\u00010\u00192\b\u0010d\u001a\u0004\u0018\u00010\u00192\b\u0010e\u001a\u0004\u0018\u00010\u00192\u0006\u0010f\u001a\u00020\u00192\b\u0010g\u001a\u0004\u0018\u00010\u00192\b\u0010h\u001a\u0004\u0018\u00010\u00192\b\u0010i\u001a\u0004\u0018\u00010\u00192\u0006\u0010j\u001a\u00020/2\u0006\u0010k\u001a\u00020/H\u0002¢\u0006\u0004\bl\u0010mJ\u000f\u0010n\u001a\u00020\u0010H\u0002¢\u0006\u0004\bn\u0010\u000fJ\u000f\u0010o\u001a\u00020\u0010H\u0002¢\u0006\u0004\bo\u0010\u000fJ\u0017\u0010r\u001a\u00020\u00102\u0006\u0010q\u001a\u00020pH\u0002¢\u0006\u0004\br\u0010sJ\u000f\u0010t\u001a\u00020\u0010H\u0002¢\u0006\u0004\bt\u0010\u000fJ\u0011\u0010u\u001a\u0004\u0018\u000109H\u0002¢\u0006\u0004\bu\u0010vJ\u0017\u0010x\u001a\u00020\u00102\u0006\u0010w\u001a\u00020/H\u0002¢\u0006\u0004\bx\u0010SJ\u0019\u0010{\u001a\u00020\u00102\b\u0010z\u001a\u0004\u0018\u00010yH\u0016¢\u0006\u0004\b{\u0010|J0\u0010\u0082\u0001\u001a\u00030\u0081\u00012\u0006\u0010~\u001a\u00020}2\t\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u007f2\b\u0010z\u001a\u0004\u0018\u00010yH\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0015\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0084\u0001H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J&\u0010\u0088\u0001\u001a\u00020\u00102\b\u0010\u0087\u0001\u001a\u00030\u0081\u00012\b\u0010z\u001a\u0004\u0018\u00010yH\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u001a\u0010\u008b\u0001\u001a\u00020\u00102\u0007\u0010\u008a\u0001\u001a\u00020/H\u0016¢\u0006\u0005\b\u008b\u0001\u0010SJ\u0012\u0010\u008c\u0001\u001a\u00020\u0015H\u0016¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u001b\u0010\u008f\u0001\u001a\u00020\u00102\u0007\u0010\u008e\u0001\u001a\u000207H\u0016¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u0012\u0010\u0091\u0001\u001a\u00020%H\u0016¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001J\u001c\u0010\u0093\u0001\u001a\u00020\u00102\b\u0010\u0087\u0001\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0093\u0001\u0010\u0094\u0001J\u001c\u0010\u0095\u0001\u001a\u00020\u00102\b\u0010\u0087\u0001\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0095\u0001\u0010\u0094\u0001J\u001c\u0010\u0097\u0001\u001a\u00020\u00102\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010MH\u0016¢\u0006\u0005\b\u0097\u0001\u0010PJ!\u0010\u0098\u0001\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0016¢\u0006\u0005\b\u0098\u0001\u0010)J\u0011\u0010\u0099\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u0099\u0001\u0010\u000fJ\u0019\u0010\u009a\u0001\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0005\b\u009a\u0001\u00103J!\u0010\u009b\u0001\u001a\u00020\u00102\u0006\u0010&\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0016¢\u0006\u0005\b\u009b\u0001\u0010)J\u0019\u0010\u009c\u0001\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0005\b\u009c\u0001\u00103J\u001a\u0010\u009e\u0001\u001a\u00020\u00102\u0007\u0010\u009d\u0001\u001a\u00020/H\u0016¢\u0006\u0005\b\u009e\u0001\u0010SJ\u0011\u0010\u009f\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u009f\u0001\u0010\u000fJ\u001c\u0010¢\u0001\u001a\u00020/2\b\u0010¡\u0001\u001a\u00030 \u0001H\u0016¢\u0006\u0006\b¢\u0001\u0010£\u0001J\u0011\u0010¤\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¤\u0001\u0010\u000fJ\u0011\u0010¥\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¥\u0001\u0010\u000fJ\u0011\u0010¦\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¦\u0001\u0010\u000fJ\u0011\u0010§\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b§\u0001\u0010\u000fJ\u0011\u0010¨\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b¨\u0001\u0010\u000fJ\u0011\u0010©\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b©\u0001\u0010\u000fJ\u0011\u0010«\u0001\u001a\u00030ª\u0001¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\b\u00ad\u0001\u0010\u000fJ\u000f\u0010®\u0001\u001a\u00020\u0019¢\u0006\u0005\b®\u0001\u0010-J&\u0010¯\u0001\u001a\u00020\u00102\b\b\u0002\u0010j\u001a\u00020/2\b\b\u0002\u0010k\u001a\u00020/H\u0007¢\u0006\u0006\b¯\u0001\u0010°\u0001J\u001c\u0010³\u0001\u001a\u00020\u00102\b\u0010²\u0001\u001a\u00030±\u0001H\u0016¢\u0006\u0006\b³\u0001\u0010´\u0001J&\u0010µ\u0001\u001a\u00020\u00102\u0006\u0010a\u001a\u00020/2\n\u0010²\u0001\u001a\u0005\u0018\u00010±\u0001H\u0007¢\u0006\u0006\bµ\u0001\u0010¶\u0001J\u0011\u0010·\u0001\u001a\u00020/H\u0016¢\u0006\u0005\b·\u0001\u0010DJ\u0014\u0010¸\u0001\u001a\u0004\u0018\u00010MH\u0016¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\u0015\u0010»\u0001\u001a\u0005\u0018\u00010º\u0001H\u0016¢\u0006\u0006\b»\u0001\u0010¼\u0001J/\u0010¿\u0001\u001a\u00020/2\b\u0010¾\u0001\u001a\u00030½\u00012\t\u0010\u0096\u0001\u001a\u0004\u0018\u00010M2\u0006\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0006\b¿\u0001\u0010À\u0001J\u0015\u0010Â\u0001\u001a\u0005\u0018\u00010Á\u0001H\u0016¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J\u0011\u0010Ä\u0001\u001a\u00020/H\u0016¢\u0006\u0005\bÄ\u0001\u0010DJ\u000f\u0010Å\u0001\u001a\u00020\u0010¢\u0006\u0005\bÅ\u0001\u0010\u000fJ\u0011\u0010Æ\u0001\u001a\u00020/H\u0016¢\u0006\u0005\bÆ\u0001\u0010DJ\u0011\u0010Ç\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÇ\u0001\u0010\u000fJ\u001a\u0010É\u0001\u001a\u00020\u00102\u0007\u0010È\u0001\u001a\u00020/H\u0016¢\u0006\u0005\bÉ\u0001\u0010SJ\u001a\u0010Ë\u0001\u001a\u00020\u00102\u0007\u0010Ê\u0001\u001a\u00020/H\u0016¢\u0006\u0005\bË\u0001\u0010SJ\u0011\u0010Ì\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÌ\u0001\u0010\u000fJ\u0011\u0010Í\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÍ\u0001\u0010\u000fJ\u0012\u0010Î\u0001\u001a\u00020%H\u0016¢\u0006\u0006\bÎ\u0001\u0010\u0092\u0001J\u0011\u0010Ï\u0001\u001a\u00020\u0010H\u0016¢\u0006\u0005\bÏ\u0001\u0010\u000fJ\u0013\u0010Ñ\u0001\u001a\u00030Ð\u0001H\u0016¢\u0006\u0006\bÑ\u0001\u0010Ò\u0001R\u0019\u0010Õ\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u0019\u0010×\u0001\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010Ô\u0001R!\u0010Ý\u0001\u001a\u00030Ø\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÙ\u0001\u0010Ú\u0001\u001a\u0006\bÛ\u0001\u0010Ü\u0001R\u001c\u0010á\u0001\u001a\u0005\u0018\u00010Þ\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bß\u0001\u0010à\u0001R\u001c\u0010ä\u0001\u001a\u0005\u0018\u00010â\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010ã\u0001R\u001c\u0010ç\u0001\u001a\u0005\u0018\u00010º\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u001c\u0010ë\u0001\u001a\u0005\u0018\u00010è\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bé\u0001\u0010ê\u0001R\u001c\u0010ï\u0001\u001a\u0005\u0018\u00010ì\u00018\u0006@\u0006X\u0087\u000e¢\u0006\b\n\u0006\bí\u0001\u0010î\u0001R\u001c\u0010ó\u0001\u001a\u0005\u0018\u00010ð\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0001\u0010ò\u0001R\u001b\u0010ö\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010õ\u0001R\u001a\u0010H\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010õ\u0001R\u0019\u0010ú\u0001\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R\u001b\u0010ü\u0001\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010û\u0001R\u001b\u0010þ\u0001\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bý\u0001\u0010õ\u0001R\u001a\u0010c\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010õ\u0001R\u001b\u0010\u0081\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0002\u0010õ\u0001R\u001a\u0010g\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0002\u0010õ\u0001R\u001a\u0010h\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0002\u0010õ\u0001R\u001a\u0010i\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0002\u0010õ\u0001R\u001b\u0010\u0086\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0002\u0010õ\u0001R\u001b\u0010\u0088\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0002\u0010õ\u0001R\u001b\u0010\u0089\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010õ\u0001R\u001b\u0010\u008b\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0002\u0010õ\u0001R\u001b\u0010\u008d\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0002\u0010õ\u0001R\u001c\u0010\u008f\u0002\u001a\u0005\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u008e\u0002R\u0019\u0010\u0091\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0002\u0010ù\u0001R\u001b\u0010\u0093\u0002\u001a\u0004\u0018\u00010\u00198\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0002\u0010õ\u0001R\u001c\u0010\u0097\u0002\u001a\u0005\u0018\u00010\u0094\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0002\u0010\u0096\u0002R\u001c\u0010\u009a\u0002\u001a\u0005\u0018\u00010\u0098\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010\u0099\u0002R\u0019\u0010\u009b\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÉ\u0001\u0010ù\u0001R\u001c\u0010\u009e\u0002\u001a\u0005\u0018\u00010\u009c\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÇ\u0001\u0010\u009d\u0002R\u0019\u0010\u009f\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0001\u0010ù\u0001R\u0019\u0010¡\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0002\u0010ù\u0001R\u001c\u0010¥\u0002\u001a\u0005\u0018\u00010¢\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0002\u0010¤\u0002R\u0019\u0010§\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0002\u0010ù\u0001R\u001c\u0010ª\u0002\u001a\u0005\u0018\u00010¨\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010©\u0002R\u001c\u0010®\u0002\u001a\u0005\u0018\u00010«\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0002\u0010\u00ad\u0002R\u001c\u0010²\u0002\u001a\u0005\u0018\u00010¯\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0002\u0010±\u0002R\"\u0010¶\u0002\u001a\u000b\u0012\u0004\u0012\u00020\u0015\u0018\u00010³\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0002\u0010µ\u0002R\u001f\u0010»\u0002\u001a\n\u0012\u0005\u0012\u00030¸\u00020·\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¹\u0002\u0010º\u0002R!\u0010À\u0002\u001a\u00030¼\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b½\u0002\u0010Ú\u0001\u001a\u0006\b¾\u0002\u0010¿\u0002R!\u0010Å\u0002\u001a\u00030Á\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÂ\u0002\u0010Ú\u0001\u001a\u0006\bÃ\u0002\u0010Ä\u0002R!\u0010Ê\u0002\u001a\u00030Æ\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÇ\u0002\u0010Ú\u0001\u001a\u0006\bÈ\u0002\u0010É\u0002R\u0019\u0010Ì\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0002\u0010ù\u0001R\u0019\u0010Î\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÍ\u0002\u0010ù\u0001R\u0019\u0010Ï\u0002\u001a\u00020/8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bù\u0001\u0010ù\u0001R!\u0010Ô\u0002\u001a\u00030Ð\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÑ\u0002\u0010Ú\u0001\u001a\u0006\bÒ\u0002\u0010Ó\u0002R!\u0010Ù\u0002\u001a\u00030Õ\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÖ\u0002\u0010Ú\u0001\u001a\u0006\b×\u0002\u0010Ø\u0002R\u001c\u0010Ý\u0002\u001a\u0005\u0018\u00010Ú\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0002\u0010Ü\u0002R\u001c\u0010á\u0002\u001a\u0005\u0018\u00010Þ\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0002\u0010à\u0002R\u0018\u0010å\u0002\u001a\u00030â\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bã\u0002\u0010ä\u0002R\u001c\u0010é\u0002\u001a\u0005\u0018\u00010æ\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0002\u0010è\u0002R\u0018\u0010ì\u0002\u001a\u00030¯\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\bê\u0002\u0010ë\u0002R\u0016\u0010î\u0002\u001a\u00020/8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bí\u0002\u0010DR\u001a\u0010ò\u0002\u001a\u0005\u0018\u00010ï\u00028BX\u0082\u0004¢\u0006\b\u001a\u0006\bð\u0002\u0010ñ\u0002R\u0018\u0010ô\u0002\u001a\u0004\u0018\u00010\u00198BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bó\u0002\u0010-R\u0016\u0010ö\u0002\u001a\u00020\u00198BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bõ\u0002\u0010-R\u0016\u0010ø\u0002\u001a\u00020\u00198BX\u0082\u0004¢\u0006\u0007\u001a\u0005\b÷\u0002\u0010-R\u0016\u0010ù\u0002\u001a\u00020/8BX\u0082\u0004¢\u0006\u0007\u001a\u0005\bù\u0002\u0010D¨\u0006ý\u0002"}, d2 = {"Lcom/snaptube/premium/playback/detail/VideoPlaybackFragment;", "Lcom/snaptube/base/BaseFragment;", "Lo/je3;", "Lcom/snaptube/exoplayer/impl/a$c;", "Lo/nb3;", "Lo/mf3;", "Lo/wi3;", "Lo/ie3;", "Lo/uf3;", "Lo/hb3;", "Lo/bh5;", "Lcom/snaptube/premium/batch_download/a$a;", "Lo/za3;", "Lo/ph3;", "<init>", "()V", "Lo/mg8;", "L4", "p4", "n3", "v4", "Landroid/content/Intent;", "intent", "y4", "(Landroid/content/Intent;)Lo/mg8;", "", "key", "", "value", "w4", "(Ljava/lang/String;Ljava/lang/Object;)V", "z4", "X3", "y3", "x3", "w3", "A3", "", "width", "height", "B3", "(II)V", "o3", "c4", "P3", "()Ljava/lang/String;", "A4", "", "Z3", "(Landroid/content/Intent;)Z", "R3", "(Landroid/content/Intent;)V", "playlistUrl", "query", "queryFrom", "Lcom/snaptube/exoplayer/impl/VideoDetailInfo;", "videoDetailInfo", "Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "T4", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/snaptube/exoplayer/impl/VideoDetailInfo;Landroid/content/Intent;)Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "I4", "r4", "J4", "U3", "S3", "T3", "F4", "v3", "()Z", "O4", "V3", "q3", "listUrl", "K3", "(Ljava/lang/String;)Ljava/lang/String;", "W3", "(Landroid/content/Intent;)Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "Lcom/wandoujia/em/common/protomodel/Card;", "videoCard", "o4", "(Lcom/wandoujia/em/common/protomodel/Card;)V", "visible", "R4", "(Z)V", "x4", "shouldChangeOrientation", "e4", "f4", "l4", "k4", "Q4", "P4", "t4", "u4", "u3", "S4", "r3", "isInPictureInPictureMode", "N4", "url", "title", "cover", IntentUtil.DURATION, IntentUtil.KEY_SNAPTUBE_VIDEO_ID, "feedSourceId", "specialId", "hideShareFile", "hideShareLink", "K4", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V", "b4", "t3", "Lcom/snaptube/plugin/extension/nonlifecycle/youtube/data/StartDownloadEvent;", "downloadEvent", "s3", "(Lcom/snaptube/plugin/extension/nonlifecycle/youtube/data/StartDownloadEvent;)V", "M4", "z3", "()Lcom/snaptube/premium/activity/YtbPlaylistTabFragment;", "delayCheck", "p3", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Lcom/snaptube/mixed_list/view/FABBatchDownload;", "y1", "()Lcom/snaptube/mixed_list/view/FABBatchDownload;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", SnapAdConstants.VALUE_CONTAINER_STATUS_HIDDEN, "onHiddenChanged", "getIntent", "()Landroid/content/Intent;", "detailInfo", "P", "(Lcom/snaptube/exoplayer/impl/VideoDetailInfo;)V", "o0", "()I", "Z1", "(Landroid/view/View;)V", "I0", "card", "B0", "a", "i2", "E", "x2", "onNewIntent", "setOrientation", "D0", "v2", "Landroid/view/MenuItem;", "item", "onOptionsItemSelected", "(Landroid/view/MenuItem;)Z", "onDestroyView", "onDestroy", "onPause", "onStop", "onResume", "s1", "Lcom/snaptube/premium/views/playback/NestRecyclerViewFrameLayout;", "D3", "()Lcom/snaptube/premium/views/playback/NestRecyclerViewFrameLayout;", "C0", "F3", "D4", "(ZZ)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "g4", "(ZLandroid/content/res/Configuration;)V", "getPlayWhenReady", "s", "()Lcom/wandoujia/em/common/protomodel/Card;", "Lo/sm1;", "k0", "()Lo/sm1;", "Landroid/content/Context;", "context", "l0", "(Landroid/content/Context;Lcom/wandoujia/em/common/protomodel/Card;Landroid/content/Intent;)Z", "Lcom/snaptube/premium/playback/detail/VideoPlaybackController;", CampaignEx.JSON_KEY_AD_K, "()Lcom/snaptube/premium/playback/detail/VideoPlaybackController;", "onBackPressed", "s4", "h1", "K", "isClickLike", "J", "isAdd", "C1", "r0", "L", "H1", "B", "Lcom/snaptube/premium/viewmodel/UiDarkConfig;", "F2", "()Lcom/snaptube/premium/viewmodel/UiDarkConfig;", "g", "I", "videoAspectRatioHeight", "h", "videoAspectRatioWidth", "Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;", "i", "Lo/t14;", "C3", "()Lcom/snaptube/premium/user/viewmodel/YtbUserAccountViewModel;", "accountViewModel", "Lo/gb;", "j", "Lo/gb;", "adRepositoryService", "Lo/ke3;", "Lo/ke3;", "mixedListDelegate", "l", "Lo/sm1;", "detailDataProvider", "Lo/ti3;", "m", "Lo/ti3;", "mUserManager", "Lcom/snaptube/dataadapter/IYouTubeDataAdapter;", "n", "Lcom/snaptube/dataadapter/IYouTubeDataAdapter;", "youTubeDataAdapter", "Landroidx/fragment/app/Fragment;", "o", "Landroidx/fragment/app/Fragment;", "videoDetailFragment", TtmlNode.TAG_P, "Ljava/lang/String;", "videoUrl", CampaignEx.JSON_KEY_AD_Q, CampaignEx.JSON_KEY_AD_R, "Z", "autoDownload", "Lcom/snaptube/exoplayer/impl/VideoDetailInfo;", "video", "t", "posOriginal", "u", "v", "videoTitle", "w", SnapAdConstants.KEY_X, SnapAdConstants.KEY_Y, "z", IntentUtil.SERVER_TAG, "A", "reportMeta", "coverUrl", "C", "shareChannel", "D", "viewCount", "Lcom/snaptube/premium/playback/detail/VideoPlaybackController;", "playbackControl", "F", "resetPlayer", "G", "creatorId", "Lo/wm1;", "H", "Lo/wm1;", "detailSectionController", "Lo/wu7;", "Lo/wu7;", "mAddToWatchLaterSubscription", "isFinishing", "", "Ljava/lang/Float;", "currentBrightness", "isFromPIP", "M", "isManualRotation", "Lcom/snaptube/premium/views/viewanimator/VideoFrameFlyInAnimator;", "N", "Lcom/snaptube/premium/views/viewanimator/VideoFrameFlyInAnimator;", "videoFrameFlyInAnimator", "O", "waitingLayoutPortrait", "Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;", "Lcom/snaptube/plugin/extension/nonlifecycle/root/ChooseFormatFragment;", "chooseFormatFragment", "Lo/rm5;", "Q", "Lo/rm5;", "pipPlayHelper", "Lo/jv2;", "R", "Lo/jv2;", "_binding", "Lo/g6;", "S", "Lo/g6;", "windowPermissionLauncher", "Lo/a6;", "Landroidx/activity/result/ActivityResult;", "T", "Lo/a6;", "activityResultCallback", "Lcom/snaptube/premium/views/viewanimator/VideoFrameFlyInAnimator$a;", "U", "G3", "()Lcom/snaptube/premium/views/viewanimator/VideoFrameFlyInAnimator$a;", "frameProvider", "Landroid/os/Handler;", "V", "O3", "()Landroid/os/Handler;", "uiHandler", "Ljava/lang/Runnable;", "W", "Q3", "()Ljava/lang/Runnable;", "windowPermissionCheckTask", "X", "autoPlay", "Y", "hasSetAutoPlay", "isEnterPIPImmediately", "Lcom/snaptube/premium/playback/detail/VideoPlaybackFragment$c;", "f0", "J3", "()Lcom/snaptube/premium/playback/detail/VideoPlaybackFragment$c;", "onDismissListener", "Lo/qw2;", "v0", "H3", "()Lo/qw2;", "fullScreenManager", "Lo/tt3;", "w0", "Lo/tt3;", "resetOrientationJob", "Lcom/snaptube/premium/youtube/YtbVideoAboutFragment;", "x0", "Lcom/snaptube/premium/youtube/YtbVideoAboutFragment;", "aboutFragment", "com/snaptube/premium/playback/detail/VideoPlaybackFragment$d", "y0", "Lcom/snaptube/premium/playback/detail/VideoPlaybackFragment$d;", "handler", "Lcom/snaptube/premium/playback/detail/OrientationStateSaver;", "z0", "Lcom/snaptube/premium/playback/detail/OrientationStateSaver;", "orientationStateSaver", "E3", "()Lo/jv2;", "binding", "a4", "isPortrait", "Lo/pj5;", "I3", "()Lo/pj5;", "mediaInfo", "M3", "shareCoverUrl", "N3", "sharePosition", "L3", "playlistSharePosition", "isStarted", "A0", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
@SourceDebugExtension({"SMAP\nVideoPlaybackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlaybackFragment.kt\ncom/snaptube/premium/playback/detail/VideoPlaybackFragment\n+ 2 FragmentViewModelLazy.kt\nandroidx/fragment/app/FragmentViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Utils.kt\ncom/snaptube/ktx/UtilsKt\n+ 5 Any.kt\ncom/snaptube/ktx/AnyKt\n+ 6 Boolean.kt\ncom/snaptube/ktx/BooleanKt\n*L\n1#1,2136:1\n84#2,6:2137\n1#3:2143\n19#4,4:2144\n8#5:2148\n8#5:2149\n10#6,4:2150\n*S KotlinDebug\n*F\n+ 1 VideoPlaybackFragment.kt\ncom/snaptube/premium/playback/detail/VideoPlaybackFragment\n*L\n177#1:2137,6\n1216#1:2144,4\n1785#1:2148\n2004#1:2149\n1499#1:2150,4\n*E\n"})
public final class VideoPlaybackFragment extends BaseFragment implements je3, com.snaptube.exoplayer.impl.a.c, nb3, mf3, wi3, ie3, uf3, hb3, bh5, com.snaptube.premium.batch_download.a.InterfaceC0414a, za3, ph3 {

    public static final Companion INSTANCE = new Companion(null);
    public static final LinkedList B0 = new LinkedList();

    public String reportMeta;

    public String coverUrl;

    public String shareChannel;

    public String viewCount;

    public VideoPlaybackController playbackControl;

    public String creatorId;

    public wm1 detailSectionController;

    public wu7 mAddToWatchLaterSubscription;

    public boolean isFinishing;

    public Float currentBrightness;

    public boolean isFromPIP;

    public boolean isManualRotation;

    public VideoFrameFlyInAnimator videoFrameFlyInAnimator;

    public boolean waitingLayoutPortrait;

    public ChooseFormatFragment chooseFormatFragment;

    public rm5 pipPlayHelper;

    public jv2 _binding;

    public g6 windowPermissionLauncher;

    public boolean hasSetAutoPlay;

    public boolean isEnterPIPImmediately;

    @Inject
    @JvmField
    @Nullable
    public gb adRepositoryService;

    @Inject
    @JvmField
    @Nullable
    public ke3 mixedListDelegate;

    @Inject
    @JvmField
    @Nullable
    public sm1 detailDataProvider;

    @Inject
    @JvmField
    @Nullable
    public ti3 mUserManager;

    @Inject
    @JvmField
    @Nullable
    public IYouTubeDataAdapter youTubeDataAdapter;

    public Fragment videoDetailFragment;

    public String videoUrl;

    public String listUrl;

    public boolean autoDownload;

    public VideoDetailInfo video;

    public String posOriginal;

    public String url;

    public String videoTitle;

    public String videoId;

    public tt3 resetOrientationJob;

    public String feedSourceId;

    public YtbVideoAboutFragment aboutFragment;

    public String specialId;

    public String serverTag;

    public OrientationStateSaver orientationStateSaver;

    public int videoAspectRatioHeight = 1080;

    public int videoAspectRatioWidth = 1920;

    public final t14 accountViewModel = FragmentViewModelLazyKt.createViewModelLazy(this, ih6.b(YtbUserAccountViewModel.class), new VideoPlaybackFragment$special$$inlined$activityViewModels$default$1(this), new VideoPlaybackFragment$special$$inlined$activityViewModels$default$2(this));

    public boolean resetPlayer = true;

    public final a6 activityResultCallback = new nt8(this);

    public final t14 frameProvider = kotlin.b.b(new VideoPlaybackFragment$frameProvider$2(this));

    public final t14 uiHandler = kotlin.b.b(VideoPlaybackFragment$uiHandler$2.INSTANCE);

    public final t14 windowPermissionCheckTask = kotlin.b.b(new VideoPlaybackFragment$windowPermissionCheckTask$2(this));

    public boolean autoPlay = true;

    public final t14 onDismissListener = kotlin.b.b(new VideoPlaybackFragment$onDismissListener$2(this));

    public final t14 fullScreenManager = kotlin.b.b(VideoPlaybackFragment$fullScreenManager$2.INSTANCE);

    public final d handler = new d(Looper.getMainLooper());

    public static final class Companion {
        public Companion() {
        }

        public Companion(pg1 pg1Var) {
            this();
        }

        public final LinkedList a() {
            return VideoPlaybackFragment.d3();
        }

        public final VideoPlaybackFragment b(Intent intent, Bundle bundle) {
            or3.f(intent, "intent");
            or3.f(bundle, "extra");
            Bundle bundle2 = new Bundle();
            bundle2.putParcelable("intent", intent);
            bundle2.putAll(bundle);
            VideoPlaybackFragment videoPlaybackFragment = new VideoPlaybackFragment();
            videoPlaybackFragment.setArguments(bundle2);
            return videoPlaybackFragment;
        }
    }

    public interface b {
        void z(VideoPlaybackFragment videoPlaybackFragment);
    }

    public static final class c implements CommonPopupView.f {
        public WeakReference a;

        public c(VideoPlaybackFragment videoPlaybackFragment) {
            or3.f(videoPlaybackFragment, "videoPlaybackFragment");
            this.a = new WeakReference(videoPlaybackFragment);
        }

        @Override
        public void onDismiss() {
            VideoPlaybackController videoPlaybackControllerC3;
            VideoPlaybackFragment videoPlaybackFragment = (VideoPlaybackFragment) this.a.get();
            if (videoPlaybackFragment == null || !videoPlaybackFragment.isResumed() || (videoPlaybackControllerC3 = VideoPlaybackFragment.c3(videoPlaybackFragment)) == null) {
                return;
            }
            videoPlaybackControllerC3.M2();
        }
    }

    public static final class d extends Handler {
        public d(Looper looper) {
            super(looper);
        }

        @Override
        public void handleMessage(Message message) {
            or3.f(message, "msg");
            super.handleMessage(message);
            if (message.what == 1000) {
                VideoPlaybackFragment.k3(VideoPlaybackFragment.this);
            }
        }
    }

    public static final class e implements n58.b {
        public final Ref$ObjectRef a;
        public final Card b;
        public final VideoPlaybackFragment c;

        public e(Ref$ObjectRef ref$ObjectRef, Card card, VideoPlaybackFragment videoPlaybackFragment) {
            this.a = ref$ObjectRef;
            this.b = card;
            this.c = videoPlaybackFragment;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(Card card) {
            or3.f(card, "card");
            zv4 zv4Var = (zv4) this.a.element;
            if (zv4Var != null) {
                zv4Var.k0(this.b, card);
            }
            YtbVideoAboutFragment ytbVideoAboutFragmentA3 = VideoPlaybackFragment.a3(this.c);
            if (ytbVideoAboutFragmentA3 != null) {
                ytbVideoAboutFragmentA3.s3(card);
            }
        }

        @Override
        public void b(Card card) {
            or3.f(card, "card");
        }

        @Override
        public void c(Card card, boolean z, Button button, Button button2) {
            or3.f(card, "card");
            or3.f(button, "curButton");
            or3.f(button2, "otherButton");
        }
    }

    public static final class f implements kf5, cy2 {
        public final dx2 a;

        public f(dx2 dx2Var) {
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

    public static final class g implements YtbPlaylistFragment.b {
        public final YtbPlaylistTabFragment b;

        public g(YtbPlaylistTabFragment ytbPlaylistTabFragment) {
            this.b = ytbPlaylistTabFragment;
        }

        @Override
        public void i0(Card card) {
            VideoPlaybackFragment.g3(VideoPlaybackFragment.this);
            VideoPlaybackFragment.j3(VideoPlaybackFragment.this, card);
            VideoPlaybackFragment.l3(VideoPlaybackFragment.this, this.b.isVisible());
        }

        @Override
        public void u() {
            VideoPlaybackFragment.l3(VideoPlaybackFragment.this, this.b.isVisible());
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"", "kotlin.jvm.PlatformType", "it", "Lo/mg8;", "invoke", "(Ljava/lang/Integer;)V", "<anonymous>"}, k = 3, mv = {1, 9, 0})
    @SourceDebugExtension({"SMAP\nVideoPlaybackFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoPlaybackFragment.kt\ncom/snaptube/premium/playback/detail/VideoPlaybackFragment$onCreate$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,2136:1\n1#2:2137\n*E\n"})
    public static final class AnonymousClass2 extends Lambda implements dx2 {
        public AnonymousClass2() {
            super(1);
        }

        @Override
        public Object invoke(Object obj) {
            invoke((Integer) obj);
            return mg8.a;
        }

        public final void invoke(Integer num) {
            if (num != null) {
                VideoPlaybackFragment videoPlaybackFragment = VideoPlaybackFragment.this;
                videoPlaybackFragment.onNewIntent(videoPlaybackFragment.getIntent());
            }
        }
    }

    private final void A3() {
        NavController navControllerA;
        this.isFinishing = true;
        Fragment primaryNavigationFragment = getParentFragmentManager().getPrimaryNavigationFragment();
        if (primaryNavigationFragment != null && (navControllerA = mt2.a(primaryNavigationFragment)) != null) {
            navControllerA.P();
            return;
        }
        FragmentActivity activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void A4() {
        a80.i.a(F3());
        RxBus.d().c(1022, 1024, 1023, 1134, 1254).g(RxBus.f).g(z2(FragmentEvent.DESTROY_VIEW)).u0(new lt8(new VideoPlaybackFragment$setupSubscription$1(this)), new mt8());
    }

    public static final void B4(dx2 dx2Var, Object obj) {
        or3.f(dx2Var, "$tmp0");
        dx2Var.invoke(obj);
    }

    private final YtbUserAccountViewModel C3() {
        return (YtbUserAccountViewModel) this.accountViewModel.getValue();
    }

    public static final void C4(Throwable th) {
        ProductionEnv.throwExceptForDebugging(th);
    }

    public static void E4(VideoPlaybackFragment videoPlaybackFragment, boolean z, boolean z2, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        videoPlaybackFragment.D4(z, z2);
    }

    public static final void G4(VideoPlaybackFragment videoPlaybackFragment) {
        or3.f(videoPlaybackFragment, "this$0");
        if (az7.U(videoPlaybackFragment.getActivity())) {
            boolean z = py6.f(videoPlaybackFragment.requireContext()) != 1;
            videoPlaybackFragment.waitingLayoutPortrait = z;
            if (z) {
                FragmentActivity activity = videoPlaybackFragment.getActivity();
                if (activity == null) {
                    return;
                }
                activity.setRequestedOrientation(1);
                return;
            }
            if (videoPlaybackFragment.v3()) {
                pn0.a aVarA = new pn0.a().c(new pn0.c(null, 1, null).m(videoPlaybackFragment.N3()).u(videoPlaybackFragment.videoId).b(videoPlaybackFragment.creatorId).r(videoPlaybackFragment.serverTag)).d(videoPlaybackFragment.reportMeta).a(videoPlaybackFragment.J3());
                String str = videoPlaybackFragment.videoUrl;
                or3.c(str);
                videoPlaybackFragment.chooseFormatFragment = aVarA.f(wu0.b(str), true, videoPlaybackFragment.getContext());
            }
        }
    }

    public static final void H4(VideoPlaybackFragment videoPlaybackFragment, DialogInterface dialogInterface) {
        or3.f(videoPlaybackFragment, "this$0");
        videoPlaybackFragment.aboutFragment = null;
    }

    public static void L2(VideoPlaybackFragment videoPlaybackFragment) {
        j4(videoPlaybackFragment);
    }

    public static void M2(dx2 dx2Var, Object obj) {
        B4(dx2Var, obj);
    }

    public static void N2(VideoPlaybackFragment videoPlaybackFragment, View view, int i, int i2, int[] iArr, int i3) {
        Y3(videoPlaybackFragment, view, i, i2, iArr, i3);
    }

    public static void O2(VideoPlaybackFragment videoPlaybackFragment) {
        m4(videoPlaybackFragment);
    }

    public static void P2(Throwable th) {
        C4(th);
    }

    private final String P3() {
        return TextUtils.isEmpty(this.videoId) ? kf9.g(this.videoUrl) : this.videoId;
    }

    public static void Q2(VideoPlaybackFragment videoPlaybackFragment) {
        h4(videoPlaybackFragment);
    }

    public static void R2(VideoPlaybackFragment videoPlaybackFragment) {
        G4(videoPlaybackFragment);
    }

    public static void S2(VideoPlaybackFragment videoPlaybackFragment) {
        i4(videoPlaybackFragment);
    }

    public static void T2(VideoPlaybackFragment videoPlaybackFragment, DialogInterface dialogInterface) {
        H4(videoPlaybackFragment, dialogInterface);
    }

    public static void U2(VideoPlaybackFragment videoPlaybackFragment) {
        q4(videoPlaybackFragment);
    }

    public static void V2(VideoPlaybackFragment videoPlaybackFragment, ActivityResult activityResult) {
        m3(videoPlaybackFragment, activityResult);
    }

    public static final void W2(VideoPlaybackFragment videoPlaybackFragment, boolean z) {
        videoPlaybackFragment.p3(z);
    }

    public static final void X2(VideoPlaybackFragment videoPlaybackFragment, StartDownloadEvent startDownloadEvent) {
        videoPlaybackFragment.s3(startDownloadEvent);
    }

    private final void X3() {
        E3().b.setNestedScrollCallback(new ht8(this));
    }

    public static final void Y2(VideoPlaybackFragment videoPlaybackFragment) {
        videoPlaybackFragment.y3();
    }

    public static final void Y3(VideoPlaybackFragment videoPlaybackFragment, View view, int i, int i2, int[] iArr, int i3) {
        or3.f(videoPlaybackFragment, "this$0");
        videoPlaybackFragment.O4(videoPlaybackFragment.E3().d.getWidth(), videoPlaybackFragment.E3().d.getHeight() - i2);
    }

    public static final void Z2(VideoPlaybackFragment videoPlaybackFragment) {
        videoPlaybackFragment.A3();
    }

    public static final YtbVideoAboutFragment a3(VideoPlaybackFragment videoPlaybackFragment) {
        return videoPlaybackFragment.aboutFragment;
    }

    public static final qw2 b3(VideoPlaybackFragment videoPlaybackFragment) {
        return videoPlaybackFragment.H3();
    }

    public static final VideoPlaybackController c3(VideoPlaybackFragment videoPlaybackFragment) {
        return videoPlaybackFragment.playbackControl;
    }

    public static final LinkedList d3() {
        return B0;
    }

    public static final VideoPlaybackFragment d4(Intent intent, Bundle bundle) {
        return INSTANCE.b(intent, bundle);
    }

    public static final Handler e3(VideoPlaybackFragment videoPlaybackFragment) {
        return videoPlaybackFragment.O3();
    }

    public static final Runnable f3(VideoPlaybackFragment videoPlaybackFragment) {
        return videoPlaybackFragment.Q3();
    }

    public static final void g3(VideoPlaybackFragment videoPlaybackFragment) {
        videoPlaybackFragment.U3();
    }

    public static final void h3(VideoPlaybackFragment videoPlaybackFragment) {
        videoPlaybackFragment.c4();
    }

    public static final void h4(VideoPlaybackFragment videoPlaybackFragment) {
        FragmentActivity activity;
        or3.f(videoPlaybackFragment, "this$0");
        if (videoPlaybackFragment.isEnterPIPImmediately) {
            return;
        }
        if (WindowPlayUtils.h() && ((activity = videoPlaybackFragment.getActivity()) == null || vs8.a(activity))) {
            return;
        }
        VideoPlaybackController videoPlaybackController = videoPlaybackFragment.playbackControl;
        if (videoPlaybackController == null || !videoPlaybackController.h1()) {
            com.snaptube.premium.minibar.c.d(com.snaptube.premium.minibar.c.a, videoPlaybackFragment.getActivity(), 0.0f, 2, null);
        }
    }

    public static final void i3(VideoPlaybackFragment videoPlaybackFragment, boolean z) {
        videoPlaybackFragment.f4(z);
    }

    public static final void i4(VideoPlaybackFragment videoPlaybackFragment) {
        or3.f(videoPlaybackFragment, "this$0");
        YtbVideoAboutFragment ytbVideoAboutFragment = videoPlaybackFragment.aboutFragment;
        if (ytbVideoAboutFragment != null) {
            ytbVideoAboutFragment.r3(true);
        }
    }

    private final boolean isStarted() {
        return getLifecycle().b().isAtLeast(Lifecycle.State.STARTED);
    }

    public static final void j3(VideoPlaybackFragment videoPlaybackFragment, Card card) {
        videoPlaybackFragment.o4(card);
    }

    public static final void j4(VideoPlaybackFragment videoPlaybackFragment) {
        or3.f(videoPlaybackFragment, "this$0");
        YtbVideoAboutFragment ytbVideoAboutFragment = videoPlaybackFragment.aboutFragment;
        if (ytbVideoAboutFragment != null) {
            ytbVideoAboutFragment.r3(false);
        }
    }

    public static final void k3(VideoPlaybackFragment videoPlaybackFragment) {
        videoPlaybackFragment.J4();
    }

    public static final void l3(VideoPlaybackFragment videoPlaybackFragment, boolean z) {
        videoPlaybackFragment.R4(z);
    }

    public static final void m3(VideoPlaybackFragment videoPlaybackFragment, ActivityResult activityResult) {
        or3.f(videoPlaybackFragment, "this$0");
        or3.f(activityResult, "it");
        videoPlaybackFragment.p3(true);
    }

    public static final void m4(VideoPlaybackFragment videoPlaybackFragment) {
        or3.f(videoPlaybackFragment, "this$0");
        if (s5.d() instanceof VideoPlaybackActivity) {
            return;
        }
        n4(videoPlaybackFragment);
    }

    public static final void n4(VideoPlaybackFragment videoPlaybackFragment) {
        Activity activityD;
        if (FragmentKt.d(videoPlaybackFragment) && (activityD = s5.d()) != null && (!or3.a(activityD, videoPlaybackFragment.getActivity()))) {
            videoPlaybackFragment.k4();
        }
    }

    public static final void q4(VideoPlaybackFragment videoPlaybackFragment) {
        ti7 ti7VarP0;
        ti7 ti7VarP1;
        cg3 cg3VarQ;
        or3.f(videoPlaybackFragment, "this$0");
        Bundle arguments = videoPlaybackFragment.getArguments();
        boolean z = arguments != null ? arguments.getBoolean("is_caption_on") : false;
        VideoPlaybackController videoPlaybackController = videoPlaybackFragment.playbackControl;
        cg3 cg3VarQ2 = null;
        if (or3.a(Boolean.valueOf(z), (videoPlaybackController == null || (ti7VarP1 = videoPlaybackController.P0()) == null || (cg3VarQ = ti7VarP1.q()) == null) ? null : Boolean.valueOf(cg3VarQ.T()))) {
            return;
        }
        VideoPlaybackController videoPlaybackController2 = videoPlaybackFragment.playbackControl;
        if (videoPlaybackController2 != null && (ti7VarP0 = videoPlaybackController2.P0()) != null) {
            cg3VarQ2 = ti7VarP0.q();
        }
        if (cg3VarQ2 == null) {
            return;
        }
        cg3VarQ2.O(z);
    }

    private final void t3() {
        VideoFrameFlyInAnimator videoFrameFlyInAnimator;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController == null || (videoFrameFlyInAnimator = this.videoFrameFlyInAnimator) == null) {
            return;
        }
        BasePlayerView basePlayerViewN0 = videoPlaybackController != null ? videoPlaybackController.N0() : null;
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        videoFrameFlyInAnimator.n(basePlayerViewN0, videoPlaybackController2 != null ? videoPlaybackController2.I0() : null, G3());
    }

    private final void t4() {
        pj5 pj5VarI3 = I3();
        if (pj5VarI3 != null) {
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            OnlineMediaQueueManager.n(OnlineMediaQueueManager.a, pj5VarI3, false, true, null, videoPlaybackController != null ? videoPlaybackController.H0() : 0L, null, 32, null);
            return;
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 == null || videoPlaybackController2.L0() != 0) {
            return;
        }
        b88.l(getContext(), R.string.play_live_video_toast);
    }

    private final void u4() {
        VideoPlaybackController playbackControl = getPlaybackControl();
        float fM0 = playbackControl != null ? playbackControl.M0() : 0.0f;
        pj5 pj5VarI3 = I3();
        if (pj5VarI3 == null) {
            return;
        }
        String strA = pj5VarI3.a();
        String strB = pj5VarI3.b();
        VideoDetailInfo videoDetailInfo = this.video;
        MiniBarReportUtilsKt.r(strB, videoDetailInfo != null ? videoDetailInfo.b : null, N3(), strA, fM0);
    }

    @Override
    public void B() {
        E(getIntent());
    }

    @Override
    public void B0(Card card) {
        wm1 wm1Var = this.detailSectionController;
        if (wm1Var != null) {
            wm1Var.i(card);
        }
    }

    public final void B3(int width, int height) {
        VideoPlaybackController videoPlaybackController;
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.s2(width, height);
        }
        int iC = qe8.c(getContext());
        int iD = qe8.d(getContext());
        float f2 = width / height;
        if (f2 > 0.75f) {
            if (f2 > 1.7777778f) {
                height = Math.min((int) (iD / 1.7777778f), (int) (iC * 0.8f));
            }
            E3().b.setMaxTop(Math.min(iC, (iD * height) / width));
            videoPlaybackController = this.playbackControl;
            if (videoPlaybackController != null && !videoPlaybackController.h1()) {
                E3().j.getLayoutParams().height = -2;
                E3().j.requestLayout();
            }
            O4(width, height);
        }
        height = Math.min((int) (iD / 0.75f), (int) (iC * 0.8f));
        width = iD;
        E3().b.setMaxTop(Math.min(iC, (iD * height) / width));
        videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            E3().j.getLayoutParams().height = -2;
            E3().j.requestLayout();
        }
        O4(width, height);
    }

    @Override
    public void C0() {
        VideoTracker.p("click_youtube_video_info_unfold");
        P4();
        E3().b.j();
        YtbVideoAboutFragment ytbVideoAboutFragmentA = YtbVideoAboutFragment.INSTANCE.a(P3(), (E3().b.getBottom() - E3().b.getMinTop()) + requireContext().getResources().getDimensionPixelSize(R.dimen.navigation_bar_height), o0());
        ytbVideoAboutFragmentA.h3(this);
        ytbVideoAboutFragmentA.i3(this);
        ytbVideoAboutFragmentA.H2(new ot8(this));
        FragmentManager childFragmentManager = getChildFragmentManager();
        or3.e(childFragmentManager, "getChildFragmentManager(...)");
        ytbVideoAboutFragmentA.I2(childFragmentManager);
        this.aboutFragment = ytbVideoAboutFragmentA;
    }

    @Override
    public void C1(boolean isAdd) {
        fv7.a(this.mAddToWatchLaterSubscription);
        if (isAdd) {
            this.mAddToWatchLaterSubscription = fd.d(getContext(), this.mUserManager, this.youTubeDataAdapter, this.videoTitle, P3(), new rt8(this));
            return;
        }
        Context context = getContext();
        ti3 ti3Var = this.mUserManager;
        IYouTubeDataAdapter iYouTubeDataAdapter = this.youTubeDataAdapter;
        String str = this.videoTitle;
        String strP3 = P3();
        IYouTubeDataAdapter iYouTubeDataAdapter2 = this.youTubeDataAdapter;
        this.mAddToWatchLaterSubscription = fd.h(context, ti3Var, iYouTubeDataAdapter, str, strP3, iYouTubeDataAdapter2 != null ? iYouTubeDataAdapter2.createRemoveWatchLaterServiceEndpoint(P3()) : null, new it8(this));
    }

    @Override
    public void D0(boolean setOrientation) {
        VideoPlaybackController videoPlaybackController;
        if (setOrientation && (videoPlaybackController = this.playbackControl) != null) {
            videoPlaybackController.z1();
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 == null || !videoPlaybackController2.h1()) {
            v4();
            f4(setOrientation);
            B3(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
            if (!isStarted()) {
                com.snaptube.premium.minibar.c.a.w(getActivity());
            }
        } else {
            e4(setOrientation);
            com.snaptube.premium.minibar.c.a.j(getActivity());
        }
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        if (videoPlaybackController3 != null) {
            videoPlaybackController3.Q2();
        }
        Q4();
    }

    public final NestRecyclerViewFrameLayout D3() {
        NestRecyclerViewFrameLayout nestRecyclerViewFrameLayout = E3().b;
        or3.e(nestRecyclerViewFrameLayout, "animateWrapper");
        return nestRecyclerViewFrameLayout;
    }

    public final void D4(boolean hideShareFile, boolean hideShareLink) {
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        String strK0 = videoPlaybackController != null ? videoPlaybackController.K0() : null;
        if (strK0 == null) {
            strK0 = MBridgeConstans.ENDCARD_URL_TYPE_PL;
        }
        K4(this.videoUrl, this.videoTitle, M3(), strK0, this.videoId, this.feedSourceId, this.specialId, hideShareFile, hideShareLink);
    }

    @Override
    public void E(Intent intent) {
        or3.f(intent, "intent");
        if (or3.a("phoenix.intent.action.CLEAR_TOP", intent.getAction())) {
            return;
        }
        y4(intent);
        if (intent.getData() == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("intent is invalid. intent: " + yq3.a(intent)));
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.onBackPressed();
                return;
            }
            return;
        }
        this.listUrl = intent.getStringExtra("playlistUrl");
        Uri data = intent.getData();
        String queryParameter = data != null ? data.getQueryParameter("url") : null;
        this.videoUrl = queryParameter;
        if (TextUtils.isEmpty(queryParameter) && !TextUtils.isEmpty(this.listUrl)) {
            YtbPlaylistTabFragment ytbPlaylistTabFragmentW3 = (YtbPlaylistTabFragment) getChildFragmentManager().findFragmentByTag("playlist");
            if (ytbPlaylistTabFragmentW3 == null || Z3(intent)) {
                ytbPlaylistTabFragmentW3 = W3(intent);
            }
            if (ytbPlaylistTabFragmentW3 == null) {
                ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("playlist url is invalid. intent: " + yq3.a(intent)));
                FragmentActivity activity2 = getActivity();
                if (activity2 != null) {
                    activity2.onBackPressed();
                }
            }
            B3(1920, 1080);
            return;
        }
        if (TextUtils.isEmpty(this.videoUrl)) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("videoUrl is invalid. intent: " + yq3.a(intent)));
            FragmentActivity activity3 = getActivity();
            if (activity3 != null) {
                activity3.onBackPressed();
                return;
            }
            return;
        }
        if (this.playbackControl == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("playbackControl == null "));
            FragmentActivity activity4 = getActivity();
            if (activity4 != null) {
                activity4.onBackPressed();
                return;
            }
            return;
        }
        Uri data2 = intent.getData();
        this.feedSourceId = data2 != null ? data2.getQueryParameter("feedSourceId") : null;
        this.specialId = data2 != null ? data2.getQueryParameter("specialId") : null;
        VideoDetailInfo videoDetailInfo = new VideoDetailInfo();
        videoDetailInfo.n = this.videoUrl;
        String queryParameter2 = data2 != null ? data2.getQueryParameter(IntentUtil.KEY_SNAPTUBE_VIDEO_ID) : null;
        this.videoId = queryParameter2;
        videoDetailInfo.b = queryParameter2;
        String queryParameter3 = data2 != null ? data2.getQueryParameter(IntentUtil.SERVER_TAG) : null;
        this.serverTag = queryParameter3;
        videoDetailInfo.h = queryParameter3;
        videoDetailInfo.c = this.listUrl;
        videoDetailInfo.O = data2 != null ? data2.getQueryParameter("refer_url") : null;
        videoDetailInfo.T = data2 != null ? data2.getQueryParameter("card_pos") : null;
        String stringExtra = intent.getStringExtra(IntentUtil.POS);
        videoDetailInfo.g = stringExtra;
        videoDetailInfo.P = intent.getStringExtra("query");
        videoDetailInfo.Q = intent.getStringExtra("query_from");
        videoDetailInfo.S = intent.getStringExtra("title");
        videoDetailInfo.R = this.listUrl;
        videoDetailInfo.E0 = intent.getStringExtra("music_video_type");
        if (TextUtils.isEmpty(videoDetailInfo.g)) {
            stringExtra = data2 != null ? data2.getQueryParameter(IntentUtil.POS) : null;
            videoDetailInfo.g = stringExtra;
            wm1 wm1Var = this.detailSectionController;
            if (wm1Var != null) {
                wm1Var.e(!TextUtils.isEmpty(stringExtra));
            }
        }
        if (TextUtils.isEmpty(this.posOriginal)) {
            this.posOriginal = stringExtra;
        }
        String strK = ri0.k(intent.getStringExtra(IntentUtil.COVER_URL));
        this.coverUrl = strK;
        videoDetailInfo.q = strK;
        String stringExtra2 = intent.getStringExtra(IntentUtil.VIDEO_TITLE);
        this.videoTitle = stringExtra2;
        videoDetailInfo.l = stringExtra2;
        String stringExtra3 = intent.getStringExtra(IntentUtil.DURATION);
        videoDetailInfo.p = stringExtra3 == null ? MBridgeConstans.ENDCARD_URL_TYPE_PL : stringExtra3;
        String stringExtra4 = intent.getStringExtra("creatorId");
        this.creatorId = stringExtra4;
        videoDetailInfo.f = stringExtra4;
        String stringExtra5 = intent.getStringExtra("report_meta");
        this.reportMeta = stringExtra5;
        videoDetailInfo.r = stringExtra5;
        if (intent.hasExtra("subtitle")) {
            videoDetailInfo.c("subtitle", intent.getStringExtra("subtitle"));
        }
        if (intent.hasExtra("push_title")) {
            videoDetailInfo.c("push_title", intent.getStringExtra("push_title"));
            videoDetailInfo.c("push_campaign_id", intent.getStringExtra("push_campaign_id"));
            videoDetailInfo.c("platform", intent.getStringExtra("platform"));
            videoDetailInfo.c("push_crowd_type", intent.getStringExtra("push_crowd_type"));
            if (intent.hasExtra("is_preload")) {
                videoDetailInfo.c("is_preload", Boolean.valueOf(intent.getBooleanExtra("is_preload", false)));
            }
            if (intent.hasExtra("push_click_time")) {
                videoDetailInfo.B0 = intent.getLongExtra("push_click_time", 0L);
            }
            if (intent.hasExtra("push_subtype")) {
                videoDetailInfo.c("push_subtype", intent.getStringExtra("push_subtype"));
            }
        }
        long longExtra = intent.getLongExtra("start_position", 0L);
        long longExtra2 = intent.getLongExtra("end_position", 0L);
        if (longExtra2 == 0) {
            longExtra2 = l38.z(stringExtra3);
        }
        videoDetailInfo.M = longExtra;
        videoDetailInfo.N = longExtra2;
        this.shareChannel = intent.getStringExtra("share_channel");
        this.viewCount = intent.getStringExtra("playlist_video_count");
        this.isFromPIP = getIntent().getBooleanExtra("key_from_pip", false);
        String stringExtra6 = intent.getStringExtra("author");
        if (stringExtra6 == null) {
            stringExtra6 = this.shareChannel;
        }
        videoDetailInfo.k = stringExtra6;
        boolean booleanExtra = intent.getBooleanExtra("windowPlayable", true);
        FloatingVideoBehavior floatingVideoBehavior = (FloatingVideoBehavior) fa0.a(E3().h.b());
        if (floatingVideoBehavior != null) {
            floatingVideoBehavior.u0(booleanExtra);
        }
        if (TextUtils.isEmpty(videoDetailInfo.q)) {
            ProductionEnv.w("VideoPlaybackFragment", "video cover not found. intent: " + yq3.a(intent));
        }
        if (TextUtils.isEmpty(videoDetailInfo.l)) {
            ProductionEnv.w("VideoPlaybackFragment", "video title not found. intent: " + yq3.a(intent));
        }
        if (TextUtils.isEmpty(videoDetailInfo.g)) {
            ProductionEnv.w("VideoPlaybackFragment", "video position_source not found. intent: " + yq3.a(intent));
        }
        int intExtra = intent.getIntExtra("width", 1920);
        this.videoAspectRatioWidth = intExtra;
        videoDetailInfo.w = intExtra;
        int intExtra2 = intent.getIntExtra("height", 1080);
        this.videoAspectRatioHeight = intExtra2;
        videoDetailInfo.x = intExtra2;
        this.video = videoDetailInfo;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.U2(videoDetailInfo, this.feedSourceId);
        }
        boolean booleanExtra2 = intent.getBooleanExtra("auto_download", false);
        this.autoDownload = booleanExtra2;
        if (booleanExtra2) {
            F4();
        }
        S4();
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.c1();
        }
        V3(intent);
        FragmentActivity activity5 = getActivity();
        boolean zF = activity5 != null ? WindowPlayUtils.f(activity5) : false;
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        if ((videoPlaybackController3 == null || !videoPlaybackController3.A1()) && !zF) {
            B3(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
        }
        VideoHistoryStackManager videoHistoryStackManager = VideoHistoryStackManager.a;
        VideoPlaybackController videoPlaybackController4 = this.playbackControl;
        videoHistoryStackManager.g(videoPlaybackController4 != null ? videoPlaybackController4.Z0() : null, intent);
    }

    public final jv2 E3() {
        jv2 jv2Var = this._binding;
        or3.c(jv2Var);
        return jv2Var;
    }

    @Override
    public UiDarkConfig F2() {
        return new UiDarkConfig(VideoPlaybackFragment$getUiDarkConfig$1.INSTANCE, null, null, null, 14, null);
    }

    public final String F3() {
        return "VideoPlaybackFragment#" + hashCode();
    }

    public final void F4() {
        a58.a.post(new jt8(this));
    }

    public final VideoFrameFlyInAnimator.a G3() {
        return (VideoFrameFlyInAnimator.a) this.frameProvider.getValue();
    }

    @Override
    public int H1() {
        return R.id.layout;
    }

    public final qw2 H3() {
        return (qw2) this.fullScreenManager.getValue();
    }

    @Override
    public void I0(View view) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
    }

    public final pj5 I3() {
        VideoDetailInfo videoDetailInfo;
        String strC;
        VideoCreator videoCreator;
        if (getPlaybackControl() == null || (videoDetailInfo = this.video) == null) {
            return null;
        }
        or3.c(videoDetailInfo);
        String strQ0 = videoDetailInfo.l;
        if (!(!(strQ0 == null || cu7.B(strQ0)))) {
            strQ0 = null;
        }
        if (strQ0 == null) {
            VideoPlaybackController playbackControl = getPlaybackControl();
            or3.c(playbackControl);
            strQ0 = playbackControl.Q0();
        }
        String str = strQ0;
        VideoPlaybackController playbackControl2 = getPlaybackControl();
        or3.c(playbackControl2);
        String strI0 = playbackControl2.I0();
        if (!(!(strI0 == null || cu7.B(strI0)))) {
            strI0 = null;
        }
        if (strI0 == null) {
            VideoDetailInfo videoDetailInfo2 = this.video;
            or3.c(videoDetailInfo2);
            strI0 = videoDetailInfo2.q;
        }
        String str2 = strI0;
        VideoDetailInfo videoDetailInfo3 = this.video;
        if (videoDetailInfo3 == null || (videoCreator = videoDetailInfo3.H) == null || (strC = videoCreator.c()) == null) {
            VideoDetailInfo videoDetailInfo4 = this.video;
            strC = videoDetailInfo4 != null ? videoDetailInfo4.k : null;
            if (strC == null) {
                strC = this.shareChannel;
            }
        }
        String str3 = strC;
        if (str == null || str2 == null) {
            return null;
        }
        VideoDetailInfo videoDetailInfo5 = this.video;
        or3.c(videoDetailInfo5);
        if (videoDetailInfo5.n == null) {
            return null;
        }
        VideoDetailInfo videoDetailInfo6 = this.video;
        or3.c(videoDetailInfo6);
        String str4 = videoDetailInfo6.n;
        or3.e(str4, "videoUrl");
        return new pj5(str4, str, str2, str3, 0L, null, 0L, 0L, null, null, 0L, false, 4080, null);
    }

    public final void I4() {
        try {
            r4();
            if (this.coverUrl != null) {
                ImageLoaderWrapper.c().b(getContext()).o(this.coverUrl).g(E3().h.c);
            }
        } catch (Exception e2) {
            ProductionEnv.errorLog("VideoPlaybackFragment", e2);
        }
    }

    /* JADX WARN: Type inference failed for: r1v6, types: [T, o.zv4] */
    @Override
    public void J(boolean isClickLike) {
        YtbPlaylistTabFragment ytbPlaylistTabFragmentZ3;
        Fragment fragment;
        MixedListFragment mixedListFragment;
        MixedListFragment mixedListFragment2;
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        Fragment fragment2 = this.videoDetailFragment;
        if (fragment2 != null) {
            YtbVideoDetailTabFragment ytbVideoDetailTabFragment = null;
            if (fragment2 instanceof MixedListFragment) {
                mixedListFragment2 = (MixedListFragment) fragment2;
            } else {
                mixedListFragment = null;
            }
            if (mixedListFragment != null) {
                ref$ObjectRef.element = mixedListFragment.o3();
            } else {
                if (fragment2 != null) {
                    if (!(fragment2 instanceof YtbVideoDetailTabFragment)) {
                        fragment2 = null;
                    }
                    ytbVideoDetailTabFragment = (YtbVideoDetailTabFragment) fragment2;
                }
                fragment = ytbVideoDetailTabFragment;
            }
        } else {
            ytbPlaylistTabFragmentZ3 = z3();
        }
        if (fragment == null) {
            fragment = ytbPlaylistTabFragmentZ3;
            mixedListFragment = mixedListFragment2;
            fragment = mixedListFragment;
            return;
        }
        fragment = ytbPlaylistTabFragmentZ3;
        if (getActivity() == null) {
            mixedListFragment = mixedListFragment2;
            fragment = mixedListFragment;
            return;
        }
        VideoDetailDataHelper.a aVar = VideoDetailDataHelper.a;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        or3.e(fragmentActivityRequireActivity, "requireActivity(...)");
        Card cardB = aVar.b(fragmentActivityRequireActivity, o0());
        if (cardB == null) {
            mixedListFragment = mixedListFragment2;
            fragment = mixedListFragment;
            return;
        } else {
            mixedListFragment = mixedListFragment2;
            fragment = mixedListFragment;
            new n58(fragment, new e(ref$ObjectRef, cardB, this), "from_watch_detail").e(cardB, isClickLike, fragment.getView());
        }
    }

    public final c J3() {
        return (c) this.onDismissListener.getValue();
    }

    public final void J4() {
        try {
            ProgressBar progressBar = E3().h.n;
            or3.e(progressBar, "youtubeLoadingProgressBar");
            ViewExtKt.g(progressBar, true);
        } catch (Exception e2) {
            ProductionEnv.errorLog("VideoPlaybackFragment", e2);
        }
    }

    @Override
    public void K() {
        E4(this, false, false, 3, null);
    }

    public final String K3(String listUrl) {
        if (listUrl == null) {
            return "";
        }
        String strI = yj8.i(listUrl, "url");
        or3.e(strI, "getQueryParameter(...)");
        return strI;
    }

    public final void K4(String url, String title, String cover, String duration, String videoId, String feedSourceId, String specialId, boolean hideShareFile, boolean hideShareLink) {
        FragmentActivity activity = getActivity();
        if ((activity == null || !activity.isFinishing()) && !TextUtils.isEmpty(url)) {
            String strN3 = N3();
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            String str = (videoPlaybackController == null || !videoPlaybackController.h1()) ? "expo" : "full_screen_playbacK";
            if (TextUtils.isEmpty(this.viewCount)) {
                Fragment fragment = this.videoDetailFragment;
                if (fragment instanceof YtbVideoDetailsFragment) {
                    or3.d(fragment, "null cannot be cast to non-null type com.snaptube.premium.activity.YtbVideoDetailsFragment");
                    if (((YtbVideoDetailsFragment) fragment).x5() != null) {
                        Fragment fragment2 = this.videoDetailFragment;
                        or3.d(fragment2, "null cannot be cast to non-null type com.snaptube.premium.activity.YtbVideoDetailsFragment");
                        this.viewCount = ((YtbVideoDetailsFragment) fragment2).x5().m0();
                    }
                }
            }
            if (TextUtils.isEmpty(this.shareChannel)) {
                Fragment fragment3 = this.videoDetailFragment;
                if (fragment3 instanceof YtbVideoDetailsFragment) {
                    or3.d(fragment3, "null cannot be cast to non-null type com.snaptube.premium.activity.YtbVideoDetailsFragment");
                    if (((YtbVideoDetailsFragment) fragment3).x5() != null) {
                        Fragment fragment4 = this.videoDetailFragment;
                        or3.d(fragment4, "null cannot be cast to non-null type com.snaptube.premium.activity.YtbVideoDetailsFragment");
                        this.shareChannel = ((YtbVideoDetailsFragment) fragment4).x5().l0();
                    }
                }
            }
            SharePopupFragment.r3(getContext(), strN3, url, title, cover, duration, videoId, feedSourceId, specialId, this.creatorId, null, this.reportMeta, str, "", false, null, -1, this.viewCount, this.shareChannel, J3(), hideShareFile, hideShareLink);
        }
    }

    @Override
    public void L() {
        xy5.a(N3());
    }

    public final String L3() {
        String strM = com.snaptube.premium.share.c.m(com.snaptube.premium.share.c.f(this.posOriginal, "playlist_detail"));
        or3.e(strM, "trimPath(...)");
        return strM;
    }

    public final void L4() {
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString("key_history_id") : null;
        nr8.a aVar = nr8.a;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        aVar.b(string, videoPlaybackController != null ? videoPlaybackController.R0() : null);
    }

    public final String M3() {
        String str = this.coverUrl;
        if (str != null) {
            return str;
        }
        VideoDetailInfo videoDetailInfo = this.video;
        if (videoDetailInfo != null) {
            return videoDetailInfo.q;
        }
        return null;
    }

    public final void M4() {
        if (com.snaptube.premium.minibar.c.a.m()) {
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            if ((videoPlaybackController != null && !videoPlaybackController.n1()) || TextUtils.isEmpty(Config.A0()) || I3() == null) {
                return;
            }
            VideoPlaybackController videoPlaybackController2 = this.playbackControl;
            if ((videoPlaybackController2 != null ? videoPlaybackController2.G0() : null) == VideoPlaybackController.BackPlayMode.IN_WINDOW) {
                return;
            }
            String strA0 = Config.A0();
            pj5 pj5VarI3 = I3();
            if (or3.a(strA0, pj5VarI3 != null ? pj5VarI3.j() : null)) {
                t4();
            }
        }
    }

    public final String N3() {
        String strM = com.snaptube.premium.share.c.m(com.snaptube.premium.share.c.f(this.posOriginal, TextUtils.isEmpty(this.url) ? "invalid-url" : Uri.parse(this.url).getPath()));
        or3.e(strM, "trimPath(...)");
        return strM;
    }

    public final void N4(boolean isInPictureInPictureMode) {
        if (isInPictureInPictureMode) {
            E3().k.setVisibility(8);
            E3().b.setVisibility(8);
            x2(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
        } else {
            E3().k.setVisibility(0);
            E3().b.setVisibility(0);
            B3(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
        }
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.F1(isInPictureInPictureMode);
        }
        Q4();
    }

    public final Handler O3() {
        return (Handler) this.uiHandler.getValue();
    }

    public final void O4(int width, int height) {
        x2(width, height);
        wm1 wm1Var = this.detailSectionController;
        if (wm1Var != null) {
            wm1Var.h(this.videoUrl);
        }
    }

    @Override
    public void P(VideoDetailInfo detailInfo) {
        or3.f(detailInfo, "detailInfo");
        if (TextUtils.isEmpty(detailInfo.l)) {
            return;
        }
        w4(IntentUtil.VIDEO_TITLE, detailInfo.l);
        this.videoTitle = TextUtils.isEmpty(this.videoTitle) ? detailInfo.l : this.videoTitle;
    }

    public final void P4() {
        Dialog dialog;
        YtbVideoAboutFragment ytbVideoAboutFragment;
        YtbVideoAboutFragment ytbVideoAboutFragment2 = this.aboutFragment;
        if (ytbVideoAboutFragment2 == null || (dialog = ytbVideoAboutFragment2.getDialog()) == null || !dialog.isShowing() || (ytbVideoAboutFragment = this.aboutFragment) == null) {
            return;
        }
        ytbVideoAboutFragment.dismiss();
    }

    public final Runnable Q3() {
        return (Runnable) this.windowPermissionCheckTask.getValue();
    }

    public final void Q4() {
        b6 b6VarW5;
        com.snaptube.premium.batch_download.a aVar;
        BatchVideoSelectManager batchVideoSelectManagerT1;
        FragmentActivity activity;
        boolean z = false;
        if (!((!WindowPlayUtils.h() || (activity = getActivity()) == null) ? false : vs8.a(activity))) {
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            if (videoPlaybackController != null && videoPlaybackController.i1()) {
                z = true;
            }
            if (!z) {
                Fragment fragment = this.videoDetailFragment;
                if (fragment instanceof YtbVideoDetailsFragment) {
                    or3.d(fragment, "null cannot be cast to non-null type com.snaptube.premium.activity.YtbVideoDetailsFragment");
                    b6VarW5 = ((YtbVideoDetailsFragment) fragment).w5();
                } else {
                    b6VarW5 = null;
                }
                if (!(b6VarW5 instanceof com.snaptube.premium.batch_download.a) || (batchVideoSelectManagerT1 = (aVar = (com.snaptube.premium.batch_download.a) b6VarW5).T1()) == null) {
                    return;
                }
                batchVideoSelectManagerT1.F0(getActivity(), aVar);
                return;
            }
        }
        E3().c.setVisibility(8);
    }

    public final void R3(Intent intent) {
        if (or3.a("phoenix.intent.action.CLEAR_TOP", intent.getAction())) {
            return;
        }
        if (intent.getData() == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("intent is invalid. intent: " + yq3.a(intent)));
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.onBackPressed();
                return;
            }
            return;
        }
        this.listUrl = intent.getStringExtra("playlistUrl");
        Uri data = intent.getData();
        this.videoUrl = data != null ? data.getQueryParameter("url") : null;
        this.coverUrl = ri0.k(intent.getStringExtra(IntentUtil.COVER_URL));
        String stringExtra = intent.getStringExtra("query");
        String stringExtra2 = intent.getStringExtra("query_from");
        if (TextUtils.isEmpty(this.videoUrl) && !TextUtils.isEmpty(this.listUrl)) {
            String strI = tm1.i(this.listUrl);
            if (strI != null && strI.length() != 0) {
                String stringExtra3 = intent.getStringExtra(IntentUtil.POS);
                if (!TextUtils.isEmpty(stringExtra3)) {
                    strI = yj8.a(strI, IntentUtil.POS, stringExtra3);
                }
                String str = strI;
                VideoDetailInfo videoDetailInfoA = this.video;
                if (videoDetailInfoA == null) {
                    videoDetailInfoA = com.snaptube.premium.playback.detail.b.a.a(intent);
                }
                getChildFragmentManager().beginTransaction().replace(R.id.playlist, T4(str, stringExtra, stringExtra2, videoDetailInfoA, intent), "playlist").commitAllowingStateLoss();
                return;
            }
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("playlist url is invalid. intent: " + yq3.a(intent)));
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.onBackPressed();
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(this.videoUrl)) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("videoUrl is invalid. intent: " + yq3.a(intent)));
            FragmentActivity activity3 = getActivity();
            if (activity3 != null) {
                activity3.onBackPressed();
                return;
            }
            return;
        }
        Uri data2 = intent.getData();
        this.feedSourceId = data2 != null ? data2.getQueryParameter("feedSourceId") : null;
        this.specialId = data2 != null ? data2.getQueryParameter("specialId") : null;
        VideoDetailInfo videoDetailInfo = new VideoDetailInfo();
        videoDetailInfo.n = this.videoUrl;
        String queryParameter = data2 != null ? data2.getQueryParameter(IntentUtil.KEY_SNAPTUBE_VIDEO_ID) : null;
        this.videoId = queryParameter;
        videoDetailInfo.b = queryParameter;
        String queryParameter2 = data2 != null ? data2.getQueryParameter(IntentUtil.SERVER_TAG) : null;
        this.serverTag = queryParameter2;
        videoDetailInfo.h = queryParameter2;
        videoDetailInfo.c = this.listUrl;
        videoDetailInfo.O = data2 != null ? data2.getQueryParameter("refer_url") : null;
        videoDetailInfo.T = data2 != null ? data2.getQueryParameter("card_pos") : null;
        String stringExtra4 = intent.getStringExtra(IntentUtil.POS);
        videoDetailInfo.g = stringExtra4;
        videoDetailInfo.P = stringExtra;
        videoDetailInfo.Q = stringExtra2;
        videoDetailInfo.S = intent.getStringExtra("title");
        videoDetailInfo.R = this.listUrl;
        videoDetailInfo.E0 = intent.getStringExtra("music_video_type");
        if (TextUtils.isEmpty(videoDetailInfo.g)) {
            stringExtra4 = data2 != null ? data2.getQueryParameter(IntentUtil.POS) : null;
            videoDetailInfo.g = stringExtra4;
            wm1 wm1Var = this.detailSectionController;
            if (wm1Var != null) {
                wm1Var.e(!TextUtils.isEmpty(stringExtra4));
            }
        }
        if (TextUtils.isEmpty(this.posOriginal)) {
            this.posOriginal = stringExtra4;
        }
        videoDetailInfo.q = this.coverUrl;
        String stringExtra5 = intent.getStringExtra(IntentUtil.VIDEO_TITLE);
        this.videoTitle = stringExtra5;
        videoDetailInfo.l = stringExtra5;
        String stringExtra6 = intent.getStringExtra(IntentUtil.DURATION);
        videoDetailInfo.p = stringExtra6 == null ? MBridgeConstans.ENDCARD_URL_TYPE_PL : stringExtra6;
        String stringExtra7 = intent.getStringExtra("creatorId");
        this.creatorId = stringExtra7;
        videoDetailInfo.f = stringExtra7;
        String stringExtra8 = intent.getStringExtra("report_meta");
        this.reportMeta = stringExtra8;
        videoDetailInfo.r = stringExtra8;
        if (intent.hasExtra("subtitle")) {
            videoDetailInfo.c("subtitle", intent.getStringExtra("subtitle"));
        }
        if (intent.hasExtra("push_title")) {
            videoDetailInfo.c("push_title", intent.getStringExtra("push_title"));
            videoDetailInfo.c("push_campaign_id", intent.getStringExtra("push_campaign_id"));
            videoDetailInfo.c("platform", intent.getStringExtra("platform"));
            videoDetailInfo.c("push_crowd_type", intent.getStringExtra("push_crowd_type"));
            if (intent.hasExtra("is_preload")) {
                videoDetailInfo.c("is_preload", Boolean.valueOf(intent.getBooleanExtra("is_preload", false)));
            }
            if (intent.hasExtra("push_click_time")) {
                videoDetailInfo.B0 = intent.getLongExtra("push_click_time", 0L);
            }
            if (intent.hasExtra("push_subtype")) {
                videoDetailInfo.c("push_subtype", intent.getStringExtra("push_subtype"));
            }
        }
        long longExtra = intent.getLongExtra("start_position", 0L);
        long longExtra2 = intent.getLongExtra("end_position", 0L);
        if (longExtra2 == 0) {
            longExtra2 = l38.z(stringExtra6);
        }
        videoDetailInfo.M = longExtra;
        videoDetailInfo.N = longExtra2;
        this.shareChannel = intent.getStringExtra("share_channel");
        this.viewCount = intent.getStringExtra("playlist_video_count");
        String stringExtra9 = intent.getStringExtra("author");
        if (stringExtra9 == null) {
            stringExtra9 = this.shareChannel;
        }
        videoDetailInfo.k = stringExtra9;
        if (TextUtils.isEmpty(videoDetailInfo.q)) {
            ProductionEnv.w("VideoPlaybackFragment", "video cover not found. intent: " + yq3.a(intent));
        }
        if (TextUtils.isEmpty(videoDetailInfo.l)) {
            ProductionEnv.w("VideoPlaybackFragment", "video title not found. intent: " + yq3.a(intent));
        }
        if (TextUtils.isEmpty(videoDetailInfo.g)) {
            ProductionEnv.w("VideoPlaybackFragment", "video position_source not found. intent: " + yq3.a(intent));
        }
        int intExtra = intent.getIntExtra("width", 1920);
        this.videoAspectRatioWidth = intExtra;
        videoDetailInfo.w = intExtra;
        int intExtra2 = intent.getIntExtra("height", 1080);
        this.videoAspectRatioHeight = intExtra2;
        videoDetailInfo.x = intExtra2;
        this.video = videoDetailInfo;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.U2(videoDetailInfo, null);
        }
        this.url = tm1.d(intent);
        if (tm1.i(this.listUrl) == null) {
            bq8.a aVar = bq8.a;
            String str2 = this.url;
            or3.c(str2);
            String str3 = this.videoUrl;
            or3.c(str3);
            VideoDetailInfo videoDetailInfo2 = this.video;
            String str4 = videoDetailInfo2 != null ? videoDetailInfo2.l : null;
            if (str4 == null) {
                str4 = "";
            }
            String str5 = videoDetailInfo2 != null ? videoDetailInfo2.g : null;
            this.videoDetailFragment = aVar.a(str2, str3, str4, str5 != null ? str5 : "", intent);
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            Fragment fragment = this.videoDetailFragment;
            or3.c(fragment);
            fragmentTransactionBeginTransaction.replace(R.id.listView, fragment).commitAllowingStateLoss();
        }
    }

    public final void R4(boolean visible) {
        if (FragmentKt.d(this)) {
            E3().f.setPadding(0, (!visible || TextUtils.isEmpty(this.listUrl)) ? 0 : getResources().getDimensionPixelSize(R.dimen.playlist_head_panel_height), 0, 0);
        }
    }

    public final void S3(Intent intent) {
        ActionBar actionBar;
        if (this.playbackControl == null) {
            ProductionEnv.throwExceptForDebugging(new IllegalArgumentException("playbackControl == null "));
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.onBackPressed();
                return;
            }
            return;
        }
        boolean booleanExtra = intent.getBooleanExtra("windowPlayable", true);
        this.isFromPIP = getIntent().getBooleanExtra("key_from_pip", false);
        FloatingVideoBehavior floatingVideoBehavior = (FloatingVideoBehavior) fa0.a(E3().h.b());
        if (floatingVideoBehavior != null) {
            floatingVideoBehavior.u0(booleanExtra);
        }
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.U2(this.video, this.feedSourceId);
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.c1();
        }
        x4();
        YtbPlaylistTabFragment ytbPlaylistTabFragment = (YtbPlaylistTabFragment) getChildFragmentManager().findFragmentByTag("playlist");
        if (ytbPlaylistTabFragment == null || !tm1.g(this.listUrl, K3(ytbPlaylistTabFragment.A4()))) {
            W3(intent);
        } else {
            getChildFragmentManager().executePendingTransactions();
            ytbPlaylistTabFragment.Z4(this.url, this.videoUrl, this.video);
        }
        getChildFragmentManager().executePendingTransactions();
        B3(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
        VideoHistoryStackManager videoHistoryStackManager = VideoHistoryStackManager.a;
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        videoHistoryStackManager.g(videoPlaybackController3 != null ? videoPlaybackController3.Z0() : null, intent);
        boolean booleanExtra2 = intent.getBooleanExtra("auto_download", false);
        this.autoDownload = booleanExtra2;
        if (booleanExtra2) {
            F4();
        }
        S4();
        FragmentActivity activity2 = getActivity();
        if (activity2 == null || (actionBar = activity2.getActionBar()) == null) {
            return;
        }
        actionBar.hide();
    }

    public final void S4() {
        BasePlayerView basePlayerViewN0;
        VideoPlaybackController playbackControl;
        if (TextUtils.isEmpty(this.coverUrl)) {
            return;
        }
        if (this.isFromPIP || (playbackControl = getPlaybackControl()) == null || !playbackControl.n1()) {
            VideoPlaybackController playbackControl2 = getPlaybackControl();
            if (playbackControl2 != null && (basePlayerViewN0 = playbackControl2.N0()) != null) {
                basePlayerViewN0.J(true);
            }
            VideoPlaybackController playbackControl3 = getPlaybackControl();
            if (playbackControl3 != null) {
                playbackControl3.q2(this.coverUrl);
            }
        }
    }

    public final void T3(Intent intent) {
        requireView().findViewById(R.id.playlist).setVisibility(0);
        R4(true);
        B3(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
        I4();
    }

    public final YtbPlaylistTabFragment T4(String playlistUrl, String query, String queryFrom, VideoDetailInfo videoDetailInfo, Intent intent) {
        String str;
        YtbPlaylistTabFragment ytbPlaylistTabFragment = new YtbPlaylistTabFragment();
        ytbPlaylistTabFragment.N3(playlistUrl);
        String str2 = this.url;
        String str3 = this.videoUrl;
        String str4 = videoDetailInfo != null ? videoDetailInfo.l : null;
        String str5 = str4 == null ? "" : str4;
        String str6 = videoDetailInfo != null ? videoDetailInfo.g : null;
        ytbPlaylistTabFragment.R4(playlistUrl, str2, str3, query, queryFrom, str5, str6 == null ? "" : str6, intent.getBooleanExtra("video_is_live", false), (videoDetailInfo == null || (str = videoDetailInfo.S) == null) ? "" : str, this.isFromPIP);
        if (TextUtils.isEmpty(this.videoUrl) && !TextUtils.isEmpty(this.listUrl)) {
            ytbPlaylistTabFragment.S4(new g(ytbPlaylistTabFragment));
        }
        return ytbPlaylistTabFragment;
    }

    public final void U3() {
        try {
            this.handler.removeMessages(1000);
            ProgressBar progressBar = E3().h.n;
            or3.e(progressBar, "youtubeLoadingProgressBar");
            ViewExtKt.g(progressBar, false);
            ImageView imageView = E3().h.c;
            or3.e(imageView, "cover");
            ViewExtKt.g(imageView, false);
        } catch (Exception e2) {
            ProductionEnv.errorLog("VideoPlaybackFragment", e2);
        }
    }

    public final void V3(Intent intent) {
        ActionBar actionBar;
        x4();
        FragmentActivity activity = getActivity();
        if (activity != null && (actionBar = activity.getActionBar()) != null) {
            actionBar.hide();
        }
        this.url = tm1.d(intent);
        if (tm1.i(this.listUrl) == null) {
            bq8.a aVar = bq8.a;
            String str = this.url;
            or3.c(str);
            String str2 = this.videoUrl;
            or3.c(str2);
            VideoDetailInfo videoDetailInfo = this.video;
            String str3 = videoDetailInfo != null ? videoDetailInfo.l : null;
            if (str3 == null) {
                str3 = "";
            }
            String str4 = videoDetailInfo != null ? videoDetailInfo.g : null;
            this.videoDetailFragment = aVar.a(str, str2, str3, str4 != null ? str4 : "", intent);
            FragmentTransaction fragmentTransactionBeginTransaction = getChildFragmentManager().beginTransaction();
            Fragment fragment = this.videoDetailFragment;
            or3.c(fragment);
            fragmentTransactionBeginTransaction.replace(R.id.listView, fragment).commitAllowingStateLoss();
        }
        YtbPlaylistTabFragment ytbPlaylistTabFragment = (YtbPlaylistTabFragment) getChildFragmentManager().findFragmentByTag("playlist");
        if (ytbPlaylistTabFragment == null || !tm1.g(this.listUrl, K3(ytbPlaylistTabFragment.A4()))) {
            W3(intent);
        } else {
            getChildFragmentManager().executePendingTransactions();
            ytbPlaylistTabFragment.Z4(this.url, this.videoUrl, this.video);
        }
        getChildFragmentManager().executePendingTransactions();
        q3();
    }

    public final YtbPlaylistTabFragment W3(Intent intent) {
        String strI = tm1.i(this.listUrl);
        if (strI == null) {
            requireView().findViewById(R.id.playlist).setVisibility(8);
            R4(false);
            return null;
        }
        String stringExtra = intent.getStringExtra(IntentUtil.POS);
        if (!TextUtils.isEmpty(stringExtra)) {
            strI = yj8.a(strI, IntentUtil.POS, stringExtra);
        }
        String str = strI;
        requireView().findViewById(R.id.playlist).setVisibility(0);
        R4(true);
        String stringExtra2 = intent.getStringExtra("query");
        String stringExtra3 = intent.getStringExtra("query_from");
        VideoDetailInfo videoDetailInfoA = this.video;
        if (videoDetailInfoA == null) {
            videoDetailInfoA = com.snaptube.premium.playback.detail.b.a.a(intent);
        }
        YtbPlaylistTabFragment ytbPlaylistTabFragmentT4 = T4(str, stringExtra2, stringExtra3, videoDetailInfoA, intent);
        getChildFragmentManager().beginTransaction().replace(R.id.playlist, ytbPlaylistTabFragmentT4, "playlist").commitAllowingStateLoss();
        return ytbPlaylistTabFragmentT4;
    }

    @Override
    public void Z1(View view) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        wm1 wm1Var = this.detailSectionController;
        if (wm1Var != null) {
            wm1Var.c(view);
        }
        wm1 wm1Var2 = this.detailSectionController;
        if (wm1Var2 != null) {
            wm1Var2.b(this.videoUrl);
        }
    }

    public final boolean Z3(Intent intent) {
        return or3.a(intent.getStringExtra(IntentUtil.POS), "me_playlist");
    }

    @Override
    public void a(int width, int height) {
        VideoPlaybackController videoPlaybackController;
        if (width == 0 || height == 0) {
            return;
        }
        if (this.videoAspectRatioWidth * height != this.videoAspectRatioHeight * width && ((videoPlaybackController = this.playbackControl) == null || !videoPlaybackController.A1())) {
            B3(width, height);
        }
        this.videoAspectRatioWidth = width;
        this.videoAspectRatioHeight = height;
        o3(width, height);
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.p2(this.videoAspectRatioWidth, this.videoAspectRatioHeight);
        }
        w4("width", Integer.valueOf(this.videoAspectRatioWidth));
        w4("height", Integer.valueOf(this.videoAspectRatioHeight));
    }

    public final boolean a4() {
        return py6.f(requireContext()) == 1;
    }

    public final void b4() {
        b6 b6VarZ3 = this.videoDetailFragment;
        if (b6VarZ3 == null) {
            b6VarZ3 = z3();
        }
        ry6 ry6Var = b6VarZ3 instanceof ry6 ? (ry6) b6VarZ3 : null;
        if (ry6Var != null) {
            ry6Var.V0();
        }
    }

    public final void c4() {
        VideoPlayInfo videoPlayInfoR0;
        ti7 ti7VarP0;
        cg3 cg3VarQ;
        f4(true);
        Context context = getContext();
        String str = this.listUrl;
        String str2 = this.videoUrl;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        boolean zT = (videoPlaybackController == null || (ti7VarP0 = videoPlaybackController.P0()) == null || (cg3VarQ = ti7VarP0.q()) == null) ? false : cg3VarQ.T();
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        NavigationManager.K0(context, str, str2, zT, (videoPlaybackController2 == null || (videoPlayInfoR0 = videoPlaybackController2.R0()) == null) ? null : videoPlayInfoR0.getHistoryId(), this.videoAspectRatioHeight, this.videoAspectRatioWidth, M3(), bq8.a.b(getIntent()));
    }

    public final void e4(boolean shouldChangeOrientation) {
        VideoPlaybackController videoPlaybackController;
        BasePlayerView basePlayerViewN0;
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null && (basePlayerViewN0 = videoPlaybackController2.N0()) != null) {
            basePlayerViewN0.setGestureControlMode(BasePlayerView.GestureControlMode.ENABLE);
        }
        if (shouldChangeOrientation) {
            VideoPlaybackController videoPlaybackController3 = this.playbackControl;
            if (videoPlaybackController3 == null || !videoPlaybackController3.g1()) {
                if (a4()) {
                    this.isManualRotation = true;
                }
            } else if (!a4()) {
                this.isManualRotation = true;
            }
        }
        E3().j.getLayoutParams().height = E3().d.getHeight();
        E3().j.requestLayout();
        VideoPlaybackController videoPlaybackController4 = this.playbackControl;
        if (videoPlaybackController4 == null || !videoPlaybackController4.g1() || (videoPlaybackController = this.playbackControl) == null || !videoPlaybackController.o1()) {
            qw2 qw2VarH3 = H3();
            VideoPlaybackController videoPlaybackController5 = this.playbackControl;
            qw2VarH3.b(videoPlaybackController5 != null ? videoPlaybackController5.N0() : null, shouldChangeOrientation);
        } else {
            qw2 qw2VarH4 = H3();
            VideoPlaybackController videoPlaybackController6 = this.playbackControl;
            qw2VarH4.c(videoPlaybackController6 != null ? videoPlaybackController6.N0() : null, shouldChangeOrientation);
        }
    }

    public final void f4(boolean shouldChangeOrientation) {
        BasePlayerView basePlayerViewN0;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null && (basePlayerViewN0 = videoPlaybackController.N0()) != null) {
            basePlayerViewN0.setGestureControlMode(BasePlayerView.GestureControlMode.ONLY_ENABLE_PROGRESS);
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.r2(false);
        }
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        if (videoPlaybackController3 != null) {
            videoPlaybackController3.l2(false);
        }
        VideoPlaybackController videoPlaybackController4 = this.playbackControl;
        if (videoPlaybackController4 != null) {
            videoPlaybackController4.Q2();
        }
        if (shouldChangeOrientation && !a4()) {
            this.isManualRotation = true;
        }
        H3().d(shouldChangeOrientation);
    }

    public final void g4(boolean isInPictureInPictureMode, Configuration newConfig) {
        FragmentActivity activity;
        FragmentActivity activity2;
        if (this.pipPlayHelper != null) {
            FragmentActivity activity3 = getActivity();
            boolean zA = activity3 != null ? vs8.a(activity3) : false;
            rm5 rm5Var = this.pipPlayHelper;
            if (rm5Var != null) {
                rm5Var.m(zA, newConfig);
            }
            N4(zA);
            if (zA || isStarted() || (activity = getActivity()) == null || activity.isFinishing() || (activity2 = getActivity()) == null) {
                return;
            }
            activity2.finish();
        }
    }

    @Override
    public Intent getIntent() {
        Intent intent;
        Bundle arguments = getArguments();
        if (arguments == null || (intent = (Intent) arguments.getParcelable("intent")) == null) {
            throw new IllegalArgumentException("intent should not be null");
        }
        intent.setExtrasClassLoader(PhoenixApplication.class.getClassLoader());
        return intent;
    }

    @Override
    public boolean getPlayWhenReady() {
        Boolean bool;
        NavController navControllerA;
        NavBackStackEntry navBackStackEntryZ;
        Fragment primaryNavigationFragment = getParentFragmentManager().getPrimaryNavigationFragment();
        k kVarI = (primaryNavigationFragment == null || (navControllerA = mt2.a(primaryNavigationFragment)) == null || (navBackStackEntryZ = navControllerA.z()) == null) ? null : navBackStackEntryZ.i();
        boolean zBooleanValue = (kVarI == null || (bool = (Boolean) kVarI.e("is_nav_up_return")) == null) ? false : bool.booleanValue();
        if (zBooleanValue && kVarI != null) {
        }
        boolean z = this.autoPlay && !(zBooleanValue && OnlineMusicPlaybackController.a.w());
        if (this.hasSetAutoPlay) {
            this.autoPlay = true;
        }
        return !this.autoDownload && z;
    }

    @Override
    public boolean h1() {
        FragmentActivity activity;
        FragmentActivity activity2;
        return (isResumed() || !FragmentKt.d(this) || (activity = getActivity()) == null || activity.isFinishing() || (activity2 = getActivity()) == null || activity2.isDestroyed()) ? false : true;
    }

    @Override
    public void i2() {
        if (WindowPlayUtils.e()) {
            y3();
            return;
        }
        if (WindowPlayUtils.h() && WindowPlayUtils.d()) {
            c4();
            A3();
            return;
        }
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        boolean zN1 = videoPlaybackController != null ? videoPlaybackController.n1() : false;
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.K1();
        }
        PermissionHelper.a.k(getActivity(), new com.snaptube.permission.a.C0392a().h(WindowPlayUtils.c()).e(1).j("online_play").i(new VideoPlaybackFragment$minifyPlayer$request$1(this, zN1)).a(), null);
        Config.c6(0);
    }

    @Override
    public VideoPlaybackController getPlaybackControl() {
        return this.playbackControl;
    }

    @Override
    public yi3 getPlaybackControl() {
        return getPlaybackControl();
    }

    @Override
    public sm1 getDetailDataProvider() {
        return this.detailDataProvider;
    }

    public final void k4() {
        FragmentActivity activity;
        VideoPlaybackController videoPlaybackController;
        if (this.resetPlayer && (activity = getActivity()) != null && !activity.isFinishing() && !Config.j() && (videoPlaybackController = this.playbackControl) != null) {
            videoPlaybackController.K1();
        }
        rm5 rm5Var = this.pipPlayHelper;
        if (rm5Var != null) {
            rm5Var.o();
        }
    }

    @Override
    public boolean l0(Context context, Card card, Intent intent) {
        Uri data;
        or3.f(context, "context");
        or3.f(intent, "intent");
        String action = intent.getAction();
        boolean booleanExtra = intent.getBooleanExtra("from_playlist", false);
        if (or3.a("snaptube.intent.action.SHARE", action) || or3.a("snaptube.intent.action.GET_SHARE_POS", action) || or3.a("android.intent.action.VIEW", action)) {
            intent.putExtra(IntentUtil.POS, booleanExtra ? L3() : N3());
        }
        if (booleanExtra) {
            String stringExtra = getIntent().getStringExtra("query");
            String stringExtra2 = getIntent().getStringExtra("query_from");
            if (!TextUtils.isEmpty(stringExtra) && (data = intent.getData()) != null && (or3.a("snaptube.intent.action.DOWNLOAD", action) || or3.a("snaptube.intent.action.DOWNLOAD_ALL", action))) {
                intent.setData(data.buildUpon().appendQueryParameter("query", stringExtra).appendQueryParameter("query_from", stringExtra2).build());
            }
            intent.putExtra("query", stringExtra);
            intent.putExtra("query_from", stringExtra2);
            intent.putExtra("playlistUrl", getIntent().getStringExtra("playlistUrl"));
            intent.putExtra("title", getIntent().getStringExtra("title"));
        }
        VideoHistoryStackManager videoHistoryStackManager = VideoHistoryStackManager.a;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        videoHistoryStackManager.f(videoPlaybackController != null ? videoPlaybackController.Z0() : null);
        ke3 ke3Var = this.mixedListDelegate;
        if (ke3Var != null) {
            return ke3Var.l0(context, card, intent);
        }
        return false;
    }

    public final void l4() {
        if (s5.d() == null) {
            a58.a.postDelayed(new kt8(this), 300L);
        } else {
            n4(this);
        }
    }

    public final void n3() {
        Window window;
        WindowManager.LayoutParams attributes;
        FragmentActivity activity = getActivity();
        this.currentBrightness = (activity == null || (window = activity.getWindow()) == null || (attributes = window.getAttributes()) == null) ? null : Float.valueOf(attributes.screenBrightness);
    }

    @Override
    public int o0() {
        return hashCode();
    }

    public final void o3(int width, int height) {
        E3().b.setEnableScroll(((float) width) / ((float) height) < 1.7777778f);
    }

    public final void o4(Card videoCard) {
        if (videoCard == null) {
            return;
        }
        try {
            Intent intentO = ri0.O(videoCard);
            Intent intent = getIntent();
            intent.setData(intentO.getData());
            Bundle extras = intentO.getExtras();
            if (extras != null) {
                intent.putExtras(extras);
            }
            Uri data = intent.getData();
            String queryParameter = data != null ? data.getQueryParameter("url") : null;
            if (TextUtils.isEmpty(queryParameter)) {
                return;
            }
            E(intent);
            RecommendVideoDistinctManager recommendVideoDistinctManager = RecommendVideoDistinctManager.INSTANCE;
            or3.c(queryParameter);
            recommendVideoDistinctManager.put(queryParameter);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override
    public boolean onBackPressed() {
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController == null || !videoPlaybackController.h1()) {
            return false;
        }
        videoPlaybackController.b2("exit_full_screen", null);
        videoPlaybackController.r2(false);
        videoPlaybackController.l2(false);
        D0(true);
        return true;
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        VideoPlaybackController videoPlaybackController;
        VideoPlaybackController videoPlaybackController2;
        FragmentActivity activity;
        or3.f(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        if (this.isFinishing || !isVisible()) {
            return;
        }
        if (WindowPlayUtils.h() && (activity = getActivity()) != null && vs8.a(activity)) {
            return;
        }
        int iF = py6.f(requireContext());
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        boolean zK1 = videoPlaybackController3 != null ? videoPlaybackController3.k1(iF) : false;
        if (this.isManualRotation) {
            this.isManualRotation = false;
        } else if (zK1 && (videoPlaybackController = this.playbackControl) != null) {
            videoPlaybackController.E1(newConfig, requireContext());
        }
        D0(false);
        if (this.waitingLayoutPortrait && iF == 1) {
            F4();
        }
        if (iF == 1 && isStarted() && (videoPlaybackController2 = this.playbackControl) != null && !videoPlaybackController2.h1()) {
            com.snaptube.premium.minibar.c.a.w(getActivity());
        } else {
            com.snaptube.premium.minibar.c.a.j(getActivity());
            r3();
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        StartDownloadAdViewModel.B(null, "playback", 1, null);
        ((b) fc1.a(getContext())).z(this);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            this.videoFrameFlyInAnimator = new VideoFrameFlyInAnimator(activity, this);
        }
        this.orientationStateSaver = OrientationStateSaver.INSTANCE.a(this, -1);
        R3(getIntent());
        C3().T().i(this, new f(new AnonymousClass2()));
        this.windowPermissionLauncher = registerForActivityResult(new e6(), this.activityResultCallback);
    }

    @Override
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        or3.f(inflater, "inflater");
        this._binding = jv2.c(inflater, container, false);
        B0.addLast(Integer.valueOf(hashCode()));
        LinearLayout linearLayoutB = E3().b();
        or3.e(linearLayoutB, "getRoot(...)");
        return linearLayoutB;
    }

    @Override
    public void onDestroy() {
        g6 g6Var = this.windowPermissionLauncher;
        if (g6Var != null) {
            g6Var.unregister();
        }
        this.windowPermissionLauncher = null;
        super.onDestroy();
    }

    @Override
    public void onDestroyView() {
        BasePlayerView basePlayerViewN0;
        M4();
        rm5 rm5Var = this.pipPlayHelper;
        if (rm5Var != null) {
            rm5Var.k();
        }
        fv7.a(this.mAddToWatchLaterSubscription);
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        boolean z = false;
        if ((videoPlaybackController != null ? videoPlaybackController.G0() : null) == VideoPlaybackController.BackPlayMode.AUDIO_PLAY) {
            this.resetPlayer = false;
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.Y1();
        }
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        if (videoPlaybackController3 != null && (basePlayerViewN0 = videoPlaybackController3.N0()) != null) {
            basePlayerViewN0.M();
        }
        rm5 rm5Var2 = this.pipPlayHelper;
        boolean zJ = rm5Var2 != null ? rm5Var2.j() : false;
        VideoPlaybackController videoPlaybackController4 = this.playbackControl;
        if (videoPlaybackController4 != null) {
            boolean z2 = this.resetPlayer;
            if (z2 && !zJ) {
                z = true;
            }
            videoPlaybackController4.H2(z2, z);
        }
        VideoPlaybackController videoPlaybackController5 = this.playbackControl;
        if (videoPlaybackController5 != null) {
            videoPlaybackController5.C1(this.resetPlayer);
        }
        this.playbackControl = null;
        RecommendVideoDistinctManager.INSTANCE.clear();
        VideoFrameFlyInAnimator videoFrameFlyInAnimator = this.videoFrameFlyInAnimator;
        if (videoFrameFlyInAnimator != null) {
            videoFrameFlyInAnimator.e();
        }
        O3().removeCallbacksAndMessages(null);
        a80.i.b(F3());
        this.handler.removeCallbacksAndMessages(null);
        v4();
        LinkedList linkedList = B0;
        Integer num = (Integer) CollectionsKt___CollectionsKt.g0(linkedList);
        int iHashCode = hashCode();
        if (num != null && num.intValue() == iHashCode) {
            linkedList.removeLast();
            if (!(getActivity() instanceof VideoPlaybackActivityTransTheme)) {
                ProductionEnv.d("ONLINE_VIDEO", "onDestroyView: stop");
                PlayerService.Companion companion = PlayerService.INSTANCE;
                Context contextRequireContext = requireContext();
                or3.e(contextRequireContext, "requireContext(...)");
                companion.j(contextRequireContext, PlayerType.ONLINE_VIDEO);
            } else if (linkedList.isEmpty()) {
                ProductionEnv.d("ONLINE_VIDEO", "onDestroyView: stop");
                PlayerService.Companion companion2 = PlayerService.INSTANCE;
                Context contextRequireContext2 = requireContext();
                or3.e(contextRequireContext2, "requireContext(...)");
                companion2.j(contextRequireContext2, PlayerType.ONLINE_VIDEO);
            }
        } else {
            linkedList.remove(Integer.valueOf(hashCode()));
        }
        this._binding = null;
        super.onDestroyView();
    }

    @Override
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            k4();
            v4();
        }
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.D1(hidden);
        }
        OrientationStateSaver orientationStateSaver = this.orientationStateSaver;
        if (orientationStateSaver != null) {
            orientationStateSaver.a(hidden);
        }
    }

    @Override
    public void onNewIntent(Intent intent) {
        or3.f(intent, "intent");
        y4(intent);
        boolean booleanExtra = intent.getBooleanExtra("restart_video_play", false);
        FragmentActivity activity = getActivity();
        if ((activity == null || !activity.isFinishing()) && !booleanExtra) {
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            x24 viewLifecycleOwner = getViewLifecycleOwner();
            if (videoPlaybackController != null && viewLifecycleOwner != null) {
                OnlineVideoPlaybackHelper.a.d(viewLifecycleOwner, videoPlaybackController);
            }
            VideoHistoryStackManager videoHistoryStackManager = VideoHistoryStackManager.a;
            VideoPlaybackController videoPlaybackController2 = this.playbackControl;
            videoHistoryStackManager.f(videoPlaybackController2 != null ? videoPlaybackController2.Z0() : null);
            s4();
            E(intent);
            b4();
            RxBus.d().f(1041);
        }
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        or3.f(item, "item");
        if (item.getItemId() != 16908332) {
            return super.onOptionsItemSelected(item);
        }
        onBackPressed();
        return true;
    }

    @Override
    public void onPause() {
        FragmentActivity activity;
        boolean zH = WindowPlayUtils.h();
        if (!this.isEnterPIPImmediately && (!zH || ((activity = getActivity()) != null && !vs8.a(activity)))) {
            rm5 rm5Var = this.pipPlayHelper;
            if (rm5Var != null) {
                rm5Var.l();
            }
            l4();
        }
        super.onPause();
    }

    @Override
    public void onResume() {
        VideoPlaybackController videoPlaybackController;
        VideoPlaybackController videoPlaybackController2;
        super.onResume();
        rm5 rm5Var = this.pipPlayHelper;
        if (rm5Var != null) {
            rm5Var.n();
        }
        b4();
        Q4();
        E3().b.postDelayed(new pt8(this), 200L);
        if (isVisible() && (videoPlaybackController2 = this.playbackControl) != null) {
            videoPlaybackController2.D1(false);
        }
        if (!this.isEnterPIPImmediately || WindowPlayUtils.f(getActivity())) {
            return;
        }
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        if (!(videoPlaybackController3 != null ? videoPlaybackController3.n1() : false) && (videoPlaybackController = this.playbackControl) != null) {
            videoPlaybackController.t2(true);
        }
        y3();
    }

    @Override
    public void onStop() {
        FragmentActivity activity = getActivity();
        if (activity != null ? WindowPlayUtils.f(activity) : false) {
            rm5 rm5Var = this.pipPlayHelper;
            if (rm5Var != null) {
                rm5Var.l();
            }
            l4();
        }
        super.onStop();
    }

    @Override
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        or3.f(view, MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW);
        super.onViewCreated(view, savedInstanceState);
        PlayerService.Companion companion = PlayerService.INSTANCE;
        Context contextRequireContext = requireContext();
        or3.e(contextRequireContext, "requireContext(...)");
        companion.j(contextRequireContext, PlayerType.ONLINE_WINDOW);
        if (savedInstanceState != null && !this.hasSetAutoPlay) {
            this.autoPlay = false;
            this.hasSetAutoPlay = true;
        }
        wm1 wm1Var = new wm1(this);
        wm1Var.f(N3());
        wm1Var.g(this.videoUrl);
        this.detailSectionController = wm1Var;
        X3();
        if (WindowPlayUtils.h()) {
            this.pipPlayHelper = new rm5(this);
        }
        VideoPlaybackController videoPlaybackController = new VideoPlaybackController(this, view, this.pipPlayHelper, this);
        videoPlaybackController.N0().getPlayerViewUIHelper().w(this);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            videoPlaybackController.N0().setWindow(activity.getWindow());
        }
        videoPlaybackController.N0().setGestureControlMode(BasePlayerView.GestureControlMode.ONLY_ENABLE_PROGRESS);
        OnlineVideoPlaybackHelper onlineVideoPlaybackHelper = OnlineVideoPlaybackHelper.a;
        x24 viewLifecycleOwner = getViewLifecycleOwner();
        or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        onlineVideoPlaybackHelper.d(viewLifecycleOwner, videoPlaybackController);
        this.playbackControl = videoPlaybackController;
        String str = this.videoUrl;
        if (str == null || str.length() == 0) {
            T3(getIntent());
        } else {
            S3(getIntent());
        }
        String str2 = this.videoUrl;
        if (str2 != null) {
            RecommendVideoDistinctManager.INSTANCE.put(str2);
        }
        s4();
        A4();
        z4();
        View view2 = E3().k;
        or3.e(view2, "viewFakeStatusBar");
        sr7.p(view2, 0, 1, null);
        n3();
        Bundle arguments = getArguments();
        this.isEnterPIPImmediately = arguments != null ? arguments.getBoolean("is_enter_pip_immediately") : false;
        p4();
        L4();
    }

    public final void p3(boolean delayCheck) {
        O3().removeCallbacks(Q3());
    }

    public final void p4() {
        O3().postDelayed(new qt8(this), 500L);
    }

    public final void q3() {
        YtbVideoAboutFragment ytbVideoAboutFragment;
        YtbVideoAboutFragment ytbVideoAboutFragment2;
        Dialog dialog;
        YtbVideoAboutFragment ytbVideoAboutFragment3;
        YtbVideoAboutFragment ytbVideoAboutFragment4 = this.aboutFragment;
        if (or3.a(ytbVideoAboutFragment4 != null ? ytbVideoAboutFragment4.b3() : null, P3()) || !FragmentKt.d(this) || (ytbVideoAboutFragment = this.aboutFragment) == null || !FragmentKt.d(ytbVideoAboutFragment) || (ytbVideoAboutFragment2 = this.aboutFragment) == null || (dialog = ytbVideoAboutFragment2.getDialog()) == null || !dialog.isShowing() || (ytbVideoAboutFragment3 = this.aboutFragment) == null) {
            return;
        }
        ytbVideoAboutFragment3.dismiss();
    }

    @Override
    public void r0() {
        if (I3() != null) {
            com.snaptube.premium.minibar.c.z(com.snaptube.premium.minibar.c.a, getActivity(), 0.0f, false, 6, null);
            t3();
            t4();
            u4();
        }
    }

    public final void r3() {
        YtbPlaylistTabFragment ytbPlaylistTabFragmentZ3 = z3();
        if (ytbPlaylistTabFragmentZ3 != null) {
            ytbPlaylistTabFragmentZ3.r4();
        }
        Fragment fragment = this.videoDetailFragment;
        YtbVideoDetailTabFragment ytbVideoDetailTabFragment = fragment instanceof YtbVideoDetailTabFragment ? (YtbVideoDetailTabFragment) fragment : null;
        if (ytbVideoDetailTabFragment != null) {
            ytbVideoDetailTabFragment.n4();
        }
    }

    public final void r4() {
        this.handler.removeMessages(1000);
        this.handler.sendEmptyMessageDelayed(1000, AdaptiveTrackSelection.DEFAULT_MIN_TIME_BETWEEN_BUFFER_REEVALUTATION_MS);
    }

    @Override
    public Card s() {
        sm1 sm1VarK0;
        Card cardS;
        Fragment fragment = this.videoDetailFragment;
        if (fragment != null) {
            if (!(fragment instanceof YtbVideoDetailsFragment)) {
                fragment = null;
            }
            YtbVideoDetailsFragment ytbVideoDetailsFragment = (YtbVideoDetailsFragment) fragment;
            if (ytbVideoDetailsFragment != null && (sm1VarK0 = ytbVideoDetailsFragment.k0()) != null && (cardS = sm1VarK0.s()) != null) {
                return cardS;
            }
        }
        sm1 sm1Var = this.detailDataProvider;
        if (sm1Var != null) {
            return sm1Var.s();
        }
        return null;
    }

    @Override
    public void s1() {
        u3();
    }

    public final void s3(StartDownloadEvent downloadEvent) {
        VideoFrameFlyInAnimator videoFrameFlyInAnimator = this.videoFrameFlyInAnimator;
        if (videoFrameFlyInAnimator != null) {
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            BasePlayerView basePlayerViewN0 = videoPlaybackController != null ? videoPlaybackController.N0() : null;
            VideoPlaybackController videoPlaybackController2 = this.playbackControl;
            videoFrameFlyInAnimator.m(basePlayerViewN0, videoPlaybackController2 != null ? videoPlaybackController2.I0() : null, G3(), downloadEvent);
        }
    }

    public final void s4() {
        AdsPos adsPos = AdsPos.NATIVE_YOUTUBE_DETAILS_BANNER;
        if (od.c(adsPos.pos())) {
            com.snaptube.premium.ads.a.d dVarZ = PhoenixApplication.C().y().Z(adsPos.pos());
            or3.e(dVarZ, "getFeedStreamAdConfig(...)");
            Integer numValueOf = Integer.valueOf(dVarZ.e);
            if (numValueOf.intValue() <= 0) {
                numValueOf = null;
            }
            if (numValueOf != null) {
                int iIntValue = numValueOf.intValue();
                for (int i = 0; i < iIntValue; i++) {
                    gb gbVar = this.adRepositoryService;
                    if (gbVar != null) {
                        jb.a aVar = jb.e;
                        String strSubPos = AdsPos.NATIVE_YOUTUBE_DETAILS_BANNER.subPos(String.valueOf(i));
                        or3.e(strSubPos, "subPos(...)");
                        gbVar.c(aVar.a(strSubPos).f("ad_request_scene", "playback"));
                    }
                }
            }
        }
    }

    public final void u3() {
        try {
            if (this.videoUrl == null) {
                b88.i(getContext(), "videoUrl empty");
                return;
            }
            pn0.a aVarC = new pn0.a().c(new pn0.c(null, 1, null).m(N3()).n(getIntent().getStringExtra("query")).o(getIntent().getStringExtra("query_from")));
            pn0.b bVarE = new pn0.b().e(F3());
            VideoDetailInfo videoDetailInfo = this.video;
            pn0.a aVarB = aVarC.b(bVarE.f(videoDetailInfo != null ? videoDetailInfo.y : -1L).a());
            String str = this.videoUrl;
            or3.c(str);
            aVarB.f(wu0.b(str), true, getContext());
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            if (videoPlaybackController != null) {
                videoPlaybackController.K1();
            }
        } catch (Throwable th) {
            ProductionEnv.throwExceptForDebugging(th);
        }
    }

    @Override
    public void v2() {
        tt3 tt3Var;
        if (DeviceOrientationHelper.i(getContext())) {
            tt3 tt3Var2 = this.resetOrientationJob;
            if (tt3Var2 != null && tt3Var2.isActive() && (tt3Var = this.resetOrientationJob) != null) {
                tt3.a.a(tt3Var, null, 1, null);
            }
            x24 viewLifecycleOwner = getViewLifecycleOwner();
            or3.e(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            this.resetOrientationJob = y24.a(viewLifecycleOwner).e(new VideoPlaybackFragment$resetOrientation$1(this, null));
        }
    }

    public final boolean v3() {
        return !this.waitingLayoutPortrait && (this.chooseFormatFragment == null || !pn0.e(getChildFragmentManager()));
    }

    public final void v4() {
        Window window;
        Float f2 = this.currentBrightness;
        if (f2 != null) {
            float fFloatValue = f2.floatValue();
            FragmentActivity activity = getActivity();
            if (activity == null || (window = activity.getWindow()) == null) {
                return;
            }
            or3.c(window);
            WindowManager.LayoutParams attributes = window.getAttributes();
            or3.e(attributes, "getAttributes(...)");
            attributes.screenBrightness = fFloatValue;
            window.setAttributes(attributes);
        }
    }

    public final void w3() {
        com.snaptube.premium.minibar.c.a.i(getActivity());
        FragmentActivity activity = getActivity();
        if (activity != null && activity.isTaskRoot()) {
            NavigationManager.f(getContext());
        }
        rm5 rm5Var = this.pipPlayHelper;
        if ((rm5Var == null || !rm5Var.f(this.videoAspectRatioWidth, this.videoAspectRatioHeight)) && !(getActivity() instanceof ExploreActivity)) {
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                activity2.finish();
                return;
            }
            return;
        }
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.k2(VideoPlaybackController.BackPlayMode.IN_WINDOW);
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.n2(true);
        }
    }

    public final void w4(String key, Object value) {
        Intent intent = getIntent();
        if (value instanceof String) {
            intent.putExtra(key, (String) value);
        } else {
            if (!(value instanceof Integer)) {
                throw new IllegalArgumentException("Value type not supported! Please add else branch first!");
            }
            intent.putExtra(key, ((Number) value).intValue());
        }
        y4(intent);
    }

    @Override
    public void x2(int width, int height) {
        if (this.playbackControl == null) {
            return;
        }
        E3().d.c(width, height);
    }

    public final void x3() {
        this.resetPlayer = false;
        VideoPlaybackController videoPlaybackController = this.playbackControl;
        if (videoPlaybackController != null) {
            videoPlaybackController.k2(VideoPlaybackController.BackPlayMode.IN_WINDOW);
        }
        VideoPlaybackController videoPlaybackController2 = this.playbackControl;
        if (videoPlaybackController2 != null) {
            videoPlaybackController2.l2(false);
        }
        VideoPlaybackController videoPlaybackController3 = this.playbackControl;
        if (videoPlaybackController3 != null) {
            videoPlaybackController3.r2(false);
        }
        f4(true);
        VideoPlaybackController videoPlaybackController4 = this.playbackControl;
        if (videoPlaybackController4 != null) {
            videoPlaybackController4.M1();
        }
        A3();
    }

    public final void x4() {
        ViewGroup.LayoutParams layoutParams = E3().j.getLayoutParams();
        or3.d(layoutParams, "null cannot be cast to non-null type androidx.coordinatorlayout.widget.CoordinatorLayout.LayoutParams");
        AppBarLayout.Behavior behavior = (AppBarLayout.Behavior) ((CoordinatorLayout.e) layoutParams).f();
        if (behavior == null || behavior.F() == 0) {
            return;
        }
        behavior.H(0);
    }

    @Override
    public FABBatchDownload getMDownloadView() {
        try {
            return E3().c;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void y3() {
        VideoTracker.j();
        if (WindowPlayUtils.e()) {
            x3();
        } else if (WindowPlayUtils.h() && WindowPlayUtils.d()) {
            w3();
        }
    }

    public final mg8 y4(Intent intent) {
        Bundle arguments = getArguments();
        if (arguments == null) {
            return null;
        }
        arguments.putParcelable("intent", intent);
        return mg8.a;
    }

    public final YtbPlaylistTabFragment z3() {
        return (YtbPlaylistTabFragment) getChildFragmentManager().findFragmentByTag("playlist");
    }

    public final void z4() {
        if (py6.f(requireContext()) == 2) {
            VideoPlaybackController videoPlaybackController = this.playbackControl;
            if (videoPlaybackController != null) {
                videoPlaybackController.l2(true);
            }
            D0(false);
        }
    }
}
