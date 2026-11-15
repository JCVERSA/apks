package com.transsion.shorttv.ui.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Insets;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.p009lifecycle.Lifecycle;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.LiveData;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.ThreadUtils;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLTextView;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$string;
import com.transsion.shorttv.ad.AdLoadState;
import com.transsion.shorttv.ad.common.STCommonVideoAdHelper;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdContainer;
import com.transsion.shorttv.ad.playeroverlayad.ShortTvPlayerOverlayAdManager;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.shorttv.base.widget.TnTextView;
import com.transsion.shorttv.base.widget.expand.ExpandView;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.DubsInfo;
import com.transsion.shorttv.bean.DubsInfoData;
import com.transsion.shorttv.bean.FirstFrame;
import com.transsion.shorttv.bean.Media;
import com.transsion.shorttv.bean.ShortTVFavInfo;
import com.transsion.shorttv.bean.ShortTVItem;
import com.transsion.shorttv.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv.bean.SkuInfo;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.SubjectType;
import com.transsion.shorttv.bean.Video;
import com.transsion.shorttv.order.bean.CreatePaynicornOrderReqBean;
import com.transsion.shorttv.order.bean.GetPaynicornOrderStatusRespEntity;
import com.transsion.shorttv.ui.dialog.ShortTvAlertDialog;
import com.transsion.shorttv.ui.dialog.ShortTvLanguageSelectDialog;
import com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv.utils.ShortTvVideoCtrBean;
import com.transsion.shorttv.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KClass;
import kotlin.text.StringsKt;

@Metadata(d1 = {"\u0000ì\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n*\u0002¨\u0002\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000fB\u001b\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\"J-\u0010'\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b'\u0010(J-\u0010)\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010?\u001a\u00020\u00112\u0006\u0010>\u001a\u00020\u001aH\u0016¢\u0006\u0004\b?\u0010@J\u0017\u0010C\u001a\u00020\u001a2\u0006\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bC\u0010DJ\u001f\u0010H\u001a\u00020\u00112\u0006\u0010F\u001a\u00020E2\u0006\u0010B\u001a\u00020GH\u0016¢\u0006\u0004\bH\u0010IJ\u000f\u0010J\u001a\u00020\u0011H\u0016¢\u0006\u0004\bJ\u0010\u0013J\r\u0010K\u001a\u00020\u0011¢\u0006\u0004\bK\u0010\u0013J\r\u0010L\u001a\u00020\u0011¢\u0006\u0004\bL\u0010\u0013J\u000f\u0010M\u001a\u00020\u0011H\u0016¢\u0006\u0004\bM\u0010\u0013J\u0015\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020\u001c¢\u0006\u0004\bO\u0010PJ\u0015\u0010R\u001a\u00020\u00112\u0006\u0010Q\u001a\u00020\u001c¢\u0006\u0004\bR\u0010PJ\u000f\u0010S\u001a\u00020\u0011H\u0016¢\u0006\u0004\bS\u0010\u0013J\u000f\u0010T\u001a\u00020\u0011H\u0016¢\u0006\u0004\bT\u0010\u0013J\u0019\u0010W\u001a\u00020\u00112\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\u0019\u0010Y\u001a\u00020\u00112\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bY\u0010XJ\u0019\u0010Z\u001a\u00020\u00112\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bZ\u0010XJ!\u0010]\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\b]\u0010^J\u0019\u0010_\u001a\u00020\u00112\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\b_\u0010XJ\u0019\u0010`\u001a\u00020\u00112\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\b`\u0010XJ!\u0010c\u001a\u00020\u00112\u0006\u0010b\u001a\u00020a2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020\u0011H\u0016¢\u0006\u0004\be\u0010\u0013J\u0019\u0010f\u001a\u00020\u00112\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bf\u0010XJ\u0019\u0010i\u001a\u00020\u00112\b\u0010h\u001a\u0004\u0018\u00010gH\u0016¢\u0006\u0004\bi\u0010jJ\r\u0010k\u001a\u00020\u0011¢\u0006\u0004\bk\u0010\u0013J\u000f\u0010l\u001a\u00020[H\u0016¢\u0006\u0004\bl\u0010mJ\u0019\u0010q\u001a\u00020\u00112\b\u0010n\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0004\bo\u0010pJ\u0019\u0010t\u001a\u00020\u00112\b\b\u0002\u0010r\u001a\u00020\u001aH\u0000¢\u0006\u0004\bs\u0010@J\r\u0010u\u001a\u00020\u0011¢\u0006\u0004\bu\u0010\u0013J\u000f\u0010v\u001a\u00020\u0011H\u0016¢\u0006\u0004\bv\u0010\u0013J\u000f\u0010w\u001a\u00020\u0011H\u0016¢\u0006\u0004\bw\u0010\u0013J\u001f\u0010z\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020\u000b2\u0006\u0010y\u001a\u00020xH\u0016¢\u0006\u0004\bz\u0010{J\u0017\u0010|\u001a\u00020\u00112\u0006\u0010y\u001a\u00020xH\u0016¢\u0006\u0004\b|\u0010}J(\u0010\u0082\u0001\u001a\u00020\u00112\u000b\u0010\u0080\u0001\u001a\u00060~j\u0002`\u007f2\u0007\u0010\u0081\u0001\u001a\u00020xH\u0016¢\u0006\u0006\b\u0082\u0001\u0010\u0083\u0001J\u0011\u0010\u0084\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0084\u0001\u0010\u0013J\u001e\u0010\u0087\u0001\u001a\u00020\u00112\n\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0085\u0001H\u0002¢\u0006\u0006\b\u0087\u0001\u0010\u0088\u0001J\u0019\u0010\u0089\u0001\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0005\b\u0089\u0001\u0010\u000fJ\u0011\u0010\u008a\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008a\u0001\u0010\u0013J\u0011\u0010\u008b\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008b\u0001\u0010\u0013J\u001a\u0010\u008d\u0001\u001a\u00020\u00112\u0007\u0010\u008c\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0005\b\u008d\u0001\u0010@J(\u0010\u0090\u0001\u001a\u00020\u00112\t\u0010\u008e\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J:\u0010\u0096\u0001\u001a\u00020\u00112\u0007\u0010\u0092\u0001\u001a\u00020\u001c2\b\u0010\u0094\u0001\u001a\u00030\u0093\u00012\t\u0010\u0016\u001a\u0005\u0018\u00010\u0095\u00012\b\b\u0002\u0010 \u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0005\b\u0098\u0001\u00101J\u001a\u0010\u0099\u0001\u001a\u00020\u00112\u0006\u0010\\\u001a\u00020[H\u0002¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u001b\u0010\u009c\u0001\u001a\u00020\u00112\u0007\u0010\u009b\u0001\u001a\u00020[H\u0002¢\u0006\u0006\b\u009c\u0001\u0010\u009a\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009e\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009f\u0001\u0010\u0013J\u0011\u0010 \u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b \u0001\u0010\u0013J\u001a\u0010¢\u0001\u001a\u00020\u00112\u0007\u0010¡\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0005\b¢\u0001\u0010@J\u001a\u0010¤\u0001\u001a\u00020\u00112\u0007\u0010£\u0001\u001a\u00020gH\u0002¢\u0006\u0005\b¤\u0001\u0010jJ\u0011\u0010¥\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¥\u0001\u0010\u0013J\u0011\u0010¦\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¦\u0001\u0010\u0013J\u0011\u0010§\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b§\u0001\u0010\u0013J\u0011\u0010¨\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¨\u0001\u0010\u0013J&\u0010«\u0001\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010ª\u0001\u001a\u0005\u0018\u00010©\u0001H\u0002¢\u0006\u0006\b«\u0001\u0010¬\u0001J\u0011\u0010\u00ad\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u00ad\u0001\u0010\u0013J\u0011\u0010®\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b®\u0001\u0010\u0013J\u001b\u0010¯\u0001\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0005\b¯\u0001\u00101J\u0011\u0010°\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b°\u0001\u0010\u0013J)\u0010±\u0001\u001a\u00020\u00112\t\u0010£\u0001\u001a\u0004\u0018\u00010g2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0002¢\u0006\u0006\b±\u0001\u0010²\u0001J)\u0010³\u0001\u001a\u00020\u00112\t\u0010£\u0001\u001a\u0004\u0018\u00010g2\n\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0093\u0001H\u0002¢\u0006\u0006\b³\u0001\u0010²\u0001J\u0011\u0010´\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b´\u0001\u0010\u0013J\u0011\u0010µ\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bµ\u0001\u0010\u0013J\u001c\u0010¸\u0001\u001a\u00030·\u00012\u0007\u0010¶\u0001\u001a\u00020\u001cH\u0002¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\u001b\u0010»\u0001\u001a\u00020\u00112\u0007\u0010º\u0001\u001a\u00020[H\u0002¢\u0006\u0006\b»\u0001\u0010\u009a\u0001J\u0011\u0010¼\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¼\u0001\u0010\u0013J\u001c\u0010¾\u0001\u001a\u00020\u00112\t\u0010½\u0001\u001a\u0004\u0018\u00010\u001cH\u0002¢\u0006\u0005\b¾\u0001\u0010PJ\u0011\u0010¿\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¿\u0001\u0010\u0013J\u0011\u0010À\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÀ\u0001\u0010\u0013J\u0011\u0010Á\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÁ\u0001\u0010\u0013J\u0011\u0010Â\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÂ\u0001\u0010\u0013J\u0011\u0010Ã\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÃ\u0001\u0010\u0013J\u0011\u0010Ä\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÄ\u0001\u0010\u0013J\u0011\u0010Å\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÅ\u0001\u0010\u0013J\u0011\u0010Æ\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÆ\u0001\u0010\u0013J\u001b\u0010È\u0001\u001a\u00020\u00112\u0007\u0010\u0016\u001a\u00030Ç\u0001H\u0002¢\u0006\u0006\bÈ\u0001\u0010É\u0001J\u001c\u0010Ì\u0001\u001a\u00020\u00112\b\u0010Ë\u0001\u001a\u00030Ê\u0001H\u0002¢\u0006\u0006\bÌ\u0001\u0010Í\u0001J\u001b\u0010Î\u0001\u001a\u00020\u00112\u0007\u0010\u0016\u001a\u00030Ç\u0001H\u0002¢\u0006\u0006\bÎ\u0001\u0010É\u0001J\u0012\u0010Ï\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\bÏ\u0001\u0010Ð\u0001J\u0012\u0010Ñ\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\bÑ\u0001\u0010Ð\u0001J\u0019\u0010Ò\u0001\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0005\bÒ\u0001\u00101J\u0019\u0010Ó\u0001\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0005\bÓ\u0001\u00101R\u0017\u0010Ö\u0001\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u0017\u0010Ø\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b×\u0001\u0010«\u0001R\u0018\u0010Ü\u0001\u001a\u00030Ù\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÚ\u0001\u0010Û\u0001R\u001b\u0010ß\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0001\u0010Þ\u0001R\u001c\u0010á\u0001\u001a\u0005\u0018\u00010\u0093\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010à\u0001R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010ã\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0001\u0010å\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010æ\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0001\u0010Õ\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010é\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010ë\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0001\u0010í\u0001R\u001c\u0010ñ\u0001\u001a\u0005\u0018\u00010î\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0001\u0010ð\u0001R\u001c\u0010õ\u0001\u001a\u0005\u0018\u00010ò\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bó\u0001\u0010ô\u0001R\u0019\u0010÷\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bö\u0001\u0010\u0089\u0001R\u0019\u0010ù\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bø\u0001\u0010\u0089\u0001R\u0019\u0010û\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bú\u0001\u0010\u0089\u0001R\u0019\u0010ý\u0001\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bü\u0001\u0010±\u0001R(\u0010ÿ\u0001\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0006\bþ\u0001\u0010\u0089\u0001\u001a\u0006\bÿ\u0001\u0010Ð\u0001\"\u0005\b\u0080\u0002\u0010@R\u001c\u0010\u0084\u0002\u001a\u0005\u0018\u00010\u0081\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0002\u0010\u0083\u0002R\u0017\u0010\u0086\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0085\u0002\u0010«\u0001R\u0016\u0010\u0087\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bh\u0010«\u0001R\u0017\u0010\u0088\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008e\u0001\u0010«\u0001R\u0017\u0010\u008a\u0002\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0089\u0002\u0010«\u0001R\u0018\u0010N\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0002\u0010Õ\u0001R\u001b\u0010\u008e\u0002\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0002\u0010\u008d\u0002R\u001c\u0010\u0092\u0002\u001a\u0005\u0018\u00010\u008f\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0002\u0010\u0091\u0002R\u0019\u0010\u0094\u0002\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0002\u0010«\u0001R\u0019\u0010\u0096\u0002\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0002\u0010«\u0001R\u001c\u0010\u009a\u0002\u001a\u0005\u0018\u00010\u0097\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0002\u0010\u0099\u0002R\u001a\u0010\u009e\u0002\u001a\u00030\u009b\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009c\u0002\u0010\u009d\u0002R\u0017\u0010 \u0002\u001a\u00020\u001a8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009f\u0002\u0010\u0089\u0001R\u0019\u0010¢\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0002\u0010\u0089\u0001R\u001e\u0010¦\u0002\u001a\t\u0012\u0004\u0012\u00020\u001a0£\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¤\u0002\u0010¥\u0002R \u0010§\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0£\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010¥\u0002R\u0018\u0010ª\u0002\u001a\u00030¨\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0001\u0010©\u0002R\u0019\u0010«\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b³\u0001\u0010\u0089\u0001R\u0019\u0010¬\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b§\u0001\u0010\u0089\u0001R\u001d\u0010±\u0002\u001a\b0\u00ad\u0002j\u0003`®\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¯\u0002\u0010°\u0002R\u0019\u0010²\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010\u0089\u0001R\u0018\u0010µ\u0002\u001a\u00030³\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¼\u0001\u0010´\u0002R\u001d\u0010·\u0002\u001a\b0\u00ad\u0002j\u0003`®\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¶\u0002\u0010°\u0002R\u001b\u0010¸\u0002\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010æ\u0001R\u001b\u0010»\u0002\u001a\u0004\u0018\u00010g8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0002\u0010º\u0002R\u0019\u0010¼\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010\u0089\u0001R\u001c\u0010À\u0002\u001a\u0005\u0018\u00010½\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0002\u0010¿\u0002R\u0019\u0010Á\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0089\u0001R,\u0010È\u0002\u001a\u0005\u0018\u00010Â\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bµ\u0001\u0010Ã\u0002\u001a\u0006\bÄ\u0002\u0010Å\u0002\"\u0006\bÆ\u0002\u0010Ç\u0002R\u001c\u0010Ê\u0002\u001a\u0005\u0018\u00010Ç\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b°\u0001\u0010É\u0002R\u0019\u0010Ë\u0002\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b \u0001\u0010\u0089\u0001¨\u0006Ì\u0002"}, d2 = {"Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/e;", "Landroid/view/View$OnClickListener;", "Landroidx/lifecycle/r;", "Lcom/transsion/shorttv/ui/widget/d;", "Lcom/transsion/subtitle_download/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lnr/e;", WebConstants.FIELD_ITEM, "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "fragment", RequestParameters.POSITION, "", "videoLoadMore", "", "basePostId", "baseItemType", "isPayloads", "fromTrending", "setData", "(Lnr/e;Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V", "Lcom/transsion/player/orplayer/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "onPageSelected", "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lnr/e;)V", "updateShortTvInfo", "onPageRelease", "(I)V", "width", "height", "onVideoSizeChanged", "(II)V", "updateLockState", "(Lnr/e;)V", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "pagerLayoutManager", "setPagerLayoutManager", "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V", "Landroid/widget/FrameLayout;", "getPlayerContainer", "()Landroid/widget/FrameLayout;", "Landroidx/fragment/app/FragmentActivity;", "activity", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "getViewModel", "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "hasWindowFocus", "onWindowFocusChanged", "(Z)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "onPlayerReset", "onMediaItemTransition", "reset", "app2Background", "pageFrom", "videoStartPrepare", "(Ljava/lang/String;)V", "url", "setVideoUrl", "onSetDataSource", "onRenderFirstFrame", "Lgn/e;", "mediaSource", "onVideoStart", "(Lgn/e;)V", "onPrepare", "onVideoPause", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onLoopingStart", "onCompletion", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "showEpisodeListDialog", "getProgress", "()J", "remaining", "updateUnlockCountdownText$shortTvLib_release", "(Ljava/lang/Integer;)V", "updateUnlockCountdownText", "isAuto", "watchAdToUnlock$shortTvLib_release", "watchAdToUnlock", "onNetConnect", "onGetDubsInfo", "onAudioTrackChange", "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "stDownloadTable", "onDownloading", "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "onComplete", "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "dbBean", "onFail", "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "T0", "Lnr/f;", "result", "U", "(Lnr/f;)V", "Z", "Y", "Q0", "isImmersive", "Y0", "w", "h", "Z0", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "ep", "Lcom/transsion/shorttv/bean/Subject;", "subject", "Lcom/transsion/shorttv/bean/ShortTVItem;", "I0", "(Ljava/lang/String;Lcom/transsion/shorttv/bean/Subject;Lcom/transsion/shorttv/bean/ShortTVItem;Z)V", "b1", "V0", "(J)V", "max", "W0", "v0", "H0", "O0", "a0", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setLoading", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "B0", "e0", "X", "L", "P0", "Lcom/transsion/shorttv/bean/Video;", "video", "I", "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv/bean/Video;)V", "R0", "S0", "K0", "W", "J", "(Landroid/view/View;Lcom/transsion/shorttv/bean/Subject;)V", "K", "J0", "V", EventConstants.KEY_TIME, "Landroid/text/SpannableString;", "N", "(Ljava/lang/String;)Landroid/text/SpannableString;", "remainingMs", "U0", "O", "userId", "Q", "h0", "C0", "g0", "z0", "b0", "x0", "q0", "E0", "Lxr/b;", "G0", "(Lxr/b;)V", "Lcom/transsion/shorttv/bean/DubsInfo;", "info", "s0", "(Lcom/transsion/shorttv/bean/DubsInfo;)V", "S", "j0", "()Z", "i0", "o0", "k0", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "screenWidth", "Lqr/k0;", "c", "Lqr/k0;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lnr/e;", "data", "Lcom/transsion/shorttv/bean/Subject;", "shortTvInfo", "f", "Lcom/transsion/shorttv/ui/fragment/ShortTvDetailListFragment;", "g", "Ljava/lang/Boolean;", "Ljava/lang/Integer;", "i", "j", "Lcom/transsion/player/orplayer/f;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/ui/ORPlayerView;", "l", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "Landroid/view/GestureDetector;", "m", "Landroid/view/GestureDetector;", "gestureDetector", "Lwr/c;", "n", "Lwr/c;", "dotLayer", "o", "isClickPause", TtmlNode.TAG_P, "isHorizontalDragging", CampaignEx.JSON_KEY_AD_Q, "isPageHide", CampaignEx.JSON_KEY_AD_R, "currentSaveProgress", "s", "isFirstPlayInSession", "setFirstPlayInSession", "Lcom/transsion/shorttv/ui/widget/c;", "t", "Lcom/transsion/shorttv/ui/widget/c;", "downloadGuideBubbleController", TmcStartParams.KEY_URL_SHORT, "resImgLargeWidth", "resImgLargeHeight", "resImgSmallWidth", "x", "resImgSmallHeight", "y", "z", "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;", "mShortTvViewModel", "Las/a;", "A", "Las/a;", "mShortTvSubViewModel", "B", "videoWidth", "C", "videoHeight", "Lcom/transsion/shorttv/subtitle/a;", "D", "Lcom/transsion/shorttv/subtitle/a;", "subtitleControl", "Landroidx/constraintlayout/widget/Group;", "E", "Landroidx/constraintlayout/widget/Group;", "groupContent", "F", "isOptimizeEnable", "G", "hasAd", "Landroidx/lifecycle/c0;", "H", "Landroidx/lifecycle/c0;", "observer", "favoriteObserver", "com/transsion/shorttv/ui/widget/ShortTvVideoItemView$d", "Lcom/transsion/shorttv/ui/widget/ShortTvVideoItemView$d;", "favoriteResultObserver", "isFirstFrame", "isPrepare", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "M", "Ljava/lang/Runnable;", "delayToastNetErrRunnable", "isLoading", "Landroid/os/Handler;", "Landroid/os/Handler;", "autoHideRightMenuHandle", "P", "autoHideRightMenuRunnable", "watchAdUnlockSeconds", "R", "Landroid/view/View;", "lockedView", "isEpisodeLocked", "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;", "T", "Lcom/transsion/shorttv/ad/common/STCommonVideoAdHelper;", "videoAdHelper", "isFreePreviewMode", "Lcom/transsion/shorttv/ui/widget/a1;", "Lcom/transsion/shorttv/ui/widget/a1;", "getCountdownController", "()Lcom/transsion/shorttv/ui/widget/a1;", "setCountdownController", "(Lcom/transsion/shorttv/ui/widget/a1;)V", "countdownController", "Lxr/b;", "subDownloadBean", "hasSubDownloading", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.e, View.OnClickListener, androidx.p009lifecycle.r, com.transsion.shorttv.ui.widget.d, com.transsion.subtitle_download.a {

    private as.a mShortTvSubViewModel;

    private int videoWidth;

    private int videoHeight;

    private com.transsion.shorttv.subtitle.a subtitleControl;

    private Group groupContent;

    private final boolean isOptimizeEnable;

    private boolean hasAd;

    private final androidx.p009lifecycle.c0 observer;

    private final androidx.p009lifecycle.c0 favoriteObserver;

    private final d favoriteResultObserver;

    private boolean isFirstFrame;

    private boolean isPrepare;

    private final Runnable delayToastNetErrRunnable;

    private boolean isLoading;

    private final Handler autoHideRightMenuHandle;

    private final Runnable autoHideRightMenuRunnable;

    private Integer watchAdUnlockSeconds;

    private View lockedView;

    private boolean isEpisodeLocked;

    private STCommonVideoAdHelper videoAdHelper;

    private boolean isFreePreviewMode;

    private a1 countdownController;

    private xr.b subDownloadBean;

    private final String TAG;

    private boolean hasSubDownloading;

    private final int screenWidth;

    private final qr.k0 viewBinding;

    private nr.e data;

    private Subject shortTvInfo;

    private ShortTvDetailListFragment fragment;

    private Boolean videoLoadMore;

    private Integer position;

    private String basePostId;

    private com.transsion.player.orplayer.f orPlayer;

    private ORPlayerView orPlayerView;

    private PagerLayoutManager pagerLayoutManager;

    private GestureDetector gestureDetector;

    private wr.c dotLayer;

    private boolean isClickPause;

    private boolean isHorizontalDragging;

    private boolean isPageHide;

    private long currentSaveProgress;

    private boolean isFirstPlayInSession;

    private com.transsion.shorttv.ui.widget.c downloadGuideBubbleController;

    private final int resImgLargeWidth;

    private final int resImgLargeHeight;

    private final int resImgSmallWidth;

    private final int resImgSmallHeight;

    private String pageFrom;

    private ShortTvViewModel mShortTvViewModel;

    public class a {

        public static final int[] f51529a;

        public static final int[] f51530b;

        static {
            int[] iArr = new int[Lifecycle.Event.values().length];
            try {
                iArr[Lifecycle.Event.ON_PAUSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Lifecycle.Event.ON_RESUME.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Lifecycle.Event.ON_STOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[Lifecycle.Event.ON_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[Lifecycle.Event.ON_DESTROY.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            f51529a = iArr;
            int[] iArr2 = new int[AdLoadState.values().length];
            try {
                iArr2[AdLoadState.IDLE.ordinal()] = 1;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[AdLoadState.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr2[AdLoadState.FAILED.ordinal()] = 3;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr2[AdLoadState.CLOSED.ordinal()] = 4;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr2[AdLoadState.DESTROYED.ordinal()] = 5;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                iArr2[AdLoadState.SUCCEED.ordinal()] = 6;
            } catch (NoSuchFieldError unused11) {
            }
            f51530b = iArr2;
        }
    }

    public static final class b implements androidx.p009lifecycle.c0 {

        final ur.i f51532b;

        b(ur.i iVar) {
            this.f51532b = iVar;
        }

        @Override
        public void onChanged(Unit unit) {
            LiveData liveDataH0;
            androidx.p009lifecycle.b0 b0VarL0;
            androidx.p009lifecycle.b0 b0VarL1;
            ShortTvVideoItemView.this.setLoading(false);
            ShortTvViewModel shortTvViewModel = ShortTvVideoItemView.this.mShortTvViewModel;
            if (shortTvViewModel != null && (b0VarL1 = shortTvViewModel.l0()) != null) {
                b0VarL1.o(this);
            }
            ShortTvViewModel shortTvViewModel2 = ShortTvVideoItemView.this.mShortTvViewModel;
            Subject subject = null;
            if (shortTvViewModel2 != null && (b0VarL0 = shortTvViewModel2.l0()) != null) {
                b0VarL0.q(null);
            }
            ShortTvViewModel shortTvViewModel3 = ShortTvVideoItemView.this.mShortTvViewModel;
            if (shortTvViewModel3 != null && (liveDataH0 = shortTvViewModel3.H0()) != null) {
                subject = (Subject) liveDataH0.f();
            }
            if (subject == null || subject.getIsPaid() != 1) {
                ShortTvVideoItemView.this.Q(this.f51532b.getUserId());
            } else {
                ShortTvVideoItemView shortTvVideoItemView = ShortTvVideoItemView.this;
                shortTvVideoItemView.updateShortTvInfo(shortTvVideoItemView.orPlayer, ShortTvVideoItemView.this.orPlayerView, ShortTvVideoItemView.this.data);
            }
        }
    }

    public static final class c implements com.transsion.shorttv.order.b {

        final Subject f51534b;

        final int f51535c;

        final String f51536d;

        c(Subject subject, int i10, String str) {
            this.f51534b = subject;
            this.f51535c = i10;
            this.f51536d = str;
        }

        public static final Unit d(ShortTvVideoItemView shortTvVideoItemView, String str) {
            shortTvVideoItemView.Q(str);
            return Unit.f64096a;
        }

        @Override
        public void a(String errorCode, String errorMsg) {
            Intrinsics.h(errorCode, "errorCode");
            Intrinsics.h(errorMsg, "errorMsg");
            com.transsion.shorttv.order.b.a.a(this, errorCode, errorMsg);
            wf.a.C0922a.l(wf.a.f74274a, ShortTvVideoItemView.this.TAG, "callPayMethod onPayFail, errorCode=" + errorCode + ", errorMsg=" + errorMsg, false, 4, null);
            wr.b.f74733a.j(this.f51534b, this.f51535c, "fail", errorMsg, errorCode, MediaItem.MUSIC_FLOAT_STATE_PLAY);
            ShortTvAlertDialog.Companion companion = ShortTvAlertDialog.INSTANCE;
            String string = ShortTvVideoItemView.this.getContext().getString(R$string.short_tv_pay_failed_title);
            Intrinsics.g(string, "getString(...)");
            String string2 = ShortTvVideoItemView.this.getContext().getString(R$string.short_tv_pay_failed_message);
            Intrinsics.g(string2, "getString(...)");
            String string3 = ShortTvVideoItemView.this.getContext().getString(R$string.short_tv_payment_retry);
            Intrinsics.g(string3, "getString(...)");
            final ShortTvVideoItemView shortTvVideoItemView = ShortTvVideoItemView.this;
            final String str = this.f51536d;
            companion.a(string, string2, string3, (32 & 8) != 0 ? null : new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTvVideoItemView.c.d(shortTvVideoItemView, str);
                }
            }, (32 & 16) != 0 ? null : ShortTvVideoItemView.this.getContext().getString(R$string.short_tv_payment_cancel), (32 & 32) != 0 ? null : null).i0(ShortTvVideoItemView.this.getContext(), "ShortTvAlertDialog");
        }

        @Override
        public void b(GetPaynicornOrderStatusRespEntity getPaynicornOrderStatusRespEntity) {
            String description;
            String string;
            String orderStatus;
            com.transsion.shorttv.order.b.a.b(this, getPaynicornOrderStatusRespEntity);
            wf.a.C0922a.r(wf.a.f74274a, ShortTvVideoItemView.this.TAG, new String[]{"callPayMethod onPurchase, orderStatus=" + getPaynicornOrderStatusRespEntity}, false, 4, null);
            jr.b.f63248a.e(ShortTvVideoItemView.this.getContext().getString(R$string.short_tv_pay_series_successfully));
            Integer numV = (getPaynicornOrderStatusRespEntity == null || (orderStatus = getPaynicornOrderStatusRespEntity.getOrderStatus()) == null) ? null : StringsKt.v(orderStatus);
            if (numV != null && numV.intValue() == 2) {
                wr.b.f74733a.j(this.f51534b, this.f51535c, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "0", MediaItem.MUSIC_FLOAT_STATE_PLAY);
                ShortTvViewModel shortTvViewModel = ShortTvVideoItemView.this.mShortTvViewModel;
                if (shortTvViewModel != null) {
                    shortTvViewModel.R0(1);
                }
                ShortTvVideoItemView shortTvVideoItemView = ShortTvVideoItemView.this;
                shortTvVideoItemView.updateShortTvInfo(shortTvVideoItemView.orPlayer, ShortTvVideoItemView.this.orPlayerView, ShortTvVideoItemView.this.data);
                return;
            }
            if (numV != null && numV.intValue() == 3) {
                wr.b.f74733a.j(this.f51534b, this.f51535c, "cancel", "", "0", MediaItem.MUSIC_FLOAT_STATE_PLAY);
                return;
            }
            wr.b bVar = wr.b.f74733a;
            Subject subject = this.f51534b;
            int i10 = this.f51535c;
            if (getPaynicornOrderStatusRespEntity == null || (description = getPaynicornOrderStatusRespEntity.getDescription()) == null) {
                description = "";
            }
            String str = description;
            if (numV == null || (string = numV.toString()) == null) {
                string = TmcConstants.COLD_OPEN_TYPE;
            }
            bVar.j(subject, i10, "fail", str, string, MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
    }

    public static final class d implements androidx.p009lifecycle.c0 {

        private nr.f f51537a;

        d() {
        }

        @Override
        public void onChanged(nr.f fVar) {
            if (Intrinsics.c(this.f51537a, fVar)) {
                return;
            }
            ShortTvVideoItemView.this.U(fVar);
        }

        public final void b(nr.f fVar) {
            this.f51537a = fVar;
        }
    }

    public static final class e extends GestureDetector.SimpleOnGestureListener {
        e() {
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            ShortTvVideoItemView.this.v0();
            return super.onSingleTapUp(e10);
        }
    }

    public static final class f implements com.transsion.shorttv.ui.widget.c.b {
        f() {
        }

        @Override
        public ur.d a() {
            ShortTvViewModel shortTvViewModel = ShortTvVideoItemView.this.mShortTvViewModel;
            if (shortTvViewModel != null) {
                return shortTvViewModel.s0();
            }
            return null;
        }

        @Override
        public String b() {
            ShortTVItem shortTVItemD;
            Media video;
            Video video2;
            nr.e eVar = ShortTvVideoItemView.this.data;
            if (eVar == null || (shortTVItemD = eVar.d()) == null || (video = shortTVItemD.getVideo()) == null || (video2 = video.getVideo()) == null) {
                return null;
            }
            return video2.getUrl();
        }

        @Override
        public boolean c() {
            return ShortTvVideoItemView.this.isLoading;
        }

        @Override
        public void d() {
            ShortTvVideoItemView.this.P0();
        }
    }

    public static final class g implements com.transsion.shorttv.base.widget.e.a {

        private int f51541a;

        private int f51542b;

        private int f51543c;

        private String f51544d = "";

        private int f51545e = com.blankj.utilcode.util.a0.a(1.5f);

        g() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(float f10, float f11) {
            int i10 = 0;
            if (!ShortTvVideoItemView.this.isHorizontalDragging) {
                PagerLayoutManager pagerLayoutManager = ShortTvVideoItemView.this.pagerLayoutManager;
                if (pagerLayoutManager != null) {
                    pagerLayoutManager.W(false);
                }
                this.f51541a = ShortTvVideoItemView.this.viewBinding.f70097s.getProgress();
                AppCompatTextView tvProgressDes = ShortTvVideoItemView.this.viewBinding.C;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                cr.b.e(tvProgressDes);
                AppCompatSeekBar seekBar = ShortTvVideoItemView.this.viewBinding.f70099u;
                Intrinsics.g(seekBar, "seekBar");
                cr.b.e(seekBar);
                ProgressBar progressBar = ShortTvVideoItemView.this.viewBinding.f70097s;
                Intrinsics.g(progressBar, "progressBar");
                cr.b.b(progressBar);
                this.f51543c = ShortTvVideoItemView.this.viewBinding.f70097s.getWidth();
                int max = ShortTvVideoItemView.this.viewBinding.f70097s.getMax();
                this.f51542b = max;
                this.f51544d = com.transsion.shorttv.utils.m.a(max);
            }
            ShortTvVideoItemView.this.isHorizontalDragging = true;
            float f12 = f11 - f10;
            int i11 = this.f51542b;
            int i12 = (int) (this.f51541a + ((f12 * i11) / this.f51543c));
            if (i12 >= 0) {
                i10 = i12 > i11 ? i11 : i12;
            }
            ShortTvVideoItemView.this.viewBinding.C.setText(com.transsion.shorttv.utils.m.a(i10) + " / " + this.f51544d);
            ShortTvVideoItemView.this.V0((long) i10);
        }

        @Override
        public void c(float f10, float f11) {
        }

        @Override
        public void d(float f10, float f11) {
        }

        @Override
        public void e() {
            PagerLayoutManager pagerLayoutManager = ShortTvVideoItemView.this.pagerLayoutManager;
            if (pagerLayoutManager != null) {
                pagerLayoutManager.W(true);
            }
            if (ShortTvVideoItemView.this.isHorizontalDragging) {
                ShortTvVideoItemView.this.isHorizontalDragging = false;
                AppCompatTextView tvProgressDes = ShortTvVideoItemView.this.viewBinding.C;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                cr.b.b(tvProgressDes);
                AppCompatSeekBar seekBar = ShortTvVideoItemView.this.viewBinding.f70099u;
                Intrinsics.g(seekBar, "seekBar");
                cr.b.b(seekBar);
                ProgressBar progressBar = ShortTvVideoItemView.this.viewBinding.f70097s;
                Intrinsics.g(progressBar, "progressBar");
                cr.b.e(progressBar);
                long progress = ShortTvVideoItemView.this.viewBinding.f70097s.getProgress();
                nr.e eVar = ShortTvVideoItemView.this.data;
                if (eVar == null || !nr.l.a(eVar)) {
                    wf.a.C0922a.f(wf.a.f74274a, ShortTvVideoItemView.this.TAG, "数据还没有拉下来，不进行seek", false, 4, null);
                    return;
                }
                com.transsion.player.orplayer.f fVar = ShortTvVideoItemView.this.orPlayer;
                if (fVar != null) {
                    fVar.seekTo(progress);
                }
                com.transsion.player.orplayer.f fVar2 = ShortTvVideoItemView.this.orPlayer;
                if (fVar2 == null || fVar2.isPlaying()) {
                    return;
                }
                ShortTvVideoItemView.this.H0();
            }
        }

        @Override
        public void onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
        }
    }

    public static final class h implements ExpandView.c {
        h() {
        }

        @Override
        public void a(ExpandView expandView) {
            ShortTvVideoItemView.this.P0();
        }

        @Override
        public void b(ExpandView expandView) {
            ShortTvVideoItemView.this.L();
        }
    }

    public static final class i implements RequestListener {
        i() {
        }

        @Override
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            wf.a.C0922a.f(wf.a.f74274a, ShortTvVideoItemView.this.TAG, "onResourceReady  " + ShortTvVideoItemView.this, false, 4, null);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            wf.a.C0922a.f(wf.a.f74274a, ShortTvVideoItemView.this.TAG, "onLoadFailed  " + ShortTvVideoItemView.this, false, 4, null);
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Code duplicated, block: B:41:0x01ad  */
    public ShortTvVideoItemView(Context context, AttributeSet attributeSet, int i10) {
        Group group;
        Object objM453constructorimpl;
        Integer numValueOf;
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "ShortTv-Imm";
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.pageFrom = "";
        this.isOptimizeEnable = pq.a.f69238a.c();
        View.inflate(getContext(), R$layout.short_tv_layout_video_item_view, this);
        qr.k0 k0VarA = qr.k0.a(this);
        Intrinsics.g(k0VarA, "bind(...)");
        this.viewBinding = k0VarA;
        k0VarA.f70103y.setText("");
        int iC = com.blankj.utilcode.util.d.c();
        k0VarA.f70100v.setPadding(0, iC, 0, 0);
        BLTextView tvWatchFreeCountdown = k0VarA.H;
        Intrinsics.g(tvWatchFreeCountdown, "tvWatchFreeCountdown");
        ViewGroup.LayoutParams layoutParams = tvWatchFreeCountdown.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).topMargin = iC + com.blankj.utilcode.util.a0.a(10.0f);
        tvWatchFreeCountdown.setLayoutParams(bVar);
        k0VarA.f70088j.setOnClickListener(this);
        k0VarA.f70104z.setOnClickListener(this);
        k0VarA.f70103y.setOnClickListener(this);
        k0VarA.f70092n.setOnClickListener(this);
        k0VarA.f70091m.setOnClickListener(this);
        k0VarA.f70090l.setOnClickListener(this);
        k0VarA.f70093o.setOnClickListener(this);
        k0VarA.B.setOnClickListener(this);
        k0VarA.E.setOnClickListener(this);
        k0VarA.A.setOnClickListener(this);
        k0VarA.f70101w.setOnClickListener(this);
        k0VarA.F.setOnClickListener(this);
        k0VarA.D.setOnClickListener(this);
        this.resImgLargeWidth = com.blankj.utilcode.util.a0.a(48.0f);
        this.resImgLargeHeight = com.blankj.utilcode.util.a0.a(64.0f);
        this.resImgSmallWidth = com.blankj.utilcode.util.a0.a(24.0f);
        this.resImgSmallHeight = com.blankj.utilcode.util.a0.a(32.0f);
        if (pq.c.f69249a.b().d().c()) {
            AppCompatImageView ivShare = k0VarA.f70092n;
            Intrinsics.g(ivShare, "ivShare");
            cr.b.b(ivShare);
            AppCompatTextView tvFavorite = k0VarA.f70104z;
            Intrinsics.g(tvFavorite, "tvFavorite");
            cr.b.b(tvFavorite);
            group = k0VarA.f70085g;
            Intrinsics.e(group);
        } else {
            group = k0VarA.f70086h;
            Intrinsics.e(group);
        }
        this.groupContent = group;
        Z(context);
        a0();
        this.observer = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.p0(this.f51598a, ((Boolean) obj).booleanValue());
            }
        };
        this.favoriteObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.T(this.f51599a, (Boolean) obj);
            }
        };
        this.favoriteResultObserver = new d();
        this.delayToastNetErrRunnable = new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoItemView.R(this.f51602a);
            }
        };
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.autoHideRightMenuHandle = new Handler(looperMyLooper);
        this.autoHideRightMenuRunnable = new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoItemView.M(this.f51605a);
            }
        };
        yq.a aVar = yq.a.f76390a;
        try {
            Result.Companion companion = Result.INSTANCE;
            JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("ShortTvPlayerUnlockPlayScene");
            JsonElement jsonElement = jsonObjectB != null ? jsonObjectB.get("autoWatchAdCountDown") : null;
            KClass kClassB = Reflection.b(Integer.class);
            if (Intrinsics.c(kClassB, Reflection.b(String.class))) {
                if (jsonElement != null) {
                    jsonElement.getAsString();
                }
            } else {
                if (Intrinsics.c(kClassB, Reflection.b(Integer.TYPE))) {
                    numValueOf = jsonElement != null ? Integer.valueOf(jsonElement.getAsInt()) : null;
                    if (!(numValueOf instanceof Integer)) {
                    }
                    objM453constructorimpl = Result.m453constructorimpl(numValueOf);
                    this.watchAdUnlockSeconds = (Integer) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
                }
                if (Intrinsics.c(kClassB, Reflection.b(Long.TYPE))) {
                    if (jsonElement != null) {
                        jsonElement.getAsLong();
                    }
                } else if (Intrinsics.c(kClassB, Reflection.b(Boolean.TYPE)) && jsonElement != null) {
                    jsonElement.getAsBoolean();
                }
            }
            numValueOf = null;
            objM453constructorimpl = Result.m453constructorimpl(numValueOf);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        this.watchAdUnlockSeconds = (Integer) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
    }

    public static final Unit A0(ShortTvVideoItemView shortTvVideoItemView, Ref.IntRef intRef, ShortTVItem shortTVItem, ShortTvVideoCtrBean clickItem) {
        ShortTVItem shortTVItemD;
        List<Video> addressList;
        Object next;
        ShortTVItem shortTVItemD2;
        Map mapB;
        ShortTVItem shortTVItemD3;
        String resolution;
        Integer numV;
        Intrinsics.h(clickItem, "clickItem");
        shortTvVideoItemView.L();
        float content = clickItem.getContent();
        if (intRef.element == content) {
            return Unit.f64096a;
        }
        com.transsion.shorttv.utils.h.f51644a.d().putInt("k_short_tv_resolution", (int) clickItem.getContent());
        shortTvVideoItemView.viewBinding.D.setText(((int) content) + "P");
        Media video = shortTVItem.getVideo();
        int ep2 = 0;
        if (video != null && (addressList = video.getAddressList()) != null) {
            Iterator<T> it = addressList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                resolution = ((Video) next).getResolution();
            } while (((resolution == null || (numV = StringsKt.v(resolution)) == null) ? 0 : numV.intValue()) != ((int) clickItem.getContent()));
            Video video2 = (Video) next;
            if (video2 != null) {
                String url = video2.getUrl();
                String url2 = video2.getUrl();
                String str = url2 == null ? "" : url2;
                nr.e eVar = shortTvVideoItemView.data;
                gn.e eVar2 = new gn.e(url, str, (eVar == null || (shortTVItemD3 = eVar.d()) == null) ? 0 : shortTVItemD3.getEp(), null, null, 24, null);
                com.transsion.player.orplayer.f fVar = shortTvVideoItemView.orPlayer;
                pn.f fVar2 = fVar instanceof pn.f ? (pn.f) fVar : null;
                boolean zContainsKey = (fVar2 == null || (mapB = fVar2.b()) == null) ? false : mapB.containsKey(eVar2.e());
                wf.a.C0922a c0922a = wf.a.f74274a;
                String str2 = shortTvVideoItemView.TAG;
                float content2 = clickItem.getContent();
                nr.e eVar3 = shortTvVideoItemView.data;
                Integer numValueOf = (eVar3 == null || (shortTVItemD2 = eVar3.d()) == null) ? null : Integer.valueOf(shortTVItemD2.getEp());
                wf.a.C0922a.f(c0922a, str2, "resolution play, res:" + content2 + ", EP:" + numValueOf + ", inList:" + zContainsKey + ", url:" + video2.getUrl(), false, 4, null);
                com.transsion.player.orplayer.f fVar3 = shortTvVideoItemView.orPlayer;
                long currentPosition = fVar3 != null ? fVar3.getCurrentPosition() : 0L;
                if (!zContainsKey) {
                    com.transsion.player.orplayer.f fVar4 = shortTvVideoItemView.orPlayer;
                    if (fVar4 != null) {
                        fVar4.addDataSource(eVar2);
                    }
                    com.transsion.player.orplayer.f fVar5 = shortTvVideoItemView.orPlayer;
                    if (fVar5 != null) {
                        fVar5.prepare();
                    }
                }
                com.transsion.player.orplayer.f fVar6 = shortTvVideoItemView.orPlayer;
                if (fVar6 != null) {
                    String strE = eVar2.e();
                    fVar6.seekTo(strE != null ? strE : "", currentPosition);
                }
            }
        }
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            String strValueOf = String.valueOf(content);
            nr.e eVar4 = shortTvVideoItemView.data;
            if (eVar4 != null && (shortTVItemD = eVar4.d()) != null) {
                ep2 = shortTVItemD.getEp();
            }
            com.transsion.player.orplayer.f fVar7 = shortTvVideoItemView.orPlayer;
            shortTvViewModel.W0(strValueOf, ep2, fVar7 instanceof pn.f ? (pn.f) fVar7 : null);
        }
        return Unit.f64096a;
    }

    private final void B0(View view) {
        LiveData liveDataH0;
        Subject subject;
        ur.k kVarC0;
        String pageName;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null || (subject = (Subject) liveDataH0.f()) == null) {
            return;
        }
        wr.b bVar = wr.b.f74733a;
        String subjectId = subject.getSubjectId();
        String ops = subject.getOps();
        nr.e eVar = this.data;
        wr.b.n(bVar, subjectId, ops, eVar != null ? Integer.valueOf(eVar.c()) : null, null, 8, null);
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 == null || (kVarC0 = shortTvViewModel2.C0()) == null) {
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        String subjectId2 = subject.getSubjectId();
        Subject subject2 = this.shortTvInfo;
        String title = subject2 != null ? subject2.getTitle() : null;
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 == null || (pageName = shortTvDetailListFragment2.getPageName()) == null) {
            pageName = "";
        }
        kVarC0.a(shortTvDetailListFragment, subjectId2, title, pageName);
    }

    private final void C0() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "VideoSpeed, click", false, 4, null);
        P0();
        final float f10 = com.transsion.shorttv.utils.h.f51644a.d().getFloat("k_short_tv_speed", 1.0f);
        for (ShortTvVideoCtrBean shortTvVideoCtrBean : com.transsion.shorttv.utils.l.b()) {
            shortTvVideoCtrBean.setSelect(shortTvVideoCtrBean.getContent() == f10);
        }
        AppCompatTextView tvSpeed = this.viewBinding.E;
        Intrinsics.g(tvSpeed, "tvSpeed");
        com.transsion.shorttv.utils.l.c(tvSpeed, com.transsion.shorttv.utils.l.b(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.D0(this.f51584a, f10, (ShortTvVideoCtrBean) obj);
            }
        });
    }

    public static final Unit D0(ShortTvVideoItemView shortTvVideoItemView, float f10, ShortTvVideoCtrBean clickItem) {
        Intrinsics.h(clickItem, "clickItem");
        shortTvVideoItemView.L();
        float content = clickItem.getContent();
        if (f10 == content) {
            return Unit.f64096a;
        }
        com.transsion.shorttv.utils.h.f51644a.d().putFloat("k_short_tv_speed", content);
        int i10 = (int) content;
        String strValueOf = ((float) i10) == content ? String.valueOf(i10) : String.valueOf(content);
        shortTvVideoItemView.viewBinding.E.setText(strValueOf + "x");
        com.transsion.player.orplayer.f fVar = shortTvVideoItemView.orPlayer;
        if (fVar != null) {
            fVar.setSpeed(content);
        }
        return Unit.f64096a;
    }

    private final void E0() {
        androidx.p009lifecycle.b0 b0VarD;
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        as.a aVar = this.mShortTvSubViewModel;
        List list = (aVar == null || (b0VarD = aVar.d()) == null) ? null : (List) b0VarD.f();
        if (list == null || list.isEmpty()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_error_content));
            return;
        }
        ShortTvLanguageSelectDialog shortTvLanguageSelectDialog = new ShortTvLanguageSelectDialog();
        shortTvLanguageSelectDialog.D0(2);
        shortTvLanguageSelectDialog.C0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.F0(this.f51561a, (DubsInfo) obj);
            }
        });
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvLanguageSelectDialog.j0(shortTvDetailListFragment, "ShortTvLanguageSelectDialog_Subtitle");
        }
    }

    public static final Unit F0(ShortTvVideoItemView shortTvVideoItemView, DubsInfo item) {
        Intrinsics.h(item, "item");
        if (Intrinsics.c(item.getLanCode(), "off")) {
            com.transsion.shorttv.subtitle.a aVar = shortTvVideoItemView.subtitleControl;
            if (aVar != null) {
                aVar.f();
            }
        } else {
            xr.b subInfo = item.getSubInfo();
            if (subInfo != null) {
                shortTvVideoItemView.G0(subInfo);
            }
        }
        return Unit.f64096a;
    }

    private final void G0(xr.b item) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onSubtitleSelect", false, 4, null);
        com.transsion.shorttv.utils.h.f51644a.d().putString("k_subtitle_language", item.a().getLanName());
        com.transsion.subtitle_download.utils.d.f53010a.b().putString("k_subtitle_select_lan", item.a().getLan());
        if (!item.b()) {
            S(item);
            return;
        }
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.h(item);
        }
        this.subDownloadBean = null;
    }

    public final void H0() {
        com.transsion.player.orplayer.f fVar;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "playVideo   data:" + this.data + "  orPlayer:" + this.orPlayer, false, 4, null);
        if (this.orPlayer == null || nr.l.b(this.data) || this.orPlayer == null || nr.l.b(this.data)) {
            return;
        }
        if (!i0() && !this.isFreePreviewMode) {
            wf.a.C0922a.f(c0922a, this.TAG, "player- no free now, show pay dialog", false, 4, null);
            setLoading(false);
            com.transsion.player.orplayer.f fVar2 = this.orPlayer;
            if (fVar2 != null) {
                fVar2.pause();
                return;
            }
            return;
        }
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        if (fVar3 != null && fVar3.isComplete() && (fVar = this.orPlayer) != null) {
            fVar.seekTo(0L);
        }
        com.transsion.player.orplayer.f fVar4 = this.orPlayer;
        if (fVar4 != null) {
            fVar4.play();
        }
        wf.a.C0922a.f(c0922a, this.TAG, "player- startplay    ", false, 4, null);
    }

    private final void I(ORPlayerView orPlayerView, Video video) {
        ViewParent parent = orPlayerView.getParent();
        if (!Intrinsics.c(parent, this.viewBinding.f70083e)) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(orPlayerView);
            }
            this.viewBinding.f70083e.addView(orPlayerView, new FrameLayout.LayoutParams(-1, -1));
        }
        if (video != null) {
            Z0(video.getWidth(), video.getHeight());
        }
    }

    private final void I0(String ep2, Subject subject, ShortTVItem item, boolean fromTrending) {
        String description;
        String str;
        String description2;
        ExpandView expandView = this.viewBinding.f70082d;
        expandView.setExpandListener(new h());
        if (item == null || (description2 = item.getDescription()) == null || description2.length() <= 0) {
            description = subject.getDescription();
            if (description == null) {
                description = "";
            }
        } else {
            description = item.getDescription();
        }
        if (description == null || description.length() == 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            str = String.format("EP%s", Arrays.copyOf(new Object[]{ep2}, 1));
        } else {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
            str = String.format("EP%s | %s", Arrays.copyOf(new Object[]{ep2, description}, 2));
        }
        Intrinsics.g(str, "format(...)");
        expandView.setTitle(str);
    }

    private final void J(View view, Subject subject) {
        List<Integer> listL;
        if (subject == null || (listL = subject.getUnlockType()) == null) {
            listL = CollectionsKt.l();
        }
        boolean zContains = listL.contains(1);
        boolean zContains2 = listL.contains(2);
        View viewFindViewById = view != null ? view.findViewById(R$id.iv_lock_icon) : null;
        View viewFindViewById2 = view != null ? view.findViewById(R$id.btn_watch_ad_unlock) : null;
        View viewFindViewById3 = view != null ? view.findViewById(R$id.tv_buy_to_continue) : null;
        View viewFindViewById4 = view != null ? view.findViewById(R$id.container_series_info) : null;
        if (zContains && zContains2) {
            if (viewFindViewById != null) {
                cr.b.e(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                cr.b.e(viewFindViewById2);
            }
            if (viewFindViewById3 != null) {
                cr.b.b(viewFindViewById3);
            }
            if (viewFindViewById4 != null) {
                cr.b.e(viewFindViewById4);
                return;
            }
            return;
        }
        if (zContains) {
            if (viewFindViewById != null) {
                cr.b.e(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                cr.b.b(viewFindViewById2);
            }
            if (viewFindViewById3 != null) {
                cr.b.e(viewFindViewById3);
            }
            if (viewFindViewById4 != null) {
                cr.b.e(viewFindViewById4);
                return;
            }
            return;
        }
        if (zContains2) {
            if (viewFindViewById != null) {
                cr.b.e(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                cr.b.e(viewFindViewById2);
            }
            if (viewFindViewById3 != null) {
                cr.b.b(viewFindViewById3);
            }
            if (viewFindViewById4 != null) {
                cr.b.b(viewFindViewById4);
                return;
            }
            return;
        }
        if (viewFindViewById != null) {
            cr.b.b(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            cr.b.b(viewFindViewById2);
        }
        if (viewFindViewById3 != null) {
            cr.b.b(viewFindViewById3);
        }
        if (viewFindViewById4 != null) {
            cr.b.b(viewFindViewById4);
        }
    }

    private final void J0() {
        LiveData liveDataH0;
        Subject subject;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        int unlockFrom = (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null || (subject = (Subject) liveDataH0.f()) == null) ? 0 : subject.getUnlockFrom();
        if (unlockFrom <= 0) {
            return;
        }
        this.isFreePreviewMode = true;
        String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(unlockFrom / 60), Integer.valueOf(unlockFrom % 60)}, 2));
        Intrinsics.g(str, "format(...)");
        this.viewBinding.H.setText(N(str));
        BLTextView tvWatchFreeCountdown = this.viewBinding.H;
        Intrinsics.g(tvWatchFreeCountdown, "tvWatchFreeCountdown");
        cr.b.e(tvWatchFreeCountdown);
    }

    private final void K(View view, Subject subject) {
        List<Integer> listL;
        if (subject == null || (listL = subject.getUnlockType()) == null) {
            listL = CollectionsKt.l();
        }
        View viewFindViewById = view != null ? view.findViewById(R$id.iv_lock_icon) : null;
        View viewFindViewById2 = view != null ? view.findViewById(R$id.btn_watch_ad_unlock) : null;
        View viewFindViewById3 = view != null ? view.findViewById(R$id.tv_buy_to_continue) : null;
        View viewFindViewById4 = view != null ? view.findViewById(R$id.container_series_info) : null;
        if (listL.contains(1)) {
            if (viewFindViewById != null) {
                cr.b.e(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                cr.b.b(viewFindViewById2);
            }
            if (viewFindViewById3 != null) {
                cr.b.e(viewFindViewById3);
            }
            if (viewFindViewById4 != null) {
                cr.b.e(viewFindViewById4);
                return;
            }
            return;
        }
        if (listL.contains(2)) {
            if (viewFindViewById != null) {
                cr.b.e(viewFindViewById);
            }
            if (viewFindViewById2 != null) {
                cr.b.e(viewFindViewById2);
            }
            if (viewFindViewById3 != null) {
                cr.b.b(viewFindViewById3);
            }
            if (viewFindViewById4 != null) {
                cr.b.b(viewFindViewById4);
                return;
            }
            return;
        }
        if (viewFindViewById != null) {
            cr.b.b(viewFindViewById);
        }
        if (viewFindViewById2 != null) {
            cr.b.b(viewFindViewById2);
        }
        if (viewFindViewById3 != null) {
            cr.b.b(viewFindViewById3);
        }
        if (viewFindViewById4 != null) {
            cr.b.b(viewFindViewById4);
        }
    }

    private final void K0(nr.e item) {
        FragmentActivity activity;
        List<Integer> unlockType;
        List<Integer> unlockType2;
        List<Integer> unlockType3;
        ShortTVItem shortTVItemD;
        Media video;
        Cover cover;
        Cover cover2;
        AppCompatTextView appCompatTextView;
        String currencySymbol;
        SkuInfo skuInfo;
        SkuInfo skuInfo2;
        String price;
        AppCompatTextView appCompatTextView2;
        LiveData liveDataH0;
        AppCompatTextView appCompatTextView3;
        View viewFindViewById;
        if (this.lockedView == null) {
            View viewInflate = this.viewBinding.L.inflate();
            this.lockedView = viewInflate;
            if (viewInflate != null && (viewFindViewById = viewInflate.findViewById(R$id.btn_buy_full_series)) != null) {
                viewFindViewById.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        ShortTvVideoItemView.L0(this.f51629a, view);
                    }
                });
            }
        }
        View view = this.lockedView;
        if (view != null && (appCompatTextView3 = (AppCompatTextView) view.findViewById(R$id.btn_watch_ad_unlock)) != null) {
            appCompatTextView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    ShortTvVideoItemView.M0(this.f51632a, view2);
                }
            });
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        String url = null;
        Subject subject = (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f();
        View view2 = this.lockedView;
        if (view2 != null && (appCompatTextView2 = (AppCompatTextView) view2.findViewById(R$id.tv_series_title)) != null) {
            appCompatTextView2.setText(subject != null ? subject.getTitle() : null);
        }
        View view3 = this.lockedView;
        if (view3 != null && (appCompatTextView = (AppCompatTextView) view3.findViewById(R$id.tv_series_price)) != null) {
            Float fT = (subject == null || (skuInfo2 = subject.getSkuInfo()) == null || (price = skuInfo2.getPrice()) == null) ? null : StringsKt.t(price);
            if (subject == null || (skuInfo = subject.getSkuInfo()) == null || (currencySymbol = skuInfo.getCurrencySymbol()) == null) {
                currencySymbol = "$";
            }
            if (fT != null) {
                String str = String.format("From " + currencySymbol + "%.2f", Arrays.copyOf(new Object[]{fT}, 1));
                Intrinsics.g(str, "format(...)");
                appCompatTextView.setText(str);
                cr.b.e(appCompatTextView);
            } else {
                cr.b.b(appCompatTextView);
            }
        }
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (activity = shortTvDetailListFragment.getActivity()) == null) {
            Context context = getContext();
            activity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        }
        String url2 = (subject == null || (cover2 = subject.getCover()) == null) ? null : cover2.getUrl();
        View view4 = this.lockedView;
        AppCompatImageView appCompatImageView = view4 != null ? (AppCompatImageView) view4.findViewById(R$id.iv_series_cover) : null;
        if (appCompatImageView != null && url2 != null && url2.length() != 0 && activity != null) {
            Glide.with(activity).load2(url2).centerCrop().into(appCompatImageView);
        }
        View view5 = this.lockedView;
        final AppCompatImageView appCompatImageView2 = view5 != null ? (AppCompatImageView) view5.findViewById(R$id.iv_blur_bg) : null;
        if (item != null && (shortTVItemD = item.d()) != null && (video = shortTVItemD.getVideo()) != null && (cover = video.getCover()) != null) {
            url = cover.getUrl();
        }
        String str2 = url;
        if (appCompatImageView2 != null && str2 != null && str2.length() != 0) {
            com.transsion.shorttv.base.image.blurhash.e.d(com.transsion.shorttv.base.image.blurhash.e.f50782a, str2, 0, 0, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return ShortTvVideoItemView.N0(appCompatImageView2, (BitmapDrawable) obj);
                }
            }, 6, null);
        }
        if (subject == null || subject.getMiniTvType() != 2) {
            J(this.lockedView, subject);
        } else {
            K(this.lockedView, subject);
        }
        View view6 = this.lockedView;
        if (view6 != null) {
            cr.b.e(view6);
        }
        this.isEpisodeLocked = true;
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        P0();
        if (subject != null && (unlockType3 = subject.getUnlockType()) != null && unlockType3.contains(1)) {
            Group groupPayLockHide = this.viewBinding.f70087i;
            Intrinsics.g(groupPayLockHide, "groupPayLockHide");
            cr.b.b(groupPayLockHide);
        }
        V();
        boolean z10 = subject != null && subject.getMiniTvType() == 2 && (unlockType2 = subject.getUnlockType()) != null && unlockType2.contains(1);
        if (subject != null && (unlockType = subject.getUnlockType()) != null && unlockType.contains(2) && !z10) {
            R0();
        }
        wr.b bVar = wr.b.f74733a;
        nr.e eVar = this.data;
        bVar.i(subject, eVar != null ? eVar.c() : 0);
    }

    public final void L() {
        if (this.isEpisodeLocked) {
            return;
        }
        AppCompatImageView ivDownload = this.viewBinding.f70090l;
        Intrinsics.g(ivDownload, "ivDownload");
        if (ivDownload.getVisibility() == 0) {
            this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
            this.autoHideRightMenuHandle.postDelayed(this.autoHideRightMenuRunnable, 3000L);
        }
    }

    public static final void L0(ShortTvVideoItemView shortTvVideoItemView, View view) {
        shortTvVideoItemView.S0();
        shortTvVideoItemView.O();
    }

    public static final void M(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.X();
    }

    public static final void M0(ShortTvVideoItemView shortTvVideoItemView, View view) {
        shortTvVideoItemView.S0();
        watchAdToUnlock$shortTvLib_release$default(shortTvVideoItemView, false, 1, null);
    }

    private final SpannableString N(String time) {
        String string = getContext().getString(R$string.short_tv_watch_free_countdown, time);
        Intrinsics.g(string, "getString(...)");
        SpannableString spannableString = new SpannableString(string);
        int iO0 = StringsKt.o0(string, time, 0, false, 6, null);
        if (iO0 < 0) {
            return spannableString;
        }
        int length = time.length() + iO0;
        int color = androidx.core.content.b.getColor(getContext(), R$color.short_tv_white_60);
        int color2 = androidx.core.content.b.getColor(getContext(), R$color.short_tv_white);
        if (iO0 > 0) {
            spannableString.setSpan(new ForegroundColorSpan(color), 0, iO0, 33);
        }
        spannableString.setSpan(new ForegroundColorSpan(color2), iO0, length, 33);
        if (length < string.length()) {
            spannableString.setSpan(new ForegroundColorSpan(color), length, string.length(), 33);
        }
        return spannableString;
    }

    public static final Unit N0(AppCompatImageView appCompatImageView, BitmapDrawable drawable) {
        Intrinsics.h(drawable, "drawable");
        appCompatImageView.setImageDrawable(drawable);
        return Unit.f64096a;
    }

    private final void O() {
        final ur.i iVarB0;
        final ShortTvDetailListFragment shortTvDetailListFragment;
        LiveData liveDataH0;
        wr.b bVar = wr.b.f74733a;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        Subject subject = (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f();
        nr.e eVar = this.data;
        bVar.h(subject, eVar != null ? eVar.c() : 0, "minitv_pay", "");
        S0();
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 == null || (iVarB0 = shortTvViewModel2.B0()) == null || (shortTvDetailListFragment = this.fragment) == null) {
            return;
        }
        if (iVarB0.a()) {
            Q(iVarB0.getUserId());
        } else {
            shortTvDetailListFragment.e1(iVarB0, new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTvVideoItemView.P(this.f51563a, shortTvDetailListFragment, iVarB0);
                }
            });
        }
    }

    private final void O0() {
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.p1();
        }
    }

    public static final Unit P(ShortTvVideoItemView shortTvVideoItemView, ShortTvDetailListFragment shortTvDetailListFragment, ur.i iVar) {
        String strE;
        androidx.p009lifecycle.b0 b0VarL0;
        nr.e eVar = shortTvVideoItemView.data;
        if (eVar == null || (strE = eVar.e()) == null) {
            return Unit.f64096a;
        }
        nr.e eVar2 = shortTvVideoItemView.data;
        if (eVar2 == null) {
            return Unit.f64096a;
        }
        int iC = eVar2.c();
        b bVar = shortTvVideoItemView.new b(iVar);
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null && (b0VarL0 = shortTvViewModel.l0()) != null) {
            b0VarL0.j(shortTvDetailListFragment.getViewLifecycleOwner(), bVar);
        }
        shortTvVideoItemView.setLoading(true);
        ShortTvViewModel shortTvViewModel2 = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel2 != null) {
            shortTvViewModel2.T(strE, iC);
        }
        return Unit.f64096a;
    }

    public final void P0() {
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.q1(true);
        }
    }

    public final void Q(String userId) {
        LiveData liveDataH0;
        Subject subject;
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        if (userId != null) {
            String str = userId.length() > 0 ? userId : null;
            if (str != null) {
                ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
                if (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null || (subject = (Subject) liveDataH0.f()) == null) {
                    return;
                }
                SkuInfo skuInfo = subject.getSkuInfo();
                if (skuInfo == null) {
                    wf.a.C0922a.l(wf.a.f74274a, this.TAG, "callPayMethod failed, no sku info.", false, 4, null);
                    return;
                }
                String skuId = skuInfo.getSkuId();
                if (skuId != null) {
                    String str2 = skuId.length() > 0 ? skuId : null;
                    if (str2 != null) {
                        String subjectId = subject.getSubjectId();
                        if (subjectId != null) {
                            String str3 = subjectId.length() > 0 ? subjectId : null;
                            if (str3 == null) {
                                return;
                            }
                            nr.e eVar = this.data;
                            com.transsion.shorttv.order.d.f51037a.d(getContext(), new CreatePaynicornOrderReqBean("MovieBox", str2, str, null, null, null, MapsKt.f(TuplesKt.a("subject_id", str3)), false, null, Sdk$SDKError.Reason.DEEPLINK_OPEN_FAILED_VALUE, null), new c(subject, eVar != null ? eVar.c() : 0, str));
                            return;
                        }
                        return;
                    }
                }
                wf.a.C0922a.l(wf.a.f74274a, this.TAG, "callPayMethod failed, skuId is empty.", false, 4, null);
                return;
            }
        }
        wf.a.C0922a.l(wf.a.f74274a, this.TAG, "callPayMethod failed, userId is empty.", false, 4, null);
    }

    private final void Q0() {
        FragmentActivity activity;
        Window window;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (activity = shortTvDetailListFragment.getActivity()) == null || (window = activity.getWindow()) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 30) {
            window.clearFlags(1024);
            window.getDecorView().setSystemUiVisibility(256);
        } else {
            WindowInsetsController insetsController = window.getInsetsController();
            if (insetsController != null) {
                insetsController.show(WindowInsets.Type.statusBars());
            }
        }
    }

    public static final void R(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.O0();
    }

    private final void R0() {
        a1 a1Var;
        S0();
        Integer num = this.watchAdUnlockSeconds;
        if (num == null || num.intValue() <= 0) {
            num = null;
        }
        updateUnlockCountdownText$shortTvLib_release(num);
        if (num == null || (a1Var = this.countdownController) == null) {
            return;
        }
        a1Var.a(num.intValue());
    }

    private final void S(xr.b item) {
        if (this.hasSubDownloading) {
            jr.b.f63248a.d(R$string.short_tv_subtitle_is_downloading);
            return;
        }
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.d(R$string.short_tv_no_network_toast);
            return;
        }
        com.transsion.shorttv.subtitle.manager.b.a aVar = com.transsion.shorttv.subtitle.manager.b.f51081a;
        aVar.b().b(this);
        item.a().setStatus(2);
        this.hasSubDownloading = true;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, ShortTvVideoItemView.class.getSimpleName() + " --> downloadSubtitle() --> 内置字幕列表，下载字幕，name = " + item.a().getName() + ", subtype = " + item.a().getType() + ",download subtitleName = " + item.a().getSubtitleName() + ", subResourceId = " + item.a().getResourceId() + "~", false, 4, null);
        item.a().setAutoDownload(false);
        this.subDownloadBean = item;
        aVar.b().d(item);
    }

    private final void S0() {
        a1 a1Var = this.countdownController;
        if (a1Var != null) {
            a1Var.b();
        }
        updateUnlockCountdownText$shortTvLib_release(null);
    }

    public static final void T(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.T0();
    }

    private final void T0() {
        LiveData liveDataH0;
        Subject subject;
        ShortTVFavInfo shortTVFavInfo;
        LiveData liveDataH1;
        Subject subject2;
        ShortTVFavInfo shortTVFavInfo2;
        String favoriteNum;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        this.viewBinding.f70104z.setText(hr.f.a((shortTvViewModel == null || (liveDataH1 = shortTvViewModel.H0()) == null || (subject2 = (Subject) liveDataH1.f()) == null || (shortTVFavInfo2 = subject2.getShortTVFavInfo()) == null || (favoriteNum = shortTVFavInfo2.getFavoriteNum()) == null) ? 0L : Long.parseLong(favoriteNum)));
        AppCompatTextView appCompatTextView = this.viewBinding.f70104z;
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        appCompatTextView.setSelected((shortTvViewModel2 == null || (liveDataH0 = shortTvViewModel2.H0()) == null || (subject = (Subject) liveDataH0.f()) == null || (shortTVFavInfo = subject.getShortTVFavInfo()) == null) ? false : shortTVFavInfo.getHasFavorite());
    }

    public final void U(nr.f result) {
        Integer numValueOf;
        if (result instanceof nr.i) {
            numValueOf = Integer.valueOf(R$string.short_tv_error_load_failed);
        } else if (result instanceof nr.h) {
            numValueOf = Integer.valueOf(R$string.short_tv_favorite_remove_toast);
        } else {
            numValueOf = result instanceof nr.g ? Integer.valueOf(R$string.short_tv_favorite_toast) : null;
        }
        if (numValueOf != null) {
            jr.b.f63248a.d(numValueOf.intValue());
        }
    }

    private final void U0(long remainingMs) {
        long jF = RangesKt.f(remainingMs / 1000, 0L);
        long j10 = 60;
        String str = String.format("%02d:%02d", Arrays.copyOf(new Object[]{Long.valueOf(jF / j10), Long.valueOf(jF % j10)}, 2));
        Intrinsics.g(str, "format(...)");
        this.viewBinding.H.setText(N(str));
    }

    private final void V() {
        this.isFreePreviewMode = false;
        BLTextView tvWatchFreeCountdown = this.viewBinding.H;
        Intrinsics.g(tvWatchFreeCountdown, "tvWatchFreeCountdown");
        cr.b.b(tvWatchFreeCountdown);
    }

    public final void V0(long progress) {
        int i10 = (int) progress;
        this.viewBinding.f70099u.setProgress(i10);
        this.viewBinding.f70097s.setProgress(i10);
    }

    private final void W() {
        S0();
        V();
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.videoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.videoAdHelper = null;
        this.isEpisodeLocked = false;
        View view = this.lockedView;
        if (view != null) {
            cr.b.b(view);
        }
        Group groupPayLockHide = this.viewBinding.f70087i;
        Intrinsics.g(groupPayLockHide, "groupPayLockHide");
        cr.b.e(groupPayLockHide);
        L();
    }

    private final void W0(long max) {
        int i10 = (int) max;
        this.viewBinding.f70099u.setMax(i10);
        this.viewBinding.f70097s.setMax(i10);
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "updateProgressMax: " + max + "  : " + this, false, 4, null);
    }

    private final void X() {
        if (this.isEpisodeLocked) {
            return;
        }
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.q1(false);
        }
    }

    public static final void X0(ShortTvVideoItemView shortTvVideoItemView) {
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.e1(false);
        }
    }

    private final void Y() {
        FragmentActivity activity;
        Window window;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (activity = shortTvDetailListFragment.getActivity()) == null || (window = activity.getWindow()) == null) {
            return;
        }
        if (Build.VERSION.SDK_INT < 30) {
            window.addFlags(1024);
            window.getDecorView().setSystemUiVisibility(1284);
            return;
        }
        WindowInsetsController insetsController = window.getInsetsController();
        if (insetsController != null) {
            insetsController.hide(WindowInsets.Type.statusBars());
            insetsController.setSystemBarsBehavior(2);
        }
    }

    private final void Y0(boolean isImmersive) {
        double d10;
        int iC = com.blankj.utilcode.util.y.c();
        if (isImmersive) {
            d10 = 0.27d;
        } else {
            d10 = this.hasAd ? 0.4d : 0.36d;
        }
        int i10 = (int) (((double) iC) * d10);
        FrameLayout flSubtitle = this.viewBinding.f70084f;
        Intrinsics.g(flSubtitle, "flSubtitle");
        ViewGroup.LayoutParams layoutParams = flSubtitle.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        bVar.f7373k = -1;
        bVar.f7375l = 0;
        ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = i10;
        bVar.f7393u = -1;
        bVar.f7395v = 0;
        flSubtitle.setLayoutParams(bVar);
    }

    private final void Z(Context context) {
        this.gestureDetector = new GestureDetector(context, new e());
        e0();
    }

    private final void Z0(final Integer w10, final Integer h10) {
        if (w10 == null || h10 == null || w10.intValue() == 0) {
            return;
        }
        if (!this.isOptimizeEnable) {
            FrameLayout flContainer = this.viewBinding.f70083e;
            Intrinsics.g(flContainer, "flContainer");
            ViewGroup.LayoutParams layoutParams = flContainer.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ((ViewGroup.MarginLayoutParams) bVar).width = com.blankj.utilcode.util.y.e();
            ((ViewGroup.MarginLayoutParams) bVar).height = (h10.intValue() * ((ViewGroup.MarginLayoutParams) bVar).width) / w10.intValue();
            flContainer.setLayoutParams(bVar);
            return;
        }
        if (getWidth() <= 0 || getHeight() <= 0) {
            post(new Runnable() {
                @Override
                public final void run() {
                    ShortTvVideoItemView.a1(this.f51587a, w10, h10);
                }
            });
            return;
        }
        int width = getWidth();
        int height = getHeight();
        this.hasAd = false;
        com.blankj.utilcode.util.a0.a(54.0f);
        int iA = com.blankj.utilcode.util.a0.a(14.0f);
        com.blankj.utilcode.util.a0.a(4.0f);
        if (h10.intValue() <= w10.intValue()) {
            FrameLayout flContainer2 = this.viewBinding.f70083e;
            Intrinsics.g(flContainer2, "flContainer");
            ViewGroup.LayoutParams layoutParams2 = flContainer2.getLayoutParams();
            if (layoutParams2 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
            ((ViewGroup.MarginLayoutParams) bVar2).width = width;
            ((ViewGroup.MarginLayoutParams) bVar2).height = (h10.intValue() * width) / w10.intValue();
            bVar2.H = 0.5f;
            flContainer2.setLayoutParams(bVar2);
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            if (fVar != null) {
                fVar.setScaleMode(ScaleMode.SCALE_ASPECT_FIT);
            }
            LinearLayout llCtr = this.viewBinding.f70094p;
            Intrinsics.g(llCtr, "llCtr");
            ViewGroup.LayoutParams layoutParams3 = llCtr.getLayoutParams();
            if (layoutParams3 == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams3;
            bVar3.f7375l = 0;
            bVar3.f7373k = -1;
            ((ViewGroup.MarginLayoutParams) bVar3).bottomMargin = iA;
            llCtr.setLayoutParams(bVar3);
            return;
        }
        int iA2 = com.blankj.utilcode.util.a0.a(50.0f);
        FrameLayout flContainer3 = this.viewBinding.f70083e;
        Intrinsics.g(flContainer3, "flContainer");
        ViewGroup.LayoutParams layoutParams4 = flContainer3.getLayoutParams();
        if (layoutParams4 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams4;
        ((ViewGroup.MarginLayoutParams) bVar4).width = width;
        ((ViewGroup.MarginLayoutParams) bVar4).height = height - iA2;
        bVar4.H = 0.0f;
        flContainer3.setLayoutParams(bVar4);
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.setScaleMode(ScaleMode.SCALE_ASPECT_FILL);
        }
        LinearLayout llCtr2 = this.viewBinding.f70094p;
        Intrinsics.g(llCtr2, "llCtr");
        ViewGroup.LayoutParams layoutParams5 = llCtr2.getLayoutParams();
        if (layoutParams5 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar5 = (ConstraintLayout.b) layoutParams5;
        bVar5.f7375l = 0;
        bVar5.f7373k = -1;
        ((ViewGroup.MarginLayoutParams) bVar5).bottomMargin = iA;
        llCtr2.setLayoutParams(bVar5);
    }

    private final void a0() {
        LinearLayout llDownloadGuideBubble = this.viewBinding.f70095q;
        Intrinsics.g(llDownloadGuideBubble, "llDownloadGuideBubble");
        this.downloadGuideBubbleController = new com.transsion.shorttv.ui.widget.c(llDownloadGuideBubble, new f());
    }

    public static final void a1(ShortTvVideoItemView shortTvVideoItemView, Integer num, Integer num2) {
        shortTvVideoItemView.Z0(num, num2);
    }

    /* JADX WARN: Code duplicated, block: B:32:0x00a2  */
    private final void b0() {
        List<DubsInfo> dubs;
        LiveData liveDataH0;
        Subject subject;
        FragmentActivity activity;
        nr.e eVar;
        LiveData liveDataH1;
        Subject subject2;
        List<DubsInfo> dubs2;
        List<DubsInfo> dubs3;
        LiveData liveDataZ;
        wf.a.C0922a c0922a = wf.a.f74274a;
        boolean z10 = false;
        wf.a.C0922a.f(c0922a, this.TAG, "initLanguage", false, 4, null);
        if (this.isOptimizeEnable) {
            SimpleSubtitleView simpleSubtitleView = this.viewBinding.K;
            simpleSubtitleView.setTextSize(2, 24.0f);
            simpleSubtitleView.setTypeface(Typeface.create("sans-serif-medium", 0));
            simpleSubtitleView.setShadowLayer(4.0f, 0.0f, 2.0f, Color.parseColor("#CC000000"));
            simpleSubtitleView.setGravity(17);
        } else {
            SimpleSubtitleView simpleSubtitleView2 = this.viewBinding.K;
            simpleSubtitleView2.setTextSize(2, 16.0f);
            simpleSubtitleView2.setTypeface(Typeface.DEFAULT);
            simpleSubtitleView2.setShadowLayer(0.0f, 0.0f, 0.0f, 0);
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        String ops = null;
        DubsInfoData dubsInfoData = (shortTvViewModel == null || (liveDataZ = shortTvViewModel.Z()) == null) ? null : (DubsInfoData) liveDataZ.f();
        boolean z11 = (dubsInfoData == null || (dubs3 = dubsInfoData.getDubs()) == null || dubs3.isEmpty()) ? false : true;
        if (this.isOptimizeEnable) {
            AppCompatTextView tvLanguage = this.viewBinding.A;
            Intrinsics.g(tvLanguage, "tvLanguage");
            cr.b.b(tvLanguage);
            if (!z11) {
                AppCompatTextView tvAudio = this.viewBinding.f70101w;
                Intrinsics.g(tvAudio, "tvAudio");
                cr.b.b(tvAudio);
            } else if (((dubsInfoData == null || (dubs2 = dubsInfoData.getDubs()) == null) ? 0 : dubs2.size()) > 1) {
                AppCompatTextView tvAudio2 = this.viewBinding.f70101w;
                Intrinsics.g(tvAudio2, "tvAudio");
                cr.b.e(tvAudio2);
            } else {
                AppCompatTextView tvAudio3 = this.viewBinding.f70101w;
                Intrinsics.g(tvAudio3, "tvAudio");
                cr.b.b(tvAudio3);
            }
        } else {
            AppCompatTextView tvLanguage2 = this.viewBinding.A;
            Intrinsics.g(tvLanguage2, "tvLanguage");
            cr.b.e(tvLanguage2);
            if (z11) {
                wf.a.C0922a.f(c0922a, this.TAG, "initLanguage--- hasDubs :" + (dubsInfoData != null ? dubsInfoData.getDubs() : null), false, 4, null);
                this.viewBinding.A.setSelected(true);
                if (dubsInfoData == null || (dubs = dubsInfoData.getDubs()) == null) {
                    return;
                }
                for (DubsInfo dubsInfo : dubs) {
                    String subjectId = dubsInfo.getSubjectId();
                    ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
                    if (Intrinsics.c(subjectId, (shortTvViewModel2 == null || (liveDataH0 = shortTvViewModel2.H0()) == null || (subject = (Subject) liveDataH0.f()) == null) ? null : subject.getSubjectId())) {
                        this.viewBinding.A.setText(dubsInfo.getLanName());
                    }
                }
                return;
            }
        }
        nr.e eVar2 = this.data;
        if (eVar2 != null && eVar2.c() == 0) {
            z10 = true;
        }
        if (z10) {
            wf.a.C0922a.f(c0922a, this.TAG, "预告片没有字幕，不处理", false, 4, null);
            return;
        }
        wf.a.C0922a.f(c0922a, this.TAG, ">>>>>>>--------------------initLanguage subtitle, position:" + this.position, false, 4, null);
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (activity = shortTvDetailListFragment.getActivity()) == null || activity.isDestroyed() || activity.isFinishing() || (eVar = this.data) == null) {
            return;
        }
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.onDestroy();
        }
        com.transsion.shorttv.subtitle.a.C0634a c0634a = com.transsion.shorttv.subtitle.a.f51066a;
        qr.k0 k0Var = this.viewBinding;
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null && (liveDataH1 = shortTvViewModel3.H0()) != null && (subject2 = (Subject) liveDataH1.f()) != null) {
            ops = subject2.getOps();
        }
        com.transsion.shorttv.subtitle.a aVarA = c0634a.a(activity, k0Var, shortTvViewModel3, eVar, ops);
        aVarA.e();
        aVarA.a(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.c0(this.f51553a, ((Boolean) obj).booleanValue());
            }
        });
        aVarA.b(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.d0(this.f51560a, (xr.b) obj);
            }
        });
        this.subtitleControl = aVarA;
    }

    private final void b1(nr.e item) {
        ShortTVItem shortTVItemD;
        Media video;
        String str;
        ShortTvDetailListFragment shortTvDetailListFragment;
        FragmentActivity activity;
        V0(0L);
        if (item != null) {
            int iC = item.c();
            if (iC == 0) {
                this.viewBinding.G.setText(getContext().getString(R$string.short_tv_trailer));
            } else {
                TnTextView tnTextView = this.viewBinding.G;
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                String str2 = String.format("EP%s", Arrays.copyOf(new Object[]{com.transsion.shorttv.utils.i.e(Integer.valueOf(iC))}, 1));
                Intrinsics.g(str2, "format(...)");
                tnTextView.setText(str2);
            }
        }
        if (item != null && (shortTVItemD = item.d()) != null && (video = shortTVItemD.getVideo()) != null) {
            FirstFrame firstFrame = video.getFirstFrame();
            if (firstFrame == null || (url = firstFrame.getUrl()) == null) {
                Cover cover = video.getCover();
                if (cover != null) {
                    String url = cover.getUrl();
                    str = url;
                } else {
                    str = null;
                }
            } else {
                str = url;
            }
            if (str != null) {
                er.b.a aVar = er.b.f59791a;
                int i10 = this.screenWidth;
                String strD = aVar.d(str, (120 & 2) != 0 ? 0 : i10, (120 & 4) != 0 ? 0 : i10, (120 & 8) != 0, (120 & 16) != 0 ? false : false, (120 & 32) == 0 ? false : false, (120 & 64) != 0 ? 25 : 0);
                if (Intrinsics.c(strD, this.viewBinding.f70089k.getTag()) || (shortTvDetailListFragment = this.fragment) == null || (activity = shortTvDetailListFragment.getActivity()) == null) {
                    return;
                }
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "into  " + this, false, 4, null);
                this.viewBinding.f70089k.setTag(strD);
                Glide.with(activity).load2(strD).addListener(new i()).into(this.viewBinding.f70089k);
                return;
            }
        }
        this.viewBinding.f70089k.setImageDrawable(null);
    }

    public static final Unit c0(ShortTvVideoItemView shortTvVideoItemView, boolean z10) {
        List<DubsInfo> dubs;
        LiveData liveDataZ;
        if (shortTvVideoItemView.isOptimizeEnable) {
            AppCompatTextView tvSubtitles = shortTvVideoItemView.viewBinding.F;
            Intrinsics.g(tvSubtitles, "tvSubtitles");
            tvSubtitles.setVisibility(z10 ? 0 : 8);
        } else {
            ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
            DubsInfoData dubsInfoData = (shortTvViewModel == null || (liveDataZ = shortTvViewModel.Z()) == null) ? null : (DubsInfoData) liveDataZ.f();
            if (dubsInfoData != null && (dubs = dubsInfoData.getDubs()) != null && !dubs.isEmpty()) {
                return Unit.f64096a;
            }
            shortTvVideoItemView.viewBinding.A.setSelected(z10);
            if (!z10) {
                shortTvVideoItemView.viewBinding.A.setText(Utils.a().getString(R$string.short_tv_language));
            }
        }
        return Unit.f64096a;
    }

    public static final Unit c1(final ShortTvVideoItemView shortTvVideoItemView, FragmentActivity fragmentActivity, final Subject subject, final int i10, final AppCompatTextView appCompatTextView, final nr.e eVar, boolean z10, String errorCode, String errorMessage) {
        Intrinsics.h(errorCode, "errorCode");
        Intrinsics.h(errorMessage, "errorMessage");
        if (z10) {
            STCommonVideoAdHelper sTCommonVideoAdHelper = shortTvVideoItemView.videoAdHelper;
            if (sTCommonVideoAdHelper != null) {
                sTCommonVideoAdHelper.u(fragmentActivity, new Function0() {
                    @Override
                    public final Object invoke() {
                        return ShortTvVideoItemView.d1(this.f51575a, eVar);
                    }
                }, new Function1() {
                    @Override
                    public final Object invoke(Object obj) {
                        return ShortTvVideoItemView.e1(this.f51578a, subject, i10, eVar, appCompatTextView, ((Boolean) obj).booleanValue());
                    }
                });
            }
        } else {
            wr.b.f74733a.l(subject, i10, "fail", errorMessage, errorCode, MediaItem.MUSIC_FLOAT_STATE_PLAY);
            jr.b.f63248a.d(R$string.short_tv_ad_unlocked_get_ad_failed);
            shortTvVideoItemView.videoAdHelper = null;
            if (appCompatTextView != null) {
                appCompatTextView.setEnabled(true);
            }
        }
        return Unit.f64096a;
    }

    public static final Unit d0(ShortTvVideoItemView shortTvVideoItemView, xr.b bVar) {
        SubtitleDownloadTable subtitleDownloadTableA;
        if (!shortTvVideoItemView.isOptimizeEnable) {
            shortTvVideoItemView.viewBinding.A.setText((bVar == null || (subtitleDownloadTableA = bVar.a()) == null) ? null : subtitleDownloadTableA.getLanName());
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:48:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:49:0x00ae  */
    public static final Unit d1(ShortTvVideoItemView shortTvVideoItemView, nr.e eVar) {
        LiveData liveDataH0;
        Subject subject;
        ShortTvViewModel shortTvViewModel;
        ShortTVItem shortTVItemD;
        Object objM453constructorimpl;
        Integer num;
        int iIntValue;
        Integer numValueOf;
        ShortTvViewModel shortTvViewModel2 = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel2 == null || (liveDataH0 = shortTvViewModel2.H0()) == null || (subject = (Subject) liveDataH0.f()) == null) {
            return Unit.f64096a;
        }
        if (eVar != null && (shortTVItemD = eVar.d()) != null) {
            yq.a aVar = yq.a.f76390a;
            try {
                Result.Companion companion = Result.INSTANCE;
                JsonObject jsonObjectB = com.transsion.ad.scene.d.f41155a.b("ShortTvPlayerUnlockPlayScene");
                JsonElement jsonElement = jsonObjectB != null ? jsonObjectB.get("unlockEpCount") : null;
                KClass kClassB = Reflection.b(Integer.class);
                if (Intrinsics.c(kClassB, Reflection.b(String.class))) {
                    if (jsonElement != null) {
                        jsonElement.getAsString();
                    }
                } else if (Intrinsics.c(kClassB, Reflection.b(Integer.TYPE))) {
                    numValueOf = jsonElement != null ? Integer.valueOf(jsonElement.getAsInt()) : null;
                    if (!(numValueOf instanceof Integer)) {
                    }
                    objM453constructorimpl = Result.m453constructorimpl(numValueOf);
                    num = (Integer) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
                    if (num != null) {
                        iIntValue = num.intValue();
                    } else {
                        iIntValue = 1;
                    }
                    dr.b.f59061a.g(subject, shortTVItemD, iIntValue);
                } else if (Intrinsics.c(kClassB, Reflection.b(Long.TYPE))) {
                    if (jsonElement != null) {
                        jsonElement.getAsLong();
                    }
                } else if (Intrinsics.c(kClassB, Reflection.b(Boolean.TYPE)) && jsonElement != null) {
                    jsonElement.getAsBoolean();
                }
                numValueOf = null;
                objM453constructorimpl = Result.m453constructorimpl(numValueOf);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            num = (Integer) (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null ? objM453constructorimpl : null);
            if (num != null) {
                iIntValue = num.intValue();
            } else {
                iIntValue = 1;
            }
            dr.b.f59061a.g(subject, shortTVItemD, iIntValue);
        }
        String subjectId = subject.getSubjectId();
        if (subjectId != null && (shortTvViewModel = shortTvVideoItemView.mShortTvViewModel) != null) {
            shortTvViewModel.a1(subjectId);
        }
        return Unit.f64096a;
    }

    private final void e0() {
        new com.transsion.shorttv.base.widget.e(getContext(), this.viewBinding.J).r(new g());
        this.viewBinding.f70099u.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ShortTvVideoItemView.f0(view, motionEvent);
            }
        });
    }

    public static final Unit e1(ShortTvVideoItemView shortTvVideoItemView, Subject subject, int i10, nr.e eVar, AppCompatTextView appCompatTextView, boolean z10) {
        shortTvVideoItemView.videoAdHelper = null;
        if (z10) {
            wr.b.f74733a.l(subject, i10, NativeComponentConstants.KEY_COMPONENT_RESULT_SUCCESS, "", "0", MediaItem.MUSIC_FLOAT_STATE_PLAY);
            shortTvVideoItemView.updateShortTvInfo(shortTvVideoItemView.orPlayer, shortTvVideoItemView.orPlayerView, eVar);
            if (eVar != null) {
                shortTvVideoItemView.o0(eVar);
            }
            jr.b.f63248a.d(R$string.short_tv_locked_episode_unlocked);
        } else {
            wr.b.f74733a.l(subject, i10, "cancel", "", "0", MediaItem.MUSIC_FLOAT_STATE_PLAY);
        }
        if (appCompatTextView != null) {
            appCompatTextView.setEnabled(true);
        }
        return Unit.f64096a;
    }

    public static final boolean f0(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    private final void g0() {
        nr.e eVar;
        ShortTVItem shortTVItemD;
        Media video;
        androidx.p009lifecycle.b0 b0VarA0;
        List list;
        Object next;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        List<Video> addressList = null;
        if (shortTvViewModel == null || (b0VarA0 = shortTvViewModel.a0()) == null || (list = (List) b0VarA0.f()) == null) {
            eVar = this.data;
            if (eVar != null) {
                shortTVItemD = eVar.d();
            } else {
                shortTVItemD = null;
            }
        } else {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                ShortTVItem shortTVItem = (ShortTVItem) next;
                nr.e eVar2 = this.data;
                if (eVar2 != null && shortTVItem.getEp() == eVar2.c()) {
                    break;
                }
            }
            shortTVItemD = (ShortTVItem) next;
            if (shortTVItemD == null) {
                eVar = this.data;
                if (eVar != null) {
                    shortTVItemD = eVar.d();
                } else {
                    shortTVItemD = null;
                }
            }
        }
        if (shortTVItemD != null && (video = shortTVItemD.getVideo()) != null) {
            addressList = video.getAddressList();
        }
        AppCompatTextView tvResolution = this.viewBinding.D;
        Intrinsics.g(tvResolution, "tvResolution");
        cr.b.e(tvResolution);
        List<Video> list2 = addressList;
        if (list2 == null || list2.isEmpty()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "initResolution, 分辨率列表为空", false, 4, null);
            CharSequence text = this.viewBinding.D.getText();
            if (text == null || text.length() == 0) {
                int i10 = com.transsion.shorttv.utils.h.f51644a.d().getInt("k_short_tv_resolution", 0);
                if (i10 <= 0) {
                    i10 = 720;
                }
                this.viewBinding.D.setText(i10 + "P");
                return;
            }
            return;
        }
        if (addressList.size() == 1) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "initResolution, size 1", false, 4, null);
            this.viewBinding.D.setText(((Video) CollectionsKt.i0(addressList)).getResolution() + "P");
            return;
        }
        int i11 = com.transsion.shorttv.utils.h.f51644a.d().getInt("k_short_tv_resolution", 0);
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "initResolution, --save resolution:" + i11, false, 4, null);
        Video videoD = com.transsion.shorttv.utils.i.d(addressList, i11);
        if (videoD != null) {
            wf.a.C0922a.f(c0922a, this.TAG, "initResolution, --target resolution:" + i11, false, 4, null);
            this.viewBinding.D.setText(videoD.getResolution() + "P");
        }
    }

    private final void h0() {
        float f10 = com.transsion.shorttv.utils.h.f51644a.d().getFloat("k_short_tv_speed", 1.0f);
        int i10 = (int) f10;
        String strValueOf = ((float) i10) == f10 ? String.valueOf(i10) : String.valueOf(f10);
        this.viewBinding.E.setText(strValueOf + "x");
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.setSpeed(f10);
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "initVideoSpeed, speed:" + f10, false, 4, null);
    }

    private final boolean i0() {
        return !j0();
    }

    private final boolean j0() {
        LiveData liveDataH0;
        dr.b bVar = dr.b.f59061a;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        Subject subject = (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f();
        nr.e eVar = this.data;
        return bVar.c(subject, eVar != null ? eVar.d() : null);
    }

    private final void k0(nr.e item) {
        final ShortTvPlayerOverlayAdContainer adOverlayContainerView = this.viewBinding.f70080b;
        Intrinsics.g(adOverlayContainerView, "adOverlayContainerView");
        adOverlayContainerView.setVisibility(8);
        if (j0()) {
            yq.a.e(yq.a.f76390a, "overlay", "loadAd, this video is locked, don't load", null, 4, null);
            return;
        }
        final com.transsion.shorttv.ad.playeroverlayad.a aVarC = ShortTvPlayerOverlayAdManager.f50707a.c(item.a());
        if (aVarC == null) {
            return;
        }
        if (!aVarC.d()) {
            yq.a.c(yq.a.f76390a, "overlay", "loadAd, this video no need to load, key=" + item.a(), null, 4, null);
            return;
        }
        aVarC.i(true);
        yq.a aVar = yq.a.f76390a;
        yq.a.g(aVar, "overlay", "loadAd, adLoadState=" + aVarC.c(), null, 4, null);
        switch (a.f51530b[aVarC.c().ordinal()]) {
            case 1:
                aVarC.g(AdLoadState.LOADING);
                com.transsion.shorttv.ad.playeroverlayad.e eVarB = aVarC.b();
                if (eVarB != null) {
                    eVarB.i(new Function1() {
                        @Override
                        public final Object invoke(Object obj) {
                            return ShortTvVideoItemView.l0(aVarC, this, adOverlayContainerView, ((Boolean) obj).booleanValue());
                        }
                    });
                    return;
                }
                return;
            case 2:
            case 3:
            case 4:
            case 5:
                return;
            case 6:
                if (j0()) {
                    yq.a.e(aVar, "overlay", "show cached ad, video is locked, skip show", null, 4, null);
                    return;
                }
                com.transsion.shorttv.ad.playeroverlayad.e eVarB2 = aVarC.b();
                if (eVarB2 != null) {
                    eVarB2.k(adOverlayContainerView, new Function0() {
                        @Override
                        public final Object invoke() {
                            return ShortTvVideoItemView.n0(aVarC);
                        }
                    });
                    return;
                }
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    public static final Unit l0(final com.transsion.shorttv.ad.playeroverlayad.a aVar, ShortTvVideoItemView shortTvVideoItemView, ShortTvPlayerOverlayAdContainer shortTvPlayerOverlayAdContainer, boolean z10) {
        if (z10) {
            aVar.g(AdLoadState.SUCCEED);
            if (shortTvVideoItemView.j0()) {
                yq.a.e(yq.a.f76390a, "overlay", "loadAd callback, video is now locked, skip show", null, 4, null);
                return Unit.f64096a;
            }
            com.transsion.shorttv.ad.playeroverlayad.e eVarB = aVar.b();
            if (eVarB != null) {
                eVarB.k(shortTvPlayerOverlayAdContainer, new Function0() {
                    @Override
                    public final Object invoke() {
                        return ShortTvVideoItemView.m0(aVar);
                    }
                });
            }
        } else {
            aVar.a();
            aVar.g(AdLoadState.FAILED);
        }
        return Unit.f64096a;
    }

    public static final Unit m0(com.transsion.shorttv.ad.playeroverlayad.a aVar) {
        aVar.a();
        return Unit.f64096a;
    }

    public static final Unit n0(com.transsion.shorttv.ad.playeroverlayad.a aVar) {
        aVar.a();
        return Unit.f64096a;
    }

    private final void o0(nr.e item) {
        k0(item);
    }

    public static final void p0(ShortTvVideoItemView shortTvVideoItemView, boolean z10) {
        ShortTvViewModel shortTvViewModel;
        LiveData liveDataH0;
        Subject subject;
        List<Integer> unlockType;
        if (shortTvVideoItemView.isOptimizeEnable) {
            shortTvVideoItemView.Y0(!z10);
        }
        if (!z10) {
            cr.b.b(shortTvVideoItemView.groupContent);
            Group groupPayLockHide = shortTvVideoItemView.viewBinding.f70087i;
            Intrinsics.g(groupPayLockHide, "groupPayLockHide");
            cr.b.b(groupPayLockHide);
            LinearLayout llCtr = shortTvVideoItemView.viewBinding.f70094p;
            Intrinsics.g(llCtr, "llCtr");
            cr.b.b(llCtr);
            com.transsion.shorttv.ui.widget.c cVar = shortTvVideoItemView.downloadGuideBubbleController;
            if (cVar != null) {
                cVar.f();
            }
            if (shortTvVideoItemView.isOptimizeEnable) {
                ProgressBar progressBar = shortTvVideoItemView.viewBinding.f70097s;
                Intrinsics.g(progressBar, "progressBar");
                cr.b.b(progressBar);
            }
            shortTvVideoItemView.Y();
            return;
        }
        cr.b.e(shortTvVideoItemView.groupContent);
        Group groupPayLockHide2 = shortTvVideoItemView.viewBinding.f70087i;
        Intrinsics.g(groupPayLockHide2, "groupPayLockHide");
        cr.b.e(groupPayLockHide2);
        LinearLayout llCtr2 = shortTvVideoItemView.viewBinding.f70094p;
        Intrinsics.g(llCtr2, "llCtr");
        cr.b.e(llCtr2);
        if (shortTvVideoItemView.isEpisodeLocked && (shortTvViewModel = shortTvVideoItemView.mShortTvViewModel) != null && (liveDataH0 = shortTvViewModel.H0()) != null && (subject = (Subject) liveDataH0.f()) != null && (unlockType = subject.getUnlockType()) != null && unlockType.contains(1)) {
            Group groupPayLockHide3 = shortTvVideoItemView.viewBinding.f70087i;
            Intrinsics.g(groupPayLockHide3, "groupPayLockHide");
            cr.b.b(groupPayLockHide3);
        }
        if (shortTvVideoItemView.isOptimizeEnable) {
            ProgressBar progressBar2 = shortTvVideoItemView.viewBinding.f70097s;
            Intrinsics.g(progressBar2, "progressBar");
            cr.b.e(progressBar2);
        }
        shortTvVideoItemView.Q0();
    }

    private final void q0() {
        List<DubsInfo> dubs;
        LiveData liveDataZ;
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        DubsInfoData dubsInfoData = (shortTvViewModel == null || (liveDataZ = shortTvViewModel.Z()) == null) ? null : (DubsInfoData) liveDataZ.f();
        if (dubsInfoData == null || (dubs = dubsInfoData.getDubs()) == null || dubs.isEmpty()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_error_content));
            return;
        }
        ShortTvLanguageSelectDialog shortTvLanguageSelectDialog = new ShortTvLanguageSelectDialog();
        shortTvLanguageSelectDialog.D0(1);
        shortTvLanguageSelectDialog.C0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.r0(this.f51571a, (DubsInfo) obj);
            }
        });
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvLanguageSelectDialog.j0(shortTvDetailListFragment, "ShortTvLanguageSelectDialog_Audio");
        }
    }

    public static final Unit r0(ShortTvVideoItemView shortTvVideoItemView, DubsInfo item) {
        Intrinsics.h(item, "item");
        shortTvVideoItemView.s0(item);
        return Unit.f64096a;
    }

    private final void s0(DubsInfo info) {
        androidx.p009lifecycle.b0 b0VarX;
        ShortTvViewModel shortTvViewModel;
        ShortTVItem shortTVItem;
        Video video;
        String url;
        ShortTVItem shortTVItemD;
        Map mapB;
        ShortTVItem shortTVItemD2;
        androidx.p009lifecycle.b0 b0VarX2;
        ConcurrentHashMap concurrentHashMapU0;
        androidx.p009lifecycle.b0 b0Var;
        List list;
        Object next;
        ShortTVItem shortTVItem2;
        nr.e eVar;
        ConcurrentHashMap concurrentHashMapU1;
        LiveData liveDataH0;
        Subject subject;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "onAudioTrackSelect, lanName:" + info.getLanName() + ", subjectId:" + info.getSubjectId(), false, 4, null);
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        String subjectId = (shortTvViewModel2 == null || (liveDataH0 = shortTvViewModel2.H0()) == null || (subject = (Subject) liveDataH0.f()) == null) ? null : subject.getSubjectId();
        if (subjectId != null && info.getSubjectId() != null) {
            com.transsion.shorttv.utils.h.f51644a.d().putString("k_audio_subject_" + subjectId, info.getSubjectId());
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null) {
            shortTvViewModel3.f1(info.getSubjectId());
        }
        ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
        if ((shortTvViewModel4 == null || (concurrentHashMapU1 = shortTvViewModel4.u0()) == null) ? false : concurrentHashMapU1.containsKey(info.getSubjectId())) {
            ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
            if (shortTvViewModel5 == null || (concurrentHashMapU0 = shortTvViewModel5.u0()) == null || (b0Var = (androidx.p009lifecycle.b0) concurrentHashMapU0.get(info.getSubjectId())) == null || (list = (List) b0Var.f()) == null) {
                shortTVItem = null;
            } else {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it.next();
                        shortTVItem2 = (ShortTVItem) next;
                        eVar = this.data;
                    }
                } while (!(eVar != null && shortTVItem2.getEp() == eVar.c()));
                shortTVItem = (ShortTVItem) next;
            }
            if (shortTVItem == null) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onAudioTrackSelect, 有该作品信息，没有该集信息，需要请求", false, 4, null);
                String subjectId2 = info.getSubjectId();
                if (subjectId2 != null) {
                    ShortTvViewModel shortTvViewModel6 = this.mShortTvViewModel;
                    if (shortTvViewModel6 != null && (b0VarX2 = shortTvViewModel6.X()) != null) {
                        b0VarX2.q(Boolean.TRUE);
                    }
                    ShortTvViewModel shortTvViewModel7 = this.mShortTvViewModel;
                    if (shortTvViewModel7 != null) {
                        nr.e eVar2 = this.data;
                        shortTvViewModel7.v0(subjectId2, null, eVar2 != null ? eVar2.c() : 1, false);
                    }
                    ShortTvViewModel shortTvViewModel8 = this.mShortTvViewModel;
                    if (shortTvViewModel8 != null) {
                        nr.e eVar3 = this.data;
                        shortTvViewModel8.w0(subjectId2, eVar3 != null ? eVar3.c() : 1);
                    }
                }
            } else {
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                wf.a.C0922a.f(c0922a2, this.TAG, "onAudioTrackSelect, 有该作品信息，直接播放", false, 4, null);
                Media video2 = shortTVItem.getVideo();
                if (video2 != null && (video = video2.getVideo()) != null && (url = video.getUrl()) != null) {
                    nr.e eVar4 = this.data;
                    gn.e eVar5 = new gn.e(url, url, (eVar4 == null || (shortTVItemD2 = eVar4.d()) == null) ? 0 : shortTVItemD2.getEp(), null, null, 24, null);
                    com.transsion.player.orplayer.f fVar = this.orPlayer;
                    pn.f fVar2 = fVar instanceof pn.f ? (pn.f) fVar : null;
                    boolean zContainsKey = (fVar2 == null || (mapB = fVar2.b()) == null) ? false : mapB.containsKey(eVar5.e());
                    String str = this.TAG;
                    nr.e eVar6 = this.data;
                    wf.a.C0922a.f(c0922a2, str, "onAudioTrackSelect, url:" + url + ",EP:" + ((eVar6 == null || (shortTVItemD = eVar6.d()) == null) ? null : Integer.valueOf(shortTVItemD.getEp())) + ",inList:" + zContainsKey, false, 4, null);
                    if (!zContainsKey) {
                        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
                        if (fVar3 != null) {
                            fVar3.addDataSource(eVar5);
                        }
                        com.transsion.player.orplayer.f fVar4 = this.orPlayer;
                        if (fVar4 != null) {
                            fVar4.prepare();
                        }
                    }
                    ShortTvViewModel shortTvViewModel9 = this.mShortTvViewModel;
                    if (shortTvViewModel9 != null) {
                        shortTvViewModel9.e1(true);
                    }
                    com.transsion.player.orplayer.f fVar5 = this.orPlayer;
                    if (fVar5 != null) {
                        String strE = eVar5.e();
                        if (strE == null) {
                            strE = "";
                        }
                        fVar5.seekTo(strE, 0L);
                    }
                    post(new Runnable() {
                        @Override
                        public final void run() {
                            ShortTvVideoItemView.t0(this.f51596a);
                        }
                    });
                }
                onAudioTrackChange();
            }
        } else {
            wf.a.C0922a.f(c0922a, this.TAG, "onAudioTrackSelect, 没有该作品信息，需要重新请求", false, 4, null);
            String subjectId3 = info.getSubjectId();
            if (subjectId3 != null) {
                ShortTvViewModel shortTvViewModel10 = this.mShortTvViewModel;
                if (shortTvViewModel10 != null && (b0VarX = shortTvViewModel10.X()) != null) {
                    b0VarX.q(Boolean.TRUE);
                }
                ShortTvViewModel shortTvViewModel11 = this.mShortTvViewModel;
                if (shortTvViewModel11 != null) {
                    nr.e eVar7 = this.data;
                    shortTvViewModel11.v0(subjectId3, null, eVar7 != null ? eVar7.c() : 1, false);
                }
                ShortTvViewModel shortTvViewModel12 = this.mShortTvViewModel;
                if (shortTvViewModel12 != null) {
                    nr.e eVar8 = this.data;
                    shortTvViewModel12.w0(subjectId3, eVar8 != null ? eVar8.c() : 1);
                }
            }
        }
        String subjectId4 = info.getSubjectId();
        if (subjectId4 == null || (shortTvViewModel = this.mShortTvViewModel) == null) {
            return;
        }
        nr.e eVar9 = this.data;
        int iC = eVar9 != null ? eVar9.c() : 0;
        com.transsion.player.orplayer.f fVar6 = this.orPlayer;
        shortTvViewModel.U0(subjectId4, iC, fVar6 instanceof pn.f ? (pn.f) fVar6 : null);
    }

    public final void setLoading(boolean show) {
        this.isLoading = show;
        if (show) {
            ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
            Intrinsics.f(shortTvDetailListFragment, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment");
            shortTvDetailListFragment.startLoading();
        } else {
            ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
            Intrinsics.f(shortTvDetailListFragment2, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment");
            shortTvDetailListFragment2.hideLoading();
        }
    }

    public static final void t0(ShortTvVideoItemView shortTvVideoItemView) {
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.e1(false);
        }
    }

    public static final void u0(ShortTvVideoItemView shortTvVideoItemView, SubtitleDownloadTable subtitleDownloadTable) {
        SubtitleDownloadTable subtitleDownloadTableA;
        xr.b bVar = shortTvVideoItemView.subDownloadBean;
        if (bVar != null) {
            if (Intrinsics.c((bVar == null || (subtitleDownloadTableA = bVar.a()) == null) ? null : subtitleDownloadTableA.getLan(), subtitleDownloadTable.getLan())) {
                wf.a.C0922a.f(wf.a.f74274a, shortTvVideoItemView.TAG, "内置字幕点击下载成功，name = " + subtitleDownloadTable.getName() + ", videoResourceId = " + subtitleDownloadTable.getResourceId() + ", download subtitleName = " + subtitleDownloadTable.getName() + ", lan = " + subtitleDownloadTable.getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~", false, 4, null);
                xr.b bVar2 = shortTvVideoItemView.subDownloadBean;
                Intrinsics.e(bVar2);
                shortTvVideoItemView.G0(bVar2);
            }
        }
    }

    public final void v0() {
        if (this.isEpisodeLocked) {
            return;
        }
        if (this.isLoading) {
            AppCompatImageView ivDownload = this.viewBinding.f70090l;
            Intrinsics.g(ivDownload, "ivDownload");
            if (ivDownload.getVisibility() == 0) {
                X();
                return;
            } else {
                P0();
                return;
            }
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar == null || !fVar.isPlaying()) {
            AppCompatImageView ivDownload2 = this.viewBinding.f70090l;
            Intrinsics.g(ivDownload2, "ivDownload");
            if (ivDownload2.getVisibility() != 0) {
                P0();
            }
            wr.c cVar = this.dotLayer;
            if (cVar != null) {
                cVar.c();
            }
            H0();
            this.isClickPause = false;
            ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
            if (shortTvDetailListFragment != null) {
                shortTvDetailListFragment.m1(false);
                return;
            }
            return;
        }
        AppCompatImageView ivDownload3 = this.viewBinding.f70090l;
        Intrinsics.g(ivDownload3, "ivDownload");
        if (ivDownload3.getVisibility() != 0) {
            P0();
            L();
            return;
        }
        this.isClickPause = true;
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.m1(true);
        }
        wr.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.b();
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.pause();
        }
        P0();
    }

    public static final void w0(ShortTvVideoItemView shortTvVideoItemView, SubtitleDownloadTable subtitleDownloadTable) {
        xr.b bVar = shortTvVideoItemView.subDownloadBean;
        if (bVar != null) {
            bVar.e(subtitleDownloadTable);
        }
        wf.a.C0922a.f(wf.a.f74274a, shortTvVideoItemView.TAG, ShortTvVideoItemView.class.getSimpleName() + " --> onFail() --> 内置字幕点击下载失败TnT，name = " + subtitleDownloadTable.getName() + ", videoResourceId = " + subtitleDownloadTable.getResourceId() + ", download subtitleName = " + subtitleDownloadTable.getName() + ", lan = " + subtitleDownloadTable.getLan() + "， status:" + subtitleDownloadTable.getStatus() + "~", false, 4, null);
    }

    public static void watchAdToUnlock$shortTvLib_release$default(ShortTvVideoItemView shortTvVideoItemView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = false;
        }
        shortTvVideoItemView.watchAdToUnlock$shortTvLib_release(z10);
    }

    private final void x0() {
        List<DubsInfo> dubs;
        List list;
        androidx.p009lifecycle.b0 b0VarD;
        LiveData liveDataZ;
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        List list2 = null;
        DubsInfoData dubsInfoData = (shortTvViewModel == null || (liveDataZ = shortTvViewModel.Z()) == null) ? null : (DubsInfoData) liveDataZ.f();
        as.a aVar = this.mShortTvSubViewModel;
        if (aVar != null && (b0VarD = aVar.d()) != null) {
            list2 = (List) b0VarD.f();
        }
        if (dubsInfoData == null || (((dubs = dubsInfoData.getDubs()) == null || dubs.isEmpty()) && ((list = list2) == null || list.isEmpty()))) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_error_content));
            return;
        }
        ShortTvLanguageSelectDialog shortTvLanguageSelectDialog = new ShortTvLanguageSelectDialog();
        shortTvLanguageSelectDialog.C0(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.y0(this.f51569a, (DubsInfo) obj);
            }
        });
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvLanguageSelectDialog.j0(shortTvDetailListFragment, "ShortTvLanguageSelectDialog");
        }
    }

    public static final Unit y0(ShortTvVideoItemView shortTvVideoItemView, DubsInfo item) {
        Intrinsics.h(item, "item");
        if (item.getIsSubtitle()) {
            xr.b subInfo = item.getSubInfo();
            if (subInfo != null) {
                shortTvVideoItemView.viewBinding.A.setText(subInfo.a().getLanName());
                shortTvVideoItemView.G0(subInfo);
            }
        } else {
            shortTvVideoItemView.viewBinding.A.setText(item.getLanName());
            shortTvVideoItemView.s0(item);
        }
        return Unit.f64096a;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x003a  */
    /* JADX WARN: Code duplicated, block: B:21:0x003e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0043  */
    private final void z0() {
        nr.e eVar;
        final ShortTVItem shortTVItemD;
        Media video;
        List<Video> addressList;
        Integer numV;
        Float fT;
        androidx.p009lifecycle.b0 b0VarA0;
        List list;
        Object next;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel == null || (b0VarA0 = shortTvViewModel.a0()) == null || (list = (List) b0VarA0.f()) == null) {
            eVar = this.data;
            if (eVar != null) {
                shortTVItemD = eVar.d();
            } else {
                shortTVItemD = null;
            }
        } else {
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                ShortTVItem shortTVItem = (ShortTVItem) next;
                nr.e eVar2 = this.data;
                if (eVar2 != null && shortTVItem.getEp() == eVar2.c()) {
                    break;
                }
            }
            shortTVItemD = (ShortTVItem) next;
            if (shortTVItemD == null) {
                eVar = this.data;
                if (eVar != null) {
                    shortTVItemD = eVar.d();
                } else {
                    shortTVItemD = null;
                }
            }
        }
        if (shortTVItemD == null || (video = shortTVItemD.getVideo()) == null || (addressList = video.getAddressList()) == null) {
            return;
        }
        int i10 = com.transsion.shorttv.utils.h.f51644a.d().getInt("k_short_tv_resolution", 0);
        Video videoD = com.transsion.shorttv.utils.i.d(addressList, i10);
        ArrayList arrayList = new ArrayList();
        final Ref.IntRef intRef = new Ref.IntRef();
        intRef.element = i10;
        for (Video video2 : addressList) {
            String resolution = video2.getResolution();
            float fFloatValue = (resolution == null || (fT = StringsKt.t(resolution)) == null) ? 0.0f : fT.floatValue();
            ShortTvVideoCtrBean shortTvVideoCtrBean = new ShortTvVideoCtrBean(fFloatValue, video2.getResolution() + "P");
            if (Intrinsics.c(video2.getResolution(), videoD != null ? videoD.getResolution() : null)) {
                String resolution2 = video2.getResolution();
                intRef.element = (resolution2 == null || (numV = StringsKt.v(resolution2)) == null) ? 0 : numV.intValue();
            }
            shortTvVideoCtrBean.setSelect(Intrinsics.c(video2.getResolution(), videoD != null ? videoD.getResolution() : null));
            arrayList.add(shortTvVideoCtrBean);
        }
        P0();
        AppCompatTextView tvResolution = this.viewBinding.D;
        Intrinsics.g(tvResolution, "tvResolution");
        com.transsion.shorttv.utils.l.c(tvResolution, arrayList, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvVideoItemView.A0(this.f51592a, intRef, shortTVItemD, (ShortTvVideoCtrBean) obj);
            }
        });
    }

    public void app2Background() {
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.e(i0(), true);
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    public final a1 getCountdownController() {
        return this.countdownController;
    }

    public FrameLayout getPlayerContainer() {
        FrameLayout flContainer = this.viewBinding.f70083e;
        Intrinsics.g(flContainer, "flContainer");
        return flContainer;
    }

    @Override
    public long getProgress() {
        return this.viewBinding.f70099u.getProgress();
    }

    public ShortTvViewModel getViewModel(FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        return (ShortTvViewModel) new androidx.p009lifecycle.v0(activity).a(ShortTvViewModel.class);
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    public final boolean getIsFirstPlayInSession() {
        return this.isFirstPlayInSession;
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    protected void onAttachedToWindow() {
        androidx.p009lifecycle.u viewLifecycleOwner;
        LiveData liveDataE0;
        LiveData liveDataE1;
        LiveData liveDataD0;
        super.onAttachedToWindow();
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (viewLifecycleOwner = shortTvDetailListFragment.getViewLifecycleOwner()) == null) {
            return;
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataD0 = shortTvViewModel.d0()) != null) {
            liveDataD0.j(viewLifecycleOwner, this.favoriteObserver);
        }
        d dVar = this.favoriteResultObserver;
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        dVar.b((shortTvViewModel2 == null || (liveDataE1 = shortTvViewModel2.e0()) == null) ? null : (nr.f) liveDataE1.f());
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 == null || (liveDataE0 = shortTvViewModel3.e0()) == null) {
            return;
        }
        liveDataE0.j(viewLifecycleOwner, this.favoriteResultObserver);
    }

    @Override
    public void onAudioTrackChange() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onAudioTrackChange initResolution", false, 4, null);
        g0();
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onClick(View v10) {
        FragmentActivity activity;
        LiveData liveDataH0;
        Subject subject;
        ShortTvDetailListFragment shortTvDetailListFragment;
        FragmentActivity activity2;
        LiveData liveDataH1;
        Subject subject2;
        String pageName;
        if (hr.d.f61483a.a(v10 != null ? v10.getId() : 0, 500L)) {
            return;
        }
        if (this.isEpisodeLocked) {
            S0();
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onclick, " + v10, false, 4, null);
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        int i10 = R$id.tv_episode;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            showEpisodeListDialog();
            return;
        }
        int i11 = R$id.tv_favorite;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if (shortTvViewModel == null || (liveDataH1 = shortTvViewModel.H0()) == null || (subject2 = (Subject) liveDataH1.f()) == null) {
                return;
            }
            if (!yg.l.f76264a.e()) {
                O0();
                return;
            }
            if (this.data != null) {
                wr.b bVar = wr.b.f74733a;
                String subjectId = subject2.getSubjectId();
                String ops = subject2.getOps();
                ShortTVFavInfo shortTVFavInfo = subject2.getShortTVFavInfo();
                boolean hasFavorite = shortTVFavInfo != null ? shortTVFavInfo.getHasFavorite() : false;
                ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
                if (shortTvDetailListFragment2 == null || (pageName = shortTvDetailListFragment2.getPageName()) == null) {
                    pageName = "";
                }
                wr.b.g(bVar, subjectId, ops, "", hasFavorite, pageName, null, 32, null);
            }
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            if (shortTvViewModel2 != null) {
                shortTvViewModel2.P(subject2);
                return;
            }
            return;
        }
        int i12 = R$id.iv_play_status;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            v0();
            return;
        }
        int i13 = R$id.iv_share;
        if (numValueOf != null && numValueOf.intValue() == i13) {
            B0(v10);
            return;
        }
        int i14 = R$id.iv_download;
        if (numValueOf == null || numValueOf.intValue() != i14) {
            int i15 = R$id.iv_short_cover;
            if (numValueOf == null || numValueOf.intValue() != i15) {
                int i16 = R$id.tv_name;
                if (numValueOf == null || numValueOf.intValue() != i16) {
                    int i17 = R$id.iv_back;
                    if (numValueOf != null && numValueOf.intValue() == i17) {
                        ShortTvDetailListFragment shortTvDetailListFragment3 = this.fragment;
                        if (shortTvDetailListFragment3 == null || (activity = shortTvDetailListFragment3.getActivity()) == null) {
                            return;
                        }
                        activity.finish();
                        return;
                    }
                    int i18 = R$id.tv_language;
                    if (numValueOf != null && numValueOf.intValue() == i18) {
                        if (this.viewBinding.A.isSelected()) {
                            x0();
                            return;
                        } else {
                            jr.b.f63248a.d(R$string.short_tv_no_language_toast);
                            return;
                        }
                    }
                    int i19 = R$id.tv_audio;
                    if (numValueOf != null && numValueOf.intValue() == i19) {
                        q0();
                        return;
                    }
                    int i20 = R$id.tv_subtitles;
                    if (numValueOf != null && numValueOf.intValue() == i20) {
                        E0();
                        return;
                    }
                    int i21 = R$id.tv_resolution;
                    if (numValueOf != null && numValueOf.intValue() == i21) {
                        z0();
                        return;
                    }
                    int i22 = R$id.tv_speed;
                    if (numValueOf != null && numValueOf.intValue() == i22) {
                        C0();
                        return;
                    }
                    return;
                }
            }
        }
        com.transsion.shorttv.ui.widget.c cVar = this.downloadGuideBubbleController;
        if (cVar != null) {
            cVar.f();
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 == null || (liveDataH0 = shortTvViewModel3.H0()) == null || (subject = (Subject) liveDataH0.f()) == null || (shortTvDetailListFragment = this.fragment) == null || (activity2 = shortTvDetailListFragment.getActivity()) == null) {
            return;
        }
        nr.e eVar = this.data;
        int iC = eVar != null ? eVar.c() : 0;
        wr.b.f74733a.c(subject, iC, subject.getNeedPaid() == 0, !j0(), dr.b.f59061a.b(subject, iC));
        rr.a aVar = rr.a.f71324a;
        ShortTvDetailListFragment shortTvDetailListFragment4 = this.fragment;
        aVar.a(activity2, shortTvDetailListFragment4 != null ? shortTvDetailListFragment4.getPageName() : null, subject.getOps(), (64 & 8) != 0 ? null : "download_subject", (64 & 16) != 0 ? false : v10.getId() == R$id.iv_download, (64 & 32) != 0 ? null : subject, (64 & 64) != 0 ? null : null, (64 & 128) != 0 ? Boolean.FALSE : Boolean.valueOf(v10.getId() != R$id.iv_download));
    }

    @Override
    public void onComplete(final SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
        this.hasSubDownloading = false;
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoItemView.u0(this.f51622a, stDownloadTable);
            }
        });
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"onCompletion， play next"}, false, 4, null);
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.f(cVar, null, 1, null);
        }
        V0(0L);
    }

    @Override
    protected void onDetachedFromWindow() {
        LiveData liveDataE0;
        LiveData liveDataD0;
        super.onDetachedFromWindow();
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataD0 = shortTvViewModel.d0()) != null) {
            liveDataD0.o(this.favoriteObserver);
        }
        this.autoHideRightMenuHandle.removeCallbacksAndMessages(null);
        com.transsion.shorttv.ui.widget.c cVar = this.downloadGuideBubbleController;
        if (cVar != null) {
            cVar.c();
        }
        S0();
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.videoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.videoAdHelper = null;
        V();
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 != null && (liveDataE0 = shortTvViewModel2.e0()) != null) {
            liveDataE0.o(this.favoriteResultObserver);
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null) {
            shortTvViewModel3.N();
        }
        com.transsion.shorttv.subtitle.manager.b.f51081a.b().c(this);
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.onDestroy();
        }
    }

    @Override
    public void onDownloading(int progress, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onFail(Exception e10, final SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
        this.hasSubDownloading = false;
        ThreadUtils.j(new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoItemView.w0(this.f51627a, dbBean);
            }
        });
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onGetDubsInfo() {
        b0();
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e mediaSource) {
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.j(cVar, null, 1, null);
        }
        setLoading(true);
        com.transsion.shorttv.ui.widget.c cVar2 = this.downloadGuideBubbleController;
        if (cVar2 != null) {
            cVar2.i();
        }
    }

    @Override
    public void onLoadingEnd(gn.e mediaSource) {
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.l(cVar, null, 1, null);
        }
        setLoading(false);
        removeCallbacks(this.delayToastNetErrRunnable);
        com.transsion.shorttv.ui.widget.c cVar2 = this.downloadGuideBubbleController;
        if (cVar2 != null) {
            cVar2.h();
        }
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    public final void onNetConnect() {
        wf.a.C0922a.f(wf.a.f74274a, "ORSubtitle_v", "onNetConnect, 网络恢复，检测字幕", false, 4, null);
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.e();
        }
    }

    @Override
    public void onPageRelease(int position) {
        LiveData liveDataG0;
        nr.e eVar = this.data;
        if (eVar != null) {
            int iC = eVar.c();
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if (shortTvViewModel != null) {
                shortTvViewModel.K(iC, getProgress());
            }
        }
        S0();
        this.countdownController = null;
        STCommonVideoAdHelper sTCommonVideoAdHelper = this.videoAdHelper;
        if (sTCommonVideoAdHelper != null) {
            STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
        }
        this.videoAdHelper = null;
        onPlayerReset();
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 == null || (liveDataG0 = shortTvViewModel2.G0()) == null) {
            return;
        }
        liveDataG0.o(this.observer);
    }

    @Override
    public void onPageSelected(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView, nr.e item) {
        LiveData liveDataH0;
        ShortTvViewModel shortTvViewModel;
        LiveData liveDataG0;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || !shortTvDetailListFragment.isAdded() || shortTvDetailListFragment.getView() == null) {
            return;
        }
        com.transsion.shorttv.ui.widget.c cVar = this.downloadGuideBubbleController;
        if (cVar != null) {
            cVar.d();
        }
        androidx.p009lifecycle.u viewLifecycleOwner = shortTvDetailListFragment.getViewLifecycleOwner();
        Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 != null && (liveDataG0 = shortTvViewModel2.G0()) != null) {
            liveDataG0.j(viewLifecycleOwner, this.observer);
        }
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        wr.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.p(orPlayer);
        }
        wr.c cVar3 = this.dotLayer;
        if (cVar3 != null && orPlayer != null) {
            orPlayer.addPlayerListener(cVar3);
        }
        if (item != null && (shortTvViewModel = this.mShortTvViewModel) != null) {
            shortTvViewModel.d1(item.c());
        }
        updateShortTvInfo(orPlayer, orPlayerView, item);
        b0();
        g0();
        h0();
        P0();
        L();
        if (item != null) {
            o0(item);
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        Subject subject = (shortTvViewModel3 == null || (liveDataH0 = shortTvViewModel3.H0()) == null) ? null : (Subject) liveDataH0.f();
        nr.e eVar = this.data;
        int iC = eVar != null ? eVar.c() : 0;
        wr.b.f74733a.k(subject, iC, subject != null && subject.getNeedPaid() == 0, !j0(), dr.b.f59061a.b(subject, iC));
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Integer errorCode;
        Intrinsics.h(errorInfo, "errorInfo");
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.r(cVar, errorInfo, null, 2, null);
        }
        wf.a.f74274a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.j() : null) + " --> 短播放失败了", true);
        setLoading(false);
        com.transsion.shorttv.ui.widget.c cVar2 = this.downloadGuideBubbleController;
        if (cVar2 != null) {
            cVar2.h();
        }
        Integer errorCode2 = errorInfo.getErrorCode();
        if ((errorCode2 != null && errorCode2.intValue() == 2001) || ((errorCode = errorInfo.getErrorCode()) != null && errorCode.intValue() == 2002)) {
            O0();
        }
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, gn.e eVar) {
        com.transsion.player.orplayer.e.a.s(this, tnPlayerType, eVar);
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        com.transsion.player.orplayer.e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        com.transsion.player.orplayer.f fVar;
        ShortTvViewModel shortTvViewModel;
        LiveData liveDataH0;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "player- onPlayerReset data: " + this.data, false, 4, null);
        com.transsion.shorttv.ui.widget.c cVar = this.downloadGuideBubbleController;
        if (cVar != null) {
            cVar.d();
        }
        V();
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.onDestroy();
        }
        this.subtitleControl = null;
        setKeepScreenOn(false);
        this.isClickPause = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.m1(false);
        }
        this.isFirstFrame = false;
        this.isPrepare = false;
        boolean zI0 = i0();
        wr.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.e(zI0, false);
        }
        if (zI0 && (shortTvViewModel = this.mShortTvViewModel) != null) {
            shortTvViewModel.s1((shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f(), this.data, this.viewBinding.f70099u.getProgress());
        }
        AppCompatImageView ivCover = this.viewBinding.f70089k;
        Intrinsics.g(ivCover, "ivCover");
        cr.b.e(ivCover);
        wf.a.C0922a.f(c0922a, this.TAG, "onPlayerReset   visible  " + this, false, 4, null);
        AppCompatImageView ivPlayStatus = this.viewBinding.f70091m;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        cr.b.b(ivPlayStatus);
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.removePlayerListener(this);
        }
        wr.c cVar3 = this.dotLayer;
        if (cVar3 != null && (fVar = this.orPlayer) != null) {
            fVar.removePlayerListener(cVar3);
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        this.currentSaveProgress = 0L;
        V0(0L);
        W0(100L);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        ShortTvDetailListFragment shortTvDetailListFragment;
        LiveData liveDataF0;
        ShortTvInnerPlayBean shortTvInnerPlayBean;
        nr.e eVar;
        ShortTVItem shortTVItemD;
        if (this.isPrepare) {
            return;
        }
        this.isPrepare = true;
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        long duration = fVar != null ? fVar.getDuration() : 0L;
        W0(duration);
        if (duration / ((long) 1000) >= 30) {
            ShortTvVideoProgressDragGestureView vProgressGesture = this.viewBinding.J;
            Intrinsics.g(vProgressGesture, "vProgressGesture");
            cr.b.e(vProgressGesture);
        } else {
            ShortTvVideoProgressDragGestureView vProgressGesture2 = this.viewBinding.J;
            Intrinsics.g(vProgressGesture2, "vProgressGesture");
            cr.b.b(vProgressGesture2);
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataF0 = shortTvViewModel.f0()) != null && (shortTvInnerPlayBean = (ShortTvInnerPlayBean) liveDataF0.f()) != null && (eVar = this.data) != null && (shortTVItemD = eVar.d()) != null && shortTvInnerPlayBean.getEp() == shortTVItemD.getEp()) {
            long progress = shortTvInnerPlayBean.getProgress();
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f70099u.getProgress() + ", progress = " + progress + "  this = " + this, false, 4, null);
            if (progress > 0) {
                this.currentSaveProgress = progress;
                com.transsion.player.orplayer.f fVar2 = this.orPlayer;
                if (fVar2 != null) {
                    fVar2.seekTo(progress);
                }
            }
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            if (shortTvViewModel2 != null) {
                shortTvViewModel2.O();
            }
        }
        if (!this.isClickPause && !this.isPageHide && (shortTvDetailListFragment = this.fragment) != null && shortTvDetailListFragment.isVisible()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPrepare， play~", false, 4, null);
        }
        setKeepScreenOn(true);
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        LiveData liveDataH0;
        com.transsion.player.orplayer.f fVar;
        com.transsion.player.orplayer.f fVar2;
        if (this.isHorizontalDragging) {
            return;
        }
        long max = this.viewBinding.f70099u.getMax();
        if (max <= 0 || max == 100 || (fVar2 = this.orPlayer) == null || max != fVar2.getDuration()) {
            com.transsion.player.orplayer.f fVar3 = this.orPlayer;
            long duration = fVar3 != null ? fVar3.getDuration() : 0L;
            if (duration <= 0) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onProgress- duration <= 0, return", false, 4, null);
                return;
            }
            W0(duration);
        }
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.z(cVar, progress, null, 2, null);
        }
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.d(progress);
        }
        V0(progress);
        setLoading(false);
        if (progress > 0) {
            AppCompatImageView ivCover = this.viewBinding.f70089k;
            Intrinsics.g(ivCover, "ivCover");
            if (ivCover.getVisibility() == 0 && (fVar = this.orPlayer) != null && fVar.isPlaying()) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onProgress-progress>= cover gone", false, 4, null);
                AppCompatImageView ivCover2 = this.viewBinding.f70089k;
                Intrinsics.g(ivCover2, "ivCover");
                cr.b.b(ivCover2);
            }
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        Subject subject = (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f();
        if (subject != null && subject.getMiniTvType() == 2 && j0()) {
            long unlockFrom = ((long) subject.getUnlockFrom()) * 1000;
            if (1 > unlockFrom || unlockFrom > progress) {
                if (unlockFrom > 0) {
                    U0(unlockFrom - progress);
                }
            } else {
                com.transsion.player.orplayer.f fVar4 = this.orPlayer;
                if (fVar4 != null) {
                    fVar4.pause();
                }
                V();
                K0(this.data);
            }
        }
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        AppCompatImageView ivCover = this.viewBinding.f70089k;
        Intrinsics.g(ivCover, "ivCover");
        wf.a.C0922a.f(c0922a, str, "player-   viewBinding.ivCover.isVisible:" + (ivCover.getVisibility() == 0) + " onRenderFirstFrame" + this, false, 4, null);
        if (!this.isFirstFrame) {
            this.isFirstFrame = true;
            wr.c cVar = this.dotLayer;
            if (cVar != null) {
                cVar.onRenderFirstFrame();
            }
        }
        setLoading(false);
        com.transsion.shorttv.ui.widget.c cVar2 = this.downloadGuideBubbleController;
        if (cVar2 != null) {
            cVar2.h();
        }
        AppCompatImageView ivCover2 = this.viewBinding.f70089k;
        Intrinsics.g(ivCover2, "ivCover");
        cr.b.b(ivCover2);
    }

    @Override
    public void onSaveDownload(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.a(this, subtitleDownloadTable);
    }

    @Override
    public void onSetDataSource() {
    }

    @Override
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        com.transsion.player.orplayer.f fVar;
        ur.g gVarZ0;
        ShortTvDetailListFragment shortTvDetailListFragment;
        com.transsion.player.orplayer.f fVar2;
        Lifecycle lifecycle;
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i10 = a.f51529a[event.ordinal()];
        if (i10 == 1) {
            this.isPageHide = true;
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPause", false, 4, null);
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if ((shortTvViewModel == null || (gVarZ0 = shortTvViewModel.z0()) == null || !gVarZ0.f(this.orPlayer)) && (fVar = this.orPlayer) != null) {
                fVar.pause();
                return;
            }
            return;
        }
        if (i10 == 2) {
            this.isPageHide = false;
            if (this.isClickPause || (shortTvDetailListFragment = this.fragment) == null || !shortTvDetailListFragment.isVisible()) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "ON_RESUME", false, 4, null);
            H0();
            return;
        }
        if (i10 != 5) {
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null && (lifecycle = shortTvDetailListFragment2.getLifecycle()) != null) {
            lifecycle.d(this);
        }
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.h();
        }
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        if (fVar3 != null) {
            fVar3.removePlayerListener(this);
        }
        wr.c cVar2 = this.dotLayer;
        if (cVar2 == null || (fVar2 = this.orPlayer) == null) {
            return;
        }
        fVar2.removePlayerListener(cVar2);
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        GestureDetector gestureDetector = this.gestureDetector;
        if (gestureDetector == null || !gestureDetector.onTouchEvent(event)) {
            return super.onTouchEvent(event);
        }
        return true;
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
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.b(this, subtitleDownloadTable);
    }

    @Override
    public void onVideoPause(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoPause", false, 4, null);
        if (this.isClickPause) {
            AppCompatImageView ivPlayStatus = this.viewBinding.f70091m;
            Intrinsics.g(ivPlayStatus, "ivPlayStatus");
            ivPlayStatus.setVisibility(0);
        }
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.G(cVar, null, 1, null);
        }
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.c(false);
        }
        setKeepScreenOn(false);
        P0();
    }

    @Override
    public void onVideoSizeChanged(int width, int height) {
        this.videoWidth = width;
        this.videoHeight = height;
        Z0(Integer.valueOf(width), Integer.valueOf(height));
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onVideoSizeChanged " + this, false, 4, null);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoStart", false, 4, null);
        onPrepare(mediaSource);
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.J(cVar, null, 1, null);
        }
        AppCompatImageView ivPlayStatus = this.viewBinding.f70091m;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        ivPlayStatus.setVisibility(8);
        com.transsion.shorttv.subtitle.a aVar = this.subtitleControl;
        if (aVar != null) {
            aVar.c(true);
        }
        setLoading(false);
        setKeepScreenOn(true);
        L();
    }

    @Override
    public void onWindowFocusChanged(boolean hasWindowFocus) {
        super.onWindowFocusChanged(hasWindowFocus);
    }

    public final void reset() {
        ShortTvViewModel shortTvViewModel;
        LiveData liveDataH0;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "playNewMedia data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.m1(false);
        }
        this.isFirstFrame = false;
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.e(i0(), false);
        }
        if (i0() && (shortTvViewModel = this.mShortTvViewModel) != null) {
            shortTvViewModel.s1((shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f(), this.data, this.viewBinding.f70099u.getProgress());
        }
        AppCompatImageView ivPlayStatus = this.viewBinding.f70091m;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        cr.b.b(ivPlayStatus);
        this.currentSaveProgress = 0L;
        V0(0L);
        W0(100L);
    }

    public final void setCountdownController(a1 a1Var) {
        this.countdownController = a1Var;
    }

    /* JADX WARN: Code duplicated, block: B:79:0x01fb  */
    @Override
    public void setData(nr.e item, ShortTvDetailListFragment fragment, Integer position, boolean videoLoadMore, String basePostId, String baseItemType, boolean isPayloads, boolean fromTrending) {
        WindowInsets rootWindowInsets;
        Insets insets;
        boolean z10;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        LiveData liveDataH0;
        Subject subject;
        Media video;
        Video videoAddress;
        FragmentActivity activity;
        Intrinsics.h(item, "item");
        Intrinsics.h(fragment, "fragment");
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "setData position:" + position + "  ep:" + item.c() + " item:" + item + " " + this, false, 4, null);
        this.fragment = fragment;
        this.videoLoadMore = Boolean.valueOf(videoLoadMore);
        this.basePostId = basePostId;
        this.position = position;
        FragmentActivity activity2 = fragment.getActivity();
        if (activity2 != null) {
            this.mShortTvViewModel = getViewModel(activity2);
            this.mShortTvSubViewModel = (as.a) new androidx.p009lifecycle.v0(activity2).a(as.a.class);
        }
        fragment.getLifecycle().a(this);
        this.data = item;
        if (item.d() != null) {
            g0();
        }
        if (!isPayloads) {
            this.dotLayer = new wr.c(fragment, this.mShortTvViewModel);
        }
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.k(basePostId);
        }
        wr.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.j(baseItemType);
        }
        wr.c cVar3 = this.dotLayer;
        if (cVar3 != null) {
            cVar3.r(fragment.getPageName());
        }
        wr.c cVar4 = this.dotLayer;
        if (cVar4 != null) {
            cVar4.l(item.b());
        }
        T0();
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataH0 = shortTvViewModel.H0()) != null && (subject = (Subject) liveDataH0.f()) != null) {
            wr.c cVar5 = this.dotLayer;
            if (cVar5 != null) {
                cVar5.t(subject);
            }
            this.shortTvInfo = subject;
            nr.e eVar = this.data;
            String strE = com.transsion.shorttv.utils.i.e(eVar != null ? Integer.valueOf(eVar.c()) : null);
            Subject subject2 = this.shortTvInfo;
            String strE2 = subject2 != null ? com.transsion.shorttv.utils.i.e(Integer.valueOf(subject2.getTotalEpisode())) : null;
            if (item.c() == 0) {
                this.viewBinding.f70103y.setText(getContext().getString(R$string.short_tv_trailer) + " / EP" + strE2);
            } else {
                this.viewBinding.f70103y.setText("EP" + strE + " / EP" + strE2);
            }
            Cover cover = subject.getCover();
            if (cover != null && (activity = fragment.getActivity()) != null) {
                er.b.a aVar = er.b.f59791a;
                ShapeableImageView ivShortCover = this.viewBinding.f70093o;
                Intrinsics.g(ivShortCover, "ivShortCover");
                String url = cover.getUrl();
                if (url == null) {
                    url = "";
                }
                int iE = com.blankj.utilcode.util.i.e(21.0f);
                int iE2 = com.blankj.utilcode.util.i.e(30.0f);
                String thumbnail = cover.getThumbnail();
                aVar.j(activity, ivShortCover, url, (8096 & 8) != 0 ? aVar.c() : iE, (8096 & 16) != 0 ? aVar.b() : iE2, (8096 & 32) != 0, (8096 & 64) != 0 ? "" : thumbnail == null ? "" : thumbnail, (8096 & 128) != 0, (8096 & 256) != 0, (8096 & 512) != 0 ? false : false, (8096 & 1024) != 0 ? false : false, (8096 & 2048) != 0 ? false : false, (8096 & 4096) != 0 ? 25 : 0);
            }
            ShortTVItem shortTVItemD = item.d();
            if (shortTVItemD != null && (video = shortTVItemD.getVideo()) != null && (videoAddress = video.getVideoAddress()) != null) {
                Z0(videoAddress.getWidth(), videoAddress.getHeight());
            }
            this.viewBinding.B.setText(subject.getTitle());
            I0(strE, subject, item.d(), fromTrending);
        }
        if (!this.isOptimizeEnable && Build.VERSION.SDK_INT >= 30) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            Window window = ((Activity) context).getWindow();
            if (window != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null && (insets = rootWindowInsets.getInsets(WindowInsets.Type.tappableElement())) != null) {
                if (com.blankj.utilcode.util.d.e(window)) {
                    z10 = com.blankj.utilcode.util.d.a() > 1;
                }
                int iE3 = com.blankj.utilcode.util.i.e(16.0f);
                if (z10 || insets.top <= 0) {
                    Space progressGuideline = this.viewBinding.f70098t;
                    Intrinsics.g(progressGuideline, "progressGuideline");
                    ViewGroup.LayoutParams layoutParams = progressGuideline.getLayoutParams();
                    if (layoutParams == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    }
                    ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                    ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                    int i10 = marginLayoutParams2 != null ? marginLayoutParams2.leftMargin : 0;
                    ViewGroup.LayoutParams layoutParams3 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
                    int i11 = marginLayoutParams3 != null ? marginLayoutParams3.topMargin : 0;
                    ViewGroup.LayoutParams layoutParams4 = getLayoutParams();
                    marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
                    bVar.setMargins(i10, i11, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iE3);
                    progressGuideline.setLayoutParams(bVar);
                } else {
                    Space progressGuideline2 = this.viewBinding.f70098t;
                    Intrinsics.g(progressGuideline2, "progressGuideline");
                    ViewGroup.LayoutParams layoutParams5 = progressGuideline2.getLayoutParams();
                    if (layoutParams5 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    }
                    ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams5;
                    ViewGroup.LayoutParams layoutParams6 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
                    int i12 = marginLayoutParams4 != null ? marginLayoutParams4.leftMargin : 0;
                    ViewGroup.LayoutParams layoutParams7 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
                    int i13 = marginLayoutParams5 != null ? marginLayoutParams5.topMargin : 0;
                    ViewGroup.LayoutParams layoutParams8 = getLayoutParams();
                    marginLayoutParams = layoutParams8 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams8 : null;
                    bVar2.setMargins(i12, i13, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, RangesKt.e(iE3, insets.top));
                    progressGuideline2.setLayoutParams(bVar2);
                }
            }
        }
        b1(item);
        updateLockState(item);
    }

    public final void setFirstPlayInSession(boolean z10) {
        this.isFirstPlayInSession = z10;
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    public void setPagerLayoutManager(PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(pagerLayoutManager, "pagerLayoutManager");
        this.pagerLayoutManager = pagerLayoutManager;
    }

    public final void setVideoUrl(String url) {
        Intrinsics.h(url, "url");
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.v(url);
        }
    }

    public final void showEpisodeListDialog() {
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        Intrinsics.f(shortTvDetailListFragment, "null cannot be cast to non-null type com.transsion.shorttv.ui.fragment.ShortTvDetailListFragment");
        shortTvDetailListFragment.n1();
    }

    public void updateLockState(nr.e item) {
        LiveData liveDataH0;
        if (item == null) {
            return;
        }
        if (!j0()) {
            W();
            V();
            return;
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        Subject subject = (shortTvViewModel == null || (liveDataH0 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH0.f();
        if (subject == null || subject.getMiniTvType() != 2 || subject.getUnlockFrom() <= 0) {
            K0(item);
        }
    }

    /* JADX WARN: Code duplicated, block: B:56:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:98:0x01d4  */
    public void updateShortTvInfo(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView, nr.e item) {
        Video video;
        long jLongValue;
        ShortTVItem shortTVItemD;
        Map mapB;
        ShortTVItem shortTVItemD2;
        Media video2;
        ShortTVItem shortTVItemD3;
        Media video3;
        ConcurrentHashMap concurrentHashMapU0;
        List list;
        Object next;
        Media video4;
        LiveData liveDataH0;
        LiveData liveDataH1;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        Subject subject = (shortTvViewModel == null || (liveDataH1 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH1.f();
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.u(this.TAG, "updateShortTvInfo:" + this.position + " subjectId:" + (subject != null ? subject.getSubjectId() : null), true);
        if (j0()) {
            c0922a.c(this.TAG, "onPageSelect position:" + this.position + " item is locked", true);
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            Subject subject2 = (shortTvViewModel2 == null || (liveDataH0 = shortTvViewModel2.H0()) == null) ? null : (Subject) liveDataH0.f();
            if (subject2 == null || subject2.getMiniTvType() != 2 || subject2.getUnlockFrom() <= 0) {
                if (orPlayer != null) {
                    orPlayer.pause();
                }
                K0(item);
                return;
            }
            J0();
        } else {
            W();
            V();
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 == null || (concurrentHashMapU0 = shortTvViewModel3.u0()) == null) {
            video = null;
        } else {
            androidx.p009lifecycle.b0 b0Var = (androidx.p009lifecycle.b0) concurrentHashMapU0.get(item != null ? item.e() : null);
            if (b0Var == null || (list = (List) b0Var.f()) == null) {
                video = null;
            } else {
                Iterator it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    ShortTVItem shortTVItem = (ShortTVItem) next;
                    if (item != null && shortTVItem.getEp() == item.c()) {
                        break;
                    }
                }
                ShortTVItem shortTVItem2 = (ShortTVItem) next;
                if (shortTVItem2 == null || (video4 = shortTVItem2.getVideo()) == null) {
                    video = null;
                } else {
                    video = video4.getVideo();
                }
            }
        }
        Video video5 = (item == null || (shortTVItemD3 = item.d()) == null || (video3 = shortTVItemD3.getVideo()) == null) ? null : video3.getVideo();
        if (video == null) {
            if (video5 == null) {
                return;
            } else {
                video = video5;
            }
        }
        if (nr.l.b(item)) {
            wf.a.f74274a.c(this.TAG, "onPageSelect position:" + this.position + " item is null ", true);
            if (orPlayer != null) {
                orPlayer.pause();
                return;
            }
            return;
        }
        if (orPlayer != null) {
            orPlayer.setPlayerListener(this);
        }
        if (orPlayerView != null) {
            I(orPlayerView, (item == null || (shortTVItemD2 = item.d()) == null || (video2 = shortTVItemD2.getVideo()) == null) ? null : video2.getVideoAddress());
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "addView-----", false, 4, null);
        }
        videoStartPrepare(this.pageFrom);
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        wf.a.C0922a.f(c0922a2, this.TAG, "play url=" + video.getUrl() + "  width:" + video.getWidth() + ",height:" + video.getHeight() + ", duration: " + video.getDuration() + ", builtIn = false", false, 4, null);
        String url = video.getUrl();
        if (url != null) {
            if (item != null) {
                int iC = item.c();
                ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
                if (shortTvViewModel4 != null) {
                    shortTvViewModel4.L(iC);
                }
                ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
                Long lValueOf = shortTvViewModel5 != null ? Long.valueOf(shortTvViewModel5.W(iC)) : null;
                if (lValueOf != null) {
                    jLongValue = lValueOf.longValue();
                } else {
                    jLongValue = 0;
                }
            } else {
                jLongValue = 0;
            }
            long j10 = jLongValue;
            pn.f fVar = orPlayer instanceof pn.f ? (pn.f) orPlayer : null;
            boolean zContainsKey = (fVar == null || (mapB = fVar.b()) == null) ? true : mapB.containsKey(url);
            if (!zContainsKey) {
                ShortTvViewModel shortTvViewModel6 = this.mShortTvViewModel;
                if (shortTvViewModel6 != null) {
                    shortTvViewModel6.e1(true);
                }
                gn.e eVar = new gn.e(url, url, (item == null || (shortTVItemD = item.d()) == null) ? 0 : shortTVItemD.getEp(), null, null, 24, null);
                pn.f fVar2 = (pn.f) orPlayer;
                if (fVar2 != null) {
                    fVar2.addDataSource(eVar);
                }
                if (fVar2 != null) {
                    fVar2.prepare();
                }
            }
            wf.a.C0922a.r(c0922a2, this.TAG, new String[]{"------seekTo resolution:" + video.getResolution() + ",url=" + url + ", cachedProgress=" + j10}, false, 4, null);
            if (orPlayer != null) {
                orPlayer.seekTo(url, j10);
            }
            setVideoUrl(url);
            if (!zContainsKey) {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        ShortTvVideoItemView.X0(this.f51618a);
                    }
                });
            }
        }
        H0();
    }

    public final void updateUnlockCountdownText$shortTvLib_release(Integer remaining) {
        View view = this.lockedView;
        AppCompatTextView appCompatTextView = view != null ? (AppCompatTextView) view.findViewById(R$id.btn_watch_ad_unlock) : null;
        String string = getContext().getString(R$string.short_tv_locked_watch_ad_unlock_static);
        Intrinsics.g(string, "getString(...)");
        if (remaining == null) {
            if (appCompatTextView != null) {
                appCompatTextView.setText(string);
            }
        } else if (appCompatTextView != null) {
            appCompatTextView.setText(string + " · " + remaining + "s");
        }
    }

    public final void videoStartPrepare(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.isFirstFrame = false;
        this.pageFrom = pageFrom;
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.q(pageFrom);
        }
        wr.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.o("immersive_play");
        }
        wr.c cVar3 = this.dotLayer;
        if (cVar3 != null) {
            cVar3.u(SubjectType.SHORT_TV.getValue());
        }
        wr.c cVar4 = this.dotLayer;
        if (cVar4 != null) {
            nr.e eVar = this.data;
            cVar4.m(String.valueOf(eVar != null ? eVar.c() : 0));
        }
        wr.c cVar5 = this.dotLayer;
        if (cVar5 != null) {
            cVar5.g(this, false);
        }
        wr.c cVar6 = this.dotLayer;
        if (cVar6 != null) {
            cVar6.a(0, 0);
        }
        wr.c cVar7 = this.dotLayer;
        if (cVar7 != null) {
            cVar7.s(this.position);
        }
        wr.c cVar8 = this.dotLayer;
        if (cVar8 != null) {
            cVar8.n(this.isFirstPlayInSession);
        }
        setLoading(true);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.T0();
        }
    }

    public final void watchAdToUnlock$shortTvLib_release(boolean isAuto) {
        FragmentActivity activity;
        LiveData liveDataH0;
        LiveData liveDataH1;
        wr.b bVar = wr.b.f74733a;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        Subject subject = null;
        Subject subject2 = (shortTvViewModel == null || (liveDataH1 = shortTvViewModel.H0()) == null) ? null : (Subject) liveDataH1.f();
        nr.e eVar = this.data;
        bVar.h(subject2, eVar != null ? eVar.c() : 0, "minitv_ad", isAuto ? "auto" : "manual");
        if (!yg.l.f76264a.e()) {
            jr.b.f63248a.e(Utils.a().getString(R$string.short_tv_no_network_toast));
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            if (shortTvDetailListFragment.getView() == null) {
                shortTvDetailListFragment = null;
            }
            if (shortTvDetailListFragment == null) {
                return;
            }
            androidx.p009lifecycle.u viewLifecycleOwner = shortTvDetailListFragment.getViewLifecycleOwner();
            Intrinsics.g(viewLifecycleOwner, "getViewLifecycleOwner(...)");
            LifecycleCoroutineScope lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(viewLifecycleOwner);
            ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
            if (shortTvDetailListFragment2 == null || (activity = shortTvDetailListFragment2.getActivity()) == null) {
                Context context = getContext();
                activity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
                if (activity == null) {
                    return;
                }
            }
            final FragmentActivity fragmentActivity = activity;
            View view = this.lockedView;
            final AppCompatTextView appCompatTextView = view != null ? (AppCompatTextView) view.findViewById(R$id.btn_watch_ad_unlock) : null;
            if (appCompatTextView != null) {
                appCompatTextView.setEnabled(false);
            }
            final nr.e eVar2 = this.data;
            STCommonVideoAdHelper sTCommonVideoAdHelper = this.videoAdHelper;
            if (sTCommonVideoAdHelper != null) {
                STCommonVideoAdHelper.q(sTCommonVideoAdHelper, 0, 1, null);
            }
            this.videoAdHelper = new STCommonVideoAdHelper("ShortTvPlayerUnlockPlayScene", lifecycleCoroutineScopeA);
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            if (shortTvViewModel2 != null && (liveDataH0 = shortTvViewModel2.H0()) != null) {
                subject = (Subject) liveDataH0.f();
            }
            final Subject subject3 = subject;
            nr.e eVar3 = this.data;
            final int iC = eVar3 != null ? eVar3.c() : 0;
            STCommonVideoAdHelper sTCommonVideoAdHelper2 = this.videoAdHelper;
            if (sTCommonVideoAdHelper2 != null) {
                sTCommonVideoAdHelper2.t(new Function3() {
                    @Override
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return ShortTvVideoItemView.c1(this.f51609a, fragmentActivity, subject3, iC, appCompatTextView, eVar2, ((Boolean) obj).booleanValue(), (String) obj2, (String) obj3);
                    }
                });
            }
        }
    }

    public final void onMediaItemTransition() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onMediaItemTransition: " + this.viewBinding.f70097s.getMax() + "  : " + this, false, 4, null);
        wr.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.f(cVar, null, 1, null);
        }
        reset();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }
}
