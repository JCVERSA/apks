package com.transsion.videodetail.music.ui;

import android.app.Application;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.v0;
import androidx.p009lifecycle.x0;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.tn.lib.widget.R$color;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.music.MusicLikedDbBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.bean.GameInfoType;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetail.R$string;
import com.transsion.moviedetail.fragment.ResourceDetectorEmptyFragment;
import com.transsion.moviedetail.fragment.RestrictTipsDialog;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectGameInfo;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.push.PushConstants;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videodetail.R$id;
import com.transsion.videodetail.R$layout;
import com.transsion.videodetail.VideoDetailViewModel;
import com.transsion.videodetail.VideoEpisodeFragment;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import com.transsion.videodetail.music.bean.MusicLikedMultiItemEntity;
import com.transsion.videodetail.music.bean.MusicLoopEnum;
import com.transsion.videodetail.music.bean.MusicStateEnum;
import com.transsion.videodetail.music.data.MusicLikedFragmentViewModel;
import com.transsion.videodetail.music.widget.MusicDetailListOperateView;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000¤\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b%\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0002ñ\u0001\u0018\u0000 \u0087\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002\u0090\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\r\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\n\u001a\u00020\t2\b\b\u0002\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u0019\u0010\u0016\u001a\u00020\f2\b\b\u0002\u0010\u0015\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0018\u0010\u0006J\u0019\u0010\u0019\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0019\u0010\u0012J\u0019\u0010\u001b\u001a\u00020\f2\b\u0010\u001a\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001c\u0010\u0006J\u000f\u0010\u001d\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001d\u0010\u0006J\u000f\u0010\u001e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u0017\u0010\u001f\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u001f\u0010\u0012J\u0017\u0010 \u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0002¢\u0006\u0004\b \u0010\u0012J\u0017\u0010#\u001a\u00020\f2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u001d\u0010'\u001a\b\u0012\u0004\u0012\u00020&0%2\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b'\u0010(J\u0019\u0010)\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b)\u0010*J\u0017\u0010-\u001a\u00020\f2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b-\u0010.J\u001d\u0010/\u001a\b\u0012\u0004\u0012\u00020&0%2\u0006\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\fH\u0002¢\u0006\u0004\b1\u0010\u0006J\u0019\u00104\u001a\u00020\f2\b\b\u0002\u00103\u001a\u000202H\u0002¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\fH\u0002¢\u0006\u0004\b6\u0010\u0006J\u000f\u00107\u001a\u00020\fH\u0002¢\u0006\u0004\b7\u0010\u0006J\u000f\u00108\u001a\u00020\fH\u0002¢\u0006\u0004\b8\u0010\u0006J\u0019\u00109\u001a\u00020\f2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b9\u0010*J\u000f\u0010:\u001a\u00020\fH\u0002¢\u0006\u0004\b:\u0010\u0006J\u000f\u0010;\u001a\u00020\fH\u0002¢\u0006\u0004\b;\u0010\u0006J\u000f\u0010<\u001a\u00020\fH\u0002¢\u0006\u0004\b<\u0010\u0006J\u000f\u0010=\u001a\u00020\fH\u0002¢\u0006\u0004\b=\u0010\u0006J\u0017\u0010>\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b>\u0010\u0012J)\u0010D\u001a\u0004\u0018\u00010B2\b\u0010@\u001a\u0004\u0018\u00010?2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020B0AH\u0002¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\fH\u0002¢\u0006\u0004\bF\u0010\u0006J\u0019\u0010I\u001a\u00020\f2\b\u0010H\u001a\u0004\u0018\u00010GH\u0002¢\u0006\u0004\bI\u0010JJ%\u0010M\u001a\b\u0012\u0004\u0012\u00020&0%2\u000e\u0010L\u001a\n\u0012\u0004\u0012\u00020K\u0018\u00010AH\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010Q\u001a\u00020P2\u0006\u0010O\u001a\u00020KH\u0002¢\u0006\u0004\bQ\u0010RJ\u000f\u0010S\u001a\u00020\fH\u0002¢\u0006\u0004\bS\u0010\u0006J\u000f\u0010T\u001a\u00020\fH\u0002¢\u0006\u0004\bT\u0010\u0006J\u000f\u0010U\u001a\u00020\fH\u0002¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010V\u001a\u00020\fH\u0002¢\u0006\u0004\bV\u0010\u0006J\u000f\u0010W\u001a\u00020\tH\u0002¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\fH\u0002¢\u0006\u0004\bY\u0010\u0006J\u0017\u0010[\u001a\u00020\f2\u0006\u0010Z\u001a\u00020\tH\u0002¢\u0006\u0004\b[\u0010\u0017J\u0017\u0010]\u001a\u00020\f2\u0006\u0010\\\u001a\u00020\tH\u0003¢\u0006\u0004\b]\u0010\u0017J\u000f\u0010^\u001a\u00020\fH\u0003¢\u0006\u0004\b^\u0010\u0006J\u000f\u0010_\u001a\u00020\fH\u0003¢\u0006\u0004\b_\u0010\u0006J\u000f\u0010`\u001a\u00020\fH\u0003¢\u0006\u0004\b`\u0010\u0006J\u0017\u0010c\u001a\u00020\f2\u0006\u0010b\u001a\u00020aH\u0003¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\fH\u0003¢\u0006\u0004\be\u0010\u0006J\u0019\u0010h\u001a\u00020\f2\b\u0010g\u001a\u0004\u0018\u00010fH\u0003¢\u0006\u0004\bh\u0010iJ\u0019\u0010k\u001a\u00020\f2\b\u0010j\u001a\u0004\u0018\u00010BH\u0003¢\u0006\u0004\bk\u0010lJ\u000f\u0010m\u001a\u00020\fH\u0003¢\u0006\u0004\bm\u0010\u0006J\u000f\u0010n\u001a\u00020\fH\u0002¢\u0006\u0004\bn\u0010\u0006J\u0019\u0010q\u001a\u00020\f2\b\u0010p\u001a\u0004\u0018\u00010oH\u0016¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\fH\u0016¢\u0006\u0004\bs\u0010\u0006J\u000f\u0010t\u001a\u00020\fH\u0016¢\u0006\u0004\bt\u0010\u0006J\u000f\u0010u\u001a\u00020\fH\u0016¢\u0006\u0004\bu\u0010\u0006J\u000f\u0010v\u001a\u00020\fH\u0016¢\u0006\u0004\bv\u0010\u0006J\u000f\u0010w\u001a\u00020\fH\u0016¢\u0006\u0004\bw\u0010\u0006J\u0017\u0010z\u001a\u00020\u00022\u0006\u0010y\u001a\u00020xH\u0016¢\u0006\u0004\bz\u0010{J\u000f\u0010|\u001a\u00020\fH\u0016¢\u0006\u0004\b|\u0010\u0006J\u000f\u0010}\u001a\u00020\fH\u0016¢\u0006\u0004\b}\u0010\u0006J\u000f\u0010~\u001a\u00020\fH\u0016¢\u0006\u0004\b~\u0010\u0006J\u000f\u0010\u007f\u001a\u00020\fH\u0016¢\u0006\u0004\b\u007f\u0010\u0006J\u0011\u0010\u0080\u0001\u001a\u00020\fH\u0016¢\u0006\u0005\b\u0080\u0001\u0010\u0006J\u0013\u0010\u0082\u0001\u001a\u00030\u0081\u0001H\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u0084\u0001\u0010XJ\u0012\u0010\u0085\u0001\u001a\u00020\u0007H\u0016¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u0015\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0087\u0001H\u0016¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J\u001a\u0010\u008b\u0001\u001a\u00020\f2\u0007\u0010\u008a\u0001\u001a\u00020\tH\u0016¢\u0006\u0005\b\u008b\u0001\u0010\u0017J$\u0010\u008e\u0001\u001a\u00020\f2\u0010\u0010\u008d\u0001\u001a\u000b\u0012\u0004\u0012\u00020\t\u0018\u00010\u008c\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001c\u0010\u0093\u0001\u001a\u00020\u00078\u0006¢\u0006\u0010\n\u0006\b\u0090\u0001\u0010\u0091\u0001\u001a\u0006\b\u0092\u0001\u0010\u0086\u0001R\u001c\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0094\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001a\u0010\u001a\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u009d\u0001R!\u0010£\u0001\u001a\u00030\u009e\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001R!\u0010¨\u0001\u001a\u00030¤\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0001\u0010 \u0001\u001a\u0006\b¦\u0001\u0010§\u0001R!\u0010\u00ad\u0001\u001a\u00030©\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bª\u0001\u0010 \u0001\u001a\u0006\b«\u0001\u0010¬\u0001R!\u0010²\u0001\u001a\u00030®\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¯\u0001\u0010 \u0001\u001a\u0006\b°\u0001\u0010±\u0001R\u001b\u0010´\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010\u0091\u0001R\u001b\u0010¶\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u0091\u0001R\u0019\u0010¹\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u001b\u0010»\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010\u0091\u0001R\u0019\u0010½\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010¸\u0001R\u0019\u0010¿\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¸\u0001R\u001b\u0010Á\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010\u0091\u0001R(\u0010Ç\u0001\u001a\u0002028\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\bÂ\u0001\u0010Ã\u0001\u001a\u0006\bÄ\u0001\u0010Å\u0001\"\u0005\bÆ\u0001\u00105R\u0019\u0010É\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010Ã\u0001R\u0019\u0010Ë\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ã\u0001R\u0019\u0010Í\u0001\u001a\u0002028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0001\u0010Ã\u0001R\u001b\u0010Ï\u0001\u001a\u0004\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010\u0091\u0001R\u0019\u0010Ñ\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010¸\u0001R\u0019\u0010Ó\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010¸\u0001R\u001c\u0010×\u0001\u001a\u0005\u0018\u00010Ô\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R#\u0010Ü\u0001\u001a\u0005\u0018\u00010Ø\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÙ\u0001\u0010 \u0001\u001a\u0006\bÚ\u0001\u0010Û\u0001R#\u0010á\u0001\u001a\u0005\u0018\u00010Ý\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÞ\u0001\u0010 \u0001\u001a\u0006\bß\u0001\u0010à\u0001R\u001a\u0010å\u0001\u001a\u00030â\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0001\u0010ä\u0001R\u001a\u0010@\u001a\u0004\u0018\u00010?8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0001\u0010ç\u0001R\u0019\u0010é\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010¸\u0001R\u0019\u0010ë\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010¸\u0001R\u001a\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0001\u0010í\u0001R\"\u0010ð\u0001\u001a\u000b\u0012\u0004\u0012\u00020\t\u0018\u00010\u008c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u0018\u0010ô\u0001\u001a\u00030ñ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bò\u0001\u0010ó\u0001R\u001a\u0010g\u001a\u0004\u0018\u00010f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bõ\u0001\u0010ö\u0001R\u001c\u0010ú\u0001\u001a\u0005\u0018\u00010÷\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010ù\u0001R\u0019\u0010û\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010¸\u0001R#\u0010þ\u0001\u001a\u0005\u0018\u00010\u0087\u00018\u0002@\u0002X\u0083\u000e¢\u0006\u000f\n\u0006\bä\u0001\u0010ü\u0001\u0012\u0005\bý\u0001\u0010\u0006R \u0010\u0081\u0002\u001a\u00020\t8\u0002@\u0002X\u0083\u000e¢\u0006\u000f\n\u0006\bÿ\u0001\u0010¸\u0001\u0012\u0005\b\u0080\u0002\u0010\u0006R'\u0010\u0086\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010f0\u0082\u00028\u0002X\u0083\u0004¢\u0006\u000f\n\u0006\b\u0083\u0002\u0010\u0084\u0002\u0012\u0005\b\u0085\u0002\u0010\u0006¨\u0006\u0088\u0002"}, d2 = {"Lcom/transsion/videodetail/music/ui/MusicDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lxv/f;", "Lcom/transsion/baselib/report/k$a;", "Len/a;", "<init>", "()V", "", "subjectId", "", "isAudioTracksChange", "from", "", "R1", "(Ljava/lang/String;ZLjava/lang/String;)V", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "H2", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "subject", "p2", "isNoNetwork", "B2", "(Z)V", "x2", "t2", "mMovieDetailBean", "A2", "A1", "m2", "z2", "u2", "h2", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "i2", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "", "Lln/c;", "v1", "(Lcom/transsion/moviedetailapi/bean/Trailer;)Ljava/util/List;", "c2", "(Ljava/lang/String;)V", "Lcom/transsion/baselib/db/download/DownloadBean;", "downloadBean", "f2", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "u1", "(Lcom/transsion/baselib/db/download/DownloadBean;)Ljava/util/List;", "G2", "", "visible", "E2", "(I)V", "D2", "H1", "a2", "e2", "y1", "C1", "e1", "f1", "K1", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", ShortTVHistoryView.TYPE_HISTORY, "", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "episodeMediaList", "q1", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/util/List;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "d1", "Lln/a;", "bean", "Z1", "(Lln/a;)V", "Lcom/transsion/videodetail/bean/VideoDetailStream;", "videoDetailStream", "w1", "(Ljava/util/List;)Ljava/util/List;", "stream", "Lcom/transsion/player/enum/PlayMimeType;", "o1", "(Lcom/transsion/videodetail/bean/VideoDetailStream;)Lcom/transsion/player/enum/PlayMimeType;", "showLoading", "g1", "w2", "h1", "a1", "()Z", "b1", "proactive", "r2", PushConstants.PUSH_SERVICE_TYPE_SHOW, "X1", "E1", "J1", "s2", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "uiType", "Y1", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "x1", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "videoDetailStreamList", "g2", "(Lcom/transsion/videodetail/bean/VideoDetailStreamList;)V", "episodeMedia", "j1", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "c1", "l2", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "onResume", "onPause", "onStop", "onDestroy", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "t1", "(Landroid/view/LayoutInflater;)Lxv/f;", "initViewData", "initViewModel", "initListener", "loadDefaultData", "retryLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "isAudioShowNoNetworkLayout", "getPageStateLayoutTitle", "()Ljava/lang/String;", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "isBackground", "onBackgroundStatusChange", "Lkotlin/Function0;", "callback", "S", "(Lkotlin/jvm/functions/Function0;)V", "a", "Ljava/lang/String;", "getFragmentId", "fragmentId", "Lkn/a;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkn/a;", "playerControl", "Lzm/e;", "c", "Lzm/e;", "bottomRecHelper", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/moviedetailapi/bean/Subject;", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "e", "Lkotlin/Lazy;", "p1", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/videodetail/VideoDetailViewModel;", "f", "s1", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "g", "m1", "()Lcom/transsion/videodetail/music/data/MusicLikedFragmentViewModel;", "mViewModel", "Lui/c;", "h", "k1", "()Lui/c;", "downloadDao", "i", "mSubjectId", "j", "ops", CampaignEx.JSON_KEY_AD_K, "Z", "netResultSuccess", "l", "moduleName", "m", "autoDownload", "n", "autoPlay", "o", "autoPlayResourceId", TtmlNode.TAG_P, "I", "getPreloadId", "()I", "setPreloadId", "preloadId", CampaignEx.JSON_KEY_AD_Q, "curSeason", CampaignEx.JSON_KEY_AD_R, "targetSeason", "s", "targetEp", "t", "lastPageFrom", TmcStartParams.KEY_URL_SHORT, "isFloatShow", "v", "hasClickedActivityTip", "Lkk/a;", "w", "Lkk/a;", "palmPayApi", "Lim/b;", "x", "n1", "()Lim/b;", "memberProvider", "Ljo/a;", "y", "r1", "()Ljo/a;", "publishedApi", "", "z", "J", "curAudioTrackPlayProgress", "A", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "B", "isMusicLikedFragment", "C", "isMusicFloatViewClick", "D", "Lcom/transsion/baselib/db/download/DownloadBean;", "E", "Lkotlin/jvm/functions/Function0;", "backPressedCallback", "com/transsion/videodetail/music/ui/MusicDetailFragment$e", "F", "Lcom/transsion/videodetail/music/ui/MusicDetailFragment$e;", "networkStatusChangedListener", "G", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "Lxv/j;", "H", "Lxv/j;", "loadingViewBinding", "showNetErr", "Landroid/view/View;", "getGameResView$annotations", "gameResView", "K", "isGameResInit$annotations", "isGameResInit", "Landroidx/lifecycle/c0;", "L", "Landroidx/lifecycle/c0;", "getPlayInfoObserver$annotations", "playInfoObserver", "M", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class MusicDetailFragment extends PageStatusFragment<xv.f> implements com.transsion.baselib.report.k.a, en.a {

    public static final Companion INSTANCE = new Companion(null);

    private VideoDetailPlayBean history;

    private boolean isMusicLikedFragment;

    private boolean isMusicFloatViewClick;

    private DownloadBean downloadBean;

    private Function0 backPressedCallback;

    private final e networkStatusChangedListener;

    private VideoDetailStreamList videoDetailStreamList;

    private xv.j loadingViewBinding;

    private boolean showNetErr;

    private View gameResView;

    private boolean isGameResInit;

    private final androidx.p009lifecycle.c0 playInfoObserver;

    private final String fragmentId;

    private kn.a playerControl;

    private zm.e bottomRecHelper;

    private Subject mMovieDetailBean;

    private final Lazy movieDetailViewModel;

    private final Lazy videoDetailViewModel;

    private final Lazy mViewModel;

    private final Lazy downloadDao;

    private String mSubjectId;

    private String ops;

    private boolean netResultSuccess;

    private String moduleName;

    private boolean autoDownload;

    private boolean autoPlay;

    private String autoPlayResourceId;

    private int preloadId;

    private int curSeason;

    private int targetSeason;

    private int targetEp;

    private String lastPageFrom;

    private boolean isFloatShow;

    private boolean hasClickedActivityTip;

    private kk.a palmPayApi;

    private final Lazy memberProvider;

    private final Lazy publishedApi;

    private long curAudioTrackPlayProgress;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MusicDetailFragment a() {
            return new MusicDetailFragment();
        }

        private Companion() {
        }
    }

    public class b {

        public static final int[] f55595a;

        static {
            int[] iArr = new int[MusicLoopEnum.values().length];
            try {
                iArr[MusicLoopEnum.NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicLoopEnum.LIST_LOOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicLoopEnum.SINGLE_LOOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55595a = iArr;
        }
    }

    public static final class c implements ViewTreeObserver.OnGlobalLayoutListener {
        c() {
        }

        @Override
        public void onGlobalLayout() {
            BubbleTextView bubbleTextView;
            ViewTreeObserver viewTreeObserver;
            xv.f mViewBinding = MusicDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (bubbleTextView = mViewBinding.f75891b) != null && (viewTreeObserver = bubbleTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            xv.f mViewBinding2 = MusicDetailFragment.this.getMViewBinding();
            BubbleTextView bubbleTextView2 = mViewBinding2 != null ? mViewBinding2.f75891b : null;
            if (bubbleTextView2 == null || bubbleTextView2.getMeasuredWidth() == 0) {
                return;
            }
            float measuredWidth = (bubbleTextView2.getMeasuredWidth() / 2) - (com.blankj.utilcode.util.a0.a(16.0f) / 2);
            bubbleTextView2.setArrowPosition(measuredWidth);
            wf.a.C0922a.f(wf.a.f74274a, "MusicDetailFragment", "activity tip width: " + bubbleTextView2.getMeasuredWidth() + ", arrowPosition: " + measuredWidth, false, 4, null);
        }
    }

    public static final class d extends androidx.activity.u {
        d() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            Function0 function0 = MusicDetailFragment.this.backPressedCallback;
            if (function0 == null || !((Boolean) function0.invoke()).booleanValue()) {
                if (MusicDetailFragment.this.playerControl != null) {
                    kn.a aVar = MusicDetailFragment.this.playerControl;
                    if (aVar != null) {
                        aVar.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = MusicDetailFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    public static final class e implements yg.m {
        e() {
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
            MusicDetailFragment.this.h1();
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) MusicDetailFragment.this.s1().x().f();
            if (videoDetailMediaSource != null) {
                MusicDetailFragment musicDetailFragment = MusicDetailFragment.this;
                VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) musicDetailFragment.s1().w().f();
                if (videoDetailStreamList != null && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe() && videoDetailMediaSource.getEp() == videoDetailStreamList.getEp()) {
                    return;
                }
                musicDetailFragment.j1(videoDetailMediaSource);
            }
        }
    }

    static final class f implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55599a;

        f(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55599a = function;
        }

        @Override
        public final Function a() {
            return this.f55599a;
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
            this.f55599a.invoke(obj);
        }
    }

    public static final class g implements kn.a.b {
        g() {
        }

        @Override
        public void a() {
            MusicDetailFragment.this.d1();
        }

        @Override
        public boolean b() {
            if (MusicDetailFragment.this.showNetErr && yg.l.f76264a.e()) {
                MusicDetailFragment musicDetailFragment = MusicDetailFragment.this;
                musicDetailFragment.j1((VideoDetailMediaSource) musicDetailFragment.s1().x().f());
            }
            return MusicDetailFragment.this.showNetErr;
        }

        @Override
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return false;
        }

        @Override
        public void d(LongVodUiType uiType) {
            MusicDetailListOperateView musicDetailListOperateView;
            Intrinsics.h(uiType, "uiType");
            MusicDetailFragment.this.Y1(uiType);
            xv.f mViewBinding = MusicDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (musicDetailListOperateView = mViewBinding.f75904o) != null) {
                musicDetailListOperateView.setState(MusicStateEnum.CLOSE);
            }
            zm.e eVar = MusicDetailFragment.this.bottomRecHelper;
            if (eVar != null) {
                eVar.x(uiType != LongVodUiType.MIDDLE);
            }
        }

        @Override
        public View e() {
            return MusicDetailFragment.this.gameResView;
        }

        @Override
        public void f(boolean z10) {
            AppCompatImageView appCompatImageView;
            xv.f mViewBinding = MusicDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f75900k) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override
        public void g(ln.a aVar) {
            MusicDetailFragment.this.Z1(aVar);
        }

        @Override
        public void onCompletion() {
            MusicDetailFragment.this.d1();
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.videodetail.music.ui.MusicDetailFragment$retryLoadData$1", f = "MusicDetailFragment.kt", l = {437}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return MusicDetailFragment.this.new AnonymousClass1(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.u0.a(1000L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            MusicDetailFragment musicDetailFragment = MusicDetailFragment.this;
            musicDetailFragment.R1(musicDetailFragment.mSubjectId, true, "retryLoadData()");
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    public MusicDetailFragment() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.fragmentId = string;
        this.movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<x0>() {
            {
                super(0);
            }

            @Override
            public final x0 invoke() {
                x0 viewModelStore = this.requireActivity().getViewModelStore();
                Intrinsics.g(viewModelStore, "requireActivity().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<v0.c>() {
            {
                super(0);
            }

            @Override
            public final v0.c invoke() {
                v0.c defaultViewModelProviderFactory = this.requireActivity().getDefaultViewModelProviderFactory();
                Intrinsics.g(defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        });
        this.mViewModel = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MusicDetailFragment.U1();
            }
        });
        this.downloadDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MusicDetailFragment.i1();
            }
        });
        this.curSeason = 1;
        this.palmPayApi = (kk.a) TheRouter.d(kk.a.class, new Object[0]);
        this.memberProvider = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MusicDetailFragment.V1();
            }
        });
        this.publishedApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return MusicDetailFragment.j2();
            }
        });
        this.networkStatusChangedListener = new e();
        this.playInfoObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                MusicDetailFragment.d2(this.f55672a, (VideoDetailStreamList) obj);
            }
        };
    }

    private final void A1() {
        Subject subject = this.mMovieDetailBean;
        xv.f mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f75903n : null;
        xv.f mViewBinding2 = getMViewBinding();
        this.bottomRecHelper = new zm.e(this, subject, magicIndicator, mViewBinding2 != null ? mViewBinding2.f75905p : null, "music_stream_detail", false, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.B1(this.f55662a, ((Integer) obj).intValue());
            }
        }, 96, null);
    }

    private final void A2(Subject mMovieDetailBean) {
    }

    public static final Unit B1(MusicDetailFragment musicDetailFragment, int i10) {
        DownloadView downloadView;
        GradientTextView gradientTextView;
        DownloadView downloadView2;
        DownloadView downloadView3;
        xv.f mViewBinding = musicDetailFragment.getMViewBinding();
        if (mViewBinding == null || (downloadView2 = mViewBinding.f75893d) == null || downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 1) {
            xv.f mViewBinding2 = musicDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (downloadView = mViewBinding2.f75893d) != null) {
                downloadView.setVisibility(i10 != 1 ? 0 : 8);
            }
        } else {
            xv.f mViewBinding3 = musicDetailFragment.getMViewBinding();
            if (mViewBinding3 != null && (downloadView3 = mViewBinding3.f75893d) != null) {
                uf.c.g(downloadView3);
            }
        }
        xv.f mViewBinding4 = musicDetailFragment.getMViewBinding();
        if (mViewBinding4 != null && (gradientTextView = mViewBinding4.f75910u) != null) {
            gradientTextView.setVisibility(i10 == 1 ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void B2(boolean isNoNetwork) {
        new zm.g(this, R$id.subjectDetailLayout, this.mMovieDetailBean, "music_stream_detail", this.moduleName, false, false, 96, null);
    }

    private final void C1() {
        DownloadView downloadView;
        DownloadView downloadView2;
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView2 = mViewBinding.f75893d) != null) {
            DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.transsion.core.utils.e.g(16.0f)), null, 5, null);
        }
        xv.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (downloadView = mViewBinding2.f75893d) == null) {
            return;
        }
        downloadView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MusicDetailFragment.D1(this.f55626a, view);
            }
        });
    }

    static void C2(MusicDetailFragment musicDetailFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        musicDetailFragment.B2(z10);
    }

    public static final void D1(MusicDetailFragment musicDetailFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = musicDetailFragment.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = musicDetailFragment.mMovieDetailBean;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = musicDetailFragment.mMovieDetailBean) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        musicDetailFragment.e1();
        musicDetailFragment.f1();
    }

    private final void D2() {
        BubbleTextView bubbleTextView;
        xv.f mViewBinding;
        DownloadView downloadView;
        xv.f mViewBinding2;
        DownloadView downloadView2;
        BubbleTextView bubbleTextView2;
        if (!a1() || (mViewBinding = getMViewBinding()) == null || (downloadView = mViewBinding.f75893d) == null || downloadView.getVisibility() != 0 || (mViewBinding2 = getMViewBinding()) == null || (downloadView2 = mViewBinding2.f75893d) == null || downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 0) {
            xv.f mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f75891b) == null) {
                return;
            }
            uf.c.g(bubbleTextView);
            return;
        }
        xv.f mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (bubbleTextView2 = mViewBinding4.f75891b) != null) {
            uf.c.k(bubbleTextView2);
        }
        b1();
    }

    private final void E1() {
        String genre;
        wj.b bVar;
        SubjectGameInfo gameInfo;
        SubjectGameInfo gameInfo2;
        SubjectGameInfo gameInfo3;
        SubjectGameInfo gameInfo4;
        this.isGameResInit = true;
        Subject subject = this.mMovieDetailBean;
        String itemId = null;
        String type = (subject == null || (gameInfo4 = subject.getGameInfo()) == null) ? null : gameInfo4.getType();
        if (type != null && type.length() != 0) {
            Subject subject2 = this.mMovieDetailBean;
            String itemId2 = (subject2 == null || (gameInfo3 = subject2.getGameInfo()) == null) ? null : gameInfo3.getItemId();
            if (itemId2 != null && itemId2.length() != 0) {
                wf.a.C0922a.f(wf.a.f74274a, "GameResLoader", "stream detail game initGameRes", false, 4, null);
                Context context = getContext();
                if (context == null || (bVar = (wj.b) TheRouter.d(wj.b.class, new Object[0])) == null) {
                    return;
                }
                Subject subject3 = this.mMovieDetailBean;
                GameInfoType gameInfoType = (subject3 == null || (gameInfo2 = subject3.getGameInfo()) == null) ? null : gameInfo2.getGameInfoType();
                Intrinsics.e(gameInfoType);
                Subject subject4 = this.mMovieDetailBean;
                if (subject4 != null && (gameInfo = subject4.getGameInfo()) != null) {
                    itemId = gameInfo.getItemId();
                }
                String str = itemId;
                Intrinsics.e(str);
                bVar.a(context, "music_stream_detail", gameInfoType, str, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return MusicDetailFragment.F1(this.f55652a, (View) obj);
                    }
                });
                return;
            }
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 == null || (genre = subject5.getGenre()) == null) {
            return;
        }
        String lowerCase = genre.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null || !StringsKt.c0(lowerCase, "game", false, 2, null)) {
            return;
        }
        wf.a.C0922a.l(wf.a.f74274a, "GameResLoader", "stream detail,  game is null", false, 4, null);
    }

    private final void E2(int visible) {
        String str;
        HashMap mapG;
        DownloadView downloadView;
        DownloadView downloadView2;
        DownloadView downloadView3;
        ResourceDetectors resourceDetector;
        DownloadView downloadView4;
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView4 = mViewBinding.f75893d) != null) {
            downloadView4.setVisibility(visible);
        }
        Subject subject = this.mMovieDetailBean;
        boolean z10 = false;
        String str2 = "";
        if (subject != null && (resourceDetector = subject.getResourceDetector()) != null) {
            String resourceId = resourceDetector.getResourceId();
            str2 = resourceId != null ? resourceId : "";
            if (resourceDetector.isMultiResolution()) {
                z10 = true;
            }
        }
        boolean z11 = z10;
        String str3 = str2;
        xv.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (downloadView3 = mViewBinding2.f75893d) != null) {
            String str4 = this.mSubjectId;
            Subject subject2 = this.mMovieDetailBean;
            DownloadView.setShowType$default(downloadView3, str4, str3, subject2 != null ? Boolean.valueOf(subject2.isSeries()) : null, z11, 0, 16, null);
        }
        xv.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (downloadView = mViewBinding3.f75893d) == null || downloadView.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 1) {
            str = "download_subject";
        } else {
            xv.f mViewBinding4 = getMViewBinding();
            if (mViewBinding4 != null && (downloadView2 = mViewBinding4.f75893d) != null) {
                downloadView2.setVisibility(8);
            }
            str = "play_subject";
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        D2();
    }

    public static final Unit F1(MusicDetailFragment musicDetailFragment, View view) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        musicDetailFragment.gameResView = view;
        if (view == null) {
            xv.f mViewBinding = musicDetailFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout2 = mViewBinding.f75899j) != null) {
                uf.c.g(frameLayout2);
            }
            xv.f mViewBinding2 = musicDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (frameLayout = mViewBinding2.f75899j) != null) {
                frameLayout.removeAllViews();
            }
        } else {
            musicDetailFragment.s2();
        }
        return Unit.f64096a;
    }

    static void F2(MusicDetailFragment musicDetailFragment, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        musicDetailFragment.E2(i10);
    }

    public static final void G1(MusicDetailFragment musicDetailFragment, View view) {
        FragmentActivity activity = musicDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    private final void G2() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s1().y().f();
        if (resourcesSeasonList == null || this.mMovieDetailBean == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            ResourceDetectorEmptyFragment resourceDetectorEmptyFragment = new ResourceDetectorEmptyFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            resourceDetectorEmptyFragment.setArguments(bundle);
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorEmptyFragment);
            wVarP.j();
            E2(8);
            return;
        }
        FragmentManager childFragmentManager2 = getChildFragmentManager();
        Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
        androidx.fragment.app.w wVarP2 = childFragmentManager2.p();
        Intrinsics.g(wVarP2, "beginTransaction()");
        VideoEpisodeFragment videoEpisodeFragment = new VideoEpisodeFragment();
        Bundle bundle2 = new Bundle();
        bundle2.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
        bundle2.putString("ops", this.ops);
        bundle2.putBoolean("auto_play", this.autoPlay);
        bundle2.putString("auto_play_resource_id", this.autoPlayResourceId);
        bundle2.putString("module_name", this.moduleName);
        bundle2.putInt("season", this.curSeason);
        videoEpisodeFragment.setArguments(bundle2);
        wVarP2.s(R$id.resourceDetectorGroup, videoEpisodeFragment);
        wVarP2.j();
        F2(this, 0, 1, null);
    }

    private final void H1() {
        MusicDetailListOperateView musicDetailListOperateView;
        yv.a.f76396a.c(getClassTag() + " --> initMusicLikedOperate() --> isMusicLikedFragment = " + this.isMusicLikedFragment);
        if (this.isMusicLikedFragment) {
            if (this.isMusicFloatViewClick) {
                m1().F(this.mSubjectId, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return MusicDetailFragment.I1(this.f55632a, ((Boolean) obj).booleanValue());
                    }
                });
                return;
            } else {
                a2();
                yv.b.f76397a.b(true);
                return;
            }
        }
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (musicDetailListOperateView = mViewBinding.f75904o) == null) {
            return;
        }
        musicDetailListOperateView.setVisibility(8);
    }

    private final void H2(Subject movieDetailBean) {
        Subject subject;
        this.mMovieDetailBean = movieDetailBean;
        String ops = movieDetailBean != null ? movieDetailBean.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s1().y().f();
        if (resourcesSeasonList == null || !resourcesSeasonList.isNoSource()) {
            z2();
        } else {
            p2(this.mMovieDetailBean);
        }
        C2(this, false, 1, null);
        if (!this.isGameResInit) {
            E1();
            X1(true);
        }
        t2(this.mMovieDetailBean);
        A2(this.mMovieDetailBean);
        m2();
        A1();
        G2();
    }

    public static final Unit I1(MusicDetailFragment musicDetailFragment, boolean z10) {
        MusicDetailListOperateView musicDetailListOperateView;
        if (z10) {
            musicDetailFragment.a2();
            yv.b.f76397a.b(true);
        } else {
            xv.f mViewBinding = musicDetailFragment.getMViewBinding();
            if (mViewBinding != null && (musicDetailListOperateView = mViewBinding.f75904o) != null) {
                musicDetailListOperateView.setVisibility(8);
            }
        }
        return Unit.f64096a;
    }

    private final void J1() {
        ResourcesSeasonList resourcesSeasonList;
        if (this.mSubjectId == null || (resourcesSeasonList = (ResourcesSeasonList) s1().y().f()) == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            yv.a.f76396a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 没有资源");
            return;
        }
        if (resourcesSeasonList.isSeries()) {
            yv.a.f76396a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 是剧集，获取记录决定哪集");
            List list = (List) s1().s().f();
            if (list == null) {
                return;
            }
            s1().B(q1(this.history, list));
            return;
        }
        if (!resourcesSeasonList.isMovie()) {
            yv.a.f76396a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 是什么呢。。。");
            return;
        }
        yv.a.f76396a.a(getClassTag() + " --> initPlayInfo() --> checkPlayInfo --> 是电影");
        List list2 = (List) s1().s().f();
        if (list2 == null) {
            return;
        }
        s1().B((VideoDetailMediaSource) CollectionsKt.k0(list2));
    }

    private final void K1(Subject movieDetailBean) {
        String restrictLevel = movieDetailBean.getRestrictLevel();
        if (restrictLevel == null || restrictLevel.length() == 0 || !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("restrict_tips_dialog_again", true)) {
            return;
        }
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onHandlePause();
        }
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sa_restrict_tips", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0) {
            value = Utils.a().getString(R$string.movie_detail_restrict_tips);
        }
        final RestrictTipsDialog restrictTipsDialogA = RestrictTipsDialog.INSTANCE.a(value, "music_stream_detail", movieDetailBean.getSubjectId());
        restrictTipsDialogA.l0(this, "RestrictTipsDialog");
        restrictTipsDialogA.y0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.L1(restrictTipsDialogA, this, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit L1(RestrictTipsDialog restrictTipsDialog, MusicDetailFragment musicDetailFragment, boolean z10) {
        if (z10) {
            kn.a aVar = musicDetailFragment.playerControl;
            if (aVar != null) {
                aVar.onHandlePlay();
            }
        } else {
            FragmentActivity activity = restrictTipsDialog.getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        return Unit.f64096a;
    }

    public static final Unit M1(MusicDetailFragment musicDetailFragment, List list) {
        musicDetailFragment.J1();
        return Unit.f64096a;
    }

    public static final Unit N1(MusicDetailFragment musicDetailFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        CoordinatorLayout coordinatorLayout;
        Subject subject = (Subject) pair.getSecond();
        xv.f mViewBinding = musicDetailFragment.getMViewBinding();
        if (mViewBinding != null && (coordinatorLayout = mViewBinding.f75894e) != null) {
            coordinatorLayout.setVisibility(0);
        }
        if (subject == null) {
            if (Intrinsics.c(pair.getFirst(), "404")) {
                com.tn.lib.widget.toast.core.h.f40484a.k(R$string.movie_lost_content);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(musicDetailFragment), null, null, new MusicDetailFragment$initViewModel$1$1(musicDetailFragment, null), 3, null);
            }
            if (yg.l.f76264a.e()) {
                PageStatusFragment.showEmptyView$default(musicDetailFragment, false, 1, null);
            } else {
                PageStatusFragment.showNoNetworkView$default(musicDetailFragment, false, 1, null);
            }
        } else {
            yv.a.f76396a.a(musicDetailFragment.getClassTag() + " --> initDetailViewModel() --> 获取到数据 --> subjectId = " + subject.getSubjectId() + " --> 刷新UI");
            MovieDetailViewModel movieDetailViewModelP1 = musicDetailFragment.p1();
            String subjectId = subject.getSubjectId();
            Integer subjectType = subject.getSubjectType();
            Context context = musicDetailFragment.getContext();
            MovieDetailViewModel.u(movieDetailViewModelP1, subjectId, subjectType, 0, context != null && com.transsion.baseui.util.b.a(context), 4, null);
            musicDetailFragment.showContentView();
            musicDetailFragment.netResultSuccess = true;
            musicDetailFragment.H2(subject);
            musicDetailFragment.u2(subject);
            qi.b logViewConfig = musicDetailFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = musicDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(musicDetailFragment.ops);
            }
            qi.b logViewConfig3 = musicDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG2 = logViewConfig3.g()) != null) {
                String subjectId2 = subject.getSubjectId();
                if (subjectId2 == null) {
                    subjectId2 = "";
                }
                mapG2.put("subject_id", subjectId2);
            }
            qi.b logViewConfig4 = musicDetailFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG = logViewConfig4.g()) != null) {
                mapG.put("has_resource", String.valueOf(subject.getHasResource()));
            }
        }
        return Unit.f64096a;
    }

    public static final Unit O1(MusicDetailFragment musicDetailFragment, VideoDetailPlayBean videoDetailPlayBean) {
        Subject subject;
        String str = musicDetailFragment.ops;
        if (str == null || str.length() == 0) {
            musicDetailFragment.ops = videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null;
        }
        Subject subject2 = musicDetailFragment.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = musicDetailFragment.mMovieDetailBean) != null) {
            subject.setOps(videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null);
        }
        return Unit.f64096a;
    }

    public static final Unit P1(MusicDetailFragment musicDetailFragment, Integer num) {
        Intrinsics.e(num);
        musicDetailFragment.curSeason = num.intValue();
        return Unit.f64096a;
    }

    public static final Unit Q1(MusicDetailFragment musicDetailFragment, ResourcesSeasonList resourcesSeasonList) {
        musicDetailFragment.G2();
        return Unit.f64096a;
    }

    public final void R1(final String subjectId, boolean isAudioTracksChange, String from) {
        yv.a.f76396a.a(getClassTag() + " --> loadData() --> isAudioTracksChange = " + isAudioTracksChange + " --> subjectId = " + subjectId + " --> from = " + from + " --> 开始加载数据");
        if (!yg.l.f76264a.e()) {
            m1().E(subjectId, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return MusicDetailFragment.T1(this.f55628a, subjectId, (String) obj);
                }
            });
            return;
        }
        if (!isAudioTracksChange) {
            showLoadingView();
        }
        if (subjectId != null) {
            MovieDetailViewModel.E(p1(), subjectId, null, false, 6, null);
            s1().r(subjectId);
        }
    }

    static void S1(MusicDetailFragment musicDetailFragment, String str, boolean z10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            str2 = "";
        }
        musicDetailFragment.R1(str, z10, str2);
    }

    public static final Unit T1(MusicDetailFragment musicDetailFragment, String str, String path) {
        CoordinatorLayout coordinatorLayout;
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            yv.a.f76396a.b(musicDetailFragment.getClassTag() + " --> loadData() --> 无网络 无下载 --> 加载失败，这种情况需要前置拦截");
        } else {
            xv.f mViewBinding = musicDetailFragment.getMViewBinding();
            if (mViewBinding != null && (coordinatorLayout = mViewBinding.f75894e) != null) {
                coordinatorLayout.setVisibility(8);
            }
            musicDetailFragment.c2(str);
        }
        return Unit.f64096a;
    }

    public static final MusicLikedFragmentViewModel U1() {
        return new MusicLikedFragmentViewModel();
    }

    public static final im.b V1() {
        return (im.b) TheRouter.d(im.b.class, new Object[0]);
    }

    public static final void W1(MusicDetailFragment musicDetailFragment) {
        Object systemService = Utils.a().getSystemService("keyguard");
        Intrinsics.f(systemService, "null cannot be cast to non-null type android.app.KeyguardManager");
        if (((KeyguardManager) systemService).isKeyguardLocked()) {
            return;
        }
        yv.a.f76396a.a(musicDetailFragment.getClassTag() + " --> onBackgroundStatusChange() --> 2Background~~");
        musicDetailFragment.r2(false);
    }

    private final void X1(boolean show) {
        String genre;
        Subject subject = this.mMovieDetailBean;
        if (subject == null || (genre = subject.getGenre()) == null) {
            return;
        }
        String lowerCase = genre.toLowerCase(Locale.ROOT);
        Intrinsics.g(lowerCase, "toLowerCase(...)");
        if (lowerCase == null || !StringsKt.c0(lowerCase, "game", false, 2, null)) {
            return;
        }
        if (show) {
            im.b bVarN1 = n1();
            if (bVarN1 != null) {
                bVarN1.h();
                return;
            }
            return;
        }
        im.b bVarN2 = n1();
        if (bVarN2 != null) {
            bVarN2.q();
        }
    }

    public final void Y1(LongVodUiType uiType) {
        if (this.gameResView == null || uiType != LongVodUiType.MIDDLE) {
            return;
        }
        s2();
    }

    public final void Z1(ln.a bean) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.mSubjectId);
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.getType() == 3 && bean != null) {
            navigatorK.I("TV_DATA", new FbTvData(bean.o(), bean.l(), bean.e()));
        }
        Navigator.x(navigatorK, requireContext(), null, 2, null);
    }

    private final boolean a1() {
        kk.a aVar;
        if (this.hasClickedActivityTip || (aVar = this.palmPayApi) == null) {
            return false;
        }
        return aVar.g();
    }

    private final void a2() {
        MusicDetailListOperateView musicDetailListOperateView;
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (musicDetailListOperateView = mViewBinding.f75904o) == null) {
            return;
        }
        musicDetailListOperateView.setVisibility(0);
        String str = this.mSubjectId;
        xv.f mViewBinding2 = getMViewBinding();
        FrameLayout frameLayout = mViewBinding2 != null ? mViewBinding2.f75897h : null;
        FragmentManager childFragmentManager = getChildFragmentManager();
        Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
        musicDetailListOperateView.setContainer(str, frameLayout, childFragmentManager, R$id.flMusicContainer, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MusicDetailFragment.b2(this.f55650a, (String) obj, (String) obj2);
            }
        });
        musicDetailListOperateView.setState(MusicStateEnum.OPEN);
    }

    private final void b1() {
        BubbleTextView bubbleTextView;
        ViewTreeObserver viewTreeObserver;
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f75891b) == null || (viewTreeObserver = bubbleTextView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new c());
    }

    public static final Unit b2(MusicDetailFragment musicDetailFragment, String str, String str2) {
        yv.a.f76396a.a(musicDetailFragment.getClassTag() + " --> setContainer() --> onItemCLick{} --> subjectId = " + str + " --> path = " + str2 + " --> 重置数据，重新加载");
        if (TextUtils.isEmpty(str)) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.error_load_failed);
            return Unit.f64096a;
        }
        if (yg.l.f76264a.e() || !TextUtils.isEmpty(str2)) {
            musicDetailFragment.e2(str);
            return Unit.f64096a;
        }
        fh.b.f60176a.d(com.transsion.videodetail.R$string.music_no_network);
        return Unit.f64096a;
    }

    private final void c1() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) s1().y().f();
        if (resourcesSeasonList == null) {
            return;
        }
        boolean z10 = false;
        if (resourcesSeasonList.isSeries()) {
            wf.a.C0922a.f(wf.a.f74274a, "MusicDetailFragment", "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
            List listL = (List) s1().s().f();
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f();
            int iIndexOf = videoDetailMediaSource != null ? listL.indexOf(videoDetailMediaSource) : -1;
            if (iIndexOf >= 0 && iIndexOf < listL.size() - 1) {
                z10 = true;
            }
        }
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.hasNextEpisode(z10);
        }
    }

    private final void c2(String subjectId) {
        kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MusicDetailFragment$playDownloadMusic$1(this, subjectId, null), 3, null);
    }

    public final void d1() {
        MusicDetailListOperateView musicDetailListOperateView;
        MusicDetailLikedFragment mMusicDetailLikedFragment;
        MusicLikedMultiItemEntity musicLikedMultiItemEntityR0;
        MusicLikedDbBean musicLikedDbBean;
        MusicDetailListOperateView musicDetailListOperateView2;
        MusicDetailLikedFragment mMusicDetailLikedFragment2;
        int i10 = b.f55595a[yv.c.f76399a.b().ordinal()];
        if (i10 == 1) {
            kn.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.showReplay();
                return;
            }
            return;
        }
        if (i10 != 2) {
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            yv.a.f76396a.a(getClassTag() + " --> checkPlayNextOrReplay() --> playerControl?.replay()");
            kn.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.replay();
                return;
            }
            return;
        }
        xv.f mViewBinding = getMViewBinding();
        String subjectId = null;
        String strV0 = (mViewBinding == null || (musicDetailListOperateView2 = mViewBinding.f75904o) == null || (mMusicDetailLikedFragment2 = musicDetailListOperateView2.getMMusicDetailLikedFragment()) == null) ? null : mMusicDetailLikedFragment2.v0();
        if (TextUtils.isEmpty(strV0)) {
            xv.f mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (musicDetailListOperateView = mViewBinding2.f75904o) != null && (mMusicDetailLikedFragment = musicDetailListOperateView.getMMusicDetailLikedFragment()) != null && (musicLikedMultiItemEntityR0 = mMusicDetailLikedFragment.r0()) != null && (musicLikedDbBean = musicLikedMultiItemEntityR0.getMusicLikedDbBean()) != null) {
                subjectId = musicLikedDbBean.getSubjectId();
            }
            strV0 = subjectId;
        }
        e2(strV0);
    }

    public static final void d2(MusicDetailFragment musicDetailFragment, VideoDetailStreamList videoDetailStreamList) {
        wf.a.f74274a.c("MusicDetailFragment", "playInfoObserver  playInfo==" + videoDetailStreamList, true);
        musicDetailFragment.x1();
        if (videoDetailStreamList != null || yg.l.f76264a.e()) {
            musicDetailFragment.h1();
        } else {
            musicDetailFragment.w2();
        }
    }

    private final void e1() {
        String str;
        boolean z10;
        String str2;
        String ops;
        String subjectId;
        ResourceDetectors resourceDetector;
        if (getContext() == null) {
            return;
        }
        Subject subject = this.mMovieDetailBean;
        String str3 = "";
        int ep2 = 0;
        if (subject == null || (resourceDetector = subject.getResourceDetector()) == null) {
            str = "";
            z10 = false;
        } else {
            String resourceLink = resourceDetector.getResourceLink();
            if (resourceLink == null) {
                resourceLink = "";
            }
            String resourceId = resourceDetector.getResourceId();
            str3 = resourceId != null ? resourceId : "";
            z10 = resourceDetector.isMultiResolution();
            str = resourceLink;
        }
        DownloadManagerApi.a aVar = DownloadManagerApi.f56187j;
        DownloadManagerApi downloadManagerApiA = aVar.a();
        Subject subject2 = this.mMovieDetailBean;
        String ops2 = null;
        String subjectId2 = subject2 != null ? subject2.getSubjectId() : null;
        Subject subject3 = this.mMovieDetailBean;
        if (downloadManagerApiA.w0(subjectId2, str3, subject3 != null && subject3.isSeries(), z10)) {
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 == null || (subjectId = subject4.getSubjectId()) == null) {
                return;
            }
            DownloadManagerApi downloadManagerApiA2 = aVar.a();
            Context context = getContext();
            Intrinsics.e(context);
            DownloadManagerApi.z0(downloadManagerApiA2, subjectId, context, "music_stream_detail", null, 8, null);
            return;
        }
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 != null) {
            Integer subjectType = subject5.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA3 = aVar.a();
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context2;
                String str4 = this.ops;
                if (str4 == null || str4.length() == 0) {
                    Subject subject6 = this.mMovieDetailBean;
                    if (subject6 != null) {
                        ops2 = subject6.getOps();
                    }
                } else {
                    ops2 = this.ops;
                }
                downloadManagerApiA3.d0(fragmentActivity, "music_stream_detail", (384 & 4) != 0 ? "" : "", ops2, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : this.mMovieDetailBean, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f();
        if (videoDetailMediaSource != null && videoDetailMediaSource.getSe() == this.curSeason) {
            ep2 = videoDetailMediaSource.getEp();
        }
        DownloadManagerApi downloadManagerApiA4 = aVar.a();
        Context context3 = getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity2 = (FragmentActivity) context3;
        Subject subject7 = this.mMovieDetailBean;
        String str5 = this.ops;
        if (str5 == null || str5.length() == 0) {
            Subject subject8 = this.mMovieDetailBean;
            if (subject8 != null) {
                ops = subject8.getOps();
            } else {
                str2 = null;
            }
            DownloadManagerApi.N(downloadManagerApiA4, fragmentActivity2, subject7, "music_stream_detail", "", str2, str, String.valueOf(ep2), this.moduleName, null, false, this.curSeason, false, 768, null);
        }
        ops = this.ops;
        str2 = ops;
        DownloadManagerApi.N(downloadManagerApiA4, fragmentActivity2, subject7, "music_stream_detail", "", str2, str, String.valueOf(ep2), this.moduleName, null, false, this.curSeason, false, 768, null);
    }

    private final void e2(String subjectId) {
        yv.a.f76396a.b(getClassTag() + " --> playNext() --> subjectId = " + subjectId);
        if (TextUtils.isEmpty(subjectId)) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.error_load_failed);
            return;
        }
        this.mSubjectId = subjectId;
        this.mMovieDetailBean = null;
        this.videoDetailStreamList = null;
        s1().C();
        MovieDetailViewModel movieDetailViewModelP1 = p1();
        int i10 = this.preloadId;
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        MovieDetailViewModel.T(movieDetailViewModelP1, i10, str, null, 4, null);
        R1(this.mSubjectId, true, "playNext()");
    }

    private final void f1() {
        BubbleTextView bubbleTextView;
        this.hasClickedActivityTip = true;
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f75891b) == null) {
            return;
        }
        uf.c.g(bubbleTextView);
    }

    public final void f2(DownloadBean downloadBean) {
        this.downloadBean = downloadBean;
        z2();
        String str = this.mSubjectId;
        if (str != null) {
            PlayMimeType playMimeType = PlayMimeType.DEFAULT;
            String subjectName = downloadBean.getSubjectName();
            String str2 = subjectName == null ? "" : subjectName;
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listU1 = u1(downloadBean);
            String cover = downloadBean.getCover();
            String str5 = cover == null ? "" : cover;
            String thumbnail = downloadBean.getThumbnail();
            String str6 = thumbnail == null ? "" : thumbnail;
            ln.a aVar = new ln.a(str, playMimeType, 0L, 0, 0, str2, null, str4, "music_stream_detail", listU1, str5, str6, "", 0, Integer.valueOf(downloadBean.getSubjectType()), false, downloadBean.getTitleName(), downloadBean.getOps(), 32832, null);
            aVar.z(this.mMovieDetailBean);
            yv.a.f76396a.a(getClassTag() + " --> playOfflineMusic() --> 播放本地文件 --> addDataSource = " + aVar + " -->  playerControl = " + this.playerControl);
            kn.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.setDataSource(aVar);
            }
        }
    }

    private final void g1() {
        LinearLayout root;
        ViewParent parent;
        xv.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null || (parent = root.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(root);
    }

    private final void g2(VideoDetailStreamList videoDetailStreamList) {
        List<VideoDetailStream> list;
        VideoDetailPlayBean videoDetailPlayBean;
        VideoDetailPlayBean videoDetailPlayBean2;
        Subject subject;
        List<DubsInfo> dubs;
        String averageHueLight;
        String thumbnail;
        String url;
        yv.a aVar = yv.a.f76396a;
        aVar.a(getClassTag() + " --> playStream() --> videoDetailStreamList = " + videoDetailStreamList + " --> mMovieDetailBean = " + this.mMovieDetailBean);
        List<VideoDetailStream> streams = videoDetailStreamList != null ? videoDetailStreamList.getStreams() : null;
        if (videoDetailStreamList == null || (list = streams) == null || list.isEmpty()) {
            aVar.b(getClassTag() + " --> playStream() --> 空返回 --> videoDetailStreamList = " + videoDetailStreamList + " --> videoDetailStream = " + streams);
            return;
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f();
        if (videoDetailMediaSource != null && videoDetailMediaSource.getEp() == videoDetailStreamList.getEp() && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe()) {
            if (this.curAudioTrackPlayProgress > 0) {
                aVar.a(getClassTag() + " --> playStream() --> 播放历史进度 --> AudioTrack -- seekTo = 0");
            } else {
                VideoDetailPlayBean videoDetailPlayBean3 = this.history;
                if (videoDetailPlayBean3 != null && videoDetailPlayBean3 != null && videoDetailStreamList.getSe() == videoDetailPlayBean3.getSe() && (videoDetailPlayBean = this.history) != null && videoDetailStreamList.getEp() == videoDetailPlayBean.getEp() && ((this.targetSeason > 0 && (videoDetailPlayBean2 = this.history) != null && videoDetailPlayBean2.getSe() == this.targetSeason) || this.targetSeason <= 0)) {
                    s1().n();
                }
            }
            PlayMimeType playMimeTypeO1 = o1((VideoDetailStream) CollectionsKt.i0(streams));
            VideoDetailMediaSource videoDetailMediaSource2 = (VideoDetailMediaSource) s1().x().f();
            int ep2 = videoDetailMediaSource2 != null ? videoDetailMediaSource2.getEp() : 0;
            int se2 = videoDetailMediaSource2 != null ? videoDetailMediaSource2.getSe() : 0;
            String str = this.mSubjectId;
            if (str == null || (subject = this.mMovieDetailBean) == null) {
                return;
            }
            String title = subject.getTitle();
            String str2 = title == null ? "" : title;
            String title2 = videoDetailStreamList.getTitle();
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listW1 = w1(streams);
            Cover cover = subject.getCover();
            String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            Cover cover2 = subject.getCover();
            String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
            Cover cover3 = subject.getCover();
            String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
            Integer durationSeconds = subject.getDurationSeconds();
            int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
            Integer subjectType = subject.getSubjectType();
            int iIntValue2 = subjectType != null ? subjectType.intValue() : 1;
            Subject subject2 = this.mMovieDetailBean;
            String ops = subject2 != null ? subject2.getOps() : null;
            Subject subject3 = this.mMovieDetailBean;
            ln.a aVar2 = new ln.a(str, playMimeTypeO1, 0L, ep2, se2, str2, title2, str4, "music_stream_detail", listW1, str5, str6, str7, iIntValue, Integer.valueOf(iIntValue2), false, subject3 != null ? subject3.getTitle() : null, ops, 32768, null);
            aVar2.z(this.mMovieDetailBean);
            Subject subject4 = this.mMovieDetailBean;
            if (subject4 != null && (dubs = subject4.getDubs()) != null) {
                aVar2.a().addAll(dubs);
            }
            z2();
            aVar.a(getClassTag() + " --> playStream() --> playerControl?.setDataSource(playBean)");
            kn.a aVar3 = this.playerControl;
            if (aVar3 != null) {
                aVar3.setDataSource(aVar2);
            }
        }
    }

    public final void h1() {
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.removeNoNetError();
        }
        this.showNetErr = false;
    }

    private final void h2(Subject subject) {
        Integer durationSeconds = subject.getDurationSeconds();
        Integer numValueOf = Integer.valueOf(durationSeconds != null ? durationSeconds.intValue() : 0);
        ResourceDetectors resourceDetector = subject.getResourceDetector();
        PreVideoAddress preVideoAddress = new PreVideoAddress(0, null, numValueOf, 0, 0, 0L, 0, resourceDetector != null ? resourceDetector.getDownloadUrl() : null, "", 0);
        Cover stills = subject.getStills();
        if (stills == null) {
            stills = subject.getCover();
        }
        Trailer trailer = new Trailer(SubjectType.MUSIC.getValue(), preVideoAddress, stills, null, null, 24, null);
        trailer.setSubjectId(subject.getSubjectId());
        trailer.setMusicName(subject.getTitle());
        i2(trailer);
    }

    public static final ui.c i1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).o1();
    }

    private final void i2(Trailer trailer) {
        Subject subject;
        String averageHueLight;
        String thumbnail;
        String url;
        z2();
        String str = this.mSubjectId;
        if (str == null || (subject = this.mMovieDetailBean) == null) {
            return;
        }
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String title = subject.getTitle();
        String str2 = title == null ? "" : title;
        String str3 = this.lastPageFrom;
        String str4 = str3 == null ? "" : str3;
        List listV1 = v1(trailer);
        Cover cover = trailer.getCover();
        String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
        Cover cover2 = trailer.getCover();
        String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
        Cover cover3 = subject.getCover();
        String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
        Integer durationSeconds = subject.getDurationSeconds();
        int iIntValue = durationSeconds != null ? durationSeconds.intValue() : 0;
        Integer subjectType = subject.getSubjectType();
        ln.a aVar = new ln.a(str, playMimeType, 0L, 0, 0, str2, null, str4, "music_stream_detail", listV1, str5, str6, str7, iIntValue, Integer.valueOf(subjectType != null ? subjectType.intValue() : 1), false, subject.getTitle(), subject.getOps(), 32832, null);
        aVar.z(this.mMovieDetailBean);
        yv.a.f76396a.a(getClassTag() + " --> playTrailer() --> 当前有网络，没有下载资源 --> 播放流媒体数据 --> addDataSource = " + aVar + " -->  playerControl = " + this.playerControl);
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.setDataSource(aVar);
        }
    }

    public final void j1(VideoDetailMediaSource episodeMedia) {
        if (episodeMedia == null) {
            return;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) s1().w().f();
        if (videoDetailStreamList != null && videoDetailStreamList.getSe() == episodeMedia.getSe() && videoDetailStreamList.getEp() == episodeMedia.getEp()) {
            return;
        }
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.reset();
        }
        showLoading();
        s1().v(episodeMedia);
        c1();
    }

    public static final jo.a j2() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    public final ui.c k1() {
        return (ui.c) this.downloadDao.getValue();
    }

    public static final Unit k2(MusicDetailFragment musicDetailFragment, boolean z10) {
        FragmentActivity activity;
        if (!yg.l.f76264a.e() && musicDetailFragment.isMusicFloatViewClick && !z10 && (activity = musicDetailFragment.getActivity()) != null) {
            activity.finish();
        }
        return Unit.f64096a;
    }

    public static final void l1(MusicDetailFragment musicDetailFragment, View view) {
        musicDetailFragment.requireActivity().finish();
    }

    private final void l2() {
        com.transsion.player.orplayer.f player;
        if (this.downloadBean == null) {
            return;
        }
        kn.a aVar = this.playerControl;
        long currentPosition = (aVar == null || (player = aVar.getPlayer()) == null) ? 0L : player.getCurrentPosition();
        if (currentPosition > 0) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new MusicDetailFragment$saveDownloadHistory$1(this, currentPosition, null), 3, null);
        }
    }

    private final MusicLikedFragmentViewModel m1() {
        return (MusicLikedFragmentViewModel) this.mViewModel.getValue();
    }

    private final void m2() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        final Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            xv.f mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView = mViewBinding.f75901l) != null) {
                appCompatImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        MusicDetailFragment.n2(this.f55656a, subject, view);
                    }
                });
            }
            xv.f mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (gradientTextView = mViewBinding2.f75910u) == null) {
                return;
            }
            gradientTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicDetailFragment.o2(this.f55659a, subject, view);
                }
            });
        }
    }

    private final im.b n1() {
        return (im.b) this.memberProvider.getValue();
    }

    public static final void n2(MusicDetailFragment musicDetailFragment, Subject subject, View view) {
        String url;
        jo.a aVarR1 = musicDetailFragment.r1();
        if (aVarR1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = musicDetailFragment.mSubjectId;
            if (str == null) {
                str = "";
            }
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String description = subject.getDescription();
            if (description == null) {
                description = "";
            }
            aVarR1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final PlayMimeType o1(VideoDetailStream stream) {
        String upperCase = stream.getFormat().toUpperCase(Locale.ROOT);
        Intrinsics.g(upperCase, "toUpperCase(...)");
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    public static final void o2(MusicDetailFragment musicDetailFragment, Subject subject, View view) {
        String url;
        jo.a aVarR1 = musicDetailFragment.r1();
        if (aVarR1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = musicDetailFragment.mSubjectId;
            if (str == null) {
                str = "";
            }
            Cover cover = subject.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            String title = subject.getTitle();
            if (title == null) {
                title = "";
            }
            String description = subject.getDescription();
            if (description == null) {
                description = "";
            }
            aVarR1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final MovieDetailViewModel p1() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    private final void p2(Subject subject) {
        Cover stills;
        FrameLayout frameLayout;
        if (subject != null) {
            Trailer trailer = subject.getTrailer();
            if ((trailer == null || (stills = trailer.getCover()) == null) && (stills = subject.getStills()) == null) {
                stills = subject.getCover();
            }
            if (stills != null) {
                int iF = com.transsion.core.utils.e.f();
                xv.f mViewBinding = getMViewBinding();
                if (mViewBinding == null || (frameLayout = mViewBinding.f75898i) == null) {
                    return;
                }
                if (frameLayout.getChildCount() == 0) {
                    ImageView imageView = new ImageView(frameLayout.getContext());
                    imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                    frameLayout.addView(imageView, new FrameLayout.LayoutParams(iF, (iF * 9) / 16));
                    ni.f.a aVar = ni.f.f67269a;
                    String url = stills.getUrl();
                    String strE = ni.f.a.e(aVar, url == null ? "" : url, iF, false, false, 12, null);
                    String thumbnail = stills.getThumbnail();
                    com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f41866a, thumbnail == null ? "" : thumbnail, 0, 0, new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return MusicDetailFragment.q2(this.f55669a, (BitmapDrawable) obj);
                        }
                    }, 6, null);
                    Context context = imageView.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar.m(context).g(strE).i(R$color.transparent).d(imageView);
                }
            }
        }
    }

    private final VideoDetailMediaSource q1(VideoDetailPlayBean history, List episodeMediaList) {
        Object obj = null;
        if (history == null) {
            wf.a.C0922a.f(wf.a.f74274a, "MusicDetailFragment", "getPlayingItem 无历史记录，se:" + this.targetSeason, false, 4, null);
            if (this.targetSeason <= 0) {
                return (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList);
            }
            for (Object obj2 : episodeMediaList) {
                VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) obj2;
                if (videoDetailMediaSource.getSe() == this.targetSeason && videoDetailMediaSource.getEp() == 1) {
                    obj = obj2;
                    break;
                }
            }
            VideoDetailMediaSource videoDetailMediaSource2 = (VideoDetailMediaSource) obj;
            return videoDetailMediaSource2 == null ? (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList) : videoDetailMediaSource2;
        }
        int se2 = history.getSe();
        int i10 = this.targetSeason;
        if (se2 == i10 || i10 <= 0) {
            this.curSeason = history.getSe();
            wf.a.C0922a.f(wf.a.f74274a, "MusicDetailFragment", "getPlayingItem 有历史记录，不指定季使用历史记录，se:" + history.getSe() + ", ep:" + history.getEp(), false, 4, null);
            for (Object obj3 : episodeMediaList) {
                VideoDetailMediaSource videoDetailMediaSource3 = (VideoDetailMediaSource) obj3;
                if (videoDetailMediaSource3.getSe() == history.getSe() && videoDetailMediaSource3.getEp() == history.getEp()) {
                    obj = obj3;
                    break;
                }
            }
            VideoDetailMediaSource videoDetailMediaSource4 = (VideoDetailMediaSource) obj;
            return videoDetailMediaSource4 == null ? (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList) : videoDetailMediaSource4;
        }
        wf.a.C0922a.f(wf.a.f74274a, "MusicDetailFragment", "getPlayingItem 有历史记录，指定季，history se:" + history.getSe() + ", ep:" + history.getEp() + "， target se:" + this.targetSeason + ", targetEp:" + this.targetEp, false, 4, null);
        for (Object obj4 : episodeMediaList) {
            VideoDetailMediaSource videoDetailMediaSource5 = (VideoDetailMediaSource) obj4;
            if (videoDetailMediaSource5.getSe() == this.targetSeason) {
                int ep2 = videoDetailMediaSource5.getEp();
                int i11 = this.targetEp;
                if (i11 <= 0) {
                    i11 = 1;
                }
                if (ep2 == i11) {
                    obj = obj4;
                    break;
                }
            }
        }
        VideoDetailMediaSource videoDetailMediaSource6 = (VideoDetailMediaSource) obj;
        return videoDetailMediaSource6 == null ? (VideoDetailMediaSource) CollectionsKt.k0(episodeMediaList) : videoDetailMediaSource6;
    }

    public static final Unit q2(MusicDetailFragment musicDetailFragment, BitmapDrawable drawable) {
        FrameLayout frameLayout;
        Intrinsics.h(drawable, "drawable");
        xv.f mViewBinding = musicDetailFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f75898i) != null) {
            frameLayout.setBackground(drawable);
        }
        return Unit.f64096a;
    }

    private final jo.a r1() {
        return (jo.a) this.publishedApi.getValue();
    }

    private final void r2(boolean proactive) {
        Subject subject = this.mMovieDetailBean;
        if (subject == null || subject.getSubjectType() == null) {
            SubjectType.MOVIE.getValue();
        }
        SubjectType.MUSIC.getValue();
    }

    public final VideoDetailViewModel s1() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    private final void s2() {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        FrameLayout frameLayout3;
        View view = this.gameResView;
        ViewParent parent = view != null ? view.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.gameResView);
        }
        KeyEvent.Callback callback = this.gameResView;
        wj.c cVar = callback instanceof wj.c ? (wj.c) callback : null;
        if (cVar != null) {
            cVar.setPageStyle("detail");
        }
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout3 = mViewBinding.f75899j) != null) {
            uf.c.k(frameLayout3);
        }
        xv.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout2 = mViewBinding2.f75899j) != null) {
            frameLayout2.removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        xv.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (frameLayout = mViewBinding3.f75899j) == null) {
            return;
        }
        frameLayout.addView(this.gameResView, layoutParams);
    }

    private final void showLoading() {
        LinearLayout root;
        xv.f mViewBinding;
        FrameLayout frameLayout;
        Context context = getContext();
        if (context == null) {
            return;
        }
        if (this.loadingViewBinding == null) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
            xv.f mViewBinding2 = getMViewBinding();
            this.loadingViewBinding = xv.j.c(layoutInflaterFrom, mViewBinding2 != null ? mViewBinding2.f75898i : null, false);
        }
        xv.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null) {
            return;
        }
        if (root.getParent() == null && (mViewBinding = getMViewBinding()) != null && (frameLayout = mViewBinding.f75898i) != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            layoutParams.bottomMargin = com.blankj.utilcode.util.i.e(20.0f);
            Unit unit = Unit.f64096a;
            frameLayout.addView(root, layoutParams);
        }
        uf.c.k(root);
    }

    private final void t2(Subject subject) {
    }

    private final List u1(DownloadBean downloadBean) {
        String string;
        String string2;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        String resourceId = downloadBean.getResourceId();
        String str = resourceId == null ? "" : resourceId;
        String path = downloadBean.getPath();
        String str2 = path == null ? "" : path;
        Long size = downloadBean.getSize();
        String str3 = (size == null || (string2 = size.toString()) == null) ? "" : string2;
        Long duration = downloadBean.getDuration();
        arrayList.add(new ln.c(playMimeType, str, str2, "", str3, (duration == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    private final void u2(final Subject subject) {
        m1().E(subject.getSubjectId(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.v2(this.f55664a, subject, (String) obj);
            }
        });
    }

    private final List v1(Trailer trailer) {
        Integer duration;
        String string;
        Long size;
        String string2;
        String url;
        String videoId;
        ArrayList arrayList = new ArrayList();
        PlayMimeType playMimeType = PlayMimeType.DEFAULT;
        PreVideoAddress videoAddress = trailer.getVideoAddress();
        String str = (videoAddress == null || (videoId = videoAddress.getVideoId()) == null) ? "" : videoId;
        PreVideoAddress videoAddress2 = trailer.getVideoAddress();
        String str2 = (videoAddress2 == null || (url = videoAddress2.getUrl()) == null) ? "" : url;
        PreVideoAddress videoAddress3 = trailer.getVideoAddress();
        String str3 = (videoAddress3 == null || (size = videoAddress3.getSize()) == null || (string2 = size.toString()) == null) ? "" : string2;
        PreVideoAddress videoAddress4 = trailer.getVideoAddress();
        arrayList.add(new ln.c(playMimeType, str, str2, "", str3, (videoAddress4 == null || (duration = videoAddress4.getDuration()) == null || (string = duration.toString()) == null) ? "" : string, "", null, 128, null));
        return arrayList;
    }

    public static final Unit v2(MusicDetailFragment musicDetailFragment, Subject subject, String path) {
        Intrinsics.h(path, "path");
        if (TextUtils.isEmpty(path)) {
            musicDetailFragment.h2(subject);
        } else {
            musicDetailFragment.c2(subject.getSubjectId());
        }
        return Unit.f64096a;
    }

    private final List w1(List videoDetailStream) {
        ArrayList arrayList = new ArrayList();
        if (videoDetailStream != null) {
            Iterator it = videoDetailStream.iterator();
            while (it.hasNext()) {
                VideoDetailStream videoDetailStream2 = (VideoDetailStream) it.next();
                arrayList.add(new ln.c(o1(videoDetailStream2), videoDetailStream2.getId(), videoDetailStream2.getUrl(), videoDetailStream2.getResolutions(), videoDetailStream2.getSize(), videoDetailStream2.getDuration(), videoDetailStream2.getSignCookie(), null, 128, null));
            }
        }
        return arrayList;
    }

    private final void w2() {
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.showNoNetError();
        }
        this.showNetErr = true;
    }

    private final void x1() {
        VideoDetailStreamList videoDetailStreamList;
        VideoDetailMediaSource videoDetailMediaSource;
        if (this.mMovieDetailBean == null || (videoDetailStreamList = (VideoDetailStreamList) s1().w().f()) == null || (videoDetailMediaSource = (VideoDetailMediaSource) s1().x().f()) == null || Intrinsics.c(videoDetailStreamList, this.videoDetailStreamList) || videoDetailMediaSource.getEp() != videoDetailStreamList.getEp() || videoDetailMediaSource.getSe() != videoDetailStreamList.getSe()) {
            return;
        }
        this.videoDetailStreamList = videoDetailStreamList;
        g1();
        g2(videoDetailStreamList);
    }

    private final void x2() {
        if (yg.l.f76264a.e()) {
            return;
        }
        m1().F(this.mSubjectId, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.y2(this.f55624a, ((Boolean) obj).booleanValue());
            }
        });
    }

    private final void y1() {
        BubbleTextView bubbleTextView;
        BubbleTextView bubbleTextView2;
        BubbleTextView bubbleTextView3;
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (bubbleTextView3 = mViewBinding.f75891b) != null) {
            bubbleTextView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicDetailFragment.z1(this.f55645a, view);
                }
            });
        }
        xv.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (bubbleTextView2 = mViewBinding2.f75891b) != null) {
            uf.c.k(bubbleTextView2);
        }
        b1();
        xv.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f75891b) == null) {
            return;
        }
        uf.c.g(bubbleTextView);
    }

    public static final Unit y2(MusicDetailFragment musicDetailFragment, boolean z10) {
        yv.a.f76396a.a(musicDetailFragment.getClassTag() + " --> showNoNetworkLayout() --> 当前无网络且是收藏Music");
        musicDetailFragment.B2(true);
        return Unit.f64096a;
    }

    public static final void z1(MusicDetailFragment musicDetailFragment, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "MusicDetailFragment", "Click activity tip", false, 4, null);
        musicDetailFragment.hasClickedActivityTip = true;
        Intrinsics.e(view);
        uf.c.g(view);
    }

    private final void z2() {
        Context context;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            Subject subject = this.mMovieDetailBean;
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.MUSIC;
            xv.f mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String strName = longVodPageType.name();
                Subject subject2 = this.mMovieDetailBean;
                kn.a.C0796a.a(longVodPlayerView, "music_stream_detail", longVodPageType, strName + (subject2 != null ? subject2.getSubjectId() : null), mViewBinding.f75896g, mViewBinding.f75902m.f66560f, null, null, 96, null);
                longVodPlayerView.setFeedBackVisible(true);
                longVodPlayerView.setFragmentId(this.fragmentId);
                mViewBinding.f75898i.addView(longVodPlayerView);
                longVodPlayerView.setMusicLikedFragment(this.isMusicLikedFragment);
                this.playerControl = longVodPlayerView;
            }
            Subject subject3 = this.mMovieDetailBean;
            if (subject3 != null) {
                K1(subject3);
            }
            kn.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.setCallback(new g());
            }
        }
    }

    @Override
    public void S(Function0 callback) {
        this.backPressedCallback = callback;
    }

    @Override
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_movie_detail_skeleton_drawing_layout, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MusicDetailFragment.l1(this.f55648a, view);
            }
        });
        return viewInflate;
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        com.transsion.baselib.report.k.f42210a.g(this);
        requireActivity().getOnBackPressedDispatcher().i(this, new d());
        xv.f mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f75900k.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicDetailFragment.G1(this.f55630a, view);
                }
            });
        }
    }

    @Override
    public void initViewData() {
        View view;
        View view2;
        xv.f mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (view2 = mViewBinding.f75911v) == null) ? null : view2.getLayoutParams();
        ConstraintLayout.b bVar = layoutParams instanceof ConstraintLayout.b ? (ConstraintLayout.b) layoutParams : null;
        if (bVar != null) {
            ((ViewGroup.MarginLayoutParams) bVar).topMargin = com.blankj.utilcode.util.d.c();
        }
        xv.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (view = mViewBinding2.f75911v) != null) {
            view.setLayoutParams(bVar);
        }
        y1();
        C1();
        H1();
    }

    @Override
    public void initViewModel() {
        p1().F().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.N1(this.f55634a, (Pair) obj);
            }
        }));
        s1().u().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.O1(this.f55635a, (VideoDetailPlayBean) obj);
            }
        }));
        p1().K().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.P1(this.f55637a, (Integer) obj);
            }
        }));
        s1().y().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.Q1(this.f55639a, (ResourcesSeasonList) obj);
            }
        }));
        s1().s().j(this, new f(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.M1(this.f55642a, (List) obj);
            }
        }));
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public void loadDefaultData() {
        super.loadDefaultData();
        S1(this, this.mSubjectId, false, "loadDefaultData()", 2, null);
        x2();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("music_stream_detail", false, 2, null);
    }

    @Override
    public void onBackgroundStatusChange(boolean isBackground) {
        xv.f mViewBinding;
        FrameLayout frameLayout;
        if (!isBackground || (mViewBinding = getMViewBinding()) == null || (frameLayout = mViewBinding.f75898i) == null) {
            return;
        }
        frameLayout.postDelayed(new Runnable() {
            @Override
            public final void run() {
                MusicDetailFragment.W1(this.f55667a);
            }
        }, 500L);
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        yv.a.f76396a.a(getClassTag() + " --> onCreate() --> 音乐详情页");
        yg.l.f76264a.l(this.networkStatusChangedListener);
    }

    @Override
    public void onDestroy() {
        kn.a aVar;
        super.onDestroy();
        MusicFloatManager.a aVar2 = MusicFloatManager.f42282h;
        aVar2.b().w().remove(this.fragmentId);
        if (!this.isFloatShow && aVar2.b().w().isEmpty() && (aVar = this.playerControl) != null) {
            aVar.release();
        }
        kn.a aVar3 = this.playerControl;
        if (aVar3 != null) {
            aVar3.onPageDestroy();
        }
        yg.l.f76264a.m(this.networkStatusChangedListener);
        com.transsion.baselib.report.k.f42210a.t(this);
        if (this.isMusicLikedFragment) {
            yv.b.f76397a.b(false);
        }
    }

    @Override
    public void onPause() {
        kn.a aVar;
        super.onPause();
        if (this.isFloatShow || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
    }

    @Override
    public void onResume() {
        super.onResume();
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        l2();
    }

    @Override
    public void receiveArguments() {
        HashMap mapG;
        this.lastPageFrom = qi.h.f69682a.h();
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        Bundle arguments3 = getArguments();
        boolean z10 = false;
        this.autoDownload = arguments3 != null ? arguments3.getBoolean("auto_download") : false;
        Bundle arguments4 = getArguments();
        this.autoPlay = arguments4 != null ? arguments4.getBoolean("auto_play") : false;
        Bundle arguments5 = getArguments();
        this.autoPlayResourceId = arguments5 != null ? arguments5.getString("auto_play_resource_id") : null;
        Bundle arguments6 = getArguments();
        this.preloadId = arguments6 != null ? arguments6.getInt("yy_preload_id") : 0;
        MovieDetailViewModel movieDetailViewModelP1 = p1();
        int i10 = this.preloadId;
        String str = this.mSubjectId;
        MovieDetailViewModel.T(movieDetailViewModelP1, i10, str == null ? "" : str, null, 4, null);
        Bundle arguments7 = getArguments();
        this.moduleName = arguments7 != null ? arguments7.getString("module_name") : null;
        Bundle arguments8 = getArguments();
        this.targetSeason = arguments8 != null ? arguments8.getInt("season") : 0;
        Bundle arguments9 = getArguments();
        this.targetEp = arguments9 != null ? arguments9.getInt("episode") : 0;
        int i11 = this.targetSeason;
        if (i11 <= 0) {
            i11 = 1;
        }
        this.curSeason = i11;
        Bundle arguments10 = getArguments();
        this.isMusicLikedFragment = arguments10 != null && arguments10.getBoolean("is_music_liked_fragment");
        Bundle arguments11 = getArguments();
        if (arguments11 != null && arguments11.getBoolean("is_music_float_view_click")) {
            z10 = true;
        }
        this.isMusicFloatViewClick = z10;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String str2 = this.mSubjectId;
            mapG.put("subject_id", str2 != null ? str2 : "");
        }
        m1().F(this.mSubjectId, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicDetailFragment.k2(this.f55631a, ((Boolean) obj).booleanValue());
            }
        });
    }

    @Override
    public void retryLoadData() {
        if (this.mMovieDetailBean == null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(this), null, null, new AnonymousClass1(null), 3, null);
        }
    }

    @Override
    public xv.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xv.f fVarC = xv.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }
}
