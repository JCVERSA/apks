package com.transsion.postdetail.ui.fragment;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.gms.common.internal.ImagesContract;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baselib.db.download.DownloadRange;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.helper.ScreenRotationHelper;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.player.config.RenderType;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$array;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.layer.listener.LayerFlag;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.postdetail.layer.local.LocalVideoMiddleLayer;
import com.transsion.postdetail.util.LocalFloatManager;
import com.transsion.postdetail.util.LocalVideoAdHelper;
import com.transsion.push.bean.MsgStyle;
import com.transsion.subtitle.VideoSubtitleControl;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000Ì\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\n*\u0004¸\u0002À\u0002\u0018\u0000 È\u00022\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0002\u009a\u0001B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0003¢\u0006\u0004\b\t\u0010\u0006J\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u0019\u0010\u0014\u001a\u00020\u00072\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u0016H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b \u0010!J\u000f\u0010#\u001a\u00020\"H\u0002¢\u0006\u0004\b#\u0010$J\u0019\u0010&\u001a\u0004\u0018\u00010\"2\u0006\u0010%\u001a\u00020\u001aH\u0002¢\u0006\u0004\b&\u0010'J\u0011\u0010)\u001a\u0004\u0018\u00010(H\u0002¢\u0006\u0004\b)\u0010*J\u000f\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020\u0007H\u0002¢\u0006\u0004\b.\u0010\u0006J\u000f\u0010/\u001a\u00020\u0007H\u0002¢\u0006\u0004\b/\u0010\u0006J\u0017\u00100\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b0\u0010\u001dJ'\u00103\u001a\u00020\u00072\u0006\u00101\u001a\u00020+2\u0006\u00102\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0007H\u0002¢\u0006\u0004\b5\u0010\u0006J\u000f\u00106\u001a\u00020\u0007H\u0002¢\u0006\u0004\b6\u0010\u0006J\u000f\u00107\u001a\u00020\u0007H\u0002¢\u0006\u0004\b7\u0010\u0006J\u001f\u00109\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u00108\u001a\u00020\u0016H\u0002¢\u0006\u0004\b9\u0010:J\u0017\u0010;\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b;\u0010\u0015J\u0017\u0010=\u001a\u00020\u00072\u0006\u0010<\u001a\u00020\u0016H\u0002¢\u0006\u0004\b=\u0010\u0019J\u0015\u0010@\u001a\b\u0012\u0004\u0012\u00020?0>H\u0002¢\u0006\u0004\b@\u0010AJ\u000f\u0010B\u001a\u00020\u0007H\u0002¢\u0006\u0004\bB\u0010\u0006J\u000f\u0010C\u001a\u00020\u0007H\u0002¢\u0006\u0004\bC\u0010\u0006J\u0019\u0010E\u001a\u00020\u00072\b\u0010D\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0004\bE\u0010\u0015J\u000f\u0010F\u001a\u00020\u0007H\u0002¢\u0006\u0004\bF\u0010\u0006J\u000f\u0010G\u001a\u00020\u0007H\u0002¢\u0006\u0004\bG\u0010\u0006J\u000f\u0010H\u001a\u00020\u0007H\u0002¢\u0006\u0004\bH\u0010\u0006J\u0017\u0010K\u001a\u00020\u00072\u0006\u0010J\u001a\u00020IH\u0002¢\u0006\u0004\bK\u0010LJ+\u0010P\u001a\u00020\u00072\b\u0010M\u001a\u0004\u0018\u00010\u00122\u0006\u0010N\u001a\u00020I2\b\b\u0002\u0010O\u001a\u00020\u0016H\u0002¢\u0006\u0004\bP\u0010QJ\u0018\u0010R\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012H\u0082@¢\u0006\u0004\bR\u0010SJ\u000f\u0010T\u001a\u00020\u0007H\u0002¢\u0006\u0004\bT\u0010\u0006J\u000f\u0010U\u001a\u00020\u0007H\u0002¢\u0006\u0004\bU\u0010\u0006J\u000f\u0010V\u001a\u00020\u0007H\u0002¢\u0006\u0004\bV\u0010\u0006J\u000f\u0010W\u001a\u00020\u0007H\u0002¢\u0006\u0004\bW\u0010\u0006J\u000f\u0010X\u001a\u00020\u0016H\u0002¢\u0006\u0004\bX\u0010YJ\u0017\u0010[\u001a\u00020\u00072\u0006\u0010Z\u001a\u00020\u0016H\u0002¢\u0006\u0004\b[\u0010\u0019J\u000f\u0010\\\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\\\u0010\u0006J\u0017\u0010_\u001a\u00020\u00072\u0006\u0010^\u001a\u00020]H\u0016¢\u0006\u0004\b_\u0010`J\u0017\u0010c\u001a\u00020\u00022\u0006\u0010b\u001a\u00020aH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\u0016H\u0016¢\u0006\u0004\be\u0010YJ\u000f\u0010f\u001a\u00020\u001aH\u0016¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\u0007H\u0016¢\u0006\u0004\bh\u0010\u0006J\u000f\u0010i\u001a\u00020\u0007H\u0016¢\u0006\u0004\bi\u0010\u0006J\u000f\u0010j\u001a\u00020\u0007H\u0016¢\u0006\u0004\bj\u0010\u0006J\u000f\u0010k\u001a\u00020\u0007H\u0016¢\u0006\u0004\bk\u0010\u0006J\u000f\u0010l\u001a\u00020\u0016H\u0016¢\u0006\u0004\bl\u0010YJ\u000f\u0010m\u001a\u00020\u0007H\u0016¢\u0006\u0004\bm\u0010\u0006J\u001f\u0010r\u001a\u00020\u00072\u0006\u0010o\u001a\u00020n2\u0006\u0010q\u001a\u00020pH\u0016¢\u0006\u0004\br\u0010sJ\u0017\u0010v\u001a\u00020\u00072\u0006\u0010u\u001a\u00020tH\u0016¢\u0006\u0004\bv\u0010wJ\u000f\u0010x\u001a\u00020\u0007H\u0016¢\u0006\u0004\bx\u0010\u0006J\u000f\u0010y\u001a\u00020\u0007H\u0016¢\u0006\u0004\by\u0010\u0006J\u000f\u0010z\u001a\u00020\u0007H\u0016¢\u0006\u0004\bz\u0010\u0006J\u000f\u0010{\u001a\u00020\u0007H\u0016¢\u0006\u0004\b{\u0010\u0006J\r\u0010|\u001a\u00020\u0007¢\u0006\u0004\b|\u0010\u0006J\"\u0010\u007f\u001a\u00020\u00072\b\u0010}\u001a\u0004\u0018\u00010\u001a2\b\u0010~\u001a\u0004\u0018\u00010\u001a¢\u0006\u0005\b\u007f\u0010\u0080\u0001J\u000f\u0010\u0081\u0001\u001a\u00020\u0007¢\u0006\u0005\b\u0081\u0001\u0010\u0006J\"\u0010\u0084\u0001\u001a\u00020\u00072\u0006\u0010J\u001a\u00020I2\b\u0010\u0083\u0001\u001a\u00030\u0082\u0001¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u000f\u0010\u0086\u0001\u001a\u00020\u0007¢\u0006\u0005\b\u0086\u0001\u0010\u0006J\u001a\u0010\u0088\u0001\u001a\u00020\u00072\t\b\u0002\u0010\u0087\u0001\u001a\u00020\u0016¢\u0006\u0005\b\u0088\u0001\u0010\u0019J\u001e\u0010\u008b\u0001\u001a\u00020\u00072\n\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0089\u0001H\u0016¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u0013\u0010\u008e\u0001\u001a\u00030\u008d\u0001H\u0016¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001J\u001a\u0010\u0091\u0001\u001a\u00020\u00072\u0007\u0010\u0090\u0001\u001a\u00020\u0016H\u0016¢\u0006\u0005\b\u0091\u0001\u0010\u0019J\u0011\u0010\u0092\u0001\u001a\u00020\u0007H\u0016¢\u0006\u0005\b\u0092\u0001\u0010\u0006J\u0011\u0010\u0093\u0001\u001a\u00020\u0007H\u0016¢\u0006\u0005\b\u0093\u0001\u0010\u0006J\u001a\u0010\u0095\u0001\u001a\u00020\u00072\u0007\u0010\u0094\u0001\u001a\u00020\u0016H\u0016¢\u0006\u0005\b\u0095\u0001\u0010\u0019J\u0018\u0010\u0097\u0001\u001a\u00020\u00072\u0007\u0010\u0096\u0001\u001a\u00020\u0016¢\u0006\u0005\b\u0097\u0001\u0010\u0019J\u000f\u0010\u0098\u0001\u001a\u00020\u0007¢\u0006\u0005\b\u0098\u0001\u0010\u0006J\u000f\u0010\u0099\u0001\u001a\u00020\u0016¢\u0006\u0005\b\u0099\u0001\u0010YR\u0017\u0010\u009c\u0001\u001a\u00020\u001a8\u0002X\u0082D¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u009b\u0001R\u001c\u0010 \u0001\u001a\u0005\u0018\u00010\u009d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0001\u0010\u009f\u0001R\u001c\u0010¤\u0001\u001a\u0005\u0018\u00010¡\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¢\u0001\u0010£\u0001R\u001c\u0010¨\u0001\u001a\u0005\u0018\u00010¥\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¦\u0001\u0010§\u0001R\u0019\u0010ª\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010\u009b\u0001R\u0019\u0010¬\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010\u009b\u0001R\u0019\u0010®\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010\u009b\u0001R\u0018\u0010~\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010\u009b\u0001R\u0019\u0010±\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010\u009b\u0001R\u0019\u0010³\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010\u009b\u0001R\u0018\u0010}\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010\u009b\u0001R\u0019\u0010¶\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u009b\u0001R\u0019\u0010¹\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u0019\u0010»\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010¸\u0001R\u0019\u0010½\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¼\u0001\u0010¸\u0001R\u0018\u0010O\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¸\u0001R\u0019\u0010À\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0001\u0010¸\u0001R\u001a\u0010D\u001a\u0004\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R!\u0010È\u0001\u001a\u00030Ã\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÄ\u0001\u0010Å\u0001\u001a\u0006\bÆ\u0001\u0010Ç\u0001R\u0018\u0010Ë\u0001\u001a\u00030Ã\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÉ\u0001\u0010Ê\u0001R!\u0010Ð\u0001\u001a\u00030Ì\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÍ\u0001\u0010Å\u0001\u001a\u0006\bÎ\u0001\u0010Ï\u0001R\u0018\u0010N\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R\u001a\u0010Õ\u0001\u001a\u00030\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010Ô\u0001R\u0019\u0010×\u0001\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÖ\u0001\u0010Ò\u0001R\u0018\u00101\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R\u0018\u00102\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÚ\u0001\u0010Ù\u0001R\u0019\u0010Ü\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010Ù\u0001R\u0019\u0010Þ\u0001\u001a\u00020+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010Ù\u0001R!\u0010ã\u0001\u001a\n\u0012\u0005\u0012\u00030à\u00010ß\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0001\u0010â\u0001R!\u0010è\u0001\u001a\u00030ä\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bå\u0001\u0010Å\u0001\u001a\u0006\bæ\u0001\u0010ç\u0001R!\u0010í\u0001\u001a\u00030é\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bê\u0001\u0010Å\u0001\u001a\u0006\bë\u0001\u0010ì\u0001R!\u0010ñ\u0001\u001a\u00030î\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÔ\u0001\u0010Å\u0001\u001a\u0006\bï\u0001\u0010ð\u0001R\u0019\u0010ó\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bò\u0001\u0010¸\u0001R\u0019\u0010õ\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0001\u0010¸\u0001R\u0019\u0010ö\u0001\u001a\u00020I8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010Ò\u0001R\u0019\u0010÷\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010¸\u0001R\u0019\u0010ù\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010¸\u0001R\u0019\u0010û\u0001\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bú\u0001\u0010¸\u0001R\u001a\u0010ÿ\u0001\u001a\u00030ü\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bý\u0001\u0010þ\u0001R\u001c\u0010\u0083\u0002\u001a\u0005\u0018\u00010\u0080\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0002\u0010\u0082\u0002R\u0017\u0010\u0085\u0002\u001a\u00020+8\u0002X\u0082D¢\u0006\b\n\u0006\b\u0084\u0002\u0010Ù\u0001R#\u0010\u008a\u0002\u001a\u0005\u0018\u00010\u0086\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0087\u0002\u0010Å\u0001\u001a\u0006\b\u0088\u0002\u0010\u0089\u0002R*\u0010\u0090\u0002\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\b\u008b\u0002\u0010\u008c\u0002\u001a\u0006\b\u008d\u0002\u0010\u008e\u0002\"\u0005\b\u008f\u0002\u0010\rR'\u0010\u0092\u0002\u001a\u00020\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0016\n\u0006\b\u0091\u0002\u0010¸\u0001\u001a\u0005\b\u0092\u0002\u0010Y\"\u0005\b\u0093\u0002\u0010\u0019R\u001a\u0010\u0097\u0002\u001a\u00030\u0094\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0002\u0010\u0096\u0002R\u001c\u0010\u009b\u0002\u001a\u0005\u0018\u00010\u0098\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0002\u0010\u009a\u0002R\u0019\u0010\u009d\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0002\u0010¸\u0001R\u0019\u0010\u009f\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009e\u0002\u0010¸\u0001R!\u0010¤\u0002\u001a\u00030 \u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¡\u0002\u0010Å\u0001\u001a\u0006\b¢\u0002\u0010£\u0002R\u0018\u0010¦\u0002\u001a\u00030Ã\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¥\u0002\u0010Ê\u0001R\u001b\u0010¨\u0002\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0002\u0010\u009b\u0001R \u0010«\u0002\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¸\u0001\u0010Å\u0001\u001a\u0006\b©\u0002\u0010ª\u0002R \u0010®\u0002\u001a\u00020I8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¬\u0002\u0010Å\u0001\u001a\u0006\b\u00ad\u0002\u0010ª\u0002R\u0019\u0010°\u0002\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0002\u0010¸\u0001R\u0017\u0010²\u0002\u001a\u00020+8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0002\u0010Ù\u0001R#\u0010·\u0002\u001a\u0005\u0018\u00010³\u00028BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b´\u0002\u0010Å\u0001\u001a\u0006\bµ\u0002\u0010¶\u0002R\u0018\u0010»\u0002\u001a\u00030¸\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¹\u0002\u0010º\u0002R\u0018\u0010¿\u0002\u001a\u00030¼\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0002\u0010¾\u0002R\u0018\u0010Ã\u0002\u001a\u00030À\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÁ\u0002\u0010Â\u0002R\u0018\u0010Å\u0002\u001a\u00030¼\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÄ\u0002\u0010¾\u0002R\u0019\u0010Ç\u0002\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0002\u0010\u008c\u0002¨\u0006É\u0002"}, d2 = {"Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Lwn/j;", "Lcom/transsion/player/orplayer/e;", "Lcom/transsion/baselib/report/k$a;", "<init>", "()V", "", "initAd", "initView", "Lcom/transsion/postdetail/layer/local/LocalUiType;", "uiType", "C3", "(Lcom/transsion/postdetail/layer/local/LocalUiType;)V", "y2", "initAudioListener", "Q2", "x2", "Lcom/transsion/baselib/db/download/DownloadBean;", "bean", "N2", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "", "isSameResource", "D2", "(Z)V", "", "path", "j3", "(Ljava/lang/String;)V", "q3", "Lcom/transsion/player/mediasession/MediaItem;", "i2", "()Lcom/transsion/player/mediasession/MediaItem;", "Landroid/content/Intent;", "d2", "()Landroid/content/Intent;", "pageName", "g2", "(Ljava/lang/String;)Landroid/content/Intent;", "Landroid/app/PendingIntent;", "j2", "()Landroid/app/PendingIntent;", "", "l2", "()I", "E2", "z2", "V2", "videoWidth", "videoHeight", "b3", "(IILjava/lang/String;)V", "B2", "a2", "G2", "isStart", "w3", "(Lcom/transsion/baselib/db/download/DownloadBean;Z)V", "Y2", "isFirst", "A2", "", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "f2", "()Ljava/util/List;", "F2", "B3", "downloadBean", "k3", "A3", "t2", "E3", "", NotificationCompat.CATEGORY_PROGRESS, "i3", "(J)V", "cvideoBean", "playProgress", "completed", "r3", "(Lcom/transsion/baselib/db/download/DownloadBean;JZ)V", "t3", "(Lcom/transsion/baselib/db/download/DownloadBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "a3", "Y1", "O2", "w2", "T2", "()Z", "isPortrait", "V1", "p3", "Landroid/content/Context;", "context", "onAttach", "(Landroid/content/Context;)V", "Landroid/view/LayoutInflater;", "inflater", "r2", "(Landroid/view/LayoutInflater;)Lwn/j;", "isAudioShowNoNetworkLayout", "getPageStateLayoutTitle", "()Ljava/lang/String;", "initViewModel", "initListener", "retryLoadData", "initViewData", "isRegisteDeviceKeyMonitor", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onResume", "onPause", "onStop", "onDestroy", "m3", "subjectId", "resourceId", "W1", "(Ljava/lang/String;Ljava/lang/String;)V", "e3", "", "targetPercent", "v3", "(JF)V", "b2", "fromClicked", "n3", "Lgn/e;", "mediaSource", "onVideoStart", "(Lgn/e;)V", "Lqi/b;", "newLogViewConfig", "()Lqi/b;", "isInPictureInPictureMode", "onPictureInPictureModeChanged", "onHomeClick", "onRecentClick", "isBackground", "onBackgroundStatusChange", "isLock", "W2", "Z2", "S2", "a", "Ljava/lang/String;", "TAG", "Lcom/transsion/player/orplayer/f;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/orplayer/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "c", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "Lcom/transsion/postdetail/layer/local/c0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/layer/local/c0;", "localVideoDot", "e", "localPath", "f", "url", "g", "proxyUrl", "h", "i", "name", "j", "postId", CampaignEx.JSON_KEY_AD_K, "l", "pageFrom", "m", "Z", "isDownloadingPlay", "n", "isDownloadingPlayStart", "o", "isPrepare", TtmlNode.TAG_P, CampaignEx.JSON_KEY_AD_Q, "isSeries", CampaignEx.JSON_KEY_AD_R, "Lcom/transsion/baselib/db/download/DownloadBean;", "Landroid/os/Handler;", "s", "Lkotlin/Lazy;", "getHandler", "()Landroid/os/Handler;", "handler", "t", "Landroid/os/Handler;", "playingDownloadHandler", "Lcom/transsion/postdetail/layer/a;", TmcStartParams.KEY_URL_SHORT, "h2", "()Lcom/transsion/postdetail/layer/a;", "layerManager", "v", "J", "w", "F", "unplaySeekTargetPercent", "x", "duration", "y", "I", "z", "A", "parentPosition", "B", RequestParameters.POSITION, "", "Lht/a;", "C", "Ljava/util/List;", "subtitleList", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "D", "q2", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "videoDetailPlayDao", "Lcom/transsnet/downloader/manager/g;", "E", "e2", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Lcom/transsion/baselib/helper/ScreenRotationHelper;", "o2", "()Lcom/transsion/baselib/helper/ScreenRotationHelper;", "screenHelper", "G", "isNextPlayTipsShow", "H", "isPlayerNetTimeout", "lastReloadTime", "isReload", "K", "isMusic", "L", "isBgPlaying", "Ljava/util/concurrent/atomic/AtomicInteger;", "M", "Ljava/util/concurrent/atomic/AtomicInteger;", "playErrorCount", "Lcom/transsion/subtitle/VideoSubtitleControl;", "N", "Lcom/transsion/subtitle/VideoSubtitleControl;", "subtitleControl", "O", "sDownloadIngAndPlayTimeout", "Lep/a;", "P", "c2", "()Lep/a;", "audioApi", "Q", "Lcom/transsion/postdetail/layer/local/LocalUiType;", "getMUiType", "()Lcom/transsion/postdetail/layer/local/LocalUiType;", "y3", "mUiType", "R", "isPauseState", "z3", "Lcom/transsion/postdetail/util/LocalVideoAdHelper;", "S", "Lcom/transsion/postdetail/util/LocalVideoAdHelper;", "localVideoAdHelper", "Lcom/transsion/player/orplayer/PlayError;", "T", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "U", "isNewPlayer", "V", "isFloatShow", "Lcom/transsion/postdetail/ui/dialog/k;", "W", "p2", "()Lcom/transsion/postdetail/ui/dialog/k;", "speedViewModel", "X", "playTimeoutHandler", "Y", "curTimeoutPlayPath", "m2", "()J", "playTimeout", "a0", "n2", "playTimeoutDp", "b0", "isAdShowing", "c0", "statusBarHeight", "Lcom/transsion/postdetail/util/n;", "d0", "k2", "()Lcom/transsion/postdetail/util/n;", "orientationEventListener", "com/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1", "e0", "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$playerListener$1;", "playerListener", "Ljava/lang/Runnable;", "f0", "Ljava/lang/Runnable;", "playTimeoutRunnable", "com/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b", "g0", "Lcom/transsion/postdetail/ui/fragment/LocalVideoDetailFragment$b;", "downloadListener", "h0", "notNetRunnable", "i0", "curUiRotation", "j0", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LocalVideoDetailFragment extends PageStatusFragment<wn.j> implements com.transsion.player.orplayer.e, com.transsion.baselib.report.k.a {

    public static final Companion INSTANCE = new Companion(null);

    private int parentPosition;

    private int position;

    private List subtitleList;

    private final Lazy videoDetailPlayDao;

    private final Lazy downloadManager;

    private final Lazy screenHelper;

    private boolean isNextPlayTipsShow;

    private boolean isPlayerNetTimeout;

    private long lastReloadTime;

    private boolean isReload;

    private boolean isMusic;

    private boolean isBgPlaying;

    private AtomicInteger playErrorCount;

    private VideoSubtitleControl subtitleControl;

    private final int sDownloadIngAndPlayTimeout;

    private final Lazy audioApi;

    private LocalUiType mUiType;

    private boolean isPauseState;

    private LocalVideoAdHelper localVideoAdHelper;

    private PlayError errorInfo;

    private boolean isNewPlayer;

    private boolean isFloatShow;

    private final Lazy speedViewModel;

    private final Handler playTimeoutHandler;

    private String curTimeoutPlayPath;

    private final Lazy playTimeout;

    private final Lazy playTimeoutDp;

    private com.transsion.player.orplayer.f orPlayer;

    private boolean isAdShowing;

    private ORPlayerView orPlayerView;

    private final int statusBarHeight;

    private com.transsion.postdetail.layer.local.c0 localVideoDot;

    private final Lazy orientationEventListener;

    private final LocalVideoDetailFragment$playerListener$1 playerListener;

    private final Runnable playTimeoutRunnable;

    private final b downloadListener;

    private final Runnable notNetRunnable;

    private LocalUiType curUiRotation;

    private boolean isDownloadingPlay;

    private boolean isDownloadingPlayStart;

    private boolean isPrepare;

    private DownloadBean downloadBean;

    private final Lazy layerManager;

    private long playProgress;

    private float unplaySeekTargetPercent;

    private long duration;

    private int videoWidth;

    private int videoHeight;

    private final String TAG = "LocalVideoDetail";

    private String localPath = "";

    private String url = "";

    private String proxyUrl = "";

    private String resourceId = "";

    private String name = "";

    private String postId = "";

    private String subjectId = "";

    private String pageFrom = "";

    private boolean completed = true;

    private boolean isSeries = true;

    private final Lazy handler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return LocalVideoDetailFragment.s2();
        }
    });

    private final Handler playingDownloadHandler = new Handler(Looper.getMainLooper());

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final LocalVideoDetailFragment a(String str, String str2, String str3, String str4, String str5, String str6, String str7, Boolean bool, Boolean bool2, String str8, Integer num, Integer num2, Integer num3, Integer num4) {
            LocalVideoDetailFragment localVideoDetailFragment = new LocalVideoDetailFragment();
            localVideoDetailFragment.setArguments(androidx.core.os.d.b(TuplesKt.a("extra_local_path", str), TuplesKt.a("extra_url", str2), TuplesKt.a("extra_proxy_url", str7), TuplesKt.a("extra_name", str3), TuplesKt.a("extra_resource_id", str4), TuplesKt.a("extra_subject_id", str6), TuplesKt.a("extra_post_id", str5), TuplesKt.a("extra_completed", bool), TuplesKt.a("extra_is_series", bool2), TuplesKt.a("extra_page_from", str8), TuplesKt.a("extra_height", num), TuplesKt.a("extra_width", num2), TuplesKt.a("extra_parent_position", num3), TuplesKt.a("extra_position", num4)));
            return localVideoDetailFragment;
        }

        private Companion() {
        }
    }

    public static final class b extends zw.d {
        b() {
        }

        @Override
        public void h(DownloadBean bean, int i10) {
            com.transsion.postdetail.layer.local.c0 c0Var;
            Intrinsics.h(bean, "bean");
            LocalVideoDetailFragment.this.h2().h(LayerFlag.DOWNLOAD_CALLBACK, bean);
            if (Intrinsics.c(LocalVideoDetailFragment.this.resourceId, bean.getResourceId())) {
                if (bean.getStatus() == 6 && (c0Var = LocalVideoDetailFragment.this.localVideoDot) != null) {
                    DownloadException exception = bean.getException();
                    c0Var.G(1, exception != null ? exception.getMessage() : null);
                }
                if (bean.getSize() != null) {
                    Long size = bean.getSize();
                    if ((size != null ? size.longValue() : 0L) <= 0) {
                        return;
                    }
                    LocalVideoDetailFragment.this.downloadBean = bean;
                    if (bean.getStatus() == 2 || bean.getStatus() == 5) {
                        LocalVideoDetailFragment.this.Y2(bean);
                        LocalVideoDetailFragment.this.h2().h(LayerFlag.DOWNLOAD_SPEED, bean.getStatus() == 5 ? "" : com.transsion.baseui.util.i.f42344a.a(bean.getProgress()));
                        LocalVideoDetailFragment.this.w3(bean, false);
                    }
                }
            }
        }
    }

    public static final class c implements zn.b {
        c() {
        }

        @Override
        public void a(LocalUiType uiType) {
            Intrinsics.h(uiType, "uiType");
            LocalVideoDetailFragment.this.y3(uiType);
            VideoSubtitleControl videoSubtitleControl = LocalVideoDetailFragment.this.subtitleControl;
            if (videoSubtitleControl != null) {
                videoSubtitleControl.O(com.transsion.postdetail.util.t.c(uiType));
            }
            LocalVideoDetailFragment.this.C3(uiType);
            LocalVideoDetailFragment.this.localVideoAdHelper.x2(uiType, LocalVideoDetailFragment.this.orPlayer);
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                c0Var.k(uiType);
            }
        }

        @Override
        public void b(DownloadBean downloadBean) {
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                c0Var.o();
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var2 != null) {
                c0Var2.g();
            }
            com.transsion.postdetail.layer.local.c0 c0Var3 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var3 != null) {
                c0Var3.a();
            }
            com.transsion.postdetail.layer.local.c0 c0Var4 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var4 != null) {
                c0Var4.n();
            }
        }

        @Override
        public void c(DownloadBean downloadBean) {
            LocalVideoDetailFragment.this.isFloatShow = true;
        }

        @Override
        public void d(DownloadBean downloadBean) {
            LocalVideoDetailFragment.this.B3();
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
            }
        }
    }

    public static final class d implements zn.c {
        d() {
        }

        public static final void d(LocalVideoDetailFragment localVideoDetailFragment) {
            if (localVideoDetailFragment.isDownloadingPlayStart) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, localVideoDetailFragment.TAG, "2------ playNextVideo, postDelayed start video", false, 4, null);
            localVideoDetailFragment.a2();
        }

        @Override
        public void a(DownloadBean bean, boolean z10) {
            Intrinsics.h(bean, "bean");
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.v(c0922a, "LocalVideoMiddle", "onNext", false, 4, null);
            LocalVideoDetailFragment localVideoDetailFragment = LocalVideoDetailFragment.this;
            localVideoDetailFragment.r3(localVideoDetailFragment.downloadBean, LocalVideoDetailFragment.this.playProgress, z10);
            LocalVideoDetailFragment.this.e2().H();
            LocalVideoDetailFragment.this.e2().o();
            LocalVideoDetailFragment.this.B3();
            com.transsion.postdetail.layer.local.c0 c0Var = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var != null) {
                com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var2 != null) {
                c0Var2.g();
            }
            com.transsion.postdetail.layer.local.c0 c0Var3 = LocalVideoDetailFragment.this.localVideoDot;
            if (c0Var3 != null) {
                c0Var3.a();
            }
            LocalVideoDetailFragment.this.isReload = false;
            LocalVideoDetailFragment.this.isNextPlayTipsShow = false;
            LocalVideoDetailFragment localVideoDetailFragment2 = LocalVideoDetailFragment.this;
            String name = bean.getName();
            if (name == null) {
                name = "";
            }
            localVideoDetailFragment2.name = name;
            LocalVideoDetailFragment localVideoDetailFragment3 = LocalVideoDetailFragment.this;
            String postId = bean.getPostId();
            if (postId == null) {
                postId = "";
            }
            localVideoDetailFragment3.postId = postId;
            LocalVideoDetailFragment localVideoDetailFragment4 = LocalVideoDetailFragment.this;
            String subjectId = bean.getSubjectId();
            if (subjectId == null) {
                subjectId = "";
            }
            localVideoDetailFragment4.subjectId = subjectId;
            LocalVideoDetailFragment.this.completed = bean.getStatus() == 5;
            LocalVideoDetailFragment localVideoDetailFragment5 = LocalVideoDetailFragment.this;
            localVideoDetailFragment5.isDownloadingPlay = true ^ localVideoDetailFragment5.completed;
            LocalVideoDetailFragment localVideoDetailFragment6 = LocalVideoDetailFragment.this;
            String resourceId = bean.getResourceId();
            if (resourceId == null) {
                resourceId = "";
            }
            localVideoDetailFragment6.resourceId = resourceId;
            LocalVideoDetailFragment.this.url = bean.getUrl();
            LocalVideoDetailFragment localVideoDetailFragment7 = LocalVideoDetailFragment.this;
            String path = bean.getPath();
            localVideoDetailFragment7.localPath = path != null ? path : "";
            if (LocalVideoDetailFragment.this.isDownloadingPlay) {
                LocalVideoDetailFragment.this.e2().l(bean);
                LocalVideoDetailFragment localVideoDetailFragment8 = LocalVideoDetailFragment.this;
                localVideoDetailFragment8.proxyUrl = localVideoDetailFragment8.e2().h(bean);
            }
            LocalVideoDetailFragment.this.downloadBean = bean;
            LocalVideoDetailFragment.this.E2();
            LocalVideoDetailFragment.this.subtitleList.clear();
            VideoSubtitleControl videoSubtitleControl = LocalVideoDetailFragment.this.subtitleControl;
            if (videoSubtitleControl != null) {
                videoSubtitleControl.X();
            }
            LocalVideoDetailFragment.this.A2(false);
            wf.a.C0922a.f(c0922a, LocalVideoDetailFragment.this.TAG, "playNextVideo, episode = :" + bean.getEpse() + "， isDownloadingPlay = " + LocalVideoDetailFragment.this.isDownloadingPlay, false, 4, null);
            LocalVideoDetailFragment.this.playProgress = 0L;
            LocalVideoDetailFragment.this.isPrepare = false;
            LocalVideoDetailFragment.this.unplaySeekTargetPercent = 0.0f;
        }

        @Override
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            LocalVideoDetailFragment.this.isDownloadingPlayStart = false;
            Handler handler = LocalVideoDetailFragment.this.playingDownloadHandler;
            final LocalVideoDetailFragment localVideoDetailFragment = LocalVideoDetailFragment.this;
            handler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LocalVideoDetailFragment.d.d(localVideoDetailFragment);
                }
            }, 5000L);
        }
    }

    public static final class e implements lt.a {
        e() {
        }
    }

    public static final class f extends androidx.activity.u {
        f() {
            super(true);
        }

        @Override
        public void handleOnBackPressed() {
            wf.a.C0922a.f(wf.a.f74274a, LocalVideoDetailFragment.this.TAG, "----------handleOnBackPressed", false, 4, null);
            LocalVideoDetailFragment.this.h2().h(LayerFlag.BACK_PRESSED, new Object[0]);
        }
    }

    static final class g implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f47460a;

        g(Function1 function) {
            Intrinsics.h(function, "function");
            this.f47460a = function;
        }

        @Override
        public final Function a() {
            return this.f47460a;
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
            this.f47460a.invoke(obj);
        }
    }

    public LocalVideoDetailFragment() {
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.layerManager = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment.U2();
            }
        });
        this.parentPosition = -1;
        this.position = -1;
        this.subtitleList = new ArrayList();
        this.videoDetailPlayDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment.D3();
            }
        });
        this.downloadManager = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment.X1();
            }
        });
        this.screenHelper = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment.u3(this.f47667a);
            }
        });
        this.playErrorCount = new AtomicInteger(0);
        this.sDownloadIngAndPlayTimeout = DefaultLoadControl.DEFAULT_MIN_BUFFER_MS;
        this.audioApi = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment.U1();
            }
        });
        this.localVideoAdHelper = new LocalVideoAdHelper();
        this.isNewPlayer = true;
        this.speedViewModel = FragmentViewModelLazyKt.a(this, Reflection.b(com.transsion.postdetail.ui.dialog.k.class), new Function0<androidx.p009lifecycle.x0>() {
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
        this.playTimeoutHandler = new Handler(Looper.getMainLooper());
        this.playTimeout = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Long.valueOf(LocalVideoDetailFragment.h3());
            }
        });
        this.playTimeoutDp = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Long.valueOf(LocalVideoDetailFragment.f3());
            }
        });
        this.statusBarHeight = com.blankj.utilcode.util.d.c();
        this.orientationEventListener = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LocalVideoDetailFragment.c3(this.f47692a);
            }
        });
        this.playerListener = new LocalVideoDetailFragment$playerListener$1(this);
        this.playTimeoutRunnable = new Runnable() {
            @Override
            public final void run() {
                LocalVideoDetailFragment.g3(this.f47720a);
            }
        };
        this.downloadListener = new b();
        this.notNetRunnable = new Runnable() {
            @Override
            public final void run() {
                LocalVideoDetailFragment.X2(this.f47571a);
            }
        };
        this.curUiRotation = LocalUiType.MIDDLE;
    }

    public final void A2(boolean isFirst) {
        String name;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        DownloadBean downloadBean3;
        DownloadBean downloadBean4;
        e2().g(this.downloadListener);
        DownloadBean downloadBeanQ = DownloadEsHelper.f57201m.a().q(this.resourceId);
        this.downloadBean = downloadBeanQ;
        this.isSeries = downloadBeanQ != null ? downloadBeanQ.isSeries() : this.isSeries;
        String subjectId = this.subjectId;
        String str = "";
        if (subjectId.length() == 0 && ((downloadBean4 = this.downloadBean) == null || (subjectId = downloadBean4.getSubjectId()) == null)) {
            subjectId = "";
        }
        this.subjectId = subjectId;
        String postId = this.postId;
        if (postId.length() == 0 && ((downloadBean3 = this.downloadBean) == null || (postId = downloadBean3.getPostId()) == null)) {
            postId = "";
        }
        this.postId = postId;
        if (Intrinsics.c(this.pageFrom, MsgStyle.SOURCE_PUSH) && ((downloadBean = this.downloadBean) == null || ((downloadBean != null && downloadBean.getStatus() == 7) || ((downloadBean2 = this.downloadBean) != null && downloadBean2.getStatus() == 0)))) {
            fh.b.f60176a.d(R$string.video_has_delete_tip);
            FragmentActivity activity = getActivity();
            if (activity != null) {
                activity.finish();
            }
        }
        h2().h(LayerFlag.UPDATE_DOWNLOAD_DATA, this.downloadBean, this.pageFrom, Boolean.valueOf(isFirst));
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.h0(this.downloadBean);
        }
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.z(this.downloadBean, this.pageFrom);
        }
        if (this.isDownloadingPlay) {
            DownloadBean downloadBean5 = this.downloadBean;
            if ((downloadBean5 != null ? downloadBean5.getProgress() : 0L) > PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED && !this.isDownloadingPlayStart) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "3--------initDownloadBean, start video", false, 4, null);
                a2();
            }
        }
        A3();
        if (isFirst) {
            com.transsion.postdetail.layer.a aVarH2 = h2();
            LayerFlag layerFlag = LayerFlag.REQUEST_FORYOU;
            DownloadBean downloadBean6 = this.downloadBean;
            Boolean boolValueOf = Boolean.valueOf(downloadBean6 == null || !downloadBean6.isInnerRes() || this.subjectId.length() == 0);
            DownloadBean downloadBean7 = this.downloadBean;
            if (downloadBean7 == null || !downloadBean7.isInnerRes() || this.subjectId.length() <= 0) {
                DownloadBean downloadBean8 = this.downloadBean;
                if (downloadBean8 != null && (name = downloadBean8.getName()) != null) {
                    str = name;
                }
            } else {
                str = this.subjectId;
            }
            aVarH2.h(layerFlag, boolValueOf, str);
            if (this.isSeries) {
                h2().h(LayerFlag.SERIES_INIT, this.subjectId, this.resourceId);
                F2();
            }
        }
        if (this.isDownloadingPlay && !yg.l.f76264a.e()) {
            this.playingDownloadHandler.postDelayed(this.notNetRunnable, 6000L);
        }
        VideoSubtitleControl videoSubtitleControl2 = this.subtitleControl;
        if (videoSubtitleControl2 != null) {
            videoSubtitleControl2.p0(f2());
        }
        this.localVideoAdHelper.B2(this.downloadBean);
    }

    private final void A3() {
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null || !downloadBean.isVideo()) {
            return;
        }
        DownloadBean downloadBean2 = this.downloadBean;
        if (downloadBean2 == null || !downloadBean2.isMusic()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.a()), null, null, new LocalVideoDetailFragment$setSubtitle$1(this, null), 3, null);
        }
    }

    private final void B2() {
        if (this.isDownloadingPlay) {
            this.isReload = false;
            this.isDownloadingPlayStart = false;
            e2().A();
            this.playingDownloadHandler.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LocalVideoDetailFragment.C2(this.f47752a);
                }
            }, 5000L);
        }
    }

    public final void B3() {
        Map mapE;
        Map mapE2;
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
            if (c0Var != null && (mapE2 = c0Var.e()) != null) {
                mapE2.clear();
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = this.localVideoDot;
            if (c0Var2 == null || (mapE = c0Var2.e()) == null) {
                return;
            }
            mapE.putAll(videoSubtitleControl.F());
        }
    }

    public static final void C2(LocalVideoDetailFragment localVideoDetailFragment) {
        if (localVideoDetailFragment.isDownloadingPlayStart) {
            return;
        }
        localVideoDetailFragment.a2();
    }

    public final void C3(LocalUiType uiType) {
        ImageView imageView;
        wn.j mViewBinding = getMViewBinding();
        ViewGroup.LayoutParams layoutParams = (mViewBinding == null || (imageView = mViewBinding.f74427o) == null) ? null : imageView.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).topMargin = uiType == LocalUiType.LAND ? 0 : this.statusBarHeight;
    }

    private final void D2(boolean isSameResource) {
        com.transsion.player.orplayer.f fVar;
        gn.e eVarCurrentMediaSource;
        com.transsion.postdetail.layer.local.c0 c0Var;
        DownloadBean downloadBean = this.downloadBean;
        boolean zIsMusic = downloadBean != null ? downloadBean.isMusic() : false;
        this.isMusic = zIsMusic;
        if (zIsMusic && (c0Var = this.localVideoDot) != null) {
            c0Var.D("music_play");
        }
        if (!this.isMusic || !isSameResource) {
            this.isBgPlaying = false;
            hn.d dVar = new hn.d(RenderType.SURFACE_VIEW, false, 1000, 0, 0, 0, 3, 0, 0L, 0, this.sDownloadIngAndPlayTimeout, false, false, false, false, false, null, 129976, null);
            com.transsion.player.orplayer.f fVar2 = this.orPlayer;
            if (fVar2 != null) {
                fVar2.setPlayerConfig(dVar);
                return;
            }
            return;
        }
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        if (fVar3 != null && (eVarCurrentMediaSource = fVar3.currentMediaSource()) != null) {
            MusicFloatManager.a aVar = MusicFloatManager.f42282h;
            aVar.b().C(eVarCurrentMediaSource.e());
            aVar.b().B(eVarCurrentMediaSource.h());
        }
        this.isBgPlaying = true;
        com.transsion.player.orplayer.f fVar4 = this.orPlayer;
        if (fVar4 == null || fVar4.isPlaying() || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.play();
    }

    public static final VideoDetailPlayDao D3() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public final void E2() {
        HashMap mapG;
        HashMap map = new HashMap();
        map.put("resource_id", this.resourceId);
        map.put("subject_id", this.subjectId);
        map.put("post_id", this.postId);
        map.put("url", this.url);
        DownloadBean downloadBean = this.downloadBean;
        map.put("ops", downloadBean != null ? downloadBean.getOps() : null);
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
        mapG.putAll(map);
    }

    public final void E3() {
        DownloadBean downloadBean;
        com.transsnet.downloader.util.h.f57716a.c("5");
        if (!this.isDownloadingPlay || (downloadBean = this.downloadBean) == null) {
            return;
        }
        DownloadUtil downloadUtil = DownloadUtil.f57680a;
        Intrinsics.e(downloadBean);
        downloadUtil.B(downloadBean);
        DownloadBean downloadBean2 = this.downloadBean;
        Intrinsics.e(downloadBean2);
        w3(downloadBean2, true);
    }

    private final void F2() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "---------initSeries", false, 4, null);
        h2().h(LayerFlag.SERIES_EVENT, new d());
    }

    private final void G2() {
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        VideoSubtitleControl videoSubtitleControl = new VideoSubtitleControl(fragmentActivityRequireActivity, "local_video_detail", com.transsion.baselib.helper.d.f42124a.d(), f2(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.H2(this.f47757a, ((Boolean) obj).booleanValue());
            }
        }, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LocalVideoDetailFragment.I2(this.f47764a, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue());
            }
        }, new Function3() {
            @Override
            public final Object invoke(Object obj, Object obj2, Object obj3) {
                return LocalVideoDetailFragment.J2(this.f47774a, (String) obj, (String) obj2, ((Integer) obj3).intValue());
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.K2((DubsInfo) obj);
            }
        }, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.L2((List) obj);
            }
        }, null, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return LocalVideoDetailFragment.M2(this.f47587a, (String) obj, (String) obj2);
            }
        }, 512, null);
        h2().h(LayerFlag.SUBTITLE_CONTROL, videoSubtitleControl);
        this.subtitleControl = videoSubtitleControl;
    }

    public static final Unit H2(LocalVideoDetailFragment localVideoDetailFragment, boolean z10) {
        localVideoDetailFragment.h2().g(z10 ? LayerFlag.LOADING_BEGIN : LayerFlag.LOADING_END, new Object[0]);
        return Unit.f64096a;
    }

    public static final Unit I2(LocalVideoDetailFragment localVideoDetailFragment, boolean z10, boolean z11) {
        if (z10) {
            localVideoDetailFragment.h2().h(LayerFlag.BOTTOM_CONTROL, Boolean.TRUE, Boolean.valueOf(z11));
        } else {
            localVideoDetailFragment.h2().h(LayerFlag.BOTTOM_CONTROL, Boolean.FALSE, Boolean.TRUE);
        }
        return Unit.f64096a;
    }

    public static final Unit J2(LocalVideoDetailFragment localVideoDetailFragment, String lanName, String lan, int i10) {
        Intrinsics.h(lanName, "lanName");
        Intrinsics.h(lan, "lan");
        com.transsion.postdetail.layer.local.c0 c0Var = localVideoDetailFragment.localVideoDot;
        if (c0Var != null) {
            c0Var.r(lanName, lan, i10);
        }
        return Unit.f64096a;
    }

    public static final Unit K2(DubsInfo it) {
        Intrinsics.h(it, "it");
        return Unit.f64096a;
    }

    public static final Unit L2(List it) {
        Intrinsics.h(it, "it");
        return Unit.f64096a;
    }

    public static final Unit M2(LocalVideoDetailFragment localVideoDetailFragment, String str, String str2) {
        com.transsion.postdetail.layer.local.c0 c0Var = localVideoDetailFragment.localVideoDot;
        if (c0Var == null) {
            return null;
        }
        c0Var.s(str, str2);
        return Unit.f64096a;
    }

    private final void N2(DownloadBean bean) {
        if (bean != null) {
            String path = this.localPath;
            if (path.length() == 0 && (path = bean.getPath()) == null) {
                path = "";
            }
            this.localPath = path;
            String url = this.url;
            if (url.length() == 0) {
                url = bean.getUrl();
            }
            this.url = url;
            String subjectId = this.subjectId;
            if (subjectId.length() == 0 && (subjectId = bean.getSubjectId()) == null) {
                subjectId = "";
            }
            this.subjectId = subjectId;
            String name = this.name;
            if (name.length() == 0 && (name = bean.getName()) == null) {
                name = "";
            }
            this.name = name;
            String str = this.postId;
            if (str.length() == 0) {
                String postId = bean.getPostId();
                str = postId != null ? postId : "";
            }
            this.postId = str;
            this.completed = bean.getStatus() == 5 || !bean.isInnerRes();
            this.isSeries = bean.isSeries();
            this.videoHeight = bean.getVideoHeight();
            this.videoWidth = bean.getVideoWidth();
            boolean z10 = this.completed;
            this.isDownloadingPlay = !z10;
            if (!z10 && this.proxyUrl.length() == 0 && !this.isBgPlaying) {
                this.proxyUrl = e2().h(bean);
            }
        }
        V2(this.localPath);
        h2().h(LayerFlag.INIT_DATA, this.resourceId, this.subjectId, this.postId, Boolean.valueOf(this.isDownloadingPlay), Boolean.valueOf(this.isSeries));
        h2().h(LayerFlag.LOCAL_UI_CHANGED, LocalUiType.MIDDLE);
        E2();
        this.isNextPlayTipsShow = false;
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.g0(new e());
        }
    }

    private final void O2() {
        ConstraintLayout constraintLayoutB;
        wn.j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (constraintLayoutB = mViewBinding.getRoot()) == null) {
            return;
        }
        constraintLayoutB.post(new Runnable() {
            @Override
            public final void run() {
                LocalVideoDetailFragment.P2(this.f47728a);
            }
        });
    }

    public static final void P2(LocalVideoDetailFragment localVideoDetailFragment) {
        FragmentActivity activity = localVideoDetailFragment.getActivity();
        if (activity != null) {
            cw.b bVarC = cw.b.f58659a.c();
            String str = localVideoDetailFragment.subjectId;
            DownloadBean downloadBean = localVideoDetailFragment.downloadBean;
            bVarC.f(activity, str, null, "local_video_detail", downloadBean != null ? downloadBean.getOps() : null);
        }
    }

    private final void Q2() {
        String url;
        boolean z10;
        FragmentActivity fragmentActivityRequireActivity = requireActivity();
        Intrinsics.g(fragmentActivityRequireActivity, "requireActivity(...)");
        this.orPlayerView = new ORPlayerView(fragmentActivityRequireActivity, RenderType.SURFACE_VIEW);
        com.transsnet.downloader.util.h.f57716a.d("1");
        String str = this.isDownloadingPlay ? this.proxyUrl : this.localPath;
        com.transsion.videofloat.manager.a0 a0Var = com.transsion.videofloat.manager.a0.f55763a;
        LocalFloatManager localFloatManager = LocalFloatManager.f48051b;
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean == null || (url = downloadBean.getResourceId()) == null) {
            DownloadBean downloadBean2 = this.downloadBean;
            url = downloadBean2 != null ? downloadBean2.getUrl() : ImagesContract.LOCAL;
        }
        com.transsion.player.orplayer.f fVarB = a0Var.b(localFloatManager.h(url));
        String strValueOf = String.valueOf(str.hashCode());
        on.e0 e0Var = on.e0.f67859a;
        com.transsion.player.orplayer.f fVarD = e0Var.d(strValueOf);
        boolean z11 = fVarD == null && fVarB == null;
        this.isNewPlayer = z11;
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c(this.TAG, "initVideoPlayer, subjectId:" + this.subjectId + ", isNewPlayer:" + z11 + ", id:" + strValueOf, true);
        if (fVarB != null) {
            h2().h(LayerFlag.PLAYER_FOREGROUND, Boolean.FALSE);
            wf.a.C0922a.f(c0922a, this.TAG, "initVideoPlayer, float player复用", false, 4, null);
            z10 = true;
        } else if (fVarD != null) {
            h2().h(LayerFlag.PLAYER_FOREGROUND, Boolean.FALSE);
            wf.a.C0922a.f(c0922a, this.TAG, "initVideoPlayer, music player复用", false, 4, null);
            z10 = true;
            fVarB = fVarD;
        } else {
            fVarB = e0Var.m();
            z10 = false;
        }
        this.orPlayer = fVarB;
        cw.b.C0694b.a(cw.b.f58659a.c(), false, 1, null);
        D2(z10);
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            ORPlayerView oRPlayerView = this.orPlayerView;
            fVar.setSurfaceView(oRPlayerView != null ? oRPlayerView.getSurface() : null);
            fVar.setLooping(false);
            fVar.addPlayerListener(this.playerListener);
            com.transsion.baselib.helper.d dVar = com.transsion.baselib.helper.d.f42124a;
            fVar.setSpeed(dVar.d());
            fVar.setScaleMode(dVar.c());
            com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
            if (c0Var != null) {
                c0Var.H(fVar);
            }
        }
        h2().e(LayerFlag.SET_PLAYER, this.orPlayer, this.orPlayerView);
        p2().b().j(this, new g(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.R2(this.f47747a, (Float) obj);
            }
        }));
    }

    public static final Unit R2(LocalVideoDetailFragment localVideoDetailFragment, Float f10) {
        com.transsion.player.orplayer.f fVar = localVideoDetailFragment.orPlayer;
        if (fVar != null) {
            Intrinsics.e(f10);
            fVar.setSpeed(f10.floatValue());
        }
        localVideoDetailFragment.h2().h(LayerFlag.UPDATE_SPEED, f10);
        return Unit.f64096a;
    }

    public final boolean T2() {
        return cw.e.f58665a.b().k();
    }

    public static final ep.a U1() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    public static final com.transsion.postdetail.layer.a U2() {
        return new com.transsion.postdetail.layer.a();
    }

    public final void V1(boolean isPortrait) {
        LocalUiType localUiType = this.curUiRotation;
        boolean zIsResumed = isResumed();
        LocalUiType localUiType2 = this.mUiType;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("竖屏: ");
        sb2.append(isPortrait);
        sb2.append("，curUiRation: ");
        sb2.append(localUiType);
        sb2.append(", isResumed");
        sb2.append(zIsResumed);
        sb2.append(", ui:");
        sb2.append(localUiType2);
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var == null || !c0Var.d()) {
            if (isPortrait) {
                p3();
            }
            LocalUiType localUiType3 = isPortrait ? LocalUiType.MIDDLE : LocalUiType.LAND;
            if (!isResumed() || this.curUiRotation == localUiType3 || localUiType3 == this.mUiType) {
                this.curUiRotation = localUiType3;
                return;
            }
            this.curUiRotation = localUiType3;
            qi.h.f69682a.r("auto_screen", MapsKt.f(new Pair("orientation", localUiType3 == LocalUiType.LAND ? "land" : "port")));
            h2().h(LayerFlag.SCREEN_ORIENTATION_CHANGED, localUiType3);
        }
    }

    private final void V2(String path) {
        int i10;
        int i11 = this.videoHeight;
        if (i11 <= 0 || (i10 = this.videoWidth) <= 0) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new LocalVideoDetailFragment$localVideoPrepare$1(path, this, null), 3, null);
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "play path = " + path, false, 4, null);
            return;
        }
        wf.a.C0922a.v(wf.a.f74274a, this.TAG, "localVideoPrepare, videoWidth  = " + i10 + ",videoHeight = " + i11, false, 4, null);
        b3(this.videoWidth, this.videoHeight, path);
    }

    public static final com.transsnet.downloader.manager.g X1() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public static final void X2(LocalVideoDetailFragment localVideoDetailFragment) {
        wf.a.C0922a.f(wf.a.f74274a, localVideoDetailFragment.TAG, "---------no net， show error", false, 4, null);
        localVideoDetailFragment.h2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
    }

    public final void Y1() {
        if (yg.l.f76264a.e()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "---------has net， delay show toast", false, 4, null);
            getHandler().postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LocalVideoDetailFragment.Z1(this.f47614a);
                }
            }, 10000L);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "---------no net， show error", false, 4, null);
            h2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
        }
    }

    public final void Y2(DownloadBean bean) {
        this.lastReloadTime = SystemClock.elapsedRealtime();
        if (!this.isDownloadingPlayStart && bean.getProgress() >= ui.b.f73084a.d()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "1------ onDownloading, start video", false, 4, null);
            a2();
            return;
        }
        if (bean.getProgress() < 10485760 || this.isPrepare || SystemClock.elapsedRealtime() - this.lastReloadTime <= this.sDownloadIngAndPlayTimeout) {
            return;
        }
        wf.a.f74274a.x("long_video_play", "video error，reload~~ from onDownloading progress=" + bean.getProgress() + ",isPrepare=" + this.isPrepare + ",waitTime=" + (System.currentTimeMillis() - this.lastReloadTime), true);
        this.lastReloadTime = SystemClock.elapsedRealtime();
        o3(this, false, 1, null);
    }

    public static final void Z1(LocalVideoDetailFragment localVideoDetailFragment) {
        localVideoDetailFragment.h2().h(LayerFlag.SHOW_TOAST, Utils.a().getString(R$string.downloading_play_wait_msg));
    }

    public final void a2() {
        this.isPrepare = false;
        this.isDownloadingPlayStart = true;
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.a();
        }
        com.transsnet.downloader.util.h.f57716a.b("2");
        j3(this.proxyUrl);
    }

    public final void a3() {
        h2().g(LayerFlag.COMPLETION, new Object[0]);
    }

    public final void b3(int videoWidth, int videoHeight, String path) {
        h2().h(LayerFlag.ADD_SURFACE, Integer.valueOf(videoWidth), Integer.valueOf(videoHeight));
        if (!this.isDownloadingPlay) {
            this.isPrepare = false;
            com.transsnet.downloader.util.h.f57716a.b("2");
            com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
            if (c0Var != null) {
                c0Var.a();
            }
            j3(path);
            return;
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null && !fVar.isPlaying()) {
            h2().g(LayerFlag.LOADING_BEGIN, new Object[0]);
        }
        DownloadBean downloadBean = this.downloadBean;
        if ((downloadBean != null ? downloadBean.getProgress() : 0L) >= PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED || yg.l.f76264a.e()) {
            return;
        }
        h2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
    }

    public final ep.a c2() {
        return (ep.a) this.audioApi.getValue();
    }

    public static final com.transsion.postdetail.util.n c3(final LocalVideoDetailFragment localVideoDetailFragment) {
        FragmentActivity activity = localVideoDetailFragment.getActivity();
        if (activity != null) {
            return new com.transsion.postdetail.util.n(activity, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LocalVideoDetailFragment.d3(this.f47608a, ((Integer) obj).intValue());
                }
            });
        }
        return null;
    }

    private final Intent d2() {
        Intent intent = new Intent();
        intent.putExtra("path", "/video/detail");
        intent.putExtra("id", this.subjectId);
        DownloadBean downloadBean = this.downloadBean;
        intent.putExtra("extra_resource_id", downloadBean != null ? downloadBean.getResourceId() : null);
        DownloadBean downloadBean2 = this.downloadBean;
        intent.putExtra("extra_local_path", downloadBean2 != null ? downloadBean2.getPath() : null);
        return intent;
    }

    public static final Unit d3(LocalVideoDetailFragment localVideoDetailFragment, int i10) {
        if (i10 == 1 || i10 == 3) {
            localVideoDetailFragment.h2().h(LayerFlag.UPDATE_ROTATION, Integer.valueOf(i10));
        }
        return Unit.f64096a;
    }

    public final com.transsnet.downloader.manager.g e2() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final List f2() {
        DownloadBean downloadBean = this.downloadBean;
        String currentDubLanName = downloadBean != null ? downloadBean.getCurrentDubLanName() : null;
        if (currentDubLanName == null || currentDubLanName.length() == 0) {
            return CollectionsKt.l();
        }
        String str = this.subjectId;
        DownloadBean downloadBean2 = this.downloadBean;
        String currentDubLanName2 = downloadBean2 != null ? downloadBean2.getCurrentDubLanName() : null;
        DownloadBean downloadBean3 = this.downloadBean;
        DubsInfo dubsInfo = new DubsInfo(str, currentDubLanName2, downloadBean3 != null ? downloadBean3.getCurrentDubLanCode() : null, false, 8, null);
        dubsInfo.setSelected(true);
        return CollectionsKt.e(dubsInfo);
    }

    public static final long f3() {
        Long lX;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sb_lv_play_timeout_dp", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 12000L;
        }
        return lX.longValue();
    }

    private final Intent g2(String pageName) {
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        DownloadBean downloadBean = this.downloadBean;
        boolean zIsCompleted = downloadBean != null ? downloadBean.isCompleted() : false;
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/video/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_resource_id");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean2 = this.downloadBean;
        sb2.append(downloadBean2 != null ? downloadBean2.getResourceId() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_local_path");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean3 = this.downloadBean;
        sb2.append(downloadBean3 != null ? downloadBean3.getPath() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_url");
        sb2.append(UrlUtils.EQUAL_MARK);
        DownloadBean downloadBean4 = this.downloadBean;
        sb2.append(downloadBean4 != null ? downloadBean4.getUrl() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(pageName);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("extra_completed");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(zIsCompleted);
        if (aVar == null) {
            return null;
        }
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        Intent intentA = aVar.a(applicationA);
        if (intentA == null) {
            return null;
        }
        intentA.addFlags(603979776);
        intentA.setData(Uri.parse(sb2.toString()));
        return intentA;
    }

    public static final void g3(LocalVideoDetailFragment localVideoDetailFragment) {
        String str = localVideoDetailFragment.curTimeoutPlayPath;
        if (str != null) {
            com.transsion.player.orplayer.f fVar = localVideoDetailFragment.orPlayer;
            if (fVar != null) {
                fVar.reset();
            }
            com.transsion.player.orplayer.f fVar2 = localVideoDetailFragment.orPlayer;
            if (fVar2 != null) {
                fVar2.stop();
            }
            com.transsion.postdetail.layer.local.c0 c0Var = localVideoDetailFragment.localVideoDot;
            if (c0Var != null) {
                c0Var.L(true);
            }
            String strValueOf = String.valueOf(str.hashCode());
            wf.a.f74274a.c("long_video_play", "playerTimeout,change 2 software decoder, id:" + strValueOf + ", path = " + str, true);
            com.transsion.player.orplayer.f fVar3 = localVideoDetailFragment.orPlayer;
            if (fVar3 != null) {
                fVar3.enableHardwareDecoder(false);
            }
            com.transsion.player.orplayer.f fVar4 = localVideoDetailFragment.orPlayer;
            if (fVar4 != null) {
                gn.e eVar = new gn.e(strValueOf, str, 0, null, localVideoDetailFragment.i2(), 12, null);
                MusicFloatManager.a aVar = MusicFloatManager.f42282h;
                aVar.b().C(eVar.e());
                aVar.b().B(eVar.h());
                fVar4.setDataSource(eVar);
            }
            com.transsion.player.orplayer.f fVar5 = localVideoDetailFragment.orPlayer;
            if (fVar5 != null) {
                fVar5.prepare();
            }
        }
    }

    public final Handler getHandler() {
        return (Handler) this.handler.getValue();
    }

    public final com.transsion.postdetail.layer.a h2() {
        return (com.transsion.postdetail.layer.a) this.layerManager.getValue();
    }

    public static final long h3() {
        Long lX;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sb_lv_play_timeout", true);
        String value = configBeanC != null ? configBeanC.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 8000L;
        }
        return lX.longValue();
    }

    private final MediaItem i2() {
        DownloadBean downloadBean = this.downloadBean;
        String totalTitleName = downloadBean != null ? downloadBean.getTotalTitleName() : null;
        String str = this.subjectId;
        DownloadBean downloadBean2 = this.downloadBean;
        String cover = downloadBean2 != null ? downloadBean2.getCover() : null;
        String strT = MusicFloatManager.f42282h.b().t(this.subjectId);
        PendingIntent pendingIntentJ2 = j2();
        Intent intentD2 = d2();
        DownloadBean downloadBean3 = this.downloadBean;
        boolean z10 = false;
        if (downloadBean3 != null && downloadBean3.getType() == 6) {
            z10 = true;
        }
        boolean z11 = z10;
        DownloadBean downloadBean4 = this.downloadBean;
        return new MediaItem(totalTitleName, "", cover, null, null, null, pendingIntentJ2, intentD2, str, strT, Boolean.valueOf(z11), "local_detail", null, downloadBean4 != null ? downloadBean4.getOps() : null, 4152, null);
    }

    private final void i3(long progress) {
        if (this.isBgPlaying || !this.isNewPlayer) {
            return;
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.seekTo(progress);
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.play();
        }
        if (this.unplaySeekTargetPercent <= 0.0f && progress >= 1000 && !this.isReload) {
            h2().h(LayerFlag.SHOW_TOAST, Utils.a().getString(R$string.last_played_time) + " " + com.transsion.postdetail.util.m.d(progress));
        }
        if (!this.isDownloadingPlay || this.isReload) {
            return;
        }
        com.transsion.postdetail.layer.a aVarH2 = h2();
        LayerFlag layerFlag = LayerFlag.SHOW_TOAST;
        String string = Utils.a().getString(R$string.analysing_from);
        String[] stringArray = Utils.a().getResources().getStringArray(R$array.analysing_array);
        Intrinsics.g(stringArray, "getStringArray(...)");
        aVarH2.h(layerFlag, string + " [" + ArraysKt.v0(stringArray, Random.INSTANCE) + "]");
    }

    private final void initAd() {
        AppCompatImageView appCompatImageView;
        LocalVideoAdHelper localVideoAdHelper = this.localVideoAdHelper;
        wn.j mViewBinding = getMViewBinding();
        DownloadBean downloadBean = this.downloadBean;
        localVideoAdHelper.t2(mViewBinding, downloadBean != null ? downloadBean.getGenre() : null, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LocalVideoDetailFragment.u2(this.f47736a, ((Boolean) obj).booleanValue());
            }
        });
        wn.j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatImageView = mViewBinding2.f74426n) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LocalVideoDetailFragment.v2(this.f47741a, view);
            }
        });
    }

    private final void initAudioListener() {
        ep.a aVarC2 = c2();
        if (aVarC2 != null) {
            aVarC2.addPlayerListener(this);
        }
        ep.a aVarC3 = c2();
        if (aVarC3 != null) {
            aVarC3.pause();
        }
    }

    private final void initView() {
        wn.w wVar;
        wn.u uVar;
        wn.y yVar;
        ConstraintLayout constraintLayoutB;
        wn.j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
            constraintLayoutB.setKeepScreenOn(true);
        }
        wn.j mViewBinding2 = getMViewBinding();
        ConstraintLayout constraintLayout = null;
        ConstraintLayout constraintLayout2 = (mViewBinding2 == null || (yVar = mViewBinding2.f74425m) == null) ? null : yVar.f74658i;
        if (constraintLayout2 != null) {
            h2().h(LayerFlag.INIT_VIEW_TYPE, constraintLayout2, LocalUiType.PORTRAIT);
        }
        wn.j mViewBinding3 = getMViewBinding();
        ConstraintLayout constraintLayout3 = (mViewBinding3 == null || (uVar = mViewBinding3.f74423k) == null) ? null : uVar.f74593l;
        if (constraintLayout3 != null) {
            h2().h(LayerFlag.INIT_VIEW_TYPE, constraintLayout3, LocalUiType.LAND);
        }
        wn.j mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (wVar = mViewBinding4.f74424l) != null) {
            constraintLayout = wVar.f74631r;
        }
        if (constraintLayout != null) {
            h2().h(LayerFlag.INIT_VIEW_TYPE, constraintLayout, LocalUiType.MIDDLE);
        }
        C3(LocalUiType.PORTRAIT);
        w2();
        Context context = getContext();
        if (context == null || com.transsion.baseui.util.b.a(context)) {
            return;
        }
        o2().h();
    }

    private final PendingIntent j2() {
        return PendingIntent.getActivity(Utils.a(), 0, g2("media_notification"), l2());
    }

    private final void j3(String path) {
        VideoSubtitleControl videoSubtitleControl;
        wf.a.C0922a c0922a = wf.a.f74274a;
        boolean z10 = this.isBgPlaying;
        DownloadBean downloadBean = this.downloadBean;
        String subjectId = downloadBean != null ? downloadBean.getSubjectId() : null;
        DownloadBean downloadBean2 = this.downloadBean;
        String totalTitleName = downloadBean2 != null ? downloadBean2.getTotalTitleName() : null;
        DownloadBean downloadBean3 = this.downloadBean;
        String resourceId = downloadBean3 != null ? downloadBean3.getResourceId() : null;
        DownloadBean downloadBean4 = this.downloadBean;
        String createAtFormat = downloadBean4 != null ? downloadBean4.getCreateAtFormat() : null;
        c0922a.c("long_video_play", "playerSetDataSource, isBgPlaying = " + z10 + ", subjectId = " + subjectId + ", name:" + totalTitleName + "resourceId = " + resourceId + ", downloadTime:" + createAtFormat + "， orPlayer:" + this.orPlayer + ", path = " + path, true);
        if (!this.isNewPlayer && (videoSubtitleControl = this.subtitleControl) != null) {
            videoSubtitleControl.b0(true);
        }
        if (this.isBgPlaying || !this.isNewPlayer) {
            this.isNewPlayer = true;
            return;
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.clearScreen();
        }
        DownloadBean downloadBean5 = this.downloadBean;
        if (downloadBean5 != null) {
            downloadBean5.setPlayingUrl(path);
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            gn.e eVar = new gn.e(String.valueOf(path.hashCode()), path, 0, null, i2(), 12, null);
            MusicFloatManager.a aVar = MusicFloatManager.f42282h;
            aVar.b().C(eVar.e());
            aVar.b().B(eVar.h());
            fVar2.setDataSource(eVar);
        }
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        if (fVar3 != null) {
            fVar3.prepare();
        }
        q3();
        this.curTimeoutPlayPath = path;
        this.playTimeoutHandler.postDelayed(this.playTimeoutRunnable, this.isDownloadingPlay ? n2() : m2());
    }

    private final com.transsion.postdetail.util.n k2() {
        return (com.transsion.postdetail.util.n) this.orientationEventListener.getValue();
    }

    public final void k3(DownloadBean downloadBean) {
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        this.duration = fVar != null ? fVar.getDuration() : 0L;
        wf.a.f74274a.c("long_video_play", "onPrepare history progress " + (downloadBean != null ? Long.valueOf(downloadBean.getReadProgress()) : null) + "， duration = " + this.duration + ", unplaySeekProgress = " + this.unplaySeekTargetPercent + ", id =" + (downloadBean != null ? downloadBean.getResourceId() : null) + ", epse = " + (downloadBean != null ? Integer.valueOf(downloadBean.getEpse()) : null), true);
        final Ref.LongRef longRef = new Ref.LongRef();
        long readProgress = downloadBean != null ? downloadBean.getReadProgress() : 0L;
        longRef.element = readProgress;
        if (Math.abs(readProgress - this.duration) < 100) {
            longRef.element = 0L;
        }
        float f10 = this.unplaySeekTargetPercent;
        if (f10 > 0.0f) {
            longRef.element = (long) (f10 * this.duration);
        }
        if (this.subtitleList.isEmpty()) {
            i3(longRef.element);
            return;
        }
        ORPlayerView oRPlayerView = this.orPlayerView;
        if (oRPlayerView != null) {
            oRPlayerView.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LocalVideoDetailFragment.l3(this.f47637a, longRef);
                }
            }, 200L);
        }
    }

    private final int l2() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    public static final void l3(LocalVideoDetailFragment localVideoDetailFragment, Ref.LongRef longRef) {
        localVideoDetailFragment.i3(longRef.element);
    }

    private final long m2() {
        return ((Number) this.playTimeout.getValue()).longValue();
    }

    private final long n2() {
        return ((Number) this.playTimeoutDp.getValue()).longValue();
    }

    private final ScreenRotationHelper o2() {
        return (ScreenRotationHelper) this.screenHelper.getValue();
    }

    public static void o3(LocalVideoDetailFragment localVideoDetailFragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        localVideoDetailFragment.n3(z10);
    }

    private final com.transsion.postdetail.ui.dialog.k p2() {
        return (com.transsion.postdetail.ui.dialog.k) this.speedViewModel.getValue();
    }

    private final void p3() {
        if (!isAdded() || isDetached() || isRemoving()) {
            return;
        }
        List<Fragment> listY0 = getParentFragmentManager().y0();
        Intrinsics.g(listY0, "getFragments(...)");
        for (Fragment fragment : listY0) {
            if (fragment instanceof BaseDialog) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    ((BaseDialog) fragment).dismissAllowingStateLoss();
                    Result.m453constructorimpl(Unit.f64096a);
                } catch (Throwable th2) {
                    Result.Companion companion2 = Result.INSTANCE;
                    Result.m453constructorimpl(ResultKt.a(th2));
                }
            }
        }
    }

    private final VideoDetailPlayDao q2() {
        return (VideoDetailPlayDao) this.videoDetailPlayDao.getValue();
    }

    public final void q3() {
        this.curTimeoutPlayPath = null;
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.L(false);
        }
        this.playTimeoutHandler.removeCallbacks(this.playTimeoutRunnable);
    }

    public final void r3(DownloadBean cvideoBean, long playProgress, boolean completed) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new LocalVideoDetailFragment$save$1(completed, this, playProgress, cvideoBean, null), 3, null);
    }

    public static final Handler s2() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    static void s3(LocalVideoDetailFragment localVideoDetailFragment, DownloadBean downloadBean, long j10, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        localVideoDetailFragment.r3(downloadBean, j10, z10);
    }

    public final void t2() {
        VideoSubtitleControl videoSubtitleControl;
        if (!isAdded() || isDetached() || isRemoving() || this.isMusic) {
            return;
        }
        wf.a.C0922a.r(wf.a.f74274a, "ORSubtitle", new String[]{"没字幕准备提示用户"}, false, 4, null);
        if (!com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("no_subtitle_tip_again", true) || (videoSubtitleControl = this.subtitleControl) == null) {
            return;
        }
        VideoSubtitleControl.k0(videoSubtitleControl, true, false, 2, null);
    }

    public final Object t3(DownloadBean downloadBean, Continuation continuation) {
        String subjectId = downloadBean.getSubjectId();
        String str = subjectId == null ? "" : subjectId;
        String resourceId = downloadBean.getResourceId();
        String str2 = resourceId == null ? "" : resourceId;
        int ep2 = downloadBean.getEp();
        int se2 = downloadBean.getSe();
        long readProgress = downloadBean.getReadProgress();
        Long duration = downloadBean.getDuration();
        String subjectName = downloadBean.getSubjectName();
        if (subjectName == null) {
            subjectName = downloadBean.getFileName();
        }
        String str3 = subjectName;
        String url = downloadBean.getUrl();
        long lastPlayTimeStamp = downloadBean.getLastPlayTimeStamp();
        String cover = downloadBean.getCover();
        String thumbnail = downloadBean.getThumbnail();
        String averageHueLight = downloadBean.getAverageHueLight();
        Integer subjectDurationSeconds = downloadBean.getSubjectDurationSeconds();
        Long lE = subjectDurationSeconds != null ? Boxing.e(subjectDurationSeconds.intValue()) : null;
        int subjectType = downloadBean.getSubjectType();
        String value = PlayMode.DOWNLOAD.getValue();
        String url2 = downloadBean.getUrl();
        String path = downloadBean.getPath();
        Long size = downloadBean.getSize();
        long jLongValue = size != null ? size.longValue() : 0L;
        String ops = downloadBean.getOps();
        Object objP = q2().p(new VideoDetailPlayBean(str, str2, ep2, se2, readProgress, str3, cover, thumbnail, url, lastPlayTimeStamp, null, duration, lE, averageHueLight, Boxing.d(subjectType), false, value, url2, path, jLongValue, null, null, null, false, false, false, ops == null ? "" : ops, 66061312, null), continuation);
        return objP == IntrinsicsKt.f() ? objP : Unit.f64096a;
    }

    public static final Unit u2(LocalVideoDetailFragment localVideoDetailFragment, boolean z10) {
        com.transsion.player.orplayer.f fVar;
        com.transsion.player.orplayer.f fVar2;
        localVideoDetailFragment.isAdShowing = z10;
        if (z10 && (fVar = localVideoDetailFragment.orPlayer) != null && fVar.isPlaying() && (fVar2 = localVideoDetailFragment.orPlayer) != null) {
            fVar2.pause();
        }
        return Unit.f64096a;
    }

    public static final ScreenRotationHelper u3(LocalVideoDetailFragment localVideoDetailFragment) {
        Context contextRequireContext = localVideoDetailFragment.requireContext();
        Intrinsics.g(contextRequireContext, "requireContext(...)");
        return new ScreenRotationHelper(contextRequireContext, new LocalVideoDetailFragment$screenHelper$2$1(localVideoDetailFragment), new LocalVideoDetailFragment$screenHelper$2$2(localVideoDetailFragment));
    }

    public static final void v2(LocalVideoDetailFragment localVideoDetailFragment, View view) {
        LocalUiType localUiType = localVideoDetailFragment.mUiType;
        LocalUiType localUiType2 = LocalUiType.LAND;
        if (localUiType == localUiType2) {
            localUiType2 = LocalUiType.MIDDLE;
        }
        localVideoDetailFragment.h2().h(LayerFlag.SCREEN_ORIENTATION_CHANGED, localUiType2);
    }

    private final void w2() {
        com.transsion.baselib.report.k.f42210a.g(this);
    }

    public final void w3(DownloadBean bean, boolean isStart) {
        int iLongValue;
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        long j10 = this.duration;
        long j11 = 0;
        long j12 = 10000;
        int i10 = j10 > 0 ? (int) ((this.playProgress / j10) * 10000) : 0;
        boolean z10 = false;
        boolean z11 = false;
        for (DownloadRange downloadRange : bean.getDownloadRanges()) {
            float start = downloadRange.getStart();
            Long size = bean.getSize();
            Intrinsics.e(size);
            float fLongValue = start / size.longValue();
            float f10 = j12;
            int i11 = (int) (fLongValue * f10);
            if (downloadRange.getProgress() == j11) {
                iLongValue = 0;
            } else {
                float f11 = downloadRange.totalProgress();
                Long size2 = bean.getSize();
                Intrinsics.e(size2);
                iLongValue = (int) ((f11 / size2.longValue()) * f10);
            }
            if (z10) {
                z11 = true;
                if (i10 < i11) {
                    if (iLongValue < i10) {
                        iLongValue = i10;
                        i11 = iLongValue;
                    } else {
                        i11 = i10;
                    }
                }
                z10 = false;
            }
            if (i10 > 0 && !z11 && i10 > iLongValue) {
                z10 = true;
            }
            linkedHashMap.put(Integer.valueOf(i11), Integer.valueOf(iLongValue));
            j11 = 0;
            j12 = 10000;
        }
        if (!isStart) {
            this.playingDownloadHandler.removeCallbacksAndMessages(null);
            h2().h(LayerFlag.DOWNLOAD_PROGRESS, linkedHashMap);
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "start setDownloadedProgress, progressList = " + linkedHashMap, false, 4, null);
        this.playingDownloadHandler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                LocalVideoDetailFragment.x3(this.f47597a, linkedHashMap);
            }
        }, 1000L);
    }

    private final void x2() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            String string = arguments.getString("extra_local_path");
            if (string == null) {
                string = "";
            }
            this.localPath = string;
            String string2 = arguments.getString("extra_url");
            if (string2 == null) {
                string2 = "";
            }
            this.url = string2;
            String string3 = arguments.getString("extra_proxy_url");
            if (string3 == null) {
                string3 = "";
            }
            this.proxyUrl = string3;
            String string4 = arguments.getString("extra_resource_id");
            if (string4 == null) {
                string4 = "";
            }
            this.resourceId = string4;
            String string5 = arguments.getString("extra_subject_id");
            if (string5 == null) {
                string5 = "";
            }
            this.subjectId = string5;
            String string6 = arguments.getString("extra_name");
            if (string6 == null) {
                string6 = "";
            }
            this.name = string6;
            String string7 = arguments.getString("extra_post_id");
            if (string7 == null) {
                string7 = "";
            }
            this.postId = string7;
            this.completed = arguments.getBoolean("extra_completed");
            this.isSeries = arguments.getBoolean("extra_is_series");
            String string8 = arguments.getString("extra_page_from");
            this.pageFrom = string8 != null ? string8 : "";
            this.videoHeight = arguments.getInt("extra_height");
            this.videoWidth = arguments.getInt("extra_width");
            this.parentPosition = arguments.getInt("extra_parent_position", -1);
            this.position = arguments.getInt("extra_position", -1);
            this.isDownloadingPlay = !this.completed;
        }
    }

    public static final void x3(LocalVideoDetailFragment localVideoDetailFragment, Map map) {
        localVideoDetailFragment.h2().h(LayerFlag.DOWNLOAD_PROGRESS, map);
    }

    private final void y2() {
        x2();
        z2();
        G2();
        A2(true);
        Q2();
        initAudioListener();
        N2(this.downloadBean);
        B2();
        initAd();
        O2();
        MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
        if (mediaItemQ != null) {
            mediaItemQ.setPageName("local_detail");
        }
    }

    private final void z2() {
        com.transsion.postdetail.layer.local.c0 c0Var = new com.transsion.postdetail.layer.local.c0();
        this.localVideoDot = c0Var;
        c0Var.g();
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.localVideoDot;
        if (c0Var2 != null) {
            c0Var2.B(this.position);
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.localVideoDot;
        if (c0Var3 != null) {
            c0Var3.A(this.parentPosition);
        }
        h2().h(LayerFlag.LAYER_EVENT, new c());
    }

    public final boolean getIsAdShowing() {
        return this.isAdShowing;
    }

    public final void W1(String subjectId, String resourceId) {
        h2().h(LayerFlag.SERIES_PLAY, subjectId, resourceId);
    }

    public final void W2(boolean isLock) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.E(isLock);
        }
    }

    public final void Z2() {
        this.localVideoAdHelper.s2();
    }

    public final void b2() {
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.p();
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    public final void e3() {
        com.transsion.player.orplayer.f fVar;
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 == null || fVar2.isPlaying() || this.isAdShowing || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.play();
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void initViewData() {
        HashMap mapG;
        MusicFloatManager.f42282h.b().u();
        initView();
        y2();
        if (this.pageFrom.length() == 0) {
            this.pageFrom = qi.h.f69682a.h();
        }
        qi.b logViewConfig = getLogViewConfig();
        if (logViewConfig == null || (mapG = logViewConfig.g()) == null) {
            return;
        }
    }

    @Override
    public void initViewModel() {
    }

    @Override
    public boolean isAudioShowNoNetworkLayout() {
        return false;
    }

    @Override
    public boolean isRegisteDeviceKeyMonitor() {
        return true;
    }

    public final void m3() {
        if (!this.isMusic) {
            h2().h(LayerFlag.RELEASE_PLAYER, new Object[0]);
        }
        q3();
    }

    public final void n3(boolean fromClicked) {
        if (this.isBgPlaying || !this.isNewPlayer) {
            return;
        }
        if (fromClicked) {
            this.playErrorCount.set(0);
        }
        if (this.playErrorCount.get() > 2) {
            return;
        }
        this.errorInfo = null;
        this.playErrorCount.getAndAdd(1);
        wf.a.f74274a.x("long_video_play", "video error，reload~~", true);
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.stop();
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.reset();
        }
        this.isPrepare = false;
        this.isReload = true;
        h2().g(LayerFlag.LOADING_BEGIN, new Object[0]);
        j3(!this.isDownloadingPlay ? this.localPath : this.proxyUrl);
    }

    @Override
    public qi.b newLogViewConfig() {
        return new qi.b("local_video_detail", false, 2, null);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onAttach(Context context) {
        Intrinsics.h(context, "context");
        super.onAttach(context);
        h2().d(new com.transsion.postdetail.layer.local.e1(this));
        h2().d(new com.transsion.postdetail.layer.local.u0(this));
        h2().d(new LocalVideoMiddleLayer(this));
        h2().e(LayerFlag.SET_MANAGER, h2());
        requireActivity().getOnBackPressedDispatcher().i(this, new f());
    }

    @Override
    public void onBackgroundStatusChange(boolean isBackground) {
        com.transsion.postdetail.layer.local.c0 c0Var;
        if (!isBackground || (c0Var = this.localVideoDot) == null) {
            return;
        }
        c0Var.b(true);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e eVar) {
        com.transsion.player.orplayer.e.a.e(this, eVar);
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        ep.b bVar;
        Intrinsics.h(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onConfigurationChanged " + newConfig.orientation, false, 4, null);
        int i10 = newConfig.orientation;
        if (i10 == 2) {
            ep.a aVarC2 = c2();
            if (aVarC2 != null) {
                aVarC2.pause();
                return;
            }
            return;
        }
        if (i10 != 1 || (bVar = (ep.b) TheRouter.d(ep.b.class, new Object[0])) == null) {
            return;
        }
        bVar.show();
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        com.transsion.player.orplayer.f fVar;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            wf.a.f74274a.c(com.transsion.baselib.report.a.f42192a.a(), "网络连接成功开始检测字幕,name:" + downloadBean.getTotalTitleName() + ", subtitleResId:" + downloadBean.getSubtitleResId(), true);
            com.transsion.subtitle.h.b.a(com.transsion.subtitle.h.f52857a.b(), downloadBean, null, 2, null);
        }
        if (this.isDownloadingPlay && isResumed()) {
            DownloadBean downloadBean2 = this.downloadBean;
            if (downloadBean2 != null) {
                e2().l(downloadBean2);
            }
            wf.a.C0922a.v(wf.a.f74274a, this.TAG, "onNetworkConnected", false, 4, null);
            com.transsion.player.orplayer.f fVar2 = this.orPlayer;
            if ((fVar2 != null && !fVar2.isPlaying()) || ((fVar = this.orPlayer) != null && fVar.isLoading())) {
                h2().g(LayerFlag.LOADING_BEGIN, new Object[0]);
                Y1();
                if (this.errorInfo != null || this.isAdShowing) {
                    n3(false);
                } else {
                    com.transsion.player.orplayer.f fVar3 = this.orPlayer;
                    if (fVar3 != null) {
                        fVar3.play();
                    }
                }
            }
            h2().h(LayerFlag.NETWORK_CHANGE, Boolean.TRUE);
            if (this.isPlayerNetTimeout) {
                h2().h(LayerFlag.PLAYER_TIMEOUT_TIPS, new Object[0]);
            }
        }
    }

    @Override
    public void onDestroy() {
        ConstraintLayout constraintLayoutB;
        super.onDestroy();
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onDestroy", false, 4, null);
        DownloadBean downloadBean = this.downloadBean;
        if (downloadBean != null) {
            downloadBean.setQuitDPRestart(true);
            downloadBean.setDownloadingPlay(false);
        }
        com.transsion.baselib.report.k.f42210a.t(this);
        if (this.isDownloadingPlay) {
            e2().d();
        }
        B3();
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
        }
        wn.j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (constraintLayoutB = mViewBinding.getRoot()) != null) {
            constraintLayoutB.setKeepScreenOn(false);
        }
        VideoSubtitleControl videoSubtitleControl = this.subtitleControl;
        if (videoSubtitleControl != null) {
            videoSubtitleControl.M();
        }
        h2().h(LayerFlag.FRAGMENT_DESTROY, new Object[0]);
        ep.a aVarC2 = c2();
        if (aVarC2 != null) {
            aVarC2.removePlayerListener(this);
        }
        e2().o();
        e2().k(this.downloadListener);
        this.localVideoAdHelper.r2();
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.removePlayerListener(this.playerListener);
        }
        this.playTimeoutHandler.removeCallbacks(this.playTimeoutRunnable);
        Context context = getContext();
        if (context != null && !com.transsion.baseui.util.b.a(context)) {
            o2().l();
        }
        setMViewBinding(null);
    }

    @Override
    public void onDisconnected() {
        if (this.isDownloadingPlay) {
            wf.a.C0922a c0922a = wf.a.f74274a;
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            Boolean boolValueOf = fVar != null ? Boolean.valueOf(fVar.isLoading()) : null;
            c0922a.c("long_video_play", "onNetworkDisconnected  isLoading= " + boolValueOf + ", isPrepare = " + this.isPrepare + ", isDownloadingPlayStart =" + this.isDownloadingPlayStart, true);
            com.transsion.player.orplayer.f fVar2 = this.orPlayer;
            if ((fVar2 == null || !fVar2.isLoading()) && this.isDownloadingPlayStart && this.isPrepare) {
                return;
            }
            h2().h(LayerFlag.NETWORK_CHANGE, Boolean.FALSE);
        }
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onHomeClick() {
        super.onHomeClick();
        wf.a.f74274a.c("VideoFloat", "local onHomeClick", true);
        h2().h(LayerFlag.SHOW_FLOAT_2_WINDOW, FloatActionType.HOME);
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
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPause() {
        super.onPause();
        if (this.isMusic) {
            return;
        }
        h2().h(LayerFlag.FRAGMENT_PAUSE, new Object[0]);
        com.transsion.postdetail.util.n nVarK2 = k2();
        if (nVarK2 != null) {
            nVarK2.disable();
        }
        this.localVideoAdHelper.z2();
    }

    @Override
    public void onPictureInPictureModeChanged(boolean isInPictureInPictureMode) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode);
        h2().h(LayerFlag.INTO_PIP, Boolean.valueOf(isInPictureInPictureMode));
        cw.e.f58665a.b().onPipModeChanged(isInPictureInPictureMode);
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.C(isInPictureInPictureMode);
        }
    }

    @Override
    public void onPlayError(PlayError playError, gn.e eVar) {
        com.transsion.player.orplayer.e.a.q(this, playError, eVar);
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
    public void onPrepare(gn.e eVar) {
        com.transsion.player.orplayer.e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.y(this, j10, eVar);
    }

    @Override
    public void onRecentClick() {
        super.onRecentClick();
        wf.a.f74274a.c("VideoFloat", "local onRecentClick", true);
        h2().h(LayerFlag.SHOW_FLOAT_2_WINDOW, FloatActionType.HOME);
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
    }

    @Override
    public void onResume() {
        super.onResume();
        if (this.isMusic) {
            return;
        }
        h2().h(LayerFlag.FRAGMENT_RESUME, new Object[0]);
        com.transsion.postdetail.util.n nVarK2 = k2();
        if (nVarK2 != null) {
            nVarK2.enable();
        }
        this.localVideoAdHelper.A2();
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onStop() {
        s3(this, this.downloadBean, this.playProgress, false, 4, null);
        if (!this.isMusic) {
            h2().h(LayerFlag.FRAGMENT_STOP, new Object[0]);
        }
        super.onStop();
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
    public void onVideoStart(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.I(this, mediaSource);
    }

    @Override
    public wn.j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        wn.j jVarC = wn.j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override
    public void retryLoadData() {
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    public final void v3(long progress, float targetPercent) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.localVideoDot;
        if (c0Var != null) {
            c0Var.p();
        }
        if (!this.isPrepare) {
            this.unplaySeekTargetPercent = targetPercent;
        }
        this.playProgress = progress;
    }

    public final void y3(LocalUiType localUiType) {
        this.mUiType = localUiType;
    }

    public final void z3(boolean z10) {
        this.isPauseState = z10;
    }
}
