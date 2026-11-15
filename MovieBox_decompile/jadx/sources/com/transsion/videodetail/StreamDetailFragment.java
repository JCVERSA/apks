package com.transsion.videodetail;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Bundle;
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
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.bubbleview.BubbleTextView;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baseui.activity.BaseMusicFloatActivity;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.widget.GradientTextView;
import com.transsion.bean.GameInfoType;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetail.activity.MovieDetailActivity;
import com.transsion.moviedetail.fragment.ResourceDetectorEmptyFragment;
import com.transsion.moviedetail.fragment.ResourceDetectorFamilyModeFragment;
import com.transsion.moviedetail.fragment.RestrictTipsDialog;
import com.transsion.moviedetail.viewmodel.MovieDetailViewModel;
import com.transsion.moviedetailapi.DownloadItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ResourcesSeasonList;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.SubjectGameInfo;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import com.transsion.player.longvideo.ui.LongVodUiType;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.shorttv.widget.ShortTVHistoryView;
import com.transsion.push.PushConstants;
import com.transsion.usercenter.setting.labelsfeedback.model.FbTvData;
import com.transsion.videodetail.bean.VideoDetailMediaSource;
import com.transsion.videodetail.bean.VideoDetailStream;
import com.transsion.videodetail.bean.VideoDetailStreamList;
import com.transsion.videodetail.util.StreamFloatManager;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.bean.FloatPlayType;
import com.transsion.wrapperad.view.cardpage.NativeCardPageAdHelper;
import com.transsion.wrapperad.view.cardpage.NativeCardPageView;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import net.lucode.hackware.magicindicator.MagicIndicator;

@Metadata(d1 = {"\u0000¤\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b)\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0002à\u0001\u0018\u0000 ð\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0002\u0081\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\r\u0010\u0005J\u0019\u0010\u0010\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0012\u0010\u0005J\u0017\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0018\u0010\u0005J\u0019\u0010\u001a\u001a\u00020\u00062\b\u0010\u0019\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u001a\u0010\u0016J\u000f\u0010\u001b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\u0005J)\u0010 \u001a\u0004\u0018\u00010\t2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u001eH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\"\u0010\u0005J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u0019\u0010&\u001a\u00020\u00062\b\u0010%\u001a\u0004\u0018\u00010$H\u0002¢\u0006\u0004\b&\u0010'J\u0019\u0010*\u001a\u00020\u00062\b\u0010)\u001a\u0004\u0018\u00010(H\u0002¢\u0006\u0004\b*\u0010+J%\u00100\u001a\b\u0012\u0004\u0012\u00020/0.2\u000e\u0010-\u001a\n\u0012\u0004\u0012\u00020,\u0018\u00010\u001eH\u0002¢\u0006\u0004\b0\u00101J\u0019\u00104\u001a\u0002032\b\u00102\u001a\u0004\u0018\u00010,H\u0002¢\u0006\u0004\b4\u00105J\u0017\u00107\u001a\u00020\u00062\u0006\u00106\u001a\u00020\u000eH\u0002¢\u0006\u0004\b7\u0010\u0011J\u000f\u00108\u001a\u00020\u0006H\u0002¢\u0006\u0004\b8\u0010\u0005J\u000f\u00109\u001a\u00020\u0006H\u0002¢\u0006\u0004\b9\u0010\u0005J\u000f\u0010:\u001a\u00020\u0006H\u0002¢\u0006\u0004\b:\u0010\u0005J\u000f\u0010;\u001a\u00020\u0006H\u0002¢\u0006\u0004\b;\u0010\u0005J\u000f\u0010<\u001a\u00020\u0006H\u0002¢\u0006\u0004\b<\u0010\u0005J\u000f\u0010=\u001a\u00020\u000eH\u0002¢\u0006\u0004\b=\u0010>J\u000f\u0010?\u001a\u00020\u0006H\u0002¢\u0006\u0004\b?\u0010\u0005J\u000f\u0010@\u001a\u00020\u0006H\u0002¢\u0006\u0004\b@\u0010\u0005J\u000f\u0010A\u001a\u00020\u0006H\u0002¢\u0006\u0004\bA\u0010\u0005J\u000f\u0010B\u001a\u00020\u0006H\u0002¢\u0006\u0004\bB\u0010\u0005J\u000f\u0010C\u001a\u00020\u0006H\u0002¢\u0006\u0004\bC\u0010\u0005J\u0019\u0010F\u001a\u00020\u00062\b\b\u0002\u0010E\u001a\u00020DH\u0002¢\u0006\u0004\bF\u0010GJ\u000f\u0010H\u001a\u00020\u0006H\u0002¢\u0006\u0004\bH\u0010\u0005J\u000f\u0010I\u001a\u00020\u0006H\u0002¢\u0006\u0004\bI\u0010\u0005J\u0017\u0010L\u001a\u00020\u000e2\u0006\u0010K\u001a\u00020JH\u0002¢\u0006\u0004\bL\u0010MJ\u0011\u0010O\u001a\u0004\u0018\u00010NH\u0002¢\u0006\u0004\bO\u0010PJ\u000f\u0010Q\u001a\u00020\u0006H\u0002¢\u0006\u0004\bQ\u0010\u0005J\u0017\u0010T\u001a\u00020\u00062\u0006\u0010S\u001a\u00020RH\u0002¢\u0006\u0004\bT\u0010UJ\u000f\u0010V\u001a\u00020\u0006H\u0002¢\u0006\u0004\bV\u0010\u0005J\u0017\u0010W\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bW\u0010\u0016J\u0019\u0010Z\u001a\u00020\u00062\b\u0010Y\u001a\u0004\u0018\u00010XH\u0002¢\u0006\u0004\bZ\u0010[J\u0019\u0010^\u001a\u00020\u00062\b\u0010]\u001a\u0004\u0018\u00010\\H\u0016¢\u0006\u0004\b^\u0010_J\u000f\u0010`\u001a\u00020\u0006H\u0016¢\u0006\u0004\b`\u0010\u0005J\u0017\u0010c\u001a\u00020\u00022\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020XH\u0016¢\u0006\u0004\be\u0010fJ\u000f\u0010g\u001a\u00020\u000eH\u0016¢\u0006\u0004\bg\u0010>J\u000f\u0010h\u001a\u00020\u0006H\u0016¢\u0006\u0004\bh\u0010\u0005J\u000f\u0010i\u001a\u00020\u0006H\u0016¢\u0006\u0004\bi\u0010\u0005J\u000f\u0010j\u001a\u00020\u0006H\u0016¢\u0006\u0004\bj\u0010\u0005J\u000f\u0010k\u001a\u00020\u0006H\u0016¢\u0006\u0004\bk\u0010\u0005J\u000f\u0010m\u001a\u00020lH\u0016¢\u0006\u0004\bm\u0010nJ\u000f\u0010o\u001a\u00020\u0006H\u0016¢\u0006\u0004\bo\u0010\u0005J\u0011\u0010q\u001a\u0004\u0018\u00010pH\u0016¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\u0006H\u0016¢\u0006\u0004\bs\u0010\u0005J\u000f\u0010t\u001a\u00020\u0006H\u0016¢\u0006\u0004\bt\u0010\u0005J\u000f\u0010u\u001a\u00020\u0006H\u0016¢\u0006\u0004\bu\u0010\u0005J\r\u0010v\u001a\u00020\u0006¢\u0006\u0004\bv\u0010\u0005J\u0017\u0010x\u001a\u00020\u00062\u0006\u0010w\u001a\u00020\u000eH\u0016¢\u0006\u0004\bx\u0010\u0011J\u000f\u0010y\u001a\u00020\u0006H\u0016¢\u0006\u0004\by\u0010\u0005J\u000f\u0010z\u001a\u00020\u0006H\u0016¢\u0006\u0004\bz\u0010\u0005J\u000f\u0010{\u001a\u00020\u0006H\u0016¢\u0006\u0004\b{\u0010\u0005J\u001f\u0010~\u001a\u00020\u00062\u000e\u0010}\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010|H\u0016¢\u0006\u0004\b~\u0010\u007fR\u001c\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0080\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0001\u0010\u0082\u0001R\u001c\u0010\u0087\u0001\u001a\u0005\u0018\u00010\u0084\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001R\u001b\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001R!\u0010\u0090\u0001\u001a\u00030\u008b\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u008c\u0001\u0010\u008d\u0001\u001a\u0006\b\u008e\u0001\u0010\u008f\u0001R!\u0010\u0095\u0001\u001a\u00030\u0091\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0092\u0001\u0010\u008d\u0001\u001a\u0006\b\u0093\u0001\u0010\u0094\u0001R!\u0010\u009a\u0001\u001a\u00030\u0096\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0097\u0001\u0010\u008d\u0001\u001a\u0006\b\u0098\u0001\u0010\u0099\u0001R#\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009b\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009c\u0001\u0010\u008d\u0001\u001a\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001b\u0010¢\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010¡\u0001R\u001b\u0010¤\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010¡\u0001R\u0019\u0010§\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001b\u0010©\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010¡\u0001R\u0019\u0010«\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bª\u0001\u0010¦\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010¦\u0001R\u001b\u0010¯\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¡\u0001R(\u0010µ\u0001\u001a\u00020D8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b°\u0001\u0010±\u0001\u001a\u0006\b²\u0001\u0010³\u0001\"\u0005\b´\u0001\u0010GR\u0019\u0010·\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010±\u0001R\u0019\u0010¹\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010±\u0001R\u0019\u0010»\u0001\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010±\u0001R\u001b\u0010½\u0001\u001a\u0004\u0018\u00010X8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010¡\u0001R\u0019\u0010¿\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¦\u0001R\u001b\u0010Â\u0001\u001a\u0004\u0018\u00010p8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÀ\u0001\u0010Á\u0001R\u0019\u0010Ä\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010¦\u0001R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010Å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R#\u0010Í\u0001\u001a\u0005\u0018\u00010É\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÊ\u0001\u0010\u008d\u0001\u001a\u0006\bË\u0001\u0010Ì\u0001R\u001a\u0010Ñ\u0001\u001a\u00030Î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010Ð\u0001R\u0019\u0010Ô\u0001\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010Ó\u0001R!\u0010×\u0001\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010|8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0001\u0010Ö\u0001R\u0019\u0010Ù\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010¦\u0001R\u0019\u0010Û\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010¦\u0001R\u001c\u0010ß\u0001\u001a\u0005\u0018\u00010Ü\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010Þ\u0001R\u0018\u0010ã\u0001\u001a\u00030à\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bá\u0001\u0010â\u0001R\u001a\u0010)\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0001\u0010å\u0001R \u0010é\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010(0æ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bç\u0001\u0010è\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010ë\u0001R\u001c\u0010î\u0001\u001a\u0005\u0018\u00010ì\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b±\u0001\u0010í\u0001R\u0019\u0010ï\u0001\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010¦\u0001¨\u0006ñ\u0001"}, d2 = {"Lcom/transsion/videodetail/StreamDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lxv/i;", "Len/a;", "<init>", "()V", "", "Z1", "q1", "Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "episodeMedia", "e1", "(Lcom/transsion/videodetail/bean/VideoDetailMediaSource;)V", "Y0", "", "isAudioTracksChange", "O1", "(Z)V", "l2", "Lcom/transsion/moviedetailapi/bean/Subject;", "movieDetailBean", "r2", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "t1", "p2", "subject", "c2", "A1", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", ShortTVHistoryView.TYPE_HISTORY, "", "episodeMediaList", "l1", "(Lcom/transsion/baselib/db/video/VideoDetailPlayBean;Ljava/util/List;)Lcom/transsion/videodetail/bean/VideoDetailMediaSource;", "Z0", "j2", "Lln/a;", "bean", "U1", "(Lln/a;)V", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "videoDetailStreamList", "W1", "(Lcom/transsion/videodetail/bean/VideoDetailStreamList;)V", "Lcom/transsion/videodetail/bean/VideoDetailStream;", "videoDetailStream", "", "Lln/c;", "p1", "(Ljava/util/List;)Ljava/util/List;", "stream", "Lcom/transsion/player/enum/PlayMimeType;", "j1", "(Lcom/transsion/videodetail/bean/VideoDetailStream;)Lcom/transsion/player/enum/PlayMimeType;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "R1", "S1", "showLoading", "c1", "i2", "d1", "W0", "()Z", "r1", "X0", "b1", "m2", "v1", "", "visible", "n2", "(I)V", "a1", "D1", "Lcom/transsion/videofloat/bean/FloatActionType;", "actionType", "e2", "(Lcom/transsion/videofloat/bean/FloatActionType;)Z", "Ldw/a;", "g1", "()Ldw/a;", "x1", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "uiType", "T1", "(Lcom/transsion/player/longvideo/ui/LongVodUiType;)V", "h2", "B1", "", "genre", "N1", "(Ljava/lang/String;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "o1", "(Landroid/view/LayoutInflater;)Lxv/i;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isRegisteDeviceKeyMonitor", "initViewData", "initViewModel", "initListener", "retryLoadData", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "loadDefaultData", "Landroid/view/View;", "getLoadingView", "()Landroid/view/View;", "onResume", "onPause", "onStop", "Y1", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "onDestroy", "Lkotlin/Function0;", "callback", "S", "(Lkotlin/jvm/functions/Function0;)V", "Lkn/a;", "a", "Lkn/a;", "playerControl", "Lzm/e;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lzm/e;", "bottomRecHelper", "c", "Lcom/transsion/moviedetailapi/bean/Subject;", "mMovieDetailBean", "Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "k1", "()Lcom/transsion/moviedetail/viewmodel/MovieDetailViewModel;", "movieDetailViewModel", "Lcom/transsion/videodetail/VideoDetailViewModel;", "e", "n1", "()Lcom/transsion/videodetail/VideoDetailViewModel;", "videoDetailViewModel", "Lcom/transsnet/downloader/viewmodel/k0;", "f", "f1", "()Lcom/transsnet/downloader/viewmodel/k0;", "downloadViewModel", "Ljo/a;", "g", "m1", "()Ljo/a;", "publishedApi", "h", "Ljava/lang/String;", "mSubjectId", "i", "ops", "j", "Z", "netResultSuccess", CampaignEx.JSON_KEY_AD_K, "moduleName", "l", "autoDownload", "m", "autoPlay", "n", "autoPlayResourceId", "o", "I", "getPreloadId", "()I", "setPreloadId", "preloadId", TtmlNode.TAG_P, "curSeason", CampaignEx.JSON_KEY_AD_Q, "targetSeason", CampaignEx.JSON_KEY_AD_R, "targetEp", "s", "lastPageFrom", "t", "hasClickedActivityTip", TmcStartParams.KEY_URL_SHORT, "Landroid/view/View;", "gameResView", "v", "isGameResInit", "Lkk/a;", "w", "Lkk/a;", "palmPayApi", "Lim/b;", "x", "i1", "()Lim/b;", "memberProvider", "", "y", "J", "curAudioTrackPlayProgress", "z", "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "curPlayerUiType", "A", "Lkotlin/jvm/functions/Function0;", "backPressedCallback", "B", "hasResource", "C", "isInterceptDialogShow", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "D", "Lcom/transsion/wrapperad/view/cardpage/NativeCardPageAdHelper;", "adHelper", "com/transsion/videodetail/StreamDetailFragment$d", "E", "Lcom/transsion/videodetail/StreamDetailFragment$d;", "networkStatusChangedListener", "F", "Lcom/transsion/videodetail/bean/VideoDetailStreamList;", "Landroidx/lifecycle/c0;", "G", "Landroidx/lifecycle/c0;", "playInfoObserver", "H", "Lcom/transsion/baselib/db/video/VideoDetailPlayBean;", "Lxv/j;", "Lxv/j;", "loadingViewBinding", "showNetErr", "K", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class StreamDetailFragment extends PageStatusFragment<xv.i> implements en.a {

    public static final Companion INSTANCE = new Companion(null);

    private Function0 backPressedCallback;

    private boolean isInterceptDialogShow;

    private NativeCardPageAdHelper adHelper;

    private VideoDetailStreamList videoDetailStreamList;

    private VideoDetailPlayBean history;

    private xv.j loadingViewBinding;

    private boolean showNetErr;

    private kn.a playerControl;

    private zm.e bottomRecHelper;

    private Subject mMovieDetailBean;

    private String mSubjectId;

    private String ops;

    private boolean netResultSuccess;

    private String moduleName;

    private boolean autoDownload;

    private boolean autoPlay;

    private String autoPlayResourceId;

    private int preloadId;

    private int targetSeason;

    private int targetEp;

    private String lastPageFrom;

    private boolean hasClickedActivityTip;

    private View gameResView;

    private boolean isGameResInit;

    private long curAudioTrackPlayProgress;

    private final Lazy movieDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(MovieDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy videoDetailViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(VideoDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy downloadViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsnet.downloader.viewmodel.k0.class), new Function0<androidx.p009lifecycle.x0>() {
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

    private final Lazy publishedApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StreamDetailFragment.X1();
        }
    });

    private int curSeason = 1;

    private kk.a palmPayApi = (kk.a) TheRouter.d(kk.a.class, new Object[0]);

    private final Lazy memberProvider = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return StreamDetailFragment.Q1();
        }
    });

    private LongVodUiType curPlayerUiType = LongVodUiType.MIDDLE;

    private boolean hasResource = true;

    private final d networkStatusChangedListener = new d();

    private final androidx.p009lifecycle.c0 playInfoObserver = new androidx.p009lifecycle.c0() {
        @Override
        public final void onChanged(Object obj) {
            StreamDetailFragment.V1(this.f55543a, (VideoDetailStreamList) obj);
        }
    };

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final StreamDetailFragment a() {
            return new StreamDetailFragment();
        }

        private Companion() {
        }
    }

    public static final class b implements ViewTreeObserver.OnGlobalLayoutListener {
        b() {
        }

        @Override
        public void onGlobalLayout() {
            BubbleTextView bubbleTextView;
            ViewTreeObserver viewTreeObserver;
            xv.i mViewBinding = StreamDetailFragment.this.getMViewBinding();
            if (mViewBinding != null && (bubbleTextView = mViewBinding.f75946b) != null && (viewTreeObserver = bubbleTextView.getViewTreeObserver()) != null) {
                viewTreeObserver.removeOnGlobalLayoutListener(this);
            }
            xv.i mViewBinding2 = StreamDetailFragment.this.getMViewBinding();
            BubbleTextView bubbleTextView2 = mViewBinding2 != null ? mViewBinding2.f75946b : null;
            if (bubbleTextView2 == null || bubbleTextView2.getMeasuredWidth() == 0) {
                return;
            }
            float measuredWidth = (bubbleTextView2.getMeasuredWidth() / 2) - (com.blankj.utilcode.util.a0.a(16.0f) / 2);
            bubbleTextView2.setArrowPosition(measuredWidth);
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "activity tip width: " + bubbleTextView2.getMeasuredWidth() + ", arrowPosition: " + measuredWidth, false, 4, null);
        }
    }

    public static final class c extends androidx.activity.u {
        c() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            Function0 function0 = StreamDetailFragment.this.backPressedCallback;
            if (function0 == null || !((Boolean) function0.invoke()).booleanValue()) {
                if (StreamDetailFragment.this.playerControl != null) {
                    kn.a aVar = StreamDetailFragment.this.playerControl;
                    if (aVar != null) {
                        aVar.onBackPressed();
                        return;
                    }
                    return;
                }
                FragmentActivity activity = StreamDetailFragment.this.getActivity();
                if (activity != null) {
                    activity.finish();
                }
            }
        }
    }

    public static final class d implements yg.m {
        d() {
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
            StreamDetailFragment.this.d1();
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) StreamDetailFragment.this.n1().x().f();
            if (videoDetailMediaSource != null) {
                StreamDetailFragment streamDetailFragment = StreamDetailFragment.this;
                VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) streamDetailFragment.n1().w().f();
                if (videoDetailStreamList != null && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe() && videoDetailMediaSource.getEp() == videoDetailStreamList.getEp()) {
                    return;
                }
                streamDetailFragment.e1(videoDetailMediaSource);
            }
        }
    }

    static final class e implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f55430a;

        e(Function1 function) {
            Intrinsics.h(function, "function");
            this.f55430a = function;
        }

        @Override
        public final Function a() {
            return this.f55430a;
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
            this.f55430a.invoke(obj);
        }
    }

    public static final class f implements gw.a {
        f() {
        }

        @Override
        public boolean a(dw.a aVar) {
            return StreamFloatManager.f55703b.r(aVar);
        }

        @Override
        public void b(dw.a aVar) {
            StreamFloatManager streamFloatManager = StreamFloatManager.f55703b;
            streamFloatManager.p();
            streamFloatManager.t(aVar);
        }

        @Override
        public void c(dw.a aVar) {
            gw.a.C0742a.a(this, aVar);
            StreamFloatManager.f55703b.q(aVar);
        }
    }

    public static final class g implements kn.a.b {
        g() {
        }

        @Override
        public void a() {
            StreamDetailFragment.this.Z0();
        }

        @Override
        public boolean b() {
            if (StreamDetailFragment.this.showNetErr && yg.l.f76264a.e()) {
                StreamDetailFragment streamDetailFragment = StreamDetailFragment.this;
                streamDetailFragment.e1((VideoDetailMediaSource) streamDetailFragment.n1().x().f());
            }
            return StreamDetailFragment.this.showNetErr;
        }

        @Override
        public boolean c(FloatActionType actionType) {
            Intrinsics.h(actionType, "actionType");
            return StreamDetailFragment.this.e2(actionType);
        }

        @Override
        public void d(LongVodUiType uiType) {
            Intrinsics.h(uiType, "uiType");
            StreamDetailFragment.this.curPlayerUiType = uiType;
            StreamDetailFragment.this.T1(uiType);
            zm.e eVar = StreamDetailFragment.this.bottomRecHelper;
            if (eVar != null) {
                eVar.x(uiType != LongVodUiType.MIDDLE);
            }
        }

        @Override
        public View e() {
            return StreamDetailFragment.this.gameResView;
        }

        @Override
        public void f(boolean z10) {
            AppCompatImageView appCompatImageView;
            xv.i mViewBinding = StreamDetailFragment.this.getMViewBinding();
            if (mViewBinding == null || (appCompatImageView = mViewBinding.f75954j) == null) {
                return;
            }
            appCompatImageView.setVisibility(z10 ? 0 : 8);
        }

        @Override
        public void g(ln.a aVar) {
            StreamDetailFragment.this.U1(aVar);
        }

        @Override
        public void onCompletion() {
            StreamDetailFragment.this.Z0();
        }
    }

    private final void A1() {
        ResourcesSeasonList resourcesSeasonList;
        if (this.mSubjectId == null || (resourcesSeasonList = (ResourcesSeasonList) n1().y().f()) == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "checkPlayInfo 没有资源", false, 4, null);
            return;
        }
        if (resourcesSeasonList.isSeries()) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "checkPlayInfo 是剧集，获取记录决定哪集", false, 4, null);
            List list = (List) n1().s().f();
            if (list == null) {
                return;
            }
            VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) n1().u().f();
            this.history = videoDetailPlayBean;
            n1().B(l1(videoDetailPlayBean, list));
            return;
        }
        if (resourcesSeasonList.isMovie()) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "checkPlayInfo 是电影", false, 4, null);
            List list2 = (List) n1().s().f();
            if (list2 == null) {
                return;
            }
            this.history = (VideoDetailPlayBean) n1().u().f();
            n1().B((VideoDetailMediaSource) CollectionsKt.k0(list2));
        }
    }

    private final void B1(Subject movieDetailBean) {
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
            value = Utils.a().getString(com.transsion.moviedetail.R$string.movie_detail_restrict_tips);
        }
        final RestrictTipsDialog restrictTipsDialogA = RestrictTipsDialog.INSTANCE.a(value, "stream_detail", movieDetailBean.getSubjectId());
        restrictTipsDialogA.l0(this, "RestrictTipsDialog");
        restrictTipsDialogA.y0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.C1(restrictTipsDialogA, this, ((Boolean) obj).booleanValue());
            }
        });
    }

    public static final Unit C1(RestrictTipsDialog restrictTipsDialog, StreamDetailFragment streamDetailFragment, boolean z10) {
        if (z10) {
            kn.a aVar = streamDetailFragment.playerControl;
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

    private final void D1() {
        ConstraintLayout root;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (root = mViewBinding.getRoot()) == null) {
            return;
        }
        root.post(new Runnable() {
            @Override
            public final void run() {
                StreamDetailFragment.E1(this.f55518a);
            }
        });
    }

    public static final void E1(StreamDetailFragment streamDetailFragment) {
        Subject subject;
        String subjectId;
        String ops;
        FragmentActivity activity = streamDetailFragment.getActivity();
        if (activity == null || (subject = streamDetailFragment.mMovieDetailBean) == null || (subjectId = subject.getSubjectId()) == null) {
            return;
        }
        cw.b bVarC = cw.b.f58659a.c();
        Subject subject2 = streamDetailFragment.mMovieDetailBean;
        bVarC.f(activity, subjectId, null, "stream_detail", (subject2 == null || (ops = subject2.getOps()) == null) ? streamDetailFragment.ops : ops);
    }

    public static final Unit F1(StreamDetailFragment streamDetailFragment, VideoDetailPlayBean videoDetailPlayBean) {
        Subject subject;
        String str = streamDetailFragment.ops;
        if (str == null || str.length() == 0) {
            streamDetailFragment.ops = videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null;
        }
        Subject subject2 = streamDetailFragment.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = streamDetailFragment.mMovieDetailBean) != null) {
            subject.setOps(videoDetailPlayBean != null ? videoDetailPlayBean.getOps() : null);
        }
        return Unit.f64096a;
    }

    public static final Unit G1(StreamDetailFragment streamDetailFragment, DubsInfo dubsInfo) {
        kn.a aVar = streamDetailFragment.playerControl;
        streamDetailFragment.curAudioTrackPlayProgress = aVar != null ? aVar.currentPosition() : 0L;
        streamDetailFragment.mSubjectId = dubsInfo.getSubjectId();
        streamDetailFragment.mMovieDetailBean = null;
        streamDetailFragment.videoDetailStreamList = null;
        streamDetailFragment.n1().C();
        MovieDetailViewModel movieDetailViewModelK1 = streamDetailFragment.k1();
        int i10 = streamDetailFragment.preloadId;
        String str = streamDetailFragment.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelK1.S(i10, str, Integer.valueOf(streamDetailFragment.curSeason));
        streamDetailFragment.O1(true);
        return Unit.f64096a;
    }

    public static final Unit H1(StreamDetailFragment streamDetailFragment, Boolean bool) {
        wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "isShowDownloadInterceptDialog --> " + bool, false, 4, null);
        Intrinsics.e(bool);
        boolean zBooleanValue = bool.booleanValue();
        streamDetailFragment.isInterceptDialogShow = zBooleanValue;
        if (zBooleanValue) {
            kn.a aVar = streamDetailFragment.playerControl;
            if (aVar != null) {
                aVar.onViewPause();
            }
        } else {
            streamDetailFragment.onResume();
        }
        return Unit.f64096a;
    }

    public static final Unit I1(StreamDetailFragment streamDetailFragment, Pair pair) {
        HashMap mapG;
        HashMap mapG2;
        HashMap mapG3;
        Subject subject = (Subject) pair.getSecond();
        wf.a.f74274a.c("videoDetail", "get movie detail data==" + pair, true);
        if (subject == null) {
            if (Intrinsics.c(pair.getFirst(), "404")) {
                com.tn.lib.widget.toast.core.h.f40484a.k(com.transsion.moviedetail.R$string.movie_lost_content);
                kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(streamDetailFragment), null, null, new StreamDetailFragment$initViewModel$1$1$1(streamDetailFragment, null), 3, null);
            }
            if (yg.l.f76264a.e()) {
                PageStatusFragment.showEmptyView$default(streamDetailFragment, false, 1, null);
            } else {
                PageStatusFragment.showNoNetworkView$default(streamDetailFragment, false, 1, null);
            }
        } else {
            if (subject.getIsRefreshViewOnly()) {
                streamDetailFragment.r2(subject);
                return Unit.f64096a;
            }
            MovieDetailViewModel movieDetailViewModelK1 = streamDetailFragment.k1();
            String subjectId = subject.getSubjectId();
            Integer subjectType = subject.getSubjectType();
            Context context = streamDetailFragment.getContext();
            MovieDetailViewModel.u(movieDetailViewModelK1, subjectId, subjectType, 0, context != null && com.transsion.baseui.util.b.a(context), 4, null);
            streamDetailFragment.showContentView();
            streamDetailFragment.netResultSuccess = true;
            streamDetailFragment.r2(subject);
            streamDetailFragment.p2();
            streamDetailFragment.q1();
            streamDetailFragment.l2();
            qi.b logViewConfig = streamDetailFragment.getLogViewConfig();
            if (logViewConfig != null) {
                logViewConfig.k(true);
            }
            qi.b logViewConfig2 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig2 != null) {
                logViewConfig2.n(streamDetailFragment.ops);
            }
            qi.b logViewConfig3 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig3 != null && (mapG3 = logViewConfig3.g()) != null) {
                String subjectId2 = subject.getSubjectId();
                if (subjectId2 == null) {
                    subjectId2 = "";
                }
                mapG3.put("subject_id", subjectId2);
            }
            qi.b logViewConfig4 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig4 != null && (mapG2 = logViewConfig4.g()) != null) {
                mapG2.put("has_resource", String.valueOf(subject.getHasResource()));
            }
            qi.b logViewConfig5 = streamDetailFragment.getLogViewConfig();
            if (logViewConfig5 != null && (mapG = logViewConfig5.g()) != null) {
                mapG.put("module_name", streamDetailFragment.moduleName);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit J1(StreamDetailFragment streamDetailFragment, Integer num) {
        int i10 = streamDetailFragment.curSeason;
        if (num != null && i10 == num.intValue()) {
            return Unit.f64096a;
        }
        Intrinsics.e(num);
        streamDetailFragment.curSeason = num.intValue();
        String str = streamDetailFragment.mSubjectId;
        if (str != null) {
            streamDetailFragment.k1().D(str, Integer.valueOf(streamDetailFragment.curSeason), true);
        }
        return Unit.f64096a;
    }

    public static final Unit K1(StreamDetailFragment streamDetailFragment, ResourcesSeasonList resourcesSeasonList) {
        streamDetailFragment.p2();
        return Unit.f64096a;
    }

    public static final Unit L1(StreamDetailFragment streamDetailFragment, List list) {
        streamDetailFragment.A1();
        return Unit.f64096a;
    }

    public static final Unit M1(StreamDetailFragment streamDetailFragment, VideoDetailMediaSource videoDetailMediaSource) {
        wf.a.C0922a.v(wf.a.f74274a, "VideoDetailEpisode", "--------PlayingEpisodeMediaLiveDat:observe", false, 4, null);
        streamDetailFragment.e1(videoDetailMediaSource);
        return Unit.f64096a;
    }

    private final void N1(String genre) {
        NativeCardPageView nativeCardPageView;
        NativeCardPageAdHelper nativeCardPageAdHelperG;
        NativeCardPageAdHelper nativeCardPageAdHelperF;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (nativeCardPageView = mViewBinding.f75958n) == null) {
            return;
        }
        uf.c.g(nativeCardPageView);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper == null || (nativeCardPageAdHelperG = nativeCardPageAdHelper.G("StreamingMediaContentScene")) == null || (nativeCardPageAdHelperF = nativeCardPageAdHelperG.F(com.transsion.ad.strategy.c.f41178a.a(genre))) == null) {
            return;
        }
        nativeCardPageAdHelperF.u(nativeCardPageView);
    }

    private final void O1(boolean isAudioTracksChange) {
        HashMap mapG;
        MovieDetailActivity.INSTANCE.a("videoDetail start load data ....");
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
            String str = this.mSubjectId;
            if (str == null) {
                str = "";
            }
            mapG.put("subject_id", str);
        }
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        if (yg.l.f76264a.e()) {
            if (!isAudioTracksChange) {
                showLoadingView();
            }
            String str2 = this.mSubjectId;
            if (str2 != null) {
                MovieDetailViewModel.E(k1(), str2, Integer.valueOf(this.curSeason), false, 4, null);
                n1().r(str2);
                n1().q(str2);
            }
        }
    }

    static void P1(StreamDetailFragment streamDetailFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        streamDetailFragment.O1(z10);
    }

    public static final im.b Q1() {
        return (im.b) TheRouter.d(im.b.class, new Object[0]);
    }

    private final void R1(boolean show) {
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
            im.b bVarI1 = i1();
            if (bVarI1 != null) {
                bVarI1.h();
                return;
            }
            return;
        }
        im.b bVarI2 = i1();
        if (bVarI2 != null) {
            bVarI2.q();
        }
    }

    private final void S1() {
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onPageDestroy();
        }
        yg.l.f76264a.m(this.networkStatusChangedListener);
    }

    public final void T1(LongVodUiType uiType) {
        if (this.gameResView == null || uiType != LongVodUiType.MIDDLE) {
            return;
        }
        h2();
    }

    public final void U1(ln.a bean) {
        Navigator navigatorK = TheRouter.c("/profile/user_center_labels_feedback").K("feedback_from_page", "SUBJECT_PLAY").K("subject_id", this.mSubjectId);
        Subject subject = this.mMovieDetailBean;
        if (subject != null && subject.getType() == 3 && bean != null) {
            navigatorK.I("TV_DATA", new FbTvData(bean.o(), bean.l(), bean.e()));
        }
        Navigator.x(navigatorK, requireContext(), null, 2, null);
    }

    public static final void V1(StreamDetailFragment streamDetailFragment, VideoDetailStreamList videoDetailStreamList) {
        wf.a.f74274a.c("videoDetail", "playInfoObserver  playInfo==" + videoDetailStreamList, true);
        streamDetailFragment.q1();
        if (videoDetailStreamList != null || yg.l.f76264a.e()) {
            streamDetailFragment.d1();
        } else {
            streamDetailFragment.i2();
        }
    }

    private final boolean W0() {
        kk.a aVar;
        if (this.hasClickedActivityTip || (aVar = this.palmPayApi) == null) {
            return false;
        }
        return aVar.g();
    }

    /* JADX WARN: Code duplicated, block: B:123:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:52:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:54:0x00f4  */
    /* JADX WARN: Code duplicated, block: B:58:0x0132  */
    /* JADX WARN: Code duplicated, block: B:59:0x0139  */
    /* JADX WARN: Code duplicated, block: B:61:0x013d  */
    /* JADX WARN: Code duplicated, block: B:62:0x0144  */
    /* JADX WARN: Code duplicated, block: B:65:0x014a  */
    /* JADX WARN: Instruction removed from duplicated block: B:54:0x00f4, please report this as an issue */
    private final void W1(VideoDetailStreamList videoDetailStreamList) {
        List<VideoDetailStream> list;
        long j10;
        VideoDetailPlayBean videoDetailPlayBean;
        VideoDetailPlayBean videoDetailPlayBean2;
        VideoDetailPlayBean videoDetailPlayBean3;
        VideoDetailMediaSource videoDetailMediaSource;
        int ep2;
        int se2;
        String str;
        Subject subject;
        List<DubsInfo> listL;
        String averageHueLight;
        String thumbnail;
        String url;
        Subject subject2 = this.mMovieDetailBean;
        if (subject2 == null || !subject2.isFamilyModeIntercept()) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            c0922a.c("videoDetail", "playStream   videoDetailStreamList:" + videoDetailStreamList + "  mSubjectId:" + this.mSubjectId + "  mMovieDetailBean:" + this.mMovieDetailBean, true);
            List<VideoDetailStream> streams = videoDetailStreamList != null ? videoDetailStreamList.getStreams() : null;
            if (videoDetailStreamList == null || (list = streams) == null || list.isEmpty()) {
                wf.a.C0922a.l(c0922a, "videoDetail", "空返回", false, 4, null);
                return;
            }
            VideoDetailMediaSource videoDetailMediaSource2 = (VideoDetailMediaSource) n1().x().f();
            if (videoDetailMediaSource2 != null && videoDetailMediaSource2.getEp() == videoDetailStreamList.getEp() && videoDetailMediaSource2.getSe() == videoDetailStreamList.getSe()) {
                long progress = this.curAudioTrackPlayProgress;
                if (progress <= 0) {
                    VideoDetailPlayBean videoDetailPlayBean4 = this.history;
                    if (videoDetailPlayBean4 != null && videoDetailPlayBean4 != null && videoDetailStreamList.getSe() == videoDetailPlayBean4.getSe() && (videoDetailPlayBean = this.history) != null && videoDetailStreamList.getEp() == videoDetailPlayBean.getEp()) {
                        if ((this.targetSeason > 0 && (videoDetailPlayBean3 = this.history) != null && videoDetailPlayBean3.getSe() == this.targetSeason) || this.targetSeason <= 0) {
                            n1().n();
                            videoDetailPlayBean2 = this.history;
                            if (videoDetailPlayBean2 != null) {
                                progress = videoDetailPlayBean2.getProgress();
                                wf.a.C0922a.v(c0922a, "videoDetail", "playStream， history，seekTo:" + progress + " ", false, 4, null);
                            }
                            PlayMimeType playMimeTypeJ1 = j1((VideoDetailStream) CollectionsKt.k0(streams));
                            videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
                            if (videoDetailMediaSource != null) {
                                ep2 = videoDetailMediaSource.getEp();
                            } else {
                                ep2 = 0;
                            }
                            if (videoDetailMediaSource != null) {
                                se2 = videoDetailMediaSource.getSe();
                            } else {
                                se2 = 0;
                            }
                            str = this.mSubjectId;
                            if (str != null) {
                            }
                        }
                        VideoDetailPlayBean videoDetailPlayBean5 = this.history;
                        if ((videoDetailPlayBean5 != null ? videoDetailPlayBean5.getSe() : 0) <= 0) {
                            n1().n();
                            videoDetailPlayBean2 = this.history;
                            if (videoDetailPlayBean2 != null) {
                                progress = videoDetailPlayBean2.getProgress();
                                wf.a.C0922a.v(c0922a, "videoDetail", "playStream， history，seekTo:" + progress + " ", false, 4, null);
                            }
                            PlayMimeType playMimeTypeJ2 = j1((VideoDetailStream) CollectionsKt.k0(streams));
                            videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
                            if (videoDetailMediaSource != null) {
                                ep2 = videoDetailMediaSource.getEp();
                            } else {
                                ep2 = 0;
                            }
                            if (videoDetailMediaSource != null) {
                                se2 = videoDetailMediaSource.getSe();
                            } else {
                                se2 = 0;
                            }
                            str = this.mSubjectId;
                            if (str != null || (subject = this.mMovieDetailBean) == null) {
                            }
                            String title = subject.getTitle();
                            String str2 = title == null ? "" : title;
                            String title2 = videoDetailStreamList.getTitle();
                            String str3 = this.lastPageFrom;
                            String str4 = str3 == null ? "" : str3;
                            List listP1 = p1(streams);
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
                            Subject subject3 = this.mMovieDetailBean;
                            String ops = subject3 != null ? subject3.getOps() : null;
                            Subject subject4 = this.mMovieDetailBean;
                            ln.a aVar = new ln.a(str, playMimeTypeJ2, j10, ep2, se2, str2, title2, str4, "stream_detail", listP1, str5, str6, str7, iIntValue, Integer.valueOf(iIntValue2), false, subject4 != null ? subject4.getTitle() : null, ops, 32768, null);
                            aVar.z(this.mMovieDetailBean);
                            List listA = aVar.a();
                            Subject subject5 = this.mMovieDetailBean;
                            if (subject5 == null || (listL = subject5.getDubs()) == null) {
                                listL = CollectionsKt.l();
                            }
                            listA.addAll(listL);
                            c0922a.c("videoDetail", "playStream  addDataSource:" + aVar + "  playerControl:" + this.playerControl, true);
                            j2();
                            kn.a aVar2 = this.playerControl;
                            if (aVar2 != null) {
                                aVar2.setDataSource(aVar);
                                return;
                            }
                            return;
                        }
                    }
                    j10 = 0;
                    PlayMimeType playMimeTypeJ3 = j1((VideoDetailStream) CollectionsKt.k0(streams));
                    videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
                    if (videoDetailMediaSource != null) {
                        ep2 = videoDetailMediaSource.getEp();
                    } else {
                        ep2 = 0;
                    }
                    if (videoDetailMediaSource != null) {
                        se2 = videoDetailMediaSource.getSe();
                    } else {
                        se2 = 0;
                    }
                    str = this.mSubjectId;
                    if (str != null) {
                    }
                }
                this.curAudioTrackPlayProgress = 0L;
                wf.a.C0922a.v(c0922a, "videoDetail", "playStream， AudioTrack，seekTo:" + progress + " ", false, 4, null);
                j10 = progress;
                PlayMimeType playMimeTypeJ4 = j1((VideoDetailStream) CollectionsKt.k0(streams));
                videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
                if (videoDetailMediaSource != null) {
                    ep2 = videoDetailMediaSource.getEp();
                } else {
                    ep2 = 0;
                }
                if (videoDetailMediaSource != null) {
                    se2 = videoDetailMediaSource.getSe();
                } else {
                    se2 = 0;
                }
                str = this.mSubjectId;
                if (str != null) {
                }
            }
        }
    }

    private final void X0() {
        BubbleTextView bubbleTextView;
        ViewTreeObserver viewTreeObserver;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f75946b) == null || (viewTreeObserver = bubbleTextView.getViewTreeObserver()) == null) {
            return;
        }
        viewTreeObserver.addOnGlobalLayoutListener(new b());
    }

    public static final jo.a X1() {
        return (jo.a) TheRouter.d(jo.a.class, new Object[0]);
    }

    private final void Y0() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) n1().y().f();
        if (resourcesSeasonList == null) {
            return;
        }
        boolean z10 = false;
        if (resourcesSeasonList.isSeries()) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "checkHasNext 是剧集，判断下一集还是完成 ", false, 4, null);
            List listL = (List) n1().s().f();
            if (listL == null) {
                listL = CollectionsKt.l();
            }
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
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

    public final void Z0() {
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) n1().y().f();
        if (resourcesSeasonList == null) {
            return;
        }
        if (resourcesSeasonList.isNoSource()) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "checkPlayNextOrReplay 没有资源", false, 4, null);
            return;
        }
        if (!resourcesSeasonList.isSeries()) {
            if (resourcesSeasonList.isMovie()) {
                wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "checkPlayInfo 是电影", false, 4, null);
                kn.a aVar = this.playerControl;
                if (aVar != null) {
                    aVar.showReplay();
                    return;
                }
                return;
            }
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "videoDetail", "checkPlayNextOrReplay 是剧集，判断下一集还是完成 ", false, 4, null);
        List list = (List) n1().s().f();
        if (list == null) {
            return;
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
        if (videoDetailMediaSource == null) {
            n1().B((VideoDetailMediaSource) CollectionsKt.k0(list));
            return;
        }
        int iIndexOf = list.indexOf(videoDetailMediaSource);
        if (iIndexOf >= list.size() - 1) {
            wf.a.C0922a.f(c0922a, "videoDetail", "checkPlayInfo 是剧集完成播放", false, 4, null);
            kn.a aVar2 = this.playerControl;
            if (aVar2 != null) {
                aVar2.showReplay();
                return;
            }
            return;
        }
        wf.a.C0922a.f(c0922a, "videoDetail", "checkPlayInfo 自动播放下一集，currentIndex：" + iIndexOf, false, 4, null);
        n1().B((VideoDetailMediaSource) CollectionsKt.l0(list, iIndexOf + 1));
    }

    private final void Z1() {
        GradientTextView gradientTextView;
        AppCompatImageView appCompatImageView;
        final Subject subject = this.mMovieDetailBean;
        if (subject != null) {
            xv.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (appCompatImageView = mViewBinding.f75955k) != null) {
                appCompatImageView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        StreamDetailFragment.a2(this.f55549a, subject, view);
                    }
                });
            }
            xv.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 == null || (gradientTextView = mViewBinding2.f75963s) == null) {
                return;
            }
            gradientTextView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    StreamDetailFragment.b2(this.f55682a, subject, view);
                }
            });
        }
    }

    private final void a1() {
        ResourceDetectors resourceDetector;
        if (getContext() == null) {
            return;
        }
        Subject subject = this.mMovieDetailBean;
        String str = "";
        if (subject != null && (resourceDetector = subject.getResourceDetector()) != null) {
            String resourceLink = resourceDetector.getResourceLink();
            str = resourceLink != null ? resourceLink : "";
            resourceDetector.getResourceId();
            resourceDetector.isMultiResolution();
        }
        String str2 = str;
        Subject subject2 = this.mMovieDetailBean;
        String ops = null;
        if (subject2 != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                String str3 = this.ops;
                if (str3 == null || str3.length() == 0) {
                    Subject subject3 = this.mMovieDetailBean;
                    if (subject3 != null) {
                        ops = subject3.getOps();
                    }
                } else {
                    ops = this.ops;
                }
                downloadManagerApiA.d0(fragmentActivity, "subjectdetail", (384 & 4) != 0 ? "" : "", ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : true, (384 & 64) != 0 ? null : this.mMovieDetailBean, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
        int ep2 = (videoDetailMediaSource == null || videoDetailMediaSource.getSe() != this.curSeason) ? 0 : videoDetailMediaSource.getEp();
        DownloadManagerApi downloadManagerApiA2 = DownloadManagerApi.f56187j.a();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity2 = (FragmentActivity) context2;
        Subject subject4 = this.mMovieDetailBean;
        String str4 = this.ops;
        if (str4 == null || str4.length() == 0) {
            Subject subject5 = this.mMovieDetailBean;
            if (subject5 != null) {
                ops = subject5.getOps();
            }
        } else {
            ops = this.ops;
        }
        DownloadManagerApi.N(downloadManagerApiA2, fragmentActivity2, subject4, "subjectdetail", "", ops, str2, String.valueOf(ep2), this.moduleName, null, true, this.curSeason, false, 256, null);
    }

    public static final void a2(StreamDetailFragment streamDetailFragment, Subject subject, View view) {
        String url;
        jo.a aVarM1 = streamDetailFragment.m1();
        if (aVarM1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = streamDetailFragment.mSubjectId;
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
            aVarM1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void b1() {
        BubbleTextView bubbleTextView;
        this.hasClickedActivityTip = true;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding == null || (bubbleTextView = mViewBinding.f75946b) == null) {
            return;
        }
        uf.c.g(bubbleTextView);
    }

    public static final void b2(StreamDetailFragment streamDetailFragment, Subject subject, View view) {
        String url;
        jo.a aVarM1 = streamDetailFragment.m1();
        if (aVarM1 != null) {
            Context context = view.getContext();
            Intrinsics.g(context, "getContext(...)");
            String str = streamDetailFragment.mSubjectId;
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
            aVarM1.e(context, str, url, title, description, 3);
        }
        com.transsion.baselib.helper.a.f42121a.h("subjectdetail", "post", (60 & 4) != 0 ? "" : null, (60 & 8) != 0 ? "" : null, (60 & 16) != 0 ? "" : null, (60 & 32) != 0 ? null : null);
    }

    private final void c1() {
        LinearLayout root;
        ViewParent parent;
        xv.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null || (parent = root.getParent()) == null || !(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(root);
    }

    private final void c2(Subject subject) {
        Cover stills;
        FrameLayout frameLayout;
        wf.a.C0922a.l(wf.a.f74274a, "videoDetail", "展示作品大图或者预告片", false, 4, null);
        if (subject != null) {
            Trailer trailer = subject.getTrailer();
            if ((trailer == null || (stills = trailer.getCover()) == null) && (stills = subject.getStills()) == null) {
                stills = subject.getCover();
            }
            if (stills != null) {
                int iF = com.transsion.core.utils.e.f();
                xv.i mViewBinding = getMViewBinding();
                if (mViewBinding == null || (frameLayout = mViewBinding.f75952h) == null) {
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
                            return StreamDetailFragment.d2(this.f55686a, (BitmapDrawable) obj);
                        }
                    }, 6, null);
                    Context context = imageView.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    aVar.m(context).g(strE).i(com.tn.lib.widget.R$color.transparent).d(imageView);
                }
            }
        }
    }

    public final void d1() {
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.removeNoNetError();
        }
        this.showNetErr = false;
    }

    public static final Unit d2(StreamDetailFragment streamDetailFragment, BitmapDrawable drawable) {
        FrameLayout frameLayout;
        Intrinsics.h(drawable, "drawable");
        xv.i mViewBinding = streamDetailFragment.getMViewBinding();
        if (mViewBinding != null && (frameLayout = mViewBinding.f75952h) != null) {
            frameLayout.setBackground(drawable);
        }
        return Unit.f64096a;
    }

    public final void e1(VideoDetailMediaSource episodeMedia) {
        if (episodeMedia == null) {
            return;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) n1().w().f();
        if (videoDetailStreamList != null && videoDetailStreamList.getSe() == episodeMedia.getSe() && videoDetailStreamList.getEp() == episodeMedia.getEp()) {
            return;
        }
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.reset();
        }
        showLoading();
        n1().v(episodeMedia);
        Y0();
    }

    public final boolean e2(final FloatActionType actionType) {
        final FragmentActivity activity;
        ConstraintLayout root;
        Integer subjectType;
        Subject subject = this.mMovieDetailBean;
        if (((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) != SubjectType.MUSIC.getValue() && (activity = getActivity()) != null && !activity.isDestroyed() && !activity.isFinishing()) {
            FloatActionType floatActionType = FloatActionType.ICON;
            if (actionType != floatActionType && !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                wf.a.f74274a.c("VideoFloat", "设置页pip开关被关闭了", true);
                return false;
            }
            final dw.a aVarG1 = g1();
            if (aVarG1 != null) {
                if (actionType != floatActionType && !aVarG1.f().isPlaying()) {
                    wf.a.f74274a.c("VideoFloat-pip", "stream 视频暂停，无需触发画中画", true);
                    return false;
                }
                cw.e.a aVar = cw.e.f58665a;
                if (aVar.b().c()) {
                    kn.a aVar2 = this.playerControl;
                    if (aVar2 != null) {
                        aVar2.hideBottomController(true);
                    }
                    wf.a.f74274a.c("VideoFloat-pip", "stream 当前可用画中画，使用画中画播放", true);
                    if (Build.VERSION.SDK_INT < 31 || actionType != FloatActionType.HOME) {
                        aVar.b().d(activity, aVarG1, actionType, this.curPlayerUiType == LongVodUiType.LAND);
                    } else {
                        xv.i mViewBinding = getMViewBinding();
                        if (mViewBinding != null && (root = mViewBinding.getRoot()) != null) {
                            root.postDelayed(new Runnable() {
                                @Override
                                public final void run() {
                                    StreamDetailFragment.f2(activity, aVarG1, actionType, this);
                                }
                            }, 1000L);
                        }
                    }
                    return true;
                }
                cw.b.f58659a.c().e(activity, aVarG1, actionType == floatActionType, this.curPlayerUiType == LongVodUiType.LAND, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return StreamDetailFragment.g2(this.f55527a, activity, ((Boolean) obj).booleanValue());
                    }
                }, new f());
            }
        }
        return false;
    }

    private final com.transsnet.downloader.viewmodel.k0 f1() {
        return (com.transsnet.downloader.viewmodel.k0) this.downloadViewModel.getValue();
    }

    public static final void f2(FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType, StreamDetailFragment streamDetailFragment) {
        cw.e.f58665a.b().d(fragmentActivity, aVar, floatActionType, streamDetailFragment.curPlayerUiType == LongVodUiType.LAND);
    }

    /* JADX WARN: Code duplicated, block: B:107:0x01f3  */
    private final dw.a g1() {
        List list;
        String str;
        String ops;
        String subjectId;
        String averageHueLight;
        String thumbnail;
        String url;
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) n1().w().f();
        if (videoDetailStreamList == null || (list = (List) n1().s().f()) == null) {
            return null;
        }
        kn.a aVar = this.playerControl;
        com.transsion.player.orplayer.f player = aVar != null ? aVar.getPlayer() : null;
        kn.a aVar2 = this.playerControl;
        ORPlayerView orPlayerView = aVar2 != null ? aVar2.getOrPlayerView() : null;
        kn.a aVar3 = this.playerControl;
        SimpleSubtitleView subtitleView = aVar3 != null ? aVar3.getSubtitleView() : null;
        kn.a aVar4 = this.playerControl;
        ViewGroup subtitleViewGroup = aVar4 != null ? aVar4.getSubtitleViewGroup() : null;
        if (orPlayerView == null || player == null || this.mMovieDetailBean == null || subtitleView == null) {
            return null;
        }
        PlayMimeType playMimeTypeJ1 = j1((VideoDetailStream) CollectionsKt.k0(videoDetailStreamList.getStreams()));
        Subject subject = this.mMovieDetailBean;
        Intrinsics.e(subject);
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        String strA = "";
        while (true) {
            int iIntValue = 1;
            if (!it.hasNext()) {
                break;
            }
            VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) it.next();
            String subjectId2 = subject.getSubjectId();
            if (subjectId2 == null) {
                subjectId2 = "";
            }
            int ep2 = videoDetailMediaSource.getEp();
            int se2 = videoDetailMediaSource.getSe();
            String title = subject.getTitle();
            String str2 = title == null ? "" : title;
            String str3 = this.lastPageFrom;
            String str4 = str3 == null ? "" : str3;
            List listP1 = p1(videoDetailMediaSource.getStreams());
            Cover cover = subject.getCover();
            String str5 = (cover == null || (url = cover.getUrl()) == null) ? "" : url;
            Cover cover2 = subject.getCover();
            String str6 = (cover2 == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail;
            Cover cover3 = subject.getCover();
            String str7 = (cover3 == null || (averageHueLight = cover3.getAverageHueLight()) == null) ? "" : averageHueLight;
            Integer durationSeconds = subject.getDurationSeconds();
            int iIntValue2 = durationSeconds != null ? durationSeconds.intValue() : 0;
            Integer subjectType = subject.getSubjectType();
            if (subjectType != null) {
                iIntValue = subjectType.intValue();
            }
            ArrayList arrayList2 = arrayList;
            ln.a aVar5 = new ln.a(subjectId2, playMimeTypeJ1, 0L, ep2, se2, str2, null, str4, "stream_detail", listP1, str5, str6, str7, iIntValue2, Integer.valueOf(iIntValue), false, subject.getTitle(), subject.getOps(), 32832, null);
            strA = nn.a.f67319a.a(aVar5);
            aVar5.z(this.mMovieDetailBean);
            arrayList2.add(aVar5);
            arrayList = arrayList2;
        }
        ArrayList arrayList3 = arrayList;
        wf.a.C0922a c0922a = wf.a.f74274a;
        Subject subject2 = this.mMovieDetailBean;
        String title2 = subject2 != null ? subject2.getTitle() : null;
        c0922a.c("VideoFloat", "stream-----showFloat, title:" + title2 + ",se:" + videoDetailStreamList.getSe() + ",ep:" + videoDetailStreamList.getEp(), true);
        StreamFloatManager.f55703b.v(arrayList3);
        kn.a aVar6 = this.playerControl;
        ln.c playingStream = aVar6 != null ? aVar6.getPlayingStream() : null;
        FloatPlayType floatPlayType = FloatPlayType.STREAM;
        Subject subject3 = this.mMovieDetailBean;
        String str8 = (subject3 == null || (subjectId = subject3.getSubjectId()) == null) ? "" : subjectId;
        int se3 = videoDetailStreamList.getSe();
        int ep3 = videoDetailStreamList.getEp();
        String str9 = strA;
        dw.a aVar7 = new dw.a(orPlayerView, player, subtitleViewGroup, floatPlayType, str8, se3, ep3, playingStream != null ? playingStream.e() : null, "stream_detail");
        aVar7.I(playMimeTypeJ1);
        Subject subject4 = this.mMovieDetailBean;
        aVar7.J(subject4 != null ? subject4.getSubjectType() : null);
        aVar7.C(str9);
        Subject subject5 = this.mMovieDetailBean;
        if (subject5 == null || (ops = subject5.getOps()) == null) {
            str = this.ops;
        } else {
            str = ops.length() > 0 ? ops : null;
            if (str == null) {
                str = this.ops;
            }
        }
        aVar7.A(str);
        aVar7.B(this.lastPageFrom);
        return aVar7;
    }

    public static final Unit g2(StreamDetailFragment streamDetailFragment, FragmentActivity fragmentActivity, boolean z10) {
        kn.a aVar;
        if (z10 && (aVar = streamDetailFragment.playerControl) != null) {
            aVar.exitFullScreen();
        }
        kn.a aVar2 = streamDetailFragment.playerControl;
        if (aVar2 != null) {
            aVar2.setFloatIsShow(z10);
        }
        if (z10) {
            fragmentActivity.finish();
        }
        return Unit.f64096a;
    }

    public static final void h1(StreamDetailFragment streamDetailFragment, View view) {
        streamDetailFragment.requireActivity().finish();
    }

    private final void h2() {
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
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (frameLayout3 = mViewBinding.f75953i) != null) {
            uf.c.k(frameLayout3);
        }
        xv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (frameLayout2 = mViewBinding2.f75953i) != null) {
            frameLayout2.removeAllViews();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        xv.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (frameLayout = mViewBinding3.f75953i) == null) {
            return;
        }
        frameLayout.addView(this.gameResView, layoutParams);
    }

    private final im.b i1() {
        return (im.b) this.memberProvider.getValue();
    }

    private final void i2() {
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.showNoNetError();
        }
        this.showNetErr = true;
    }

    private final PlayMimeType j1(VideoDetailStream stream) {
        String upperCase;
        String format;
        if (stream == null || (format = stream.getFormat()) == null) {
            upperCase = null;
        } else {
            upperCase = format.toUpperCase(Locale.ROOT);
            Intrinsics.g(upperCase, "toUpperCase(...)");
        }
        if (Intrinsics.c(upperCase, "DASH")) {
            return PlayMimeType.DASH;
        }
        return Intrinsics.c(upperCase, "HLS") ? PlayMimeType.HLS : PlayMimeType.DEFAULT;
    }

    private final void j2() {
        Context context;
        List<DubsInfo> listL;
        Integer subjectType;
        if (this.playerControl == null && (context = getContext()) != null) {
            Subject subject = this.mMovieDetailBean;
            LongVodPageType longVodPageType = ((subject == null || (subjectType = subject.getSubjectType()) == null) ? SubjectType.MOVIE.getValue() : subjectType.intValue()) == SubjectType.MUSIC.getValue() ? LongVodPageType.MUSIC : LongVodPageType.STREAM;
            xv.i mViewBinding = getMViewBinding();
            if (mViewBinding != null) {
                LongVodPlayerView longVodPlayerView = new LongVodPlayerView(context);
                String strName = longVodPageType.name();
                Subject subject2 = this.mMovieDetailBean;
                String str = strName + (subject2 != null ? subject2.getSubjectId() : null);
                FrameLayout frameLayout = mViewBinding.f75951g;
                LinearLayoutCompat linearLayoutCompat = mViewBinding.f75956l.f66560f;
                Subject subject3 = this.mMovieDetailBean;
                if (subject3 == null || (listL = subject3.getDubs()) == null) {
                    listL = CollectionsKt.l();
                }
                kn.a.C0796a.a(longVodPlayerView, "stream_detail", longVodPageType, str, frameLayout, linearLayoutCompat, listL, null, 64, null);
                Subject subject4 = this.mMovieDetailBean;
                longVodPlayerView.initAdHelper(subject4 != null ? subject4.getGenre() : null);
                longVodPlayerView.setFeedBackVisible(true);
                longVodPlayerView.setAudioSelectCallback(new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return StreamDetailFragment.k2(this.f55689a, (DubsInfo) obj);
                    }
                });
                mViewBinding.f75952h.addView(longVodPlayerView);
                this.playerControl = longVodPlayerView;
            }
            Subject subject5 = this.mMovieDetailBean;
            if (subject5 != null) {
                B1(subject5);
            }
            kn.a aVar = this.playerControl;
            if (aVar != null) {
                aVar.setCallback(new g());
            }
        }
    }

    private final MovieDetailViewModel k1() {
        return (MovieDetailViewModel) this.movieDetailViewModel.getValue();
    }

    public static final Unit k2(StreamDetailFragment streamDetailFragment, DubsInfo info) {
        Integer numValueOf;
        List<DubsInfo> dubs;
        Intrinsics.h(info, "info");
        wf.a.C0922a.g(wf.a.f74274a, "AudioSelectCallback " + info, false, 2, null);
        Subject subject = streamDetailFragment.mMovieDetailBean;
        if (subject == null || (dubs = subject.getDubs()) == null) {
            numValueOf = null;
        } else {
            Iterator<DubsInfo> it = dubs.iterator();
            int i10 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                }
                if (Intrinsics.c(it.next().getLanCode(), info.getLanCode())) {
                    break;
                }
                i10++;
            }
            numValueOf = Integer.valueOf(i10);
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || info.getSubjectId() == null) {
            wf.a.C0922a.g(wf.a.f74274a, "AudioSelectCallback info can't find in dubs", false, 2, null);
        } else {
            streamDetailFragment.k1().P().q(info);
        }
        return Unit.f64096a;
    }

    private final VideoDetailMediaSource l1(VideoDetailPlayBean history, List episodeMediaList) {
        Object obj = null;
        if (history == null) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "getPlayingItem 无历史记录，se:" + this.targetSeason, false, 4, null);
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
        if (se2 == i10 || i10 <= 0 || history.getSe() <= 0) {
            this.curSeason = history.getSe();
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "getPlayingItem 有历史记录，不指定季使用历史记录，se:" + history.getSe() + ", ep:" + history.getEp(), false, 4, null);
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
        wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "getPlayingItem 有历史记录，指定季，history se:" + history.getSe() + ", ep:" + history.getEp() + "， target se:" + this.targetSeason + ", targetEp:" + this.targetEp, false, 4, null);
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

    private final void l2() {
        new zm.g(this, R$id.subjectDetailLayout, this.mMovieDetailBean, "stream_detail", this.moduleName, false, false, 96, null);
    }

    private final jo.a m1() {
        return (jo.a) this.publishedApi.getValue();
    }

    private final void m2() {
        BubbleTextView bubbleTextView;
        xv.i mViewBinding;
        DownloadView downloadView;
        xv.i mViewBinding2;
        DownloadView downloadView2;
        BubbleTextView bubbleTextView2;
        if (!W0() || (mViewBinding = getMViewBinding()) == null || (downloadView = mViewBinding.f75948d) == null || downloadView.getVisibility() != 0 || (mViewBinding2 = getMViewBinding()) == null || (downloadView2 = mViewBinding2.f75948d) == null || downloadView2.getCom.cloud.tmc.kernel.minicover.NativeComponentConstants.KEY_COMPONENT_TYPE java.lang.String() != 0) {
            xv.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f75946b) == null) {
                return;
            }
            uf.c.g(bubbleTextView);
            return;
        }
        xv.i mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (bubbleTextView2 = mViewBinding4.f75946b) != null) {
            uf.c.k(bubbleTextView2);
        }
        X0();
    }

    public final VideoDetailViewModel n1() {
        return (VideoDetailViewModel) this.videoDetailViewModel.getValue();
    }

    private final void n2(int visible) {
        HashMap mapG;
        ResourceDetectors resourceDetector;
        DownloadView downloadView;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView = mViewBinding.f75948d) != null) {
            downloadView.setVisibility(visible);
        }
        Subject subject = this.mMovieDetailBean;
        if (subject != null && (resourceDetector = subject.getResourceDetector()) != null) {
            resourceDetector.getResourceId();
            resourceDetector.isMultiResolution();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null && (mapG = logViewConfig.g()) != null) {
        }
        m2();
    }

    static void o2(StreamDetailFragment streamDetailFragment, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        streamDetailFragment.n2(i10);
    }

    private final List p1(List videoDetailStream) {
        ArrayList arrayList = new ArrayList();
        if (videoDetailStream != null) {
            Iterator it = videoDetailStream.iterator();
            while (it.hasNext()) {
                VideoDetailStream videoDetailStream2 = (VideoDetailStream) it.next();
                arrayList.add(new ln.c(j1(videoDetailStream2), videoDetailStream2.getId(), videoDetailStream2.getUrl(), videoDetailStream2.getResolutions(), videoDetailStream2.getSize(), videoDetailStream2.getDuration(), videoDetailStream2.getSignCookie(), null, 128, null));
            }
        }
        return arrayList;
    }

    private final void p2() {
        Subject subject;
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) n1().y().f();
        if (resourcesSeasonList == null || (subject = this.mMovieDetailBean) == null) {
            return;
        }
        if (subject != null && subject.isFamilyModeIntercept()) {
            FragmentManager childFragmentManager = getChildFragmentManager();
            Intrinsics.g(childFragmentManager, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP = childFragmentManager.p();
            Intrinsics.g(wVarP, "beginTransaction()");
            ResourceDetectorFamilyModeFragment resourceDetectorFamilyModeFragment = new ResourceDetectorFamilyModeFragment();
            resourceDetectorFamilyModeFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("data_key_resource_detectors", this.mMovieDetailBean)));
            wVarP.s(R$id.resourceDetectorGroup, resourceDetectorFamilyModeFragment);
            wVarP.j();
            n2(8);
            return;
        }
        this.hasResource = !resourcesSeasonList.isNoSource();
        if (resourcesSeasonList.isNoSource()) {
            FragmentManager childFragmentManager2 = getChildFragmentManager();
            Intrinsics.g(childFragmentManager2, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP2 = childFragmentManager2.p();
            Intrinsics.g(wVarP2, "beginTransaction()");
            ResourceDetectorEmptyFragment resourceDetectorEmptyFragment = new ResourceDetectorEmptyFragment();
            Bundle bundle = new Bundle();
            bundle.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            resourceDetectorEmptyFragment.setArguments(bundle);
            wVarP2.s(R$id.resourceDetectorGroup, resourceDetectorEmptyFragment);
            wVarP2.j();
            n2(8);
        } else {
            FragmentManager childFragmentManager3 = getChildFragmentManager();
            Intrinsics.g(childFragmentManager3, "getChildFragmentManager(...)");
            androidx.fragment.app.w wVarP3 = childFragmentManager3.p();
            Intrinsics.g(wVarP3, "beginTransaction()");
            VideoEpisodeFragment videoEpisodeFragment = new VideoEpisodeFragment();
            Bundle bundle2 = new Bundle();
            bundle2.putSerializable("data_key_resource_detectors", this.mMovieDetailBean);
            bundle2.putString("ops", this.ops);
            bundle2.putBoolean("auto_play", this.autoPlay);
            bundle2.putString("auto_play_resource_id", this.autoPlayResourceId);
            bundle2.putString("module_name", this.moduleName);
            bundle2.putInt("season", this.curSeason);
            videoEpisodeFragment.setArguments(bundle2);
            wVarP3.s(R$id.resourceDetectorGroup, videoEpisodeFragment);
            videoEpisodeFragment.P0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return StreamDetailFragment.q2(this.f55546a, (DubsInfo) obj);
                }
            });
            wVarP3.j();
            o2(this, 0, 1, null);
        }
        if (!resourcesSeasonList.isNoSource()) {
            j2();
            return;
        }
        c2(this.mMovieDetailBean);
        FragmentActivity activity = getActivity();
        BaseMusicFloatActivity baseMusicFloatActivity = activity instanceof BaseMusicFloatActivity ? (BaseMusicFloatActivity) activity : null;
        if (baseMusicFloatActivity != null) {
            baseMusicFloatActivity.showMusicFloating();
        }
    }

    private final void q1() {
        if (this.mMovieDetailBean == null) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "PlayInfoLive  mMovieDetailBean==null", false, 4, null);
            return;
        }
        VideoDetailStreamList videoDetailStreamList = (VideoDetailStreamList) n1().w().f();
        if (videoDetailStreamList == null) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "PlayInfoLive playInfo==null", false, 4, null);
            return;
        }
        VideoDetailMediaSource videoDetailMediaSource = (VideoDetailMediaSource) n1().x().f();
        if (videoDetailMediaSource == null) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "PlayInfoLive media==null", false, 4, null);
            return;
        }
        if (Intrinsics.c(videoDetailStreamList, this.videoDetailStreamList)) {
            wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "PlayInfoLive data:" + videoDetailStreamList + "  media:" + videoDetailMediaSource + "  重复播放数据，不处理", false, 4, null);
            return;
        }
        if (videoDetailMediaSource.getEp() == videoDetailStreamList.getEp() && videoDetailMediaSource.getSe() == videoDetailStreamList.getSe()) {
            this.videoDetailStreamList = videoDetailStreamList;
            c1();
            W1(videoDetailStreamList);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "PlayInfoLive data:" + videoDetailStreamList + "  media:" + videoDetailMediaSource + "  不相同，不播放", false, 4, null);
    }

    public static final Unit q2(StreamDetailFragment streamDetailFragment, DubsInfo info) {
        Integer numValueOf;
        List<DubsInfo> dubs;
        Intrinsics.h(info, "info");
        wf.a.C0922a.g(wf.a.f74274a, "AudioSelectCallback " + info, false, 2, null);
        Subject subject = streamDetailFragment.mMovieDetailBean;
        if (subject == null || (dubs = subject.getDubs()) == null) {
            numValueOf = null;
        } else {
            Iterator<DubsInfo> it = dubs.iterator();
            int i10 = 0;
            while (true) {
                if (!it.hasNext()) {
                    i10 = -1;
                    break;
                }
                if (Intrinsics.c(it.next().getLanCode(), info.getLanCode())) {
                    break;
                }
                i10++;
            }
            numValueOf = Integer.valueOf(i10);
        }
        if ((numValueOf != null && numValueOf.intValue() == -1) || info.getSubjectId() == null) {
            wf.a.C0922a.g(wf.a.f74274a, "AudioSelectCallback info can't find in dubs", false, 2, null);
        } else {
            streamDetailFragment.k1().P().q(info);
        }
        return Unit.f64096a;
    }

    private final void r1() {
        BubbleTextView bubbleTextView;
        BubbleTextView bubbleTextView2;
        BubbleTextView bubbleTextView3;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (bubbleTextView3 = mViewBinding.f75946b) != null) {
            bubbleTextView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    StreamDetailFragment.s1(this.f55508a, view);
                }
            });
        }
        xv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (bubbleTextView2 = mViewBinding2.f75946b) != null) {
            uf.c.k(bubbleTextView2);
        }
        X0();
        xv.i mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (bubbleTextView = mViewBinding3.f75946b) == null) {
            return;
        }
        uf.c.g(bubbleTextView);
    }

    private final void r2(Subject movieDetailBean) {
        Subject subject;
        View view;
        View view2;
        FrameLayout frameLayout;
        this.mMovieDetailBean = movieDetailBean;
        N1(movieDetailBean != null ? movieDetailBean.getGenre() : null);
        if (!this.isGameResInit) {
            x1();
            R1(true);
        }
        Subject subject2 = this.mMovieDetailBean;
        String ops = subject2 != null ? subject2.getOps() : null;
        if ((ops == null || ops.length() == 0) && (subject = this.mMovieDetailBean) != null) {
            subject.setOps(this.ops);
        }
        ResourcesSeasonList resourcesSeasonList = (ResourcesSeasonList) n1().y().f();
        Subject subject3 = this.mMovieDetailBean;
        if (subject3 != null && subject3.isFamilyModeIntercept()) {
            xv.i mViewBinding = getMViewBinding();
            if (mViewBinding != null && (frameLayout = mViewBinding.f75952h) != null) {
                ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
                if (layoutParams == null) {
                    throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                }
                ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                ((ViewGroup.MarginLayoutParams) bVar).height = lj.a.b(48);
                frameLayout.setLayoutParams(bVar);
            }
            xv.i mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (view2 = mViewBinding2.f75964t) != null) {
                uf.c.g(view2);
            }
            xv.i mViewBinding3 = getMViewBinding();
            if (mViewBinding3 != null && (view = mViewBinding3.f75965u) != null) {
                view.setBackgroundResource(com.tn.lib.widget.R$color.bg_01);
            }
        } else if (resourcesSeasonList != null && resourcesSeasonList.isNoSource()) {
            c2(this.mMovieDetailBean);
        }
        t1();
        Z1();
    }

    public static final void s1(StreamDetailFragment streamDetailFragment, View view) {
        wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "Click activity tip", false, 4, null);
        streamDetailFragment.hasClickedActivityTip = true;
        Intrinsics.e(view);
        uf.c.g(view);
    }

    private final void showLoading() {
        LinearLayout root;
        xv.i mViewBinding;
        FrameLayout frameLayout;
        Context context = getContext();
        if (context == null) {
            return;
        }
        if (this.loadingViewBinding == null) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
            xv.i mViewBinding2 = getMViewBinding();
            this.loadingViewBinding = xv.j.c(layoutInflaterFrom, mViewBinding2 != null ? mViewBinding2.f75952h : null, false);
        }
        xv.j jVar = this.loadingViewBinding;
        if (jVar == null || (root = jVar.getRoot()) == null) {
            return;
        }
        if (root.getParent() == null && (mViewBinding = getMViewBinding()) != null && (frameLayout = mViewBinding.f75952h) != null) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            layoutParams.bottomMargin = com.blankj.utilcode.util.i.e(20.0f);
            Unit unit = Unit.f64096a;
            frameLayout.addView(root, layoutParams);
        }
        uf.c.k(root);
    }

    private final void t1() {
        Subject subject = this.mMovieDetailBean;
        xv.i mViewBinding = getMViewBinding();
        MagicIndicator magicIndicator = mViewBinding != null ? mViewBinding.f75957m : null;
        xv.i mViewBinding2 = getMViewBinding();
        this.bottomRecHelper = new zm.e(this, subject, magicIndicator, mViewBinding2 != null ? mViewBinding2.f75959o : null, "stream_detail", false, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.u1(this.f55692a, ((Integer) obj).intValue());
            }
        }, 96, null);
    }

    public static final Unit u1(StreamDetailFragment streamDetailFragment, int i10) {
        DownloadView downloadView;
        GradientTextView gradientTextView;
        Subject subject;
        DownloadView downloadView2;
        if (!streamDetailFragment.hasResource || ((subject = streamDetailFragment.mMovieDetailBean) != null && subject.isFamilyModeIntercept())) {
            xv.i mViewBinding = streamDetailFragment.getMViewBinding();
            if (mViewBinding != null && (downloadView = mViewBinding.f75948d) != null) {
                uf.c.g(downloadView);
            }
        } else {
            xv.i mViewBinding2 = streamDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (downloadView2 = mViewBinding2.f75948d) != null) {
                downloadView2.setVisibility(i10 != 1 ? 0 : 8);
            }
        }
        xv.i mViewBinding3 = streamDetailFragment.getMViewBinding();
        if (mViewBinding3 != null && (gradientTextView = mViewBinding3.f75963s) != null) {
            gradientTextView.setVisibility(i10 == 1 ? 0 : 8);
        }
        return Unit.f64096a;
    }

    private final void v1() {
        DownloadView downloadView;
        DownloadView downloadView2;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (downloadView2 = mViewBinding.f75948d) != null) {
            DownloadView.setAttrs$default(downloadView2, null, Float.valueOf(com.transsion.core.utils.e.g(16.0f)), null, 5, null);
        }
        xv.i mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (downloadView = mViewBinding2.f75948d) == null) {
            return;
        }
        downloadView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                StreamDetailFragment.w1(this.f55531a, view);
            }
        });
    }

    public static final void w1(StreamDetailFragment streamDetailFragment, View view) {
        ResourceDetectors resourceDetector;
        List<DownloadItem> resolutionList;
        Subject subject;
        ResourceDetectors resourceDetector2;
        ResourceDetectors resourceDetector3;
        List<DownloadItem> resolutionList2;
        Subject subject2 = streamDetailFragment.mMovieDetailBean;
        if (subject2 != null && (resourceDetector = subject2.getResourceDetector()) != null && (resolutionList = resourceDetector.getResolutionList()) != null && (!resolutionList.isEmpty())) {
            Subject subject3 = streamDetailFragment.mMovieDetailBean;
            Integer numValueOf = (subject3 == null || (resourceDetector3 = subject3.getResourceDetector()) == null || (resolutionList2 = resourceDetector3.getResolutionList()) == null) ? null : Integer.valueOf(resolutionList2.size());
            Intrinsics.e(numValueOf);
            if (numValueOf.intValue() > 1 && (subject = streamDetailFragment.mMovieDetailBean) != null && (resourceDetector2 = subject.getResourceDetector()) != null) {
                resourceDetector2.setType(1);
            }
        }
        streamDetailFragment.a1();
        streamDetailFragment.b1();
    }

    private final void x1() {
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
                bVar.a(context, "stream_detail", gameInfoType, str, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return StreamDetailFragment.y1(this.f55695a, (View) obj);
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

    public static final Unit y1(StreamDetailFragment streamDetailFragment, View view) {
        FrameLayout frameLayout;
        FrameLayout frameLayout2;
        streamDetailFragment.gameResView = view;
        if (view == null) {
            xv.i mViewBinding = streamDetailFragment.getMViewBinding();
            if (mViewBinding != null && (frameLayout2 = mViewBinding.f75953i) != null) {
                uf.c.g(frameLayout2);
            }
            xv.i mViewBinding2 = streamDetailFragment.getMViewBinding();
            if (mViewBinding2 != null && (frameLayout = mViewBinding2.f75953i) != null) {
                frameLayout.removeAllViews();
            }
        } else {
            streamDetailFragment.h2();
        }
        return Unit.f64096a;
    }

    public static final void z1(StreamDetailFragment streamDetailFragment, View view) {
        FragmentActivity activity;
        if (streamDetailFragment.playerControl != null) {
            if (streamDetailFragment.e2(FloatActionType.BACK) || (activity = streamDetailFragment.getActivity()) == null) {
                return;
            }
            activity.finish();
            return;
        }
        FragmentActivity activity2 = streamDetailFragment.getActivity();
        if (activity2 != null) {
            activity2.finish();
        }
    }

    @Override
    public void S(Function0 callback) {
        this.backPressedCallback = callback;
    }

    public final void Y1() {
        kn.a aVar;
        cw.c cVar = cw.c.f58664a;
        kn.a aVar2 = this.playerControl;
        if (cVar.c(aVar2 != null ? aVar2.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.release();
    }

    @Override
    public View getLoadingView() {
        View viewInflate = LayoutInflater.from(requireContext()).inflate(R$layout.default_movie_detail_skeleton_drawing_layout, (ViewGroup) getFlStateView(), false);
        ((AppCompatImageView) viewInflate.findViewById(R$id.ivBack)).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                StreamDetailFragment.h1(this.f55534a, view);
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
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            mViewBinding.f75954j.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    StreamDetailFragment.z1(this.f55506a, view);
                }
            });
        }
    }

    @Override
    public void initViewData() {
        View view;
        xv.i mViewBinding = getMViewBinding();
        if (mViewBinding != null && (view = mViewBinding.f75965u) != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).height = com.blankj.utilcode.util.d.c();
            view.setLayoutParams(bVar);
        }
        requireActivity().getOnBackPressedDispatcher().i(this, new c());
        r1();
        v1();
        D1();
    }

    @Override
    public void initViewModel() {
        MovieDetailViewModel movieDetailViewModelK1 = k1();
        movieDetailViewModelK1.F().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.I1(this.f55515a, (Pair) obj);
            }
        }));
        movieDetailViewModelK1.K().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.J1(this.f55679a, (Integer) obj);
            }
        }));
        n1().y().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.K1(this.f55701a, (ResourcesSeasonList) obj);
            }
        }));
        n1().s().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.L1(this.f55711a, (List) obj);
            }
        }));
        n1().x().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.M1(this.f55713a, (VideoDetailMediaSource) obj);
            }
        }));
        n1().u().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.F1(this.f55715a, (VideoDetailPlayBean) obj);
            }
        }));
        k1().P().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.G1(this.f55718a, (DubsInfo) obj);
            }
        }));
        f1().c().j(this, new e(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return StreamDetailFragment.H1(this.f55720a, (Boolean) obj);
            }
        }));
    }

    @Override
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    @Override
    public void loadDefaultData() {
        P1(this, false, 1, null);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("stream_detail", false, 2, null);
    }

    @Override
    public xv.i getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        xv.i iVarC = xv.i.c(inflater);
        Intrinsics.g(iVarC, "inflate(...)");
        return iVarC;
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        MovieDetailActivity.INSTANCE.a("videoDetail------- onCreate ------");
        yg.l.f76264a.l(this.networkStatusChangedListener);
        this.adHelper = new NativeCardPageAdHelper(androidx.p009lifecycle.v.a(this));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        S1();
        setMViewBinding(null);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.x();
        }
        this.adHelper = null;
    }

    @Override
    public void onHomeClick() {
        super.onHomeClick();
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "StreamDetail onHomeClick", false, 4, null);
        e2(FloatActionType.HOME);
    }

    @Override
    public void onPause() {
        super.onPause();
        cw.c cVar = cw.c.f58664a;
        kn.a aVar = this.playerControl;
        if (!cVar.c(aVar != null ? aVar.getPlayer() : null)) {
            n1().w().o(this.playInfoObserver);
        }
        R1(false);
        NativeCardPageAdHelper nativeCardPageAdHelper = this.adHelper;
        if (nativeCardPageAdHelper != null) {
            nativeCardPageAdHelper.C();
        }
    }

    @Override
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        kn.a aVar;
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        if (isInPictureInPictureMode) {
            FragmentActivity activity = getActivity();
            if (activity == null || activity.isDestroyed() || activity.isFinishing()) {
                return;
            }
            dw.a aVarG1 = g1();
            if (aVarG1 != null && Build.VERSION.SDK_INT >= 31) {
                wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onPictureInPictureModeChanged stream--- updateData==2", false, 4, null);
                cw.e.f58665a.b().h(activity, aVarG1);
            }
        }
        cw.e.f58665a.b().onPipModeChanged(isInPictureInPictureMode);
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.onPipModeChanged(isInPictureInPictureMode);
        }
        if (isInPictureInPictureMode || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.exitFullScreen();
    }

    @Override
    public void onRecentClick() {
        super.onRecentClick();
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat", "StreamDetail onRecentClick", false, 4, null);
        e2(FloatActionType.HOME);
    }

    @Override
    public void onResume() {
        super.onResume();
        wf.a.C0922a.f(wf.a.f74274a, "videoDetail", "onResume isInterceptDialogShow --> " + this.isInterceptDialogShow, false, 4, null);
        if (this.isInterceptDialogShow) {
            return;
        }
        kn.a aVar = this.playerControl;
        if (aVar != null) {
            aVar.onViewResume();
        }
        n1().w().k(this.playInfoObserver);
        R1(true);
    }

    @Override
    public void onStop() {
        kn.a aVar;
        super.onStop();
        kn.a aVar2 = this.playerControl;
        if (aVar2 != null) {
            aVar2.onSaveHistory();
        }
        cw.c cVar = cw.c.f58664a;
        kn.a aVar3 = this.playerControl;
        if (cVar.c(aVar3 != null ? aVar3.getPlayer() : null) || (aVar = this.playerControl) == null) {
            return;
        }
        aVar.onViewPause();
    }

    @Override
    public void receiveArguments() {
        this.lastPageFrom = qi.h.f69682a.h();
        Bundle arguments = getArguments();
        this.ops = arguments != null ? arguments.getString("ops") : null;
        Bundle arguments2 = getArguments();
        this.mSubjectId = arguments2 != null ? arguments2.getString("id") : null;
        Bundle arguments3 = getArguments();
        this.autoDownload = arguments3 != null ? arguments3.getBoolean("auto_download") : false;
        Bundle arguments4 = getArguments();
        this.autoPlay = arguments4 != null ? arguments4.getBoolean("auto_play") : false;
        Bundle arguments5 = getArguments();
        this.autoPlayResourceId = arguments5 != null ? arguments5.getString("auto_play_resource_id") : null;
        Bundle arguments6 = getArguments();
        this.preloadId = arguments6 != null ? arguments6.getInt("yy_preload_id") : 0;
        Bundle arguments7 = getArguments();
        this.moduleName = arguments7 != null ? arguments7.getString("module_name") : null;
        Bundle arguments8 = getArguments();
        this.targetSeason = arguments8 != null ? arguments8.getInt("season") : 0;
        Bundle arguments9 = getArguments();
        this.targetEp = arguments9 != null ? arguments9.getInt("episode") : 0;
        int i10 = this.targetSeason;
        if (i10 <= 0) {
            i10 = 1;
        }
        this.curSeason = i10;
        MovieDetailViewModel movieDetailViewModelK1 = k1();
        int i11 = this.preloadId;
        String str = this.mSubjectId;
        if (str == null) {
            str = "";
        }
        movieDetailViewModelK1.S(i11, str, Integer.valueOf(this.curSeason));
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig != null) {
            logViewConfig.j(this.lastPageFrom);
        }
    }

    @Override
    public void retryLoadData() {
        if (this.mMovieDetailBean == null) {
            loadDefaultData();
        }
    }
}
