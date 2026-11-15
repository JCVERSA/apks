package com.transsion.ugcvideodetail.fragment;

import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.pager.PagerLayoutManager;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetailapi.bean.Pager;
import com.transsion.player.config.RenderType;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideoContent;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import com.transsion.ugcvideodetail.widget.UGCImmVideoLoadMoreView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000ö\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\b\u0006\n\u0002\b\u0006*\u0004¼\u0001Â\u0001\u0018\u0000 Æ\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001SB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0003¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ-\u0010\u0013\u001a\u00020\u00062\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0005J\u000f\u0010\u0016\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0016\u0010\u0005J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u000f\u0010\u0019\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0019\u0010\u0005J\u000f\u0010\u001a\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001a\u0010\u0005J\u0019\u0010\u001d\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001f\u0010\u0005J\u000f\u0010 \u001a\u00020\u0006H\u0002¢\u0006\u0004\b \u0010\u0005J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0010H\u0016¢\u0006\u0004\b(\u0010)J\u000f\u0010*\u001a\u00020\u0006H\u0016¢\u0006\u0004\b*\u0010\u0005J\u000f\u0010+\u001a\u00020\u0006H\u0016¢\u0006\u0004\b+\u0010\u0005J\u000f\u0010-\u001a\u0004\u0018\u00010,¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0006H\u0016¢\u0006\u0004\b/\u0010\u0005J\u000f\u00100\u001a\u00020\u0006H\u0016¢\u0006\u0004\b0\u0010\u0005J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\r\u00105\u001a\u00020\u0006¢\u0006\u0004\b5\u0010\u0005J\u001f\u0010:\u001a\u00020\u00062\u0006\u00107\u001a\u0002062\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u0019\u0010>\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\b>\u0010?J\u0019\u0010A\u001a\u00020\u00062\b\u0010@\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\bA\u0010BJ!\u0010E\u001a\u00020\u00062\u0006\u0010D\u001a\u00020C2\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\bE\u0010FJ\u0019\u0010G\u001a\u00020\u00062\b\u0010=\u001a\u0004\u0018\u00010<H\u0016¢\u0006\u0004\bG\u0010?J\u000f\u0010H\u001a\u00020\u0006H\u0016¢\u0006\u0004\bH\u0010\u0005J\r\u0010I\u001a\u00020\u0006¢\u0006\u0004\bI\u0010\u0005J\r\u0010J\u001a\u00020\u0006¢\u0006\u0004\bJ\u0010\u0005J\u000f\u0010L\u001a\u00020KH\u0016¢\u0006\u0004\bL\u0010MJ\u000f\u0010N\u001a\u00020\u0006H\u0016¢\u0006\u0004\bN\u0010\u0005J\u000f\u0010O\u001a\u00020\u0006H\u0016¢\u0006\u0004\bO\u0010\u0005J\u0017\u0010Q\u001a\u00020\u00062\b\u0010P\u001a\u0004\u0018\u00010%¢\u0006\u0004\bQ\u0010BR\u001b\u0010W\u001a\u00020R8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bS\u0010T\u001a\u0004\bU\u0010VR\u001b\u0010\\\u001a\u00020X8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bY\u0010T\u001a\u0004\bZ\u0010[R\u0018\u0010_\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R$\u0010c\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b`\u0010^\u001a\u0004\ba\u0010'\"\u0004\bb\u0010BR\u0018\u0010e\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010^R\u0018\u0010h\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010^R\u0018\u0010l\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010^R\u0016\u0010o\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010nR\u0018\u0010q\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010^R\u0018\u0010s\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010^R\"\u0010w\u001a\u00020%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bt\u0010^\u001a\u0004\bu\u0010'\"\u0004\bv\u0010BR$\u0010{\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bx\u0010^\u001a\u0004\by\u0010'\"\u0004\bz\u0010BR$\u0010\u007f\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b|\u0010^\u001a\u0004\b}\u0010'\"\u0004\b~\u0010BR(\u0010\u0083\u0001\u001a\u0004\u0018\u00010%8\u0006@\u0006X\u0086\u000e¢\u0006\u0015\n\u0005\b\u0080\u0001\u0010^\u001a\u0005\b\u0081\u0001\u0010'\"\u0005\b\u0082\u0001\u0010BR\u0018\u0010\u0085\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010nR\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u001c\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0092\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u001c\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0096\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u0018\u0010\u009d\u0001\u001a\u00030\u009a\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R\u001c\u0010¡\u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009f\u0001\u0010 \u0001R\u001a\u0010£\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¢\u0001\u0010^R'\u0010¨\u0001\u001a\u00020\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0016\n\u0005\b¤\u0001\u0010n\u001a\u0005\b¥\u0001\u0010)\"\u0006\b¦\u0001\u0010§\u0001R\u001a\u0010¬\u0001\u001a\u00030©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010«\u0001R!\u0010±\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010®\u00010\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R \u0010³\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u000e0\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b²\u0001\u0010°\u0001R!\u0010¶\u0001\u001a\f\u0012\u0007\u0012\u0005\u0018\u00010´\u00010\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010°\u0001R\u001f\u0010¹\u0001\u001a\n\u0012\u0005\u0012\u00030·\u00010\u00ad\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¸\u0001\u0010°\u0001R\u001a\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R\u0018\u0010¿\u0001\u001a\u00030¼\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001a\u0010Á\u0001\u001a\u00030©\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010«\u0001R\u0018\u0010Å\u0001\u001a\u00030Â\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÃ\u0001\u0010Ä\u0001¨\u0006Ç\u0001"}, d2 = {"Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Liu/f;", "Lcom/transsion/player/orplayer/e;", "<init>", "()V", "", "O0", "initAdapter", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "g1", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "newList", "", "isLoadDown", "hasMore", "R0", "(Ljava/util/List;ZZ)V", "B0", "T0", "U0", "e1", "x0", "y0", "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", "f1", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "Z0", "V0", "Landroid/view/LayoutInflater;", "inflater", "J0", "(Landroid/view/LayoutInflater;)Liu/f;", "", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isAudioShowNoNetworkLayout", "()Z", "receiveArguments", "initViewData", "Landroidx/appcompat/widget/AppCompatImageView;", "L0", "()Landroidx/appcompat/widget/AppCompatImageView;", "initViewModel", "initListener", "retryLoadData", "onStop", "onPause", "onResume", "Y0", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Lgn/e;", "mediaSource", "onCompletion", "(Lgn/e;)V", "uuid", "onMediaItemTransition", "(Ljava/lang/String;)V", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onPrepare", "onDestroyView", "hideLoading", "startLoading", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "logResume", "logPause", "ugcVideoId", "c1", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "a", "Lkotlin/Lazy;", "D0", "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "detailViewModel", "Lcom/transsnet/downloader/manager/g;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "E0", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "c", "Ljava/lang/String;", "ops", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "C0", "setCollectionId", "collectionId", "e", "firstUgcVideoId", "f", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "firstUgcVideo", "g", "ugcVideoType", "h", "subjectId", "i", "Z", "withoutHistory", "j", "tabId", CampaignEx.JSON_KEY_AD_K, "fromOptId", "l", "I0", "setTrackId", "trackId", "m", "H0", "setPreviousTrackId", "previousTrackId", "n", "G0", "setPreviousPageVideoId", "previousPageVideoId", "o", "F0", "setLastPageFrom", "lastPageFrom", TtmlNode.TAG_P, "isNewPlayer", "Lpn/f;", CampaignEx.JSON_KEY_AD_Q, "Lpn/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "Lcom/transsion/ugcvideodetail/adapter/a;", "s", "Lcom/transsion/ugcvideodetail/adapter/a;", "detailAdapter", "Lcom/tn/lib/pager/PagerLayoutManager;", "t", "Lcom/tn/lib/pager/PagerLayoutManager;", "pagerLayoutManager", "Lcom/transsion/ugcvideodetail/hepler/b;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/ugcvideodetail/hepler/b;", "pagerChangeControl", "Landroid/os/Handler;", "v", "Landroid/os/Handler;", "downloadPopHandler", "Ljava/lang/Runnable;", "w", "Ljava/lang/Runnable;", "downloadPopHideRunnable", "x", "downloadingUgcVideoId", "y", "isClickPause$UGCVideoDetail_psRelease", "b1", "(Z)V", "isClickPause", "", "z", "J", "pageLoadStartTime", "Landroidx/lifecycle/c0;", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;", "A", "Landroidx/lifecycle/c0;", "historyObserver", "B", "detailObserver", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;", "C", "listObserver", "", "D", "playingEpObserver", "E", "Lcom/transsion/player/orplayer/PlayError;", "com/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c", "F", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$c;", "loadingHandler", "G", "resumeTimeStamp", "com/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b", "H", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment$b;", "downloadListener", "I", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoDetailFragment extends PageStatusFragment<iu.f> implements com.transsion.player.orplayer.e {

    public static final Companion INSTANCE = new Companion(null);

    private final androidx.p009lifecycle.c0 historyObserver;

    private final androidx.p009lifecycle.c0 detailObserver;

    private final androidx.p009lifecycle.c0 listObserver;

    private final androidx.p009lifecycle.c0 playingEpObserver;

    private PlayError errorInfo;

    private final c loadingHandler;

    private long resumeTimeStamp;

    private final b downloadListener;

    private final Lazy detailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(UGCImmVideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy downloadManager = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return UGCImmVideoDetailFragment.A0();
        }
    });

    private String ops;

    private String collectionId;

    private String firstUgcVideoId;

    private UGCImmVideo firstUgcVideo;

    private String ugcVideoType;

    private String subjectId;

    private boolean withoutHistory;

    private String tabId;

    private String fromOptId;

    private String trackId;

    private String previousTrackId;

    private String previousPageVideoId;

    private String lastPageFrom;

    private boolean isNewPlayer;

    private pn.f orPlayer;

    private ORPlayerView orPlayerView;

    private com.transsion.ugcvideodetail.adapter.a detailAdapter;

    private PagerLayoutManager pagerLayoutManager;

    private com.transsion.ugcvideodetail.hepler.b pagerChangeControl;

    private final Handler downloadPopHandler;

    private Runnable downloadPopHideRunnable;

    private String downloadingUgcVideoId;

    private boolean isClickPause;

    private long pageLoadStartTime;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final UGCImmVideoDetailFragment a() {
            return new UGCImmVideoDetailFragment();
        }

        private Companion() {
        }
    }

    public static final class b extends zw.d {
        b() {
        }

        @Override
        public void h(DownloadBean bean, int i10) {
            com.transsion.ugcvideodetail.adapter.a aVar;
            List<Object> data;
            Intrinsics.h(bean, "bean");
            com.transsion.ugcvideodetail.adapter.a aVar2 = UGCImmVideoDetailFragment.this.detailAdapter;
            int i11 = -1;
            if (aVar2 != null && (data = aVar2.getData()) != null) {
                Iterator<Object> it = data.iterator();
                int i12 = 0;
                while (it.hasNext()) {
                    UGCVideo ugcVideo = ((UGCImmVideo) it.next()).getUgcVideo();
                    if (Intrinsics.c(ugcVideo != null ? ugcVideo.getUgcVideoId() : null, bean.getUgcVideoId())) {
                        i11 = i12;
                        break;
                    }
                    i12++;
                }
            }
            if (i11 >= 0 && (aVar = UGCImmVideoDetailFragment.this.detailAdapter) != null) {
                aVar.notifyItemChanged(i11, Integer.valueOf(i10));
            }
            UGCImmVideoDetailFragment.this.f1(bean);
        }
    }

    public static final class c extends Handler {

        private final int f54003a;

        private final long f54004b;

        c(Looper looper) {
            super(looper);
            this.f54003a = 1;
            this.f54004b = 300L;
        }

        public final long a() {
            return this.f54004b;
        }

        public final int b() {
            return this.f54003a;
        }

        @Override
        public void handleMessage(Message msg) {
            iu.f mViewBinding;
            ProgressBar progressBar;
            Intrinsics.h(msg, "msg");
            super.handleMessage(msg);
            if (msg.what != this.f54003a || (mViewBinding = UGCImmVideoDetailFragment.this.getMViewBinding()) == null || (progressBar = mViewBinding.f62649e) == null) {
                return;
            }
            uf.c.k(progressBar);
        }
    }

    public UGCImmVideoDetailFragment() {
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.trackId = string;
        this.isNewPlayer = true;
        this.downloadPopHandler = new Handler(Looper.getMainLooper());
        this.historyObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.K0(this.f54133a, (UGCVideoDetailPlayBean) obj);
            }
        };
        this.detailObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.z0(this.f54136a, (UGCImmVideo) obj);
            }
        };
        this.listObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.S0(this.f54140a, (UGCImmVideoContent) obj);
            }
        };
        this.playingEpObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                UGCImmVideoDetailFragment.W0(this.f54144a, ((Integer) obj).intValue());
            }
        };
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.loadingHandler = new c(looperMyLooper);
        this.downloadListener = new b();
    }

    public static final com.transsnet.downloader.manager.g A0() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    private final void B0() {
        String str;
        startLoading();
        if (!yg.l.f76264a.e()) {
            String str2 = this.firstUgcVideoId;
            if (str2 != null) {
                if (StringsKt.q0(str2)) {
                    str2 = null;
                }
                if (str2 != null) {
                    D0().T0(str2, this.collectionId);
                    return;
                }
            }
            String str3 = this.subjectId;
            if (str3 != null) {
                if (StringsKt.q0(str3)) {
                    str3 = null;
                }
                if (str3 != null) {
                    hideLoading();
                    PageStatusFragment.showErrorView$default(this, false, 1, null);
                    return;
                }
                return;
            }
            return;
        }
        String str4 = this.collectionId;
        if (str4 == null || str4.length() == 0 || this.withoutHistory) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "firstLoadData---1 withoutHistory:" + this.withoutHistory, false, 4, null);
            T0();
            if (this.withoutHistory || (str = this.firstUgcVideoId) == null) {
                return;
            }
            D0().Z0(str, false);
            return;
        }
        String str5 = this.firstUgcVideoId;
        if (str5 != null) {
            if (StringsKt.q0(str5)) {
                str5 = null;
            }
            if (str5 != null) {
                D0().Z0(str5, true);
                return;
            }
        }
        String str6 = this.subjectId;
        if (str6 != null) {
            String str7 = StringsKt.q0(str6) ? null : str6;
            if (str7 != null) {
                D0().K0(str7);
            }
        }
    }

    private final UGCImmVideoDetailViewModel D0() {
        return (UGCImmVideoDetailViewModel) this.detailViewModel.getValue();
    }

    private final com.transsnet.downloader.manager.g E0() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    public static final void K0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, UGCVideoDetailPlayBean uGCVideoDetailPlayBean) {
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "historyObserver: " + uGCVideoDetailPlayBean + ", withoutHistory=" + uGCImmVideoDetailFragment.withoutHistory + "， shouldRequestDetail:" + uGCImmVideoDetailFragment.D0().U0(), false, 4, null);
        if (uGCVideoDetailPlayBean != null && !uGCImmVideoDetailFragment.withoutHistory) {
            uGCImmVideoDetailFragment.firstUgcVideoId = uGCVideoDetailPlayBean.getUgcVideoId();
            uGCImmVideoDetailFragment.D0().D().q(uGCImmVideoDetailFragment.firstUgcVideoId);
        }
        if (uGCImmVideoDetailFragment.D0().U0()) {
            uGCImmVideoDetailFragment.T0();
        }
    }

    public static final void M0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment) {
        uGCImmVideoDetailFragment.U0();
    }

    public static final void N0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment) {
        if (yg.l.f76264a.e()) {
            uGCImmVideoDetailFragment.e1();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void O0() {
        pn.e eVar;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.orPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.TEXTURE_VIEW);
        com.transsion.player.orplayer.f fVarB = com.transsion.videofloat.manager.a0.f55763a.b("ImmVideo" + this.firstUgcVideoId);
        int i10 = 1;
        boolean z10 = fVarB == null;
        this.isNewPlayer = z10;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "initOrPlayer isNewPlayer:" + z10, false, 4, null);
        com.transsion.player.shorttv.preload.c cVar = null;
        Object[] objArr = 0;
        if (fVarB != null) {
            eVar = fVarB instanceof pn.e ? (pn.e) fVarB : null;
            if (eVar != null) {
                ORPlayerView oRPlayerView = this.orPlayerView;
                eVar.setTextureView(oRPlayerView != null ? oRPlayerView.getTextureView() : null);
            } else {
                eVar = null;
            }
        } else {
            eVar = new pn.e(cVar, i10, objArr == true ? 1 : 0);
            ORPlayerView oRPlayerView2 = this.orPlayerView;
            eVar.setTextureView(oRPlayerView2 != null ? oRPlayerView2.getTextureView() : null);
        }
        this.orPlayer = eVar;
        cw.b.C0694b.a(cw.b.f58659a.c(), false, 1, null);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        boolean z11 = bVar.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false);
        float f10 = bVar.b().getFloat("KEY_UGC_IMM_VIDEO_SPEED", 1.0f);
        pn.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.addPlayerListener(this);
        }
        pn.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.setLooping(!z11);
        }
        pn.f fVar3 = this.orPlayer;
        if (fVar3 != null) {
            fVar3.setSpeed(f10);
        }
        wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "initOrPlayer speed:" + f10 + ", autoPlay:" + z11, false, 4, null);
    }

    public static final void P0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, View view) {
        qi.h.f69682a.o("/ugc_video/immersive_detail", MapsKt.l(TuplesKt.a("dialog_name", "download_view"), TuplesKt.a("module_name", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW)));
        uGCImmVideoDetailFragment.V0();
    }

    public static final void Q0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, View view) {
        FragmentActivity activity = uGCImmVideoDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:70:0x0132  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r11v5 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6 */
    /* JADX WARN: Type inference failed for: r13v7 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    private final void R0(List newList, boolean isLoadDown, boolean hasMore) {
        int iVideoUGCPosition;
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        Object next;
        Pair pairA;
        ?? r11;
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        if (aVar == null) {
            return;
        }
        List<Object> data = aVar.getData();
        if (data.isEmpty()) {
            aVar.n1(CollectionsKt.U0(newList));
            t6.f fVarH0 = isLoadDown ? aVar.h0() : null;
            if (fVarH0 == null) {
                aVar.o0().e(false);
                return;
            } else if (hasMore) {
                fVarH0.s();
                return;
            } else {
                fVarH0.t(true);
                fVarH0.z(false);
                return;
            }
        }
        List<Object> list = data;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            UGCVideo ugcVideo3 = ((UGCImmVideo) it.next()).getUgcVideo();
            Integer numValueOf = ugcVideo3 != null ? Integer.valueOf(ugcVideo3.videoUGCPosition()) : null;
            if (numValueOf != null) {
                arrayList.add(numValueOf);
            }
        }
        Set setW0 = CollectionsKt.W0(arrayList);
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = newList.iterator();
        while (true) {
            iVideoUGCPosition = -1;
            if (!it2.hasNext()) {
                break;
            }
            Object next2 = it2.next();
            UGCImmVideo uGCImmVideo = (UGCImmVideo) next2;
            UGCVideo ugcVideo4 = uGCImmVideo.getUgcVideo();
            if ((ugcVideo4 != null ? ugcVideo4.videoUGCPosition() : -1) > 0) {
                Set set = setW0;
                UGCVideo ugcVideo5 = uGCImmVideo.getUgcVideo();
                if (CollectionsKt.b0(set, ugcVideo5 != null ? Integer.valueOf(ugcVideo5.videoUGCPosition()) : null)) {
                    r11 = false;
                } else {
                    r11 = true;
                }
            } else {
                r11 = false;
            }
            if (r11 != false) {
                arrayList2.add(next2);
            }
        }
        List listI0 = CollectionsKt.I0(arrayList2, new Comparator() {
            /* JADX WARN: Multi-variable type inference failed */
            @Override
            public final int compare(T t10, T t11) {
                UGCVideo ugcVideo6 = ((UGCImmVideo) t10).getUgcVideo();
                Integer numValueOf2 = Integer.valueOf(ugcVideo6 != null ? ugcVideo6.videoUGCPosition() : -1);
                UGCVideo ugcVideo7 = ((UGCImmVideo) t11).getUgcVideo();
                return ComparisonsKt.d(numValueOf2, Integer.valueOf(ugcVideo7 != null ? ugcVideo7.videoUGCPosition() : -1));
            }
        });
        if (listI0.isEmpty()) {
            t6.f fVarH1 = isLoadDown ? aVar.h0() : null;
            if (fVarH1 == null) {
                aVar.o0().e(false);
                return;
            } else if (hasMore) {
                fVarH1.s();
                return;
            } else {
                fVarH1.t(true);
                fVarH1.z(false);
                return;
            }
        }
        ArrayList arrayList3 = new ArrayList();
        int i10 = 0;
        for (Object obj : list) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                CollectionsKt.u();
            }
            UGCVideo ugcVideo6 = ((UGCImmVideo) obj).getUgcVideo();
            if (ugcVideo6 != null) {
                Integer numValueOf2 = Integer.valueOf(ugcVideo6.videoUGCPosition());
                if ((numValueOf2.intValue() > 0) == false) {
                    numValueOf2 = null;
                }
                if (numValueOf2 != null) {
                    pairA = TuplesKt.a(Integer.valueOf(numValueOf2.intValue()), Integer.valueOf(i10));
                } else {
                    pairA = null;
                }
            } else {
                pairA = null;
            }
            if (pairA != null) {
                arrayList3.add(pairA);
            }
            i10 = i11;
        }
        Map mapS = MapsKt.s(arrayList3);
        List<UGCImmVideo> list2 = listI0;
        ArrayList arrayList4 = new ArrayList(CollectionsKt.v(list2, 10));
        for (UGCImmVideo uGCImmVideo2 : list2) {
            UGCVideo ugcVideo7 = uGCImmVideo2.getUgcVideo();
            int iVideoUGCPosition2 = ugcVideo7 != null ? ugcVideo7.videoUGCPosition() : -1;
            Iterator it3 = mapS.entrySet().iterator();
            do {
                if (!it3.hasNext()) {
                    next = null;
                    break;
                }
                next = it3.next();
            } while ((((Number) ((Map.Entry) next).getKey()).intValue() >= iVideoUGCPosition2) == false);
            Map.Entry entry = (Map.Entry) next;
            arrayList4.add(TuplesKt.a(uGCImmVideo2, Integer.valueOf(entry != null ? ((Number) entry.getValue()).intValue() : data.size())));
        }
        for (Pair pair : CollectionsKt.D0(arrayList4)) {
            aVar.n(((Number) pair.component2()).intValue(), (UGCImmVideo) pair.component1());
        }
        t6.f fVarH2 = aVar.h0();
        if (!isLoadDown) {
            fVarH2 = null;
        }
        if (fVarH2 == null) {
            aVar.o0().e(false);
        } else if (hasMore) {
            fVarH2.s();
        } else {
            t6.f.u(fVarH2, false, 1, null);
            fVarH2.z(false);
        }
        UGCImmVideo uGCImmVideo3 = (UGCImmVideo) CollectionsKt.k0(aVar.getData());
        if (uGCImmVideo3 != null && (ugcVideo2 = uGCImmVideo3.getUgcVideo()) != null) {
            Integer numValueOf3 = Integer.valueOf(ugcVideo2.videoUGCPosition());
            if ((numValueOf3.intValue() > 1 ? numValueOf3 : null) != null) {
                aVar.o0().d(true);
            }
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        int size = listI0.size();
        int size2 = aVar.getData().size();
        UGCImmVideo uGCImmVideo4 = (UGCImmVideo) CollectionsKt.k0(aVar.getData());
        if (uGCImmVideo4 != null && (ugcVideo = uGCImmVideo4.getUgcVideo()) != null) {
            iVideoUGCPosition = ugcVideo.videoUGCPosition();
        }
        wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "insertCollectionList: inserted=" + size + ", adapterSize=" + size2 + ", firstPosition=" + iVideoUGCPosition, false, 4, null);
    }

    public static final void S0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, UGCImmVideoContent uGCImmVideoContent) {
        t6.f fVarH0;
        Map mapB;
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        UGCVideo ugcVideo2;
        List<UGCImmVideo> list = uGCImmVideoContent != null ? uGCImmVideoContent.getList() : null;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "listObserver: " + (list != null ? Integer.valueOf(list.size()) : null), false, 4, null);
        List<UGCImmVideo> list2 = list;
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        boolean zY0 = uGCImmVideoDetailFragment.D0().Y0();
        boolean zIsLoadDown = uGCImmVideoContent.isLoadDown();
        UGCImmVideo uGCImmVideo2 = (UGCImmVideo) CollectionsKt.k0(list);
        int iVideoUGCPosition = (uGCImmVideo2 == null || (ugcVideo2 = uGCImmVideo2.getUgcVideo()) == null) ? -1 : ugcVideo2.videoUGCPosition();
        com.transsion.ugcvideodetail.adapter.a aVar = uGCImmVideoDetailFragment.detailAdapter;
        wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "listObserver, isCollection: " + zY0 + ", isLoadDown:" + zIsLoadDown + ", firstPosition:" + iVideoUGCPosition + ", adapterFirstPosition:" + ((aVar == null || (data = aVar.getData()) == null || (uGCImmVideo = (UGCImmVideo) CollectionsKt.k0(data)) == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? -1 : ugcVideo.videoUGCPosition()) + " ", false, 4, null);
        if (zY0) {
            boolean zIsLoadDown2 = uGCImmVideoContent.isLoadDown();
            Pager pager = uGCImmVideoContent.getPager();
            uGCImmVideoDetailFragment.R0(list, zIsLoadDown2, pager != null ? Intrinsics.c(pager.getHasMore(), Boolean.TRUE) : false);
        } else {
            com.transsion.ugcvideodetail.adapter.a aVar2 = uGCImmVideoDetailFragment.detailAdapter;
            if (aVar2 != null && (fVarH0 = aVar2.h0()) != null) {
                Pager pager2 = uGCImmVideoContent.getPager();
                if (pager2 != null ? Intrinsics.c(pager2.getHasMore(), Boolean.TRUE) : false) {
                    fVarH0.s();
                } else {
                    fVarH0.t(true);
                    fVarH0.z(false);
                }
            }
            com.transsion.ugcvideodetail.adapter.a aVar3 = uGCImmVideoDetailFragment.detailAdapter;
            if (aVar3 != null) {
                aVar3.q(list2);
            }
        }
        for (UGCImmVideo uGCImmVideo3 : list) {
            gn.e mediaSource = uGCImmVideo3.toMediaSource();
            if (mediaSource != null) {
                pn.f fVar = uGCImmVideoDetailFragment.orPlayer;
                boolean zContainsKey = (fVar == null || (mapB = fVar.b()) == null) ? false : mapB.containsKey(mediaSource.e());
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                UGCVideo ugcVideo3 = uGCImmVideo3.getUgcVideo();
                wf.a.C0922a.f(c0922a2, "UGCImmVideoDetail", "listAddDataSource----isCollection:" + zY0 + " ,inPlayerList:" + zContainsKey + ", Position:" + (ugcVideo3 != null ? ugcVideo3.videoUGCPosition() : -1), false, 4, null);
                if (uGCImmVideoDetailFragment.isNewPlayer || !zContainsKey) {
                    pn.f fVar2 = uGCImmVideoDetailFragment.orPlayer;
                    if (fVar2 != null) {
                        fVar2.addDataSource(mediaSource);
                    }
                }
            }
        }
    }

    private final void T0() {
        String str = this.firstUgcVideoId;
        if (str != null) {
            if (StringsKt.q0(str)) {
                str = null;
            }
            if (str != null) {
                D0().J0(str, this.collectionId);
                return;
            }
        }
        String str2 = this.subjectId;
        if (str2 != null) {
            String str3 = StringsKt.q0(str2) ? null : str2;
            if (str3 != null) {
                D0().K0(str3);
            }
        }
    }

    private final void U0() {
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        String str = this.collectionId;
        int iVideoUGCPosition = 0;
        if (str == null || str.length() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "loadMoreData, getImmVideoRecommentList, ugcVideoId:" + this.firstUgcVideoId, false, 4, null);
            D0().S0(false, this.firstUgcVideoId);
            return;
        }
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        if (aVar != null && (data = aVar.getData()) != null && (uGCImmVideo = (UGCImmVideo) CollectionsKt.v0(data)) != null && (ugcVideo = uGCImmVideo.getUgcVideo()) != null) {
            iVideoUGCPosition = ugcVideo.videoUGCPosition();
        }
        int i10 = iVideoUGCPosition + 1;
        int i11 = iVideoUGCPosition + 9;
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "loadMoreData, startPosition:" + i10 + ", endPosition:" + i11, false, 4, null);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelD0 = D0();
        String str2 = this.collectionId;
        Intrinsics.e(str2);
        UGCImmVideoDetailViewModel.Q0(uGCImmVideoDetailViewModelD0, str2, i10, i11, true, false, 16, null);
    }

    private final void V0() {
        Navigator.x(TheRouter.c("/download/ugc_my_downloads").F("main_tab_index", 0), requireContext(), null, 2, null);
    }

    public static final void W0(final UGCImmVideoDetailFragment uGCImmVideoDetailFragment, int i10) {
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        List<Object> data;
        com.transsion.ugcvideodetail.adapter.a aVar = uGCImmVideoDetailFragment.detailAdapter;
        final int i11 = -1;
        if (aVar != null && (data = aVar.getData()) != null) {
            Iterator<Object> it = data.iterator();
            int i12 = 0;
            while (it.hasNext()) {
                UGCVideo ugcVideo = ((UGCImmVideo) it.next()).getUgcVideo();
                if (ugcVideo != null && ugcVideo.videoUGCPosition() == i10) {
                    i11 = i12;
                    break;
                }
                i12++;
            }
        }
        if (i11 < 0) {
            return;
        }
        wf.a.C0922a.r(wf.a.f74274a, "UGCImmVideoDetail", new String[]{"scrollToPosition:" + i11 + ", ep:" + i10}, false, 4, null);
        try {
            Result.Companion companion = Result.INSTANCE;
            iu.f mViewBinding = uGCImmVideoDetailFragment.getMViewBinding();
            if (mViewBinding != null && (recyclerView2 = mViewBinding.f62650f) != null) {
                recyclerView2.scrollToPosition(i11);
            }
            iu.f mViewBinding2 = uGCImmVideoDetailFragment.getMViewBinding();
            Result.m453constructorimpl((mViewBinding2 == null || (recyclerView = mViewBinding2.f62650f) == null) ? null : Boolean.valueOf(recyclerView.post(new Runnable() {
                @Override
                public final void run() {
                    UGCImmVideoDetailFragment.X0(this.f54164a, i11);
                }
            })));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void X0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, int i10) {
        PagerLayoutManager pagerLayoutManager = uGCImmVideoDetailFragment.pagerLayoutManager;
        if (pagerLayoutManager != null) {
            View viewU = pagerLayoutManager.U();
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.r(c0922a, "UGCImmVideoDetail", new String[]{"post   itemView:" + viewU}, false, 4, null);
            if (viewU != null) {
                wf.a.C0922a.r(c0922a, "UGCImmVideoDetail", new String[]{"post   itemView: 22222"}, false, 4, null);
                com.transsion.ugcvideodetail.hepler.b bVar = uGCImmVideoDetailFragment.pagerChangeControl;
                if (bVar != null) {
                    bVar.d(i10, true, viewU);
                    return;
                }
                return;
            }
            int childCount = pagerLayoutManager.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = pagerLayoutManager.getChildAt(i11);
                if (childAt != null && pagerLayoutManager.getPosition(childAt) == i10) {
                    com.transsion.ugcvideodetail.hepler.b bVar2 = uGCImmVideoDetailFragment.pagerChangeControl;
                    if (bVar2 != null) {
                        bVar2.d(i10, true, childAt);
                    }
                    wf.a.C0922a.r(wf.a.f74274a, "UGCImmVideoDetail", new String[]{"post   itemView: 11111"}, false, 4, null);
                    return;
                }
            }
        }
    }

    private final void Z0() {
        Runnable runnable = this.downloadPopHideRunnable;
        if (runnable != null) {
            this.downloadPopHandler.removeCallbacks(runnable);
        }
        Runnable runnable2 = new Runnable() {
            @Override
            public final void run() {
                UGCImmVideoDetailFragment.a1(this.f54130a);
            }
        };
        this.downloadPopHideRunnable = runnable2;
        Handler handler = this.downloadPopHandler;
        Intrinsics.e(runnable2);
        handler.postDelayed(runnable2, 3000L);
    }

    public static final void a1(UGCImmVideoDetailFragment uGCImmVideoDetailFragment) {
        iu.m mVar;
        FrameLayout root;
        iu.f mViewBinding = uGCImmVideoDetailFragment.getMViewBinding();
        if (mViewBinding == null || (mVar = mViewBinding.f62648d) == null || (root = mVar.getRoot()) == null) {
            return;
        }
        uf.c.g(root);
    }

    public static final Unit d1(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, DownloadBean downloadBean) {
        uGCImmVideoDetailFragment.f1(downloadBean);
        return Unit.f64096a;
    }

    private final void e1() {
        t6.g gVarO0;
        t6.g gVarO1;
        List<Object> data;
        UGCImmVideo uGCImmVideo;
        UGCVideo ugcVideo;
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        int iVideoUGCPosition = (aVar == null || (data = aVar.getData()) == null || (uGCImmVideo = (UGCImmVideo) CollectionsKt.v0(data)) == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? 1 : ugcVideo.videoUGCPosition();
        if (iVideoUGCPosition <= 1) {
            com.transsion.ugcvideodetail.adapter.a aVar2 = this.detailAdapter;
            if (aVar2 == null || (gVarO1 = aVar2.o0()) == null) {
                return;
            }
            gVarO1.d(false);
            return;
        }
        com.transsion.ugcvideodetail.adapter.a aVar3 = this.detailAdapter;
        if (aVar3 != null && (gVarO0 = aVar3.o0()) != null) {
            gVarO0.e(true);
        }
        int iMax = Math.max(iVideoUGCPosition - 9, 1);
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "upFetchData, firstPosition:" + iVideoUGCPosition + ", startPosition:" + iMax, false, 4, null);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelD0 = D0();
        String str = this.collectionId;
        Intrinsics.e(str);
        UGCImmVideoDetailViewModel.Q0(uGCImmVideoDetailViewModelD0, str, iMax, iVideoUGCPosition + (-1), false, false, 16, null);
    }

    public final void f1(DownloadBean bean) {
        String resourceId;
        iu.m mVar;
        AppCompatTextView appCompatTextView;
        String str = this.downloadingUgcVideoId;
        if (str == null) {
            return;
        }
        if (bean == null || (resourceId = bean.getUgcVideoId()) == null) {
            resourceId = bean != null ? bean.getResourceId() : null;
            if (resourceId == null) {
                return;
            }
        }
        if (Intrinsics.c(resourceId, str)) {
            long jM = bean != null ? RangesKt.m(bean.getProgress(), 0L, 100L) : 0L;
            iu.f mViewBinding = getMViewBinding();
            if (mViewBinding == null || (mVar = mViewBinding.f62648d) == null || (appCompatTextView = mVar.f62721c) == null) {
                return;
            }
            appCompatTextView.setText(jM + "%");
        }
    }

    private final void g1(UGCVideo video) {
        qi.b logViewConfig;
        HashMap mapG;
        HashMap mapG2;
        qi.b logViewConfig2;
        HashMap mapG3;
        qi.b logViewConfig3;
        HashMap mapG4;
        HashMap mapG5;
        HashMap mapG6;
        HashMap mapG7;
        HashMap mapG8;
        String collectionId;
        HashMap mapG9;
        qi.b logViewConfig4 = getLogViewConfig();
        if (logViewConfig4 != null) {
            String ops = video.getOps();
            if (ops == null) {
                ops = this.ops;
            }
            logViewConfig4.n(ops);
        }
        qi.b logViewConfig5 = getLogViewConfig();
        if (logViewConfig5 != null && (mapG9 = logViewConfig5.g()) != null) {
            String ugcVideoId = video.getUgcVideoId();
            if (ugcVideoId == null) {
                ugcVideoId = "";
            }
        }
        qi.b logViewConfig6 = getLogViewConfig();
        if (logViewConfig6 != null && (mapG8 = logViewConfig6.g()) != null) {
            UGCVideoBelongToCollection belongToCollection = video.getBelongToCollection();
            if ((belongToCollection == null || (collectionId = belongToCollection.getCollectionId()) == null) && (collectionId = this.collectionId) == null) {
                collectionId = "";
            }
        }
        qi.b logViewConfig7 = getLogViewConfig();
        if (logViewConfig7 != null && (mapG7 = logViewConfig7.g()) != null) {
            String subjectId = video.getSubjectId();
        }
        qi.b logViewConfig8 = getLogViewConfig();
        if (logViewConfig8 != null && (mapG6 = logViewConfig8.g()) != null) {
        }
        qi.b logViewConfig9 = getLogViewConfig();
        if (logViewConfig9 != null && (mapG5 = logViewConfig9.g()) != null) {
            String str = this.collectionId;
        }
        y0();
        String str2 = this.fromOptId;
        if (str2 != null && (logViewConfig3 = getLogViewConfig()) != null && (mapG4 = logViewConfig3.g()) != null) {
        }
        String str3 = this.previousPageVideoId;
        if (str3 != null && (logViewConfig2 = getLogViewConfig()) != null && (mapG3 = logViewConfig2.g()) != null) {
        }
        qi.b logViewConfig10 = getLogViewConfig();
        if (logViewConfig10 != null && (mapG2 = logViewConfig10.g()) != null) {
        }
        String str4 = this.previousTrackId;
        if (str4 != null && (logViewConfig = getLogViewConfig()) != null && (mapG = logViewConfig.g()) != null) {
        }
        qi.b logViewConfig11 = getLogViewConfig();
        if (logViewConfig11 != null) {
            logViewConfig11.k(true);
        }
    }

    private final void initAdapter() {
        com.transsion.ugcvideodetail.adapter.a aVar = new com.transsion.ugcvideodetail.adapter.a(this, this.trackId, this.previousTrackId, this.previousPageVideoId);
        aVar.h0().C(new UGCImmVideoLoadMoreView());
        aVar.h0().z(true);
        aVar.h0().E(3);
        aVar.h0().D(new r6.f() {
            @Override
            public final void a() {
                UGCImmVideoDetailFragment.M0(this.f54157a);
            }
        });
        aVar.o0().d(false);
        aVar.o0().c(2);
        aVar.o0().b(new r6.g() {
            @Override
            public final void a() {
                UGCImmVideoDetailFragment.N0(this.f54160a);
            }
        });
        this.detailAdapter = aVar;
    }

    private final void x0() {
        UGCVideo ugcVideo;
        UGCImmVideo uGCImmVideo = (UGCImmVideo) D0().L0().f();
        com.transsion.ugcvideodetail.adapter.a aVar = this.detailAdapter;
        if (aVar != null) {
            int iG0 = aVar.g0(uGCImmVideo) + 1;
            com.transsion.ugcvideodetail.adapter.a aVar2 = this.detailAdapter;
            if (iG0 >= (aVar2 != null ? aVar2.getItemCount() : 0)) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "autoPlayNext", false, 4, null);
            com.transsion.ugcvideodetail.adapter.a aVar3 = this.detailAdapter;
            UGCImmVideo uGCImmVideo2 = aVar3 != null ? (UGCImmVideo) aVar3.f0(iG0) : null;
            if (uGCImmVideo2 == null || (ugcVideo = uGCImmVideo2.getUgcVideo()) == null) {
                return;
            }
            D0().O0().q(Integer.valueOf(ugcVideo.videoUGCPosition()));
        }
    }

    private final void y0() {
        HashMap mapG;
        if (this.pageLoadStartTime > 0) {
            long jCurrentTimeMillis = System.currentTimeMillis() - this.pageLoadStartTime;
            qi.b logViewConfig = getLogViewConfig();
            if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            }
            wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "load_duration: " + jCurrentTimeMillis + " ms", false, 4, null);
        }
    }

    public static final void z0(UGCImmVideoDetailFragment uGCImmVideoDetailFragment, UGCImmVideo uGCImmVideo) {
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        pn.f fVar;
        Map mapB;
        com.transsion.ugcvideodetail.adapter.a aVar;
        t6.g gVarO0;
        UGCVideoBelongToCollection belongToCollection2;
        Integer videoNum;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "detailObserver: " + uGCImmVideo, false, 4, null);
        if (uGCImmVideo != null) {
            UGCVideo ugcVideo2 = uGCImmVideo.getUgcVideo();
            String ugcVideoId = ugcVideo2 != null ? ugcVideo2.getUgcVideoId() : null;
            UGCVideo ugcVideo3 = uGCImmVideo.getUgcVideo();
            String ops = ugcVideo3 != null ? ugcVideo3.getOps() : null;
            if ((ops == null || ops.length() == 0) && (ugcVideo = uGCImmVideo.getUgcVideo()) != null) {
                ugcVideo.setOps(uGCImmVideoDetailFragment.ops);
            }
            uGCImmVideoDetailFragment.firstUgcVideo = uGCImmVideo;
            UGCVideo ugcVideo4 = uGCImmVideo.getUgcVideo();
            uGCImmVideoDetailFragment.firstUgcVideoId = ugcVideoId;
            uGCImmVideoDetailFragment.D0().D().q(uGCImmVideoDetailFragment.firstUgcVideoId);
            String str = uGCImmVideoDetailFragment.collectionId;
            if (str == null || str.length() == 0) {
                UGCVideo ugcVideo5 = uGCImmVideo.getUgcVideo();
                uGCImmVideoDetailFragment.collectionId = (ugcVideo5 == null || (belongToCollection = ugcVideo5.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId();
                uGCImmVideoDetailFragment.D0().B().q(uGCImmVideoDetailFragment.collectionId);
            }
            UGCVideo ugcVideo6 = uGCImmVideo.getUgcVideo();
            boolean zContainsKey = false;
            if (((ugcVideo6 == null || (belongToCollection2 = ugcVideo6.getBelongToCollection()) == null || (videoNum = belongToCollection2.getVideoNum()) == null) ? 0 : videoNum.intValue()) <= 1) {
                uGCImmVideoDetailFragment.collectionId = null;
            }
            String str2 = uGCImmVideoDetailFragment.collectionId;
            if (!(str2 == null || str2.length() == 0)) {
                if ((ugcVideo4 != null ? ugcVideo4.videoUGCPosition() : 1) > 1 && (aVar = uGCImmVideoDetailFragment.detailAdapter) != null && (gVarO0 = aVar.o0()) != null) {
                    gVarO0.d(true);
                }
            }
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModelD0 = uGCImmVideoDetailFragment.D0();
            String str3 = uGCImmVideoDetailFragment.collectionId;
            uGCImmVideoDetailViewModelD0.b1(!(str3 == null || str3.length() == 0));
            com.transsion.ugcvideodetail.adapter.a aVar2 = uGCImmVideoDetailFragment.detailAdapter;
            if (aVar2 != null) {
                aVar2.p(uGCImmVideo);
            }
            UGCVideo ugcVideo7 = uGCImmVideo.getUgcVideo();
            if (ugcVideo7 != null) {
                uGCImmVideoDetailFragment.g1(ugcVideo7);
            }
            gn.e mediaSource = uGCImmVideo.toMediaSource();
            if (mediaSource != null) {
                pn.f fVar2 = uGCImmVideoDetailFragment.orPlayer;
                if (fVar2 != null && (mapB = fVar2.b()) != null) {
                    zContainsKey = mapB.containsKey(mediaSource.e());
                }
                boolean z10 = zContainsKey;
                wf.a.C0922a.f(c0922a, "UGCImmVideoDetail", "detailAddDataSource---- ,inPlayerList:" + z10, false, 4, null);
                if ((uGCImmVideoDetailFragment.isNewPlayer || !z10) && (fVar = uGCImmVideoDetailFragment.orPlayer) != null) {
                    fVar.addDataSource(mediaSource);
                }
                pn.f fVar3 = uGCImmVideoDetailFragment.orPlayer;
                if (fVar3 != null) {
                    fVar3.prepare();
                }
                pn.f fVar4 = uGCImmVideoDetailFragment.orPlayer;
                if (fVar4 != null) {
                    fVar4.play();
                }
            }
        }
    }

    public final String getCollectionId() {
        return this.collectionId;
    }

    public final String getLastPageFrom() {
        return this.lastPageFrom;
    }

    public final String getPreviousPageVideoId() {
        return this.previousPageVideoId;
    }

    public final String getPreviousTrackId() {
        return this.previousTrackId;
    }

    public final String getTrackId() {
        return this.trackId;
    }

    @Override
    public iu.f getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        iu.f fVarC = iu.f.c(inflater);
        Intrinsics.g(fVarC, "inflate(...)");
        return fVarC;
    }

    public final AppCompatImageView L0() {
        iu.f mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            return mViewBinding.f62647c;
        }
        return null;
    }

    public final void Y0() {
        pn.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.release();
        }
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar != null) {
            bVar.g();
        }
        E0().k(this.downloadListener);
        Runnable runnable = this.downloadPopHideRunnable;
        if (runnable != null) {
            this.downloadPopHandler.removeCallbacks(runnable);
        }
    }

    public final void b1(boolean z10) {
        this.isClickPause = z10;
    }

    public final void c1(String ugcVideoId) {
        iu.m mVar;
        if (ugcVideoId == null || ugcVideoId.length() == 0) {
            return;
        }
        this.downloadingUgcVideoId = ugcVideoId;
        iu.f mViewBinding = getMViewBinding();
        if (mViewBinding == null || (mVar = mViewBinding.f62648d) == null) {
            return;
        }
        FrameLayout root = mVar.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.k(root);
        mVar.f62721c.setText("0%");
        E0().r(ugcVideoId, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return UGCImmVideoDetailFragment.d1(this.f54127a, (DownloadBean) obj);
            }
        });
        Z0();
        qi.h.f69682a.p("/ugc_video/immersive_detail", MapsKt.f(TuplesKt.a("dialog_name", "download_view")));
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    public final void hideLoading() {
        ProgressBar progressBar;
        iu.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (progressBar = mViewBinding.f62649e) != null) {
            uf.c.g(progressBar);
        }
        c cVar = this.loadingHandler;
        cVar.removeMessages(cVar.b());
    }

    @Override
    public void initListener() {
        E0().g(this.downloadListener);
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void initViewData() {
        AppCompatImageView appCompatImageView;
        FrameLayout frameLayout;
        iu.m mVar;
        FrameLayout root;
        iu.m mVar2;
        FrameLayout root2;
        iu.m mVar3;
        FrameLayout root3;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        this.pageLoadStartTime = System.currentTimeMillis();
        initAdapter();
        O0();
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        PagerLayoutManager pagerLayoutManager = new PagerLayoutManager(fragmentActivityRequireActivity);
        pagerLayoutManager.Y(true);
        this.pagerLayoutManager = pagerLayoutManager;
        com.transsion.ugcvideodetail.hepler.b bVar = new com.transsion.ugcvideodetail.hepler.b(this, this.detailAdapter, this.orPlayer, this.orPlayerView, this.pagerLayoutManager);
        this.pagerChangeControl = bVar;
        PagerLayoutManager pagerLayoutManager2 = this.pagerLayoutManager;
        if (pagerLayoutManager2 != null) {
            pagerLayoutManager2.Z(bVar);
        }
        iu.f mViewBinding = getMViewBinding();
        if (mViewBinding != null && (recyclerView2 = mViewBinding.f62650f) != null) {
            recyclerView2.setLayoutManager(this.pagerLayoutManager);
        }
        iu.f mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (recyclerView = mViewBinding2.f62650f) != null) {
            recyclerView.setAdapter(this.detailAdapter);
        }
        iu.f mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (mVar3 = mViewBinding3.f62648d) != null && (root3 = mVar3.getRoot()) != null) {
            uf.c.g(root3);
        }
        iu.f mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (mVar2 = mViewBinding4.f62648d) != null && (root2 = mVar2.getRoot()) != null) {
            uf.c.e(root2);
        }
        iu.f mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (mVar = mViewBinding5.f62648d) != null && (root = mVar.getRoot()) != null) {
            root.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    UGCImmVideoDetailFragment.P0(this.f54150a, view);
                }
            });
        }
        iu.f mViewBinding6 = getMViewBinding();
        if (mViewBinding6 != null && (frameLayout = mViewBinding6.f62646b) != null) {
            uf.c.e(frameLayout);
        }
        iu.f mViewBinding7 = getMViewBinding();
        if (mViewBinding7 == null || (appCompatImageView = mViewBinding7.f62647c) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                UGCImmVideoDetailFragment.Q0(this.f54154a, view);
            }
        });
    }

    @Override
    public void initViewModel() {
        D0().D().q(this.firstUgcVideoId);
        D0().B().q(this.collectionId);
        D0().J().j(this, this.historyObserver);
        D0().I0().j(this, this.detailObserver);
        D0().R0().j(this, this.listObserver);
        D0().O0().j(this, this.playingEpObserver);
        D0().d1(this.ops);
        D0().j0(this.trackId);
        D0().h0(this.previousTrackId);
        D0().g0(this.previousPageVideoId);
        B0();
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public void logPause() {
        super.logPause();
        if (this.resumeTimeStamp != 0) {
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.resumeTimeStamp;
            wf.a.C0922a.r(wf.a.f74274a, "Report", new String[]{"UGCImmVideoDetail fb log duration:" + jElapsedRealtime}, false, 4, null);
            com.transsion.baselib.report.e.f42196a.n("UGCImmVideoDetailFragment", Long.valueOf(jElapsedRealtime), getContext());
        }
    }

    @Override
    public void logResume() {
        super.logResume();
        this.resumeTimeStamp = SystemClock.elapsedRealtime();
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("/ugc_video/immersive_detail", false, 2, null);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.e(this, mediaSource);
        if (com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false)) {
            x0();
        }
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        pn.f fVar;
        UGCImmVideoItemView uGCImmVideoItemViewF;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        super.onConnected(network, networkCapabilities);
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "onConnected", false, 4, null);
        T0();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar != null && (uGCImmVideoItemViewF = bVar.f()) != null) {
            uGCImmVideoItemViewF.onNetConnect();
        }
        if (this.errorInfo == null || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.prepare();
    }

    @Override
    public void onDestroyView() {
        super.onDestroyView();
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e eVar) {
        com.transsion.player.orplayer.e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        com.transsion.player.orplayer.e.a.k(this, eVar);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.player.orplayer.e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String uuid) {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        gn.e mediaSource;
        UGCImmVideo uGCImmVideo = this.firstUgcVideo;
        if (Intrinsics.c(uuid, (uGCImmVideo == null || (mediaSource = uGCImmVideo.toMediaSource()) == null) ? null : mediaSource.e())) {
            wf.a.C0922a.r(wf.a.f74274a, "UGCImmVideoDetail", new String[]{"onMediaItemTransition ：" + uuid + ",是当前视频，跳过"}, false, 4, null);
            return;
        }
        boolean z10 = com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("KEY_UGC_IMM_VIDEO_AUTO_PLAY", false);
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "onMediaItemTransition autoPlay:" + z10 + ", uuid：" + uuid, false, 4, null);
        if (z10) {
            x0();
            com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
            if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
                return;
            }
            uGCImmVideoItemViewF.onItemViewMediaItemTransition();
        }
    }

    @Override
    public void onPause() {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        super.onPause();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
            return;
        }
        uGCImmVideoItemViewF.onPagePause();
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e.a.q(this, errorInfo, mediaSource);
        this.errorInfo = errorInfo;
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.w(this, mediaSource);
        this.errorInfo = null;
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.y(this, j10, eVar);
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
    }

    @Override
    public void onResume() {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        super.onResume();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
            return;
        }
        uGCImmVideoItemViewF.onPageResume();
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onStop() {
        UGCImmVideoItemView uGCImmVideoItemViewF;
        super.onStop();
        com.transsion.ugcvideodetail.hepler.b bVar = this.pagerChangeControl;
        if (bVar == null || (uGCImmVideoItemViewF = bVar.f()) == null) {
            return;
        }
        uGCImmVideoItemViewF.onPageStop();
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        com.transsion.player.orplayer.e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        com.transsion.player.orplayer.e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e eVar) {
        com.transsion.player.orplayer.e.a.F(this, eVar);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e eVar) {
        com.transsion.player.orplayer.e.a.I(this, eVar);
    }

    @Override
    public void receiveArguments() {
        super.receiveArguments();
        this.lastPageFrom = qi.h.f69682a.h();
        Bundle arguments = getArguments();
        this.firstUgcVideoId = arguments != null ? arguments.getString("id") : null;
        Bundle arguments2 = getArguments();
        this.collectionId = arguments2 != null ? arguments2.getString("collection_id") : null;
        Bundle arguments3 = getArguments();
        this.subjectId = arguments3 != null ? arguments3.getString("subject_id") : null;
        Bundle arguments4 = getArguments();
        this.ugcVideoType = arguments4 != null ? arguments4.getString("ugcCategory") : null;
        Bundle arguments5 = getArguments();
        this.ops = arguments5 != null ? arguments5.getString("ops") : null;
        Bundle arguments6 = getArguments();
        this.previousPageVideoId = arguments6 != null ? arguments6.getString("parent_video_id") : null;
        Bundle arguments7 = getArguments();
        this.tabId = arguments7 != null ? arguments7.getString("tab_id") : null;
        Bundle arguments8 = getArguments();
        this.withoutHistory = arguments8 != null ? arguments8.getBoolean("ugc_without_history", false) : false;
        Bundle arguments9 = getArguments();
        this.fromOptId = arguments9 != null ? arguments9.getString("from_opt_id") : null;
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.j(this.lastPageFrom);
        }
        wf.a.C0922a.f(wf.a.f74274a, "UGCImmVideoDetail", "receiveArguments: collectionId:" + this.collectionId + ", ugcVideoId=" + this.firstUgcVideoId + ", previousPageVideoId=" + this.previousPageVideoId, false, 4, null);
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    public final void startLoading() {
        c cVar = this.loadingHandler;
        if (cVar.hasMessages(cVar.b())) {
            return;
        }
        c cVar2 = this.loadingHandler;
        cVar2.sendEmptyMessageDelayed(cVar2.b(), this.loadingHandler.a());
    }
}
