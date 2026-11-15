package com.transsion.postdetail.ui.view;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLConstraintLayout;
import com.noober.background.view.BLLinearLayout;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.expand.ExpandView;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.download.DownloadException;
import com.transsion.baseui.util.UrlContent;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.CommentBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.moviedetailapi.bean.Group;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.MediaType;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Stat;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.User;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$mipmap;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.bean.CommentLikeBody;
import com.transsion.postdetail.helper.ImmVideoHelper;
import com.transsion.postdetail.shorttv.ShortTvPlayListViewModel;
import com.transsion.postdetail.ui.dialog.ImmVideoCommentDialog;
import com.transsion.postdetail.ui.dialog.PostConfirmDialog;
import com.transsion.postdetail.ui.fragment.CommentFragment;
import com.transsion.postdetail.ui.fragment.VideoFragment;
import com.transsion.postdetail.viewmodel.CommentViewModel;
import com.transsion.postdetail.viewmodel.PostDetailViewModel;
import com.transsion.push.PushConstants;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsion.web.api.WebPageIdentity;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.downloader.util.DownloadUtil;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import com.transsnet.flow.event.sync.event.LikeEvent;
import com.transsnet.loginapi.bean.UserInfo;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Settings;

@Metadata(d1 = {"\u0000°\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004*\u0002õ\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\rB\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0012\u0010\u0011Jk\u0010!\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001a2\b\b\u0002\u0010\u001d\u001a\u00020\u00182\b\b\u0002\u0010\u001e\u001a\u00020\u001a2\b\b\u0002\u0010\u001f\u001a\u00020\u001a2\b\b\u0002\u0010 \u001a\u00020\u0018¢\u0006\u0004\b!\u0010\"J\u001d\u0010'\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J\u0015\u0010+\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\r\u0010.\u001a\u00020-¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u00182\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016¢\u0006\u0004\b9\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J\r\u0010>\u001a\u00020\u000f¢\u0006\u0004\b>\u0010\u0011J\u0017\u0010?\u001a\u00020\u000f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b?\u0010@J\u0015\u0010B\u001a\u00020\u000f2\u0006\u0010A\u001a\u00020\u001a¢\u0006\u0004\bB\u0010@J\u000f\u0010C\u001a\u00020\u000fH\u0016¢\u0006\u0004\bC\u0010\u0011J\u000f\u0010D\u001a\u00020\u000fH\u0016¢\u0006\u0004\bD\u0010\u0011J\u0019\u0010E\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bE\u0010=J\u0019\u0010F\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bF\u0010=J\u0019\u0010G\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bG\u0010=J!\u0010J\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020H2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bJ\u0010KJ\u0019\u0010L\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bL\u0010=J\u0019\u0010M\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bM\u0010=J!\u0010P\u001a\u00020\u000f2\u0006\u0010O\u001a\u00020N2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bP\u0010QJ\u000f\u0010R\u001a\u00020\u000fH\u0016¢\u0006\u0004\bR\u0010\u0011J\u0019\u0010S\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bS\u0010=J\u000f\u0010T\u001a\u00020\u000fH\u0016¢\u0006\u0004\bT\u0010\u0011J\u0019\u0010W\u001a\u00020\u000f2\b\u0010V\u001a\u0004\u0018\u00010UH\u0016¢\u0006\u0004\bW\u0010XJ\r\u0010Y\u001a\u00020\u000f¢\u0006\u0004\bY\u0010\u0011J\u0019\u0010[\u001a\u00020\u000f2\b\u0010Z\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b[\u0010@J\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\\\u0010\rJ\u0017\u0010]\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b]\u0010^J\u0017\u0010_\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b_\u0010^J\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010`\u001a\u00020HH\u0002¢\u0006\u0004\ba\u0010bJ\u0017\u0010d\u001a\u00020\u000f2\u0006\u0010c\u001a\u00020HH\u0002¢\u0006\u0004\bd\u0010bJ\u0017\u0010e\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\be\u0010^J\u0017\u0010f\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bf\u0010^J\u0017\u0010g\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bg\u0010^J\u001f\u0010j\u001a\u00020\u000f2\u0006\u0010h\u001a\u00020\u00182\u0006\u0010i\u001a\u00020\u0018H\u0002¢\u0006\u0004\bj\u0010kJ\u0017\u0010l\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bl\u0010^J\u001f\u0010o\u001a\u00020\u000f2\u0006\u0010n\u001a\u00020m2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bq\u0010^J\u001f\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001a2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bs\u0010tJ\u000f\u0010u\u001a\u00020\u000fH\u0002¢\u0006\u0004\bu\u0010\u0011J\u000f\u0010v\u001a\u00020\u000fH\u0002¢\u0006\u0004\bv\u0010\u0011J\u000f\u0010w\u001a\u00020\u000fH\u0002¢\u0006\u0004\bw\u0010\u0011J\u000f\u0010x\u001a\u00020\u000fH\u0002¢\u0006\u0004\bx\u0010\u0011J\u0017\u0010z\u001a\u00020\u000f2\u0006\u0010y\u001a\u00020\u0018H\u0002¢\u0006\u0004\bz\u0010{J\u0017\u0010|\u001a\u00020\u000f2\u0006\u0010I\u001a\u00020HH\u0002¢\u0006\u0004\b|\u0010bJ\u0017\u0010~\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0004\b~\u0010XJ\u000f\u0010\u007f\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u007f\u0010\u0011J\u0019\u0010\u0080\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0080\u0001\u0010XJ\u0019\u0010\u0081\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0081\u0001\u0010XJ\u0019\u0010\u0082\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0082\u0001\u0010XJ\u001c\u0010\u0085\u0001\u001a\u00020\u000f2\b\u0010\u0084\u0001\u001a\u00030\u0083\u0001H\u0002¢\u0006\u0006\b\u0085\u0001\u0010\u0086\u0001J\u001c\u0010\u0088\u0001\u001a\u00020\u000f2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0005\b\u0088\u0001\u0010@J\u0019\u0010\u0089\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0089\u0001\u0010XJ\u0019\u0010\u008a\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u008a\u0001\u0010XJ\u0019\u0010\u008b\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u008b\u0001\u0010XJ\u0011\u0010\u008c\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0005\b\u008c\u0001\u0010\u0011J\u001a\u0010\u008e\u0001\u001a\u00020\u000f2\u0007\u0010\u008d\u0001\u001a\u00020\u0018H\u0002¢\u0006\u0005\b\u008e\u0001\u0010{J\u0019\u0010\u008f\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u008f\u0001\u0010XJ\u0019\u0010\u0090\u0001\u001a\u00020\u000f2\u0006\u0010}\u001a\u00020UH\u0002¢\u0006\u0005\b\u0090\u0001\u0010XR\u0017\u0010\u0093\u0001\u001a\u00020\u001a8\u0002X\u0082D¢\u0006\b\n\u0006\b\u0091\u0001\u0010\u0092\u0001R\u0018\u0010\u0097\u0001\u001a\u00030\u0094\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001c\u0010\u009b\u0001\u001a\u0005\u0018\u00010\u0098\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001c\u0010\u009f\u0001\u001a\u0005\u0018\u00010\u009c\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u009e\u0001R\u001c\u0010£\u0001\u001a\u0005\u0018\u00010 \u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¡\u0001\u0010¢\u0001R\u001c\u0010§\u0001\u001a\u0005\u0018\u00010¤\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¥\u0001\u0010¦\u0001R\u001b\u0010ª\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¨\u0001\u0010©\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u00ad\u0001\u0010®\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¯\u0001\u0010°\u0001\u001a\u0006\b±\u0001\u0010²\u0001\"\u0006\b³\u0001\u0010´\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bµ\u0001\u0010\u0092\u0001R\u0018\u0010\u001e\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010\u0092\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b·\u0001\u0010¸\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¹\u0001\u0010º\u0001R\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b»\u0001\u0010¼\u0001R\u001c\u0010À\u0001\u001a\u0005\u0018\u00010½\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u001c\u0010Ä\u0001\u001a\u0005\u0018\u00010Á\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010Ã\u0001R\u001c\u0010È\u0001\u001a\u0005\u0018\u00010Å\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010Ç\u0001R#\u0010Î\u0001\u001a\u0005\u0018\u00010É\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bÊ\u0001\u0010Ë\u0001\u001a\u0006\bÌ\u0001\u0010Í\u0001R\u001c\u0010Ò\u0001\u001a\u0005\u0018\u00010Ï\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0001\u0010Ñ\u0001R\u001c\u0010Ö\u0001\u001a\u0005\u0018\u00010Ó\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0001\u0010Õ\u0001R\u0018\u0010Ø\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bV\u0010×\u0001R\u0019\u0010Ú\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0001\u0010×\u0001R\u0019\u0010Ü\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0001\u0010×\u0001R\u0018\u0010Ý\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b[\u0010×\u0001R\u0019\u0010Þ\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010×\u0001R\u0018\u0010à\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bo\u0010ß\u0001R\u0015\u0010á\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\\\u0010vR\u0016\u0010â\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u008c\u0001\u0010vR\u0016\u0010ä\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bã\u0001\u0010vR\u0016\u0010æ\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bå\u0001\u0010vR\u0016\u0010ç\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0089\u0001\u0010vR\u0016\u0010è\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u008b\u0001\u0010vR\u001a\u0010\u001f\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u0092\u0001R\u0017\u0010ë\u0001\u001a\u00030é\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bv\u0010ê\u0001R\u0019\u0010ì\u0001\u001a\u00020H8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0001\u0010ß\u0001R\u0018\u0010\u001d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bí\u0001\u0010×\u0001R\u0018\u0010î\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bw\u0010×\u0001R\u0019\u0010ð\u0001\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bï\u0001\u0010×\u0001R\u0016\u0010ñ\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010vR\u0018\u0010 \u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010×\u0001R\u001b\u0010ô\u0001\u001a\u0005\u0018\u00010ò\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b|\u0010ó\u0001R\u0018\u0010ø\u0001\u001a\u00030õ\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bö\u0001\u0010÷\u0001R!\u0010ý\u0001\u001a\u00030ù\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bú\u0001\u0010Ë\u0001\u001a\u0006\bû\u0001\u0010ü\u0001R\u001f\u0010\u0080\u0002\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0þ\u00018\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b~\u0010ÿ\u0001¨\u0006\u0082\u0002²\u0006\u000e\u0010\u009b\u0001\u001a\u00030\u0098\u00018\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u009f\u0001\u001a\u00030\u009c\u00018\nX\u008a\u0084\u0002²\u0006\u000e\u0010\u0081\u0002\u001a\u00030 \u00018\nX\u008a\u0084\u0002"}, d2 = {"Lcom/transsion/postdetail/ui/view/ImmVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/e;", "Landroid/view/View$OnClickListener;", "Landroidx/lifecycle/r;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", WebConstants.FIELD_ITEM, "Landroidx/fragment/app/Fragment;", "fragment", RequestParameters.POSITION, "", "videoLoadMore", "", "basePostId", "baseItemType", "attachToMain", "commentId", "pageFrom", "isFromDownloaded", "setData", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V", "Lcom/transsion/player/orplayer/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "setPlayer", "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "pagerLayoutManager", "setPagerLayoutManager", "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V", "Landroid/widget/FrameLayout;", "getPlayerContainer", "()Landroid/widget/FrameLayout;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "onPlayerReset", "Lgn/e;", "mediaSource", "onPlayerRelease", "(Lgn/e;)V", "app2Background", "videoStartPrepare", "(Ljava/lang/String;)V", "url", "setVideoUrl", "onSetDataSource", "onRenderFirstFrame", "onVideoStart", "onPrepare", "onVideoPause", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onLoopingStart", "onCompletion", "setOnSeekCompleteListener", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "showCommentDialog", NativeComponentConstants.KEY_COMPONENT_TYPE, "y", "B", "p0", "(Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "i0", "comment", "e0", "(J)V", "share", "l0", "o0", "setBottomSubjectModuleData", "setBottomRoomModuleData", "isShowSubject", "isShowRoom", "setBottomSubjectAndRoomVisibility", "(ZZ)V", "f0", "Lcom/transsion/moviedetailapi/bean/CommentBean;", "hotComment", "A", "(Lcom/transsion/moviedetailapi/bean/CommentBean;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "W", "moduleName", "X", "(Ljava/lang/String;Lcom/transsion/moviedetailapi/bean/PostSubjectItem;)V", "m0", "I", "L", "U", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setLoading", "(Z)V", "P", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "S", "j0", "O", "N", "T", "Lcom/transsion/baselib/db/download/DownloadBean;", "download", "Y", "(Lcom/transsion/baselib/db/download/DownloadBean;)V", "id", "z", "F", "H", "G", "C", "visible", "setContentVisibility", "c0", "d0", "a", "Ljava/lang/String;", "TAG", "Lwn/t;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lwn/t;", "viewBinding", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "c", "Lcom/transsion/postdetail/viewmodel/PostDetailViewModel;", "videoDetailModel", "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", "shortTvPlayListViewModel", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "e", "Lcom/transsion/postdetail/viewmodel/CommentViewModel;", "mCommentViewModel", "Lcom/transsion/share/share/ShareDialogFragment;", "f", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "g", "Lcom/transsion/moviedetailapi/bean/PostSubjectItem;", "data", "h", "Landroidx/fragment/app/Fragment;", "i", "Ljava/lang/Boolean;", "j", "Ljava/lang/Integer;", "getPosition", "()Ljava/lang/Integer;", "setPosition", "(Ljava/lang/Integer;)V", CampaignEx.JSON_KEY_AD_K, "l", "m", "Lcom/transsion/player/orplayer/f;", "n", "Lcom/transsion/player/ui/ORPlayerView;", "o", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "Lep/a;", TtmlNode.TAG_P, "Lep/a;", "audioApi", "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", CampaignEx.JSON_KEY_AD_Q, "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", "guideView", "Landroid/view/GestureDetector;", CampaignEx.JSON_KEY_AD_R, "Landroid/view/GestureDetector;", "gestureDetector", "Lqx/a;", "s", "Lkotlin/Lazy;", "getLoginApi", "()Lqx/a;", "loginApi", "Lcom/transsion/postdetail/layer/b;", "t", "Lcom/transsion/postdetail/layer/b;", "dotLayer", "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;", TmcStartParams.KEY_URL_SHORT, "Lcom/transsion/postdetail/ui/dialog/ImmVideoCommentDialog;", "commentDialog", "Z", "isClickPause", "w", "isHorizontalDragging", "x", "isPageHide", "isShowHotComment", "isFavoriteShow", "J", "currentSaveProgress", "resImgLargeWidth", "resImgLargeHeight", "D", "resImgSmallWidth", "E", "resImgSmallHeight", "screenHeight", "dp170", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isSeekToFinish", "nextSeekTo", "K", "isPageRelease", "M", "isLongPressTriggered", "screenWidth", "Landroid/animation/ObjectAnimator;", "Landroid/animation/ObjectAnimator;", "rotateAnimator", "com/transsion/postdetail/ui/view/ImmVideoItemView$b", "Q", "Lcom/transsion/postdetail/ui/view/ImmVideoItemView$b;", "downloadListener", "Lcom/transsnet/downloader/manager/g;", "R", "getDownloadManager", "()Lcom/transsnet/downloader/manager/g;", "downloadManager", "Landroidx/lifecycle/c0;", "Landroidx/lifecycle/c0;", "favoriteResultObserver", "commentViewModel", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ImmVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.e, View.OnClickListener, androidx.p009lifecycle.r {

    private long currentSaveProgress;

    private final int resImgLargeWidth;

    private final int resImgLargeHeight;

    private final int resImgSmallWidth;

    private final int resImgSmallHeight;

    private final int screenHeight;

    private final int dp170;

    private String pageFrom;

    private final AtomicBoolean isSeekToFinish;

    private long nextSeekTo;

    private boolean attachToMain;

    private boolean isPageRelease;

    private boolean isLongPressTriggered;

    private final int screenWidth;

    private boolean isFromDownloaded;

    private ObjectAnimator rotateAnimator;

    private final b downloadListener;

    private final Lazy downloadManager;

    private final androidx.p009lifecycle.c0 favoriteResultObserver;

    private final String TAG;

    private final wn.t viewBinding;

    private PostDetailViewModel videoDetailModel;

    private ShortTvPlayListViewModel shortTvPlayListViewModel;

    private CommentViewModel mCommentViewModel;

    private ShareDialogFragment mShareDialog;

    private PostSubjectItem data;

    private Fragment fragment;

    private Boolean videoLoadMore;

    private Integer position;

    private String basePostId;

    private String commentId;

    private com.transsion.player.orplayer.f orPlayer;

    private ORPlayerView orPlayerView;

    private PagerLayoutManager pagerLayoutManager;

    private ep.a audioApi;

    private ImmVideoGuideView guideView;

    private GestureDetector gestureDetector;

    private final Lazy loginApi;

    private com.transsion.postdetail.layer.b dotLayer;

    private ImmVideoCommentDialog commentDialog;

    private boolean isClickPause;

    private boolean isHorizontalDragging;

    private boolean isPageHide;

    private boolean isShowHotComment;

    private boolean isFavoriteShow;

    public class a {

        public static final int[] f47835a;

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
            f47835a = iArr;
        }
    }

    public static final class b implements ui.m0 {
        b() {
        }

        private final void i(DownloadBean downloadBean) {
            String postId = downloadBean.getPostId();
            PostSubjectItem postSubjectItem = ImmVideoItemView.this.data;
            if (!Intrinsics.c(postId, postSubjectItem != null ? postSubjectItem.getPostId() : null)) {
                String resourceId = downloadBean.getResourceId();
                PostSubjectItem postSubjectItem2 = ImmVideoItemView.this.data;
                if (!Intrinsics.c(resourceId, postSubjectItem2 != null ? postSubjectItem2.getPostId() : null)) {
                    return;
                }
            }
            final ImmVideoItemView immVideoItemView = ImmVideoItemView.this;
            immVideoItemView.post(new Runnable() {
                @Override
                public final void run() {
                    ImmVideoItemView.b.j(immVideoItemView);
                }
            });
        }

        public static final void j(ImmVideoItemView immVideoItemView) {
            immVideoItemView.j0();
        }

        @Override
        public void a(DownloadBean bean, DownloadException downloadException) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override
        public void b(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override
        public void c(DownloadBean bean, long j10, long j11) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override
        public void d(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override
        public void e(DownloadBean bean, String str) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override
        public void f(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }

        @Override
        public void g(DownloadBean bean) {
            Intrinsics.h(bean, "bean");
            i(bean);
        }
    }

    public static final class c extends GestureDetector.SimpleOnGestureListener {
        c() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            return super.onDoubleTap(e10);
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            super.onLongPress(e10);
            int i10 = ImmVideoItemView.this.screenWidth / 3;
            int x10 = (int) e10.getX();
            ImmVideoItemView.this.isLongPressTriggered = true;
            if (x10 >= 0 && x10 <= i10) {
                wf.a.C0922a.f(wf.a.f74274a, ImmVideoItemView.this.TAG, "左边长按，clickX=" + x10 + ", cut=" + i10, false, 4, null);
                return;
            }
            if (x10 > i10 * 2) {
                wf.a.C0922a.f(wf.a.f74274a, ImmVideoItemView.this.TAG, "右边长按，clickX=" + x10 + ", cut=" + i10, false, 4, null);
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, ImmVideoItemView.this.TAG, "中间长按，clickX=" + x10 + ", cut=" + i10, false, 4, null);
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            ImmVideoItemView.this.U();
            return super.onSingleTapUp(e10);
        }
    }

    public static final class d implements com.transsion.baseui.widget.f.a {

        private int f47838a;

        private int f47839b;

        private int f47840c;

        private String f47841d = "";

        private int f47842e = com.blankj.utilcode.util.a0.a(1.5f);

        d() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(float f10, float f11) {
            int i10 = 0;
            if (!ImmVideoItemView.this.isHorizontalDragging) {
                PagerLayoutManager pagerLayoutManager = ImmVideoItemView.this.pagerLayoutManager;
                if (pagerLayoutManager != null) {
                    pagerLayoutManager.W(false);
                }
                this.f47838a = ImmVideoItemView.this.viewBinding.f74576u.getProgress();
                ImmVideoItemView.this.setContentVisibility(false);
                AppCompatTextView tvProgressDes = ImmVideoItemView.this.viewBinding.D;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                uf.c.k(tvProgressDes);
                AppCompatSeekBar seekBar = ImmVideoItemView.this.viewBinding.f74578w;
                Intrinsics.g(seekBar, "seekBar");
                uf.c.k(seekBar);
                ProgressBar progressBar = ImmVideoItemView.this.viewBinding.f74576u;
                Intrinsics.g(progressBar, "progressBar");
                uf.c.g(progressBar);
                this.f47840c = ImmVideoItemView.this.viewBinding.f74576u.getWidth();
                int max = ImmVideoItemView.this.viewBinding.f74576u.getMax();
                this.f47839b = max;
                this.f47841d = com.transsion.postdetail.util.m.c(max);
            }
            ImmVideoItemView.this.isHorizontalDragging = true;
            float f12 = f11 - f10;
            int i11 = this.f47839b;
            int i12 = (int) (this.f47838a + ((f12 * i11) / this.f47840c));
            if (i12 >= 0) {
                i10 = i12 > i11 ? i11 : i12;
            }
            ImmVideoItemView.this.viewBinding.D.setText(com.transsion.postdetail.util.m.c(i10) + " / " + this.f47841d);
            ImmVideoItemView.this.viewBinding.f74576u.setProgress(i10);
            ImmVideoItemView.this.viewBinding.f74578w.setProgress(i10);
        }

        @Override
        public void c(float f10, float f11) {
        }

        @Override
        public void d(float f10, float f11) {
        }

        @Override
        public void e() {
            com.transsion.player.orplayer.f fVar;
            PagerLayoutManager pagerLayoutManager = ImmVideoItemView.this.pagerLayoutManager;
            if (pagerLayoutManager != null) {
                pagerLayoutManager.W(true);
            }
            if (ImmVideoItemView.this.isHorizontalDragging) {
                ImmVideoItemView.this.isHorizontalDragging = false;
                ImmVideoItemView.this.setContentVisibility(true);
                AppCompatTextView tvProgressDes = ImmVideoItemView.this.viewBinding.D;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                uf.c.g(tvProgressDes);
                AppCompatSeekBar seekBar = ImmVideoItemView.this.viewBinding.f74578w;
                Intrinsics.g(seekBar, "seekBar");
                uf.c.g(seekBar);
                ProgressBar progressBar = ImmVideoItemView.this.viewBinding.f74576u;
                Intrinsics.g(progressBar, "progressBar");
                uf.c.k(progressBar);
                long progress = ImmVideoItemView.this.viewBinding.f74576u.getProgress();
                ImmVideoItemView immVideoItemView = ImmVideoItemView.this;
                if (immVideoItemView.isSeekToFinish.compareAndSet(true, false)) {
                    com.transsion.player.orplayer.f fVar2 = ImmVideoItemView.this.orPlayer;
                    if (fVar2 != null) {
                        fVar2.seekTo(progress);
                    }
                    progress = 0;
                }
                immVideoItemView.nextSeekTo = progress;
                com.transsion.player.orplayer.f fVar3 = ImmVideoItemView.this.orPlayer;
                if (fVar3 == null || fVar3.isPlaying() || (fVar = ImmVideoItemView.this.orPlayer) == null) {
                    return;
                }
                fVar.play();
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

    public static final class e implements com.transsion.share.share.a {

        final View f47844a;

        final ImmVideoItemView f47845b;

        public static final class a implements PostConfirmDialog.a {

            final ImmVideoItemView f47846a;

            a(ImmVideoItemView immVideoItemView) {
                this.f47846a = immVideoItemView;
            }

            @Override
            public void a() {
                String postId;
                PostDetailViewModel postDetailViewModel;
                PostSubjectItem postSubjectItem = this.f47846a.data;
                if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null || (postDetailViewModel = this.f47846a.videoDetailModel) == null) {
                    return;
                }
                postDetailViewModel.r(postId);
            }
        }

        e(View view, ImmVideoItemView immVideoItemView) {
            this.f47844a = view;
            this.f47845b = immVideoItemView;
        }

        @Override
        public void a(String id2, PostType postType) {
            Fragment fragment;
            FragmentManager childFragmentManager;
            Intrinsics.h(id2, "id");
            PostConfirmDialog postConfirmDialog = new PostConfirmDialog();
            postConfirmDialog.r0(new a(this.f47845b));
            Fragment fragment2 = this.f47845b.fragment;
            if (fragment2 == null || !fragment2.isAdded() || (fragment = this.f47845b.fragment) == null || (childFragmentManager = fragment.getChildFragmentManager()) == null) {
                return;
            }
            childFragmentManager.g0();
            if (postConfirmDialog.isAdded() || childFragmentManager.k0("PostConfirmDialog") != null) {
                return;
            }
            postConfirmDialog.show(childFragmentManager, "PostConfirmDialog");
        }

        @Override
        public void b(String str) {
            this.f47845b.z(str);
        }

        @Override
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Subject subject;
            ResourceDetectors resourceDetector;
            String resourceLink;
            Media media;
            Cover cover;
            Integer size;
            Media media2;
            Cover cover2;
            String url2;
            String url3;
            String url4;
            Media media3;
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
            if (com.transsion.baseui.util.c.f42332a.a(this.f47844a.getId(), 500L)) {
                return;
            }
            PostSubjectItem postSubjectItem = this.f47845b.data;
            Video videoA = com.transsion.postdetail.util.t.a((postSubjectItem == null || (media3 = postSubjectItem.getMedia()) == null) ? null : media3.getVideo());
            PostSubjectItem postSubjectItem2 = this.f47845b.data;
            String title = postSubjectItem2 != null ? postSubjectItem2.getTitle() : null;
            if (TextUtils.isEmpty(title)) {
                PostSubjectItem postSubjectItem3 = this.f47845b.data;
                title = postSubjectItem3 != null ? postSubjectItem3.getContent() : null;
            }
            String str = title;
            String str2 = (videoA == null || (url4 = videoA.getUrl()) == null) ? "" : url4;
            String str3 = (videoA == null || (url3 = videoA.getUrl()) == null) ? "" : url3;
            PostSubjectItem postSubjectItem4 = this.f47845b.data;
            String str4 = (postSubjectItem4 == null || (media2 = postSubjectItem4.getMedia()) == null || (cover2 = media2.getCover()) == null || (url2 = cover2.getUrl()) == null) ? "" : url2;
            Long lValueOf = (videoA == null || (size = videoA.getSize()) == null) ? null : Long.valueOf(size.intValue());
            PostSubjectItem postSubjectItem5 = this.f47845b.data;
            String postId = postSubjectItem5 != null ? postSubjectItem5.getPostId() : null;
            PostSubjectItem postSubjectItem6 = this.f47845b.data;
            DownloadBean downloadBean = new DownloadBean(str2, str3, str, str4, lValueOf, postSubjectItem6 != null ? postSubjectItem6.getPostId() : null, null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, postId, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -134217792, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            PostSubjectItem postSubjectItem7 = this.f47845b.data;
            downloadBean.setThumbnail((postSubjectItem7 == null || (media = postSubjectItem7.getMedia()) == null || (cover = media.getCover()) == null) ? null : cover.getThumbnail());
            PostSubjectItem postSubjectItem8 = this.f47845b.data;
            if (postSubjectItem8 == null || !postSubjectItem8.getBuiltIn()) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context = this.f47845b.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                PostSubjectItem postSubjectItem9 = this.f47845b.data;
                String ops = postSubjectItem9 != null ? postSubjectItem9.getOps() : null;
                PostSubjectItem postSubjectItem10 = this.f47845b.data;
                downloadManagerApiA.O(fragmentActivity, downloadBean, VideoFragment.PAGE_NAME, ops, (postSubjectItem10 == null || (subject = postSubjectItem10.getSubject()) == null || (resourceDetector = subject.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) ? "" : resourceLink, (64 & 32) != 0 ? null : null, (64 & 64) != 0 ? null : null);
            } else {
                this.f47845b.Y(downloadBean);
            }
            com.transsion.postdetail.helper.a.f46861a.i(this.f47845b.data, VideoFragment.PAGE_NAME, this.f47845b.pageFrom);
        }

        @Override
        public void d(String id2) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void e(String str) {
            com.transsion.share.share.a.C0627a.c(this, str);
        }
    }

    public static final class f implements CommentFragment.b {
        f() {
        }

        @Override
        public void a(long j10) {
            Stat stat;
            PostSubjectItem postSubjectItem = ImmVideoItemView.this.data;
            if (postSubjectItem != null && (stat = postSubjectItem.getStat()) != null) {
                stat.setCommentCount(Long.valueOf(j10));
            }
            ImmVideoItemView.this.e0(j10);
        }
    }

    public static final class g implements ExpandView.c {

        final Ref.BooleanRef f47848a;

        g(Ref.BooleanRef booleanRef) {
            this.f47848a = booleanRef;
        }

        @Override
        public void a(ExpandView expandView) {
            this.f47848a.element = true;
        }

        @Override
        public void b(ExpandView expandView) {
            this.f47848a.element = false;
        }
    }

    public static final class h implements com.transsion.baseui.util.g {

        final Ref.ObjectRef f47849a;

        h(Ref.ObjectRef objectRef) {
            this.f47849a = objectRef;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public void a(List list) {
            Intrinsics.h(list, "list");
            this.f47849a.element = list;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ImmVideoItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "ImmVideoPlayer";
        this.commentId = "";
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ImmVideoItemView.E();
            }
        });
        this.screenHeight = com.blankj.utilcode.util.y.c();
        this.dp170 = com.blankj.utilcode.util.a0.a(170.0f);
        this.isSeekToFinish = new AtomicBoolean(true);
        this.attachToMain = true;
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.downloadListener = new b();
        this.downloadManager = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ImmVideoItemView.w();
            }
        });
        this.favoriteResultObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ImmVideoItemView.x(this.f47989a, (String) obj);
            }
        };
        View.inflate(getContext(), R$layout.layout_immersion_video_item_view, this);
        wn.t tVarA = wn.t.a(this);
        Intrinsics.g(tVarA, "bind(...)");
        this.viewBinding = tVarA;
        tVarA.C.setOnClickListener(this);
        tVarA.f74579x.setOnClickListener(this);
        tVarA.E.setOnClickListener(this);
        tVarA.f74570o.setOnClickListener(this);
        tVarA.f74572q.setOnClickListener(this);
        tVarA.f74573r.f74677b.setOnClickListener(this);
        tVarA.f74573r.f74681f.setOnClickListener(this);
        tVarA.F.setOnClickListener(this);
        tVarA.f74565j.setOnClickListener(this);
        tVarA.f74571p.setOnClickListener(this);
        tVarA.G.setOnClickListener(this);
        tVarA.f74559d.setOnClickListener(this);
        this.resImgLargeWidth = com.blankj.utilcode.util.a0.a(48.0f);
        this.resImgLargeHeight = com.blankj.utilcode.util.a0.a(64.0f);
        this.resImgSmallWidth = com.blankj.utilcode.util.a0.a(24.0f);
        this.resImgSmallHeight = com.blankj.utilcode.util.a0.a(32.0f);
        B(context);
        if (ImmVideoHelper.f46840h.a().h() > 0) {
            ViewGroup.LayoutParams layoutParams = tVarA.f74577v.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            if (((ViewGroup.MarginLayoutParams) bVar).bottomMargin < com.blankj.utilcode.util.a0.a(35.0f)) {
                ((ViewGroup.MarginLayoutParams) bVar).bottomMargin += com.blankj.utilcode.util.a0.a(10.0f);
                tVarA.f74577v.setLayoutParams(bVar);
            }
        }
    }

    private final void A(CommentBean hotComment, PostSubjectItem item) {
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(R$string.base_net_err);
            return;
        }
        Boolean likeStatu = hotComment.getLikeStatu();
        Boolean bool = Boolean.TRUE;
        boolean zC = Intrinsics.c(likeStatu, bool);
        AppCompatImageView appCompatImageView = this.viewBinding.f74568m;
        if (appCompatImageView != null) {
            if (appCompatImageView.isEnabled()) {
                appCompatImageView.setEnabled(false);
                hotComment.setLikeStatu(Boolean.FALSE);
                if (hotComment.getLikeCnt() > 0) {
                    hotComment.setLikeCnt(hotComment.getLikeCnt() - 1);
                }
            } else {
                appCompatImageView.setEnabled(true);
                hotComment.setLikeStatu(bool);
                hotComment.setLikeCnt(hotComment.getLikeCnt() + 1);
            }
        }
        this.viewBinding.B.setText(hotComment.getLikeCnt() == 0 ? "" : com.transsion.baseui.util.j.a(hotComment.getLikeCnt()));
        String commentId = hotComment.getCommentId();
        if (commentId != null) {
            X(zC ? "dislike_hot_comment" : "like_hot_comment", item);
            CommentLikeBody commentLikeBody = new CommentLikeBody(commentId, Integer.valueOf(zC ? 1 : 0));
            CommentViewModel commentViewModel = this.mCommentViewModel;
            if (commentViewModel != null) {
                commentViewModel.q(commentLikeBody);
            }
            rm.b bVar = new rm.b(!zC, commentId, hotComment.getLikeCnt());
            FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
            String name = rm.b.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, bVar, 0L);
        }
    }

    private final void B(Context context) {
        this.gestureDetector = new GestureDetector(context, new c());
        L();
        I();
        C();
    }

    private final void C() {
        new com.transsion.baseui.widget.f(getContext(), this.viewBinding.J).s(new d());
        this.viewBinding.f74578w.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ImmVideoItemView.D(view, motionEvent);
            }
        });
    }

    public static final boolean D(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final qx.a E() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void F(View view) {
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        UserInfo userInfo = new UserInfo();
        PostSubjectItem postSubjectItem = this.data;
        User user = postSubjectItem != null ? postSubjectItem.getUser() : null;
        userInfo.setUserId(user != null ? user.getUserId() : null);
        userInfo.setNickname(user != null ? user.getNickname() : null);
        userInfo.setUsername(user != null ? user.getUsername() : null);
        userInfo.setAvatar(user != null ? user.getAvatar() : null);
        Navigator.x(TheRouter.c("/profile/user_profile").K("userId", userInfo.getUserId()), getContext(), null, 2, null);
        com.transsion.postdetail.helper.a.f46861a.c(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    private final void G(View view) {
        Group group;
        Integer num;
        FragmentActivity fragmentActivityRequireActivity;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String strC = sg.b.f72060b.a().c();
        ep.f fVar = (ep.f) TheRouter.d(ep.f.class, new Object[0]);
        if (!TextUtils.equals(strC, fVar != null ? fVar.d() : null) || (num = this.position) == null || num.intValue() != 0) {
            Navigator navigatorC = TheRouter.c("/room/detail");
            PostSubjectItem postSubjectItem = this.data;
            Navigator.x(navigatorC.K("id", (postSubjectItem == null || (group = postSubjectItem.getGroup()) == null) ? null : group.getGroupId()), getContext(), null, 2, null);
            com.transsion.postdetail.helper.a.f46861a.l(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
            return;
        }
        Fragment fragment = this.fragment;
        if (fragment == null || (fragmentActivityRequireActivity = fragment.requireActivity()) == null) {
            return;
        }
        fragmentActivityRequireActivity.finish();
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:47:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:53:0x00dc  */
    /* JADX WARN: Code duplicated, block: B:56:0x00e7  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ec  */
    private final void H(View view) {
        PostSubjectItem postSubjectItem;
        int value;
        PostSubjectItem postSubjectItem2;
        String subjectId;
        PostSubjectItem postSubjectItem3;
        String ops;
        Subject subject;
        Subject subject2;
        Integer subjectType;
        Subject subject3;
        Subject subject4;
        Integer num;
        FragmentActivity fragmentActivityRequireActivity;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        String strC = sg.b.f72060b.a().c();
        com.transsion.moviedetailapi.g gVar = (com.transsion.moviedetailapi.g) TheRouter.d(com.transsion.moviedetailapi.g.class, new Object[0]);
        if (TextUtils.equals(strC, gVar != null ? gVar.d() : null) && (num = this.position) != null && num.intValue() == 0) {
            Fragment fragment = this.fragment;
            if (fragment == null || (fragmentActivityRequireActivity = fragment.requireActivity()) == null) {
                return;
            }
            fragmentActivityRequireActivity.finish();
            return;
        }
        PostSubjectItem postSubjectItem4 = this.data;
        if (postSubjectItem4 == null || (subject3 = postSubjectItem4.getSubject()) == null) {
            Navigator navigatorC = TheRouter.c("/movie/detail");
            postSubjectItem = this.data;
            if (postSubjectItem != null || (subject2 = postSubjectItem.getSubject()) == null || (subjectType = subject2.getSubjectType()) == null) {
                value = SubjectType.MOVIE.getValue();
            } else {
                value = subjectType.intValue();
            }
            Navigator navigatorF = navigatorC.F("subject_type", value);
            postSubjectItem2 = this.data;
            if (postSubjectItem2 != null || (subject = postSubjectItem2.getSubject()) == null) {
                subjectId = null;
            } else {
                subjectId = subject.getSubjectId();
            }
            Navigator navigatorK = navigatorF.K("id", subjectId);
            postSubjectItem3 = this.data;
            if (postSubjectItem3 != null) {
                ops = postSubjectItem3.getOps();
            } else {
                ops = null;
            }
            Navigator.x(navigatorK.K("ops", ops), getContext(), null, 2, null);
        } else {
            Integer subjectType2 = subject3.getSubjectType();
            int value2 = SubjectType.SHORT_TV.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                PostSubjectItem postSubjectItem5 = this.data;
                String ops2 = (postSubjectItem5 == null || (subject4 = postSubjectItem5.getSubject()) == null) ? null : subject4.getOps();
                PostSubjectItem postSubjectItem6 = this.data;
                downloadManagerApiA.d0(fragmentActivity, VideoFragment.PAGE_NAME, (384 & 4) != 0 ? "" : "", ops2, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : postSubjectItem6 != null ? postSubjectItem6.getSubject() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
            } else {
                Navigator navigatorC2 = TheRouter.c("/movie/detail");
                postSubjectItem = this.data;
                if (postSubjectItem != null) {
                    value = SubjectType.MOVIE.getValue();
                } else {
                    value = SubjectType.MOVIE.getValue();
                }
                Navigator navigatorF2 = navigatorC2.F("subject_type", value);
                postSubjectItem2 = this.data;
                if (postSubjectItem2 != null) {
                    subjectId = null;
                } else {
                    subjectId = null;
                }
                Navigator navigatorK2 = navigatorF2.K("id", subjectId);
                postSubjectItem3 = this.data;
                if (postSubjectItem3 != null) {
                    ops = postSubjectItem3.getOps();
                } else {
                    ops = null;
                }
                Navigator.x(navigatorK2.K("ops", ops), getContext(), null, 2, null);
            }
        }
        com.transsion.postdetail.helper.a.f46861a.B(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    private final void I() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        AppCompatActivity appCompatActivity = (AppCompatActivity) context;
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ImmVideoItemView.J(this.f47980a, (AddToDownloadEvent) obj);
            }
        };
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = AddToDownloadEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        Lifecycle.State state = Lifecycle.State.CREATED;
        flowEventBus.observeEvent(appCompatActivity, name, state, kotlinx.coroutines.y0.c().r(), false, function1);
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function2 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ImmVideoItemView.K(this.f47983a, (hx.c) obj);
            }
        };
        FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name2 = hx.c.class.getName();
        Intrinsics.g(name2, "getName(...)");
        flowEventBus2.observeEvent((AppCompatActivity) context2, name2, state, kotlinx.coroutines.y0.c().r(), false, function2);
    }

    public static final Unit J(ImmVideoItemView immVideoItemView, AddToDownloadEvent value) {
        Subject subject;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = immVideoItemView.data;
            if (!TextUtils.equals(subjectId, (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) ? null : subject.getSubjectId())) {
                return Unit.f64096a;
            }
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
        return Unit.f64096a;
    }

    public static final Unit K(ImmVideoItemView immVideoItemView, hx.c value) {
        Subject subject;
        ShortTVFavInfo shortTVFavInfo;
        Subject subject2;
        Intrinsics.h(value, "value");
        try {
            String strC = value.c();
            PostSubjectItem postSubjectItem = immVideoItemView.data;
            if (!TextUtils.equals(strC, (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId())) {
                return Unit.f64096a;
            }
            PostSubjectItem postSubjectItem2 = immVideoItemView.data;
            if (postSubjectItem2 != null && (subject = postSubjectItem2.getSubject()) != null && (shortTVFavInfo = subject.getShortTVFavInfo()) != null) {
                shortTVFavInfo.setFavoriteNum(value.b());
                shortTVFavInfo.setHasFavorite(value.a());
            }
            immVideoItemView.viewBinding.f74580y.setSelected(value.a());
            AppCompatTextView appCompatTextView = immVideoItemView.viewBinding.f74580y;
            String strB = value.b();
            appCompatTextView.setText(com.transsion.baseui.util.j.a(strB != null ? Long.parseLong(strB) : 0L));
            return Unit.f64096a;
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
    }

    private final void L() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ImmVideoItemView.M(this.f47986a, (LikeEvent) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LikeEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final Unit M(ImmVideoItemView immVideoItemView, LikeEvent value) {
        Stat stat;
        Stat stat2;
        Long likeCount;
        Stat stat3;
        Stat stat4;
        Long likeCount2;
        Intrinsics.h(value, "value");
        try {
            String subjectId = value.getSubjectId();
            PostSubjectItem postSubjectItem = immVideoItemView.data;
            if (!TextUtils.equals(subjectId, postSubjectItem != null ? postSubjectItem.getPostId() : null)) {
                return Unit.f64096a;
            }
            PostSubjectItem postSubjectItem2 = immVideoItemView.data;
            if (postSubjectItem2 != null) {
                postSubjectItem2.setHasLike(Boolean.valueOf(value.getLike()));
            }
            if (value.getLike()) {
                PostSubjectItem postSubjectItem3 = immVideoItemView.data;
                if (postSubjectItem3 != null && (stat3 = postSubjectItem3.getStat()) != null) {
                    PostSubjectItem postSubjectItem4 = immVideoItemView.data;
                    stat3.setLikeCount((postSubjectItem4 == null || (stat4 = postSubjectItem4.getStat()) == null || (likeCount2 = stat4.getLikeCount()) == null) ? null : Long.valueOf(likeCount2.longValue() + 1));
                }
            } else {
                PostSubjectItem postSubjectItem5 = immVideoItemView.data;
                if (postSubjectItem5 != null && (stat = postSubjectItem5.getStat()) != null) {
                    PostSubjectItem postSubjectItem6 = immVideoItemView.data;
                    stat.setLikeCount((postSubjectItem6 == null || (stat2 = postSubjectItem6.getStat()) == null || (likeCount = stat2.getLikeCount()) == null) ? null : Long.valueOf(likeCount.longValue() - 1));
                }
            }
            PostSubjectItem postSubjectItem7 = immVideoItemView.data;
            if (postSubjectItem7 != null) {
                immVideoItemView.i0(postSubjectItem7);
            }
            return Unit.f64096a;
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
    }

    private final void N(View view) {
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        showCommentDialog();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.transsion.postdetail.viewmodel.PostDetailViewModel] */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [int] */
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
    private final void O(View view) {
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        if (!yg.l.f76264a.e()) {
            fh.b.f60176a.d(com.tn.lib.widget.R$string.no_network_tips);
            return;
        }
        PostSubjectItem postSubjectItem = this.data;
        ?? C = postSubjectItem != null ? Intrinsics.c(postSubjectItem.getHasLike(), Boolean.TRUE) : 0;
        ?? r10 = this.videoDetailModel;
        if (r10 != 0) {
            PostSubjectItem postSubjectItem2 = this.data;
            r10.G(postSubjectItem2 != null ? postSubjectItem2.getPostId() : null, C);
        }
        com.transsion.postdetail.helper.a aVar = com.transsion.postdetail.helper.a.f46861a;
        PostSubjectItem postSubjectItem3 = this.data;
        aVar.o(postSubjectItem3, postSubjectItem3 != null ? Intrinsics.c(postSubjectItem3.getHasLike(), Boolean.TRUE) : false, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    private final void P(long progress) {
        Boolean bool = this.videoLoadMore;
        Boolean bool2 = Boolean.TRUE;
        if (Intrinsics.c(bool, bool2)) {
            ImmVideoHelper.a aVar = ImmVideoHelper.f46840h;
            if (aVar.a().n() && progress >= 1000) {
                aVar.a().t();
                ImmVideoGuideView immVideoGuideViewA = ImmVideoGuideView.INSTANCE.a(this);
                immVideoGuideViewA.postDelayed(new Runnable() {
                    @Override
                    public final void run() {
                        ImmVideoItemView.Q(this.f48018a);
                    }
                }, 5000L);
                this.guideView = immVideoGuideViewA;
                return;
            }
        }
        if (Intrinsics.c(this.videoLoadMore, bool2) && Intrinsics.c(this.pageFrom, "Trending")) {
            ImmVideoHelper.a aVar2 = ImmVideoHelper.f46840h;
            if (!aVar2.a().o() || progress < 1000) {
                return;
            }
            aVar2.a().u();
            ImmVideoGuideView immVideoGuideViewA2 = ImmVideoGuideView.INSTANCE.a(this);
            immVideoGuideViewA2.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ImmVideoItemView.R(this.f48021a);
                }
            }, 5000L);
            this.guideView = immVideoGuideViewA2;
        }
    }

    public static final void Q(ImmVideoItemView immVideoItemView) {
        ImmVideoGuideView immVideoGuideView = immVideoItemView.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
    }

    public static final void R(ImmVideoItemView immVideoItemView) {
        ImmVideoGuideView immVideoGuideView = immVideoItemView.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
    }

    private final void S(View view) {
        PostSubjectItem postSubjectItem;
        DownloadBean downloadBeanG;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L) || (postSubjectItem = this.data) == null || (downloadBeanG = DownloadUtil.f57680a.G(postSubjectItem)) == null) {
            return;
        }
        DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
        String resourceId = downloadBeanG.getResourceId();
        if (resourceId == null) {
            resourceId = "";
        }
        DownloadBean downloadBeanQ = downloadEsHelperA.q(resourceId);
        if (downloadBeanQ == null || downloadBeanQ.getStatus() != 5) {
            com.transsion.baseui.util.m.c(R$string.shorts_click_download);
            com.transsion.postdetail.helper.a.f46861a.i(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
            getDownloadManager().p(downloadBeanG);
            j0();
        }
    }

    private final void T(View view) {
        Fragment fragment;
        FragmentManager childFragmentManager;
        ShareDialogFragment shareDialogFragment;
        Integer subjectRate;
        User user;
        User user2;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        com.transsion.postdetail.helper.a.f46861a.z(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
        if (this.mShareDialog == null) {
            qx.a loginApi = getLoginApi();
            UserInfo userInfoI = loginApi != null ? loginApi.i() : null;
            PostSubjectItem postSubjectItem = this.data;
            boolean zEquals = TextUtils.equals((postSubjectItem == null || (user2 = postSubjectItem.getUser()) == null) ? null : user2.getUserId(), userInfoI != null ? userInfoI.getUserId() : null);
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.POST_TYPE;
            PostSubjectItem postSubjectItem2 = this.data;
            String postId = postSubjectItem2 != null ? postSubjectItem2.getPostId() : null;
            PostSubjectItem postSubjectItem3 = this.data;
            String userId = (postSubjectItem3 == null || (user = postSubjectItem3.getUser()) == null) ? null : user.getUserId();
            String value = ReportType.POST.getValue();
            PostSubjectItem postSubjectItem4 = this.data;
            String title = postSubjectItem4 != null ? postSubjectItem4.getTitle() : null;
            PostSubjectItem postSubjectItem5 = this.data;
            String string = (postSubjectItem5 == null || (subjectRate = postSubjectItem5.getSubjectRate()) == null) ? null : subjectRate.toString();
            PostSubjectItem postSubjectItem6 = this.data;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, postId, userId, value, title, string, false, zEquals, false, "postdetail", postSubjectItem6 != null ? postSubjectItem6.getOps() : null, view.getContext().getString(R$string.save_video));
            this.mShareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new e(view, this));
            }
        }
        try {
            Fragment fragment2 = this.fragment;
            if (fragment2 == null || !fragment2.isAdded() || (fragment = this.fragment) == null || (childFragmentManager = fragment.getChildFragmentManager()) == null) {
                return;
            }
            childFragmentManager.g0();
            ShareDialogFragment shareDialogFragment2 = this.mShareDialog;
            if ((shareDialogFragment2 == null || !shareDialogFragment2.isAdded()) && childFragmentManager.k0("share") == null && (shareDialogFragment = this.mShareDialog) != null) {
                shareDialogFragment.show(childFragmentManager, "share");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public final void U() {
        ClipLoading clLoading = this.viewBinding.f74560e;
        Intrinsics.g(clLoading, "clLoading");
        if (clLoading.getVisibility() == 0) {
            return;
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar == null || !fVar.isPlaying()) {
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.c();
            }
            com.transsion.player.orplayer.f fVar2 = this.orPlayer;
            if (fVar2 != null) {
                fVar2.play();
            }
            this.isClickPause = false;
            return;
        }
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.b();
        }
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        if (fVar3 != null) {
            fVar3.pause();
        }
        this.isClickPause = true;
    }

    public static final void V(ImmVideoItemView immVideoItemView) {
        com.transsion.player.orplayer.f fVar;
        Fragment fragment = immVideoItemView.fragment;
        if (fragment == null || !fragment.isVisible() || (fVar = immVideoItemView.orPlayer) == null) {
            return;
        }
        fVar.play();
    }

    private final void W(PostSubjectItem item) {
        String userId;
        String groupId;
        String subjectId;
        String string;
        String value;
        Integer subjectType;
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        Pair pairA = TuplesKt.a("post_id", postId);
        Pair pairA2 = TuplesKt.a(WebConstants.PAGE_FROM, this.pageFrom);
        Pair pairA3 = TuplesKt.a("module_name", "hot_comment");
        Pair pairA4 = TuplesKt.a("is_cache_post", String.valueOf(item.isRoomCache()));
        User user = item.getUser();
        if (user == null || (userId = user.getUserId()) == null) {
            userId = "";
        }
        Pair pairA5 = TuplesKt.a("user_id", userId);
        Group group = item.getGroup();
        if (group == null || (groupId = group.getGroupId()) == null) {
            groupId = "";
        }
        Pair pairA6 = TuplesKt.a("group_id", groupId);
        Subject subject = item.getSubject();
        if (subject == null || (subjectId = subject.getSubjectId()) == null) {
            subjectId = "";
        }
        Pair pairA7 = TuplesKt.a("subject_id", subjectId);
        Subject subject2 = item.getSubject();
        if (subject2 == null || (subjectType = subject2.getSubjectType()) == null || (string = subjectType.toString()) == null) {
            string = "";
        }
        Pair pairA8 = TuplesKt.a("subject_type", string);
        Pair pairA9 = TuplesKt.a("builtin", item.getBuiltIn() ? "1" : "0");
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        Pair pairA10 = TuplesKt.a("post_media_type", value);
        String ops = item.getOps();
        qi.h.f69682a.z(VideoFragment.PAGE_NAME, MapsKt.m(pairA, pairA2, pairA3, pairA4, pairA5, pairA6, pairA7, pairA8, pairA9, pairA10, TuplesKt.a("ops", ops != null ? ops : "")));
    }

    private final void X(String moduleName, PostSubjectItem item) {
        String commentId;
        String value;
        String groupId;
        HashMap map = new HashMap();
        map.put("module_name", moduleName);
        CommentBean hotComment = item.getHotComment();
        String str = "";
        if (hotComment == null || (commentId = hotComment.getCommentId()) == null) {
            commentId = "";
        }
        map.put("comment_id", commentId);
        String postId = item.getPostId();
        if (postId == null) {
            postId = "";
        }
        map.put("post_id", postId);
        String ops = item.getOps();
        if (ops == null) {
            ops = "";
        }
        map.put("ops", ops);
        Group group = item.getGroup();
        if (group != null && (groupId = group.getGroupId()) != null) {
            str = groupId;
        }
        map.put("group_id", str);
        Media media = item.getMedia();
        if (media == null || (value = media.getMediaType()) == null) {
            value = MediaType.TEXT.getValue();
        }
        map.put("post_media_type", value);
        String str2 = this.pageFrom;
        if (str2 != null && str2.length() != 0) {
            String str3 = this.pageFrom;
            Intrinsics.e(str3);
            map.put(WebConstants.PAGE_FROM, str3);
        }
        com.transsion.baselib.helper.a.f42121a.i(VideoFragment.PAGE_NAME, map);
    }

    public final void Y(DownloadBean download) {
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b()), null, null, new ImmVideoItemView$saveBuiltInVideo$1(download, null), 3, null);
    }

    private static final PostDetailViewModel Z(Lazy lazy) {
        return (PostDetailViewModel) lazy.getValue();
    }

    private static final ShortTvPlayListViewModel a0(Lazy lazy) {
        return (ShortTvPlayListViewModel) lazy.getValue();
    }

    private static final CommentViewModel b0(Lazy lazy) {
        return (CommentViewModel) lazy.getValue();
    }

    private final void c0(View view) {
        ObjectAnimator objectAnimator = this.rotateAnimator;
        if (objectAnimator != null) {
            Intrinsics.e(objectAnimator);
            if (objectAnimator.isRunning()) {
                return;
            }
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "rotation", 0.0f, 360.0f);
        objectAnimatorOfFloat.setDuration(800L);
        objectAnimatorOfFloat.setRepeatCount(-1);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.start();
        this.rotateAnimator = objectAnimatorOfFloat;
    }

    private final void d0(View view) {
        ObjectAnimator objectAnimator = this.rotateAnimator;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        this.rotateAnimator = null;
        view.setRotation(0.0f);
    }

    public final void e0(long comment) {
        this.viewBinding.f74579x.setText(com.transsion.baseui.util.j.a(comment));
    }

    private final void f0(final PostSubjectItem item) {
        String url;
        Subject subject;
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                BLConstraintLayout clHotComment = this.viewBinding.f74559d;
                Intrinsics.g(clHotComment, "clHotComment");
                uf.c.g(clHotComment);
                return;
            }
        }
        final CommentBean hotComment = item.getHotComment();
        String content = hotComment != null ? hotComment.getContent() : null;
        if (content == null || content.length() == 0) {
            BLConstraintLayout clHotComment2 = this.viewBinding.f74559d;
            Intrinsics.g(clHotComment2, "clHotComment");
            uf.c.g(clHotComment2);
            NestedScrollableHost nsPostDes = this.viewBinding.f74575t;
            Intrinsics.g(nsPostDes, "nsPostDes");
            uf.c.k(nsPostDes);
            return;
        }
        W(item);
        BLConstraintLayout clHotComment3 = this.viewBinding.f74559d;
        Intrinsics.g(clHotComment3, "clHotComment");
        uf.c.k(clHotComment3);
        NestedScrollableHost nsPostDes2 = this.viewBinding.f74575t;
        Intrinsics.g(nsPostDes2, "nsPostDes");
        uf.c.g(nsPostDes2);
        this.viewBinding.f74581z.setText(content);
        String avatarUrl = hotComment.getAvatarUrl();
        String str = "";
        if (avatarUrl == null) {
            avatarUrl = "";
        }
        if (avatarUrl.length() > 0) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarC = aVar.m(context).g(avatarUrl).m(lj.a.b(20)).c(lj.a.b(20));
            ShapeableImageView ivHotCommentAvatar = this.viewBinding.f74566k;
            Intrinsics.g(ivHotCommentAvatar, "ivHotCommentAvatar");
            bVarC.d(ivHotCommentAvatar);
        }
        this.viewBinding.B.setText(hotComment.getLikeCnt() == 0 ? "" : com.transsion.baseui.util.j.a(hotComment.getLikeCnt()));
        this.viewBinding.f74568m.setEnabled(Intrinsics.c(hotComment.getLikeStatu(), Boolean.TRUE));
        List<Cover> imageList = hotComment.getImageList();
        if (imageList == null || imageList.isEmpty()) {
            ShapeableImageView commentCover = this.viewBinding.f74561f;
            Intrinsics.g(commentCover, "commentCover");
            uf.c.g(commentCover);
        } else {
            ShapeableImageView shapeableImageView = this.viewBinding.f74561f;
            shapeableImageView.setVisibility(0);
            ni.f.a aVar2 = ni.f.f67269a;
            Context context2 = shapeableImageView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            ni.f.b bVarM = aVar2.m(context2);
            List<Cover> imageList2 = hotComment.getImageList();
            Intrinsics.e(imageList2);
            Cover cover = imageList2.get(0);
            if (cover != null && (url = cover.getUrl()) != null) {
                str = url;
            }
            ni.f.b bVarG = bVarM.g(str);
            Intrinsics.e(shapeableImageView);
            bVarG.d(shapeableImageView);
            Intrinsics.e(shapeableImageView);
        }
        this.viewBinding.I.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ImmVideoItemView.g0(this.f48001a, hotComment, item, view);
            }
        });
        Context context3 = getContext();
        Intrinsics.f(context3, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ImmVideoItemView.h0(hotComment, this, (rm.b) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = rm.b.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context3, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
    }

    public static final void g0(ImmVideoItemView immVideoItemView, CommentBean commentBean, PostSubjectItem postSubjectItem, View view) {
        immVideoItemView.A(commentBean, postSubjectItem);
    }

    private final com.transsnet.downloader.manager.g getDownloadManager() {
        return (com.transsnet.downloader.manager.g) this.downloadManager.getValue();
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    public static final Unit h0(CommentBean commentBean, ImmVideoItemView immVideoItemView, rm.b value) {
        Intrinsics.h(value, "value");
        if (Intrinsics.c(value.a(), commentBean.getCommentId())) {
            commentBean.setLikeStatu(Boolean.valueOf(value.c()));
            commentBean.setLikeCnt(value.b());
            immVideoItemView.viewBinding.B.setText(value.b() == 0 ? "" : com.transsion.baseui.util.j.a(value.b()));
            immVideoItemView.viewBinding.f74568m.setEnabled(value.c());
        }
        return Unit.f64096a;
    }

    private final void i0(PostSubjectItem item) {
        Long likeCount;
        AppCompatTextView appCompatTextView = this.viewBinding.C;
        Boolean hasLike = item.getHasLike();
        appCompatTextView.setSelected(hasLike != null ? hasLike.booleanValue() : false);
        Stat stat = item.getStat();
        String strA = com.transsion.baseui.util.j.a((stat == null || (likeCount = stat.getLikeCount()) == null) ? 0L : likeCount.longValue());
        if (Intrinsics.c(strA, "0")) {
            strA = "";
        }
        appCompatTextView.setText(strA);
    }

    public final void j0() {
        final String postId;
        AppCompatImageView appCompatImageView;
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null || (appCompatImageView = this.viewBinding.f74570o) == null) {
            return;
        }
        DownloadBean downloadBeanQ = DownloadEsHelper.f57201m.a().q(postId);
        if (downloadBeanQ == null) {
            d0(appCompatImageView);
            appCompatImageView.setImageResource(R$mipmap.post_detail_ic_video_download_new);
            appCompatImageView.setEnabled(true);
            appCompatImageView.setOnClickListener(this);
            return;
        }
        int status = downloadBeanQ.getStatus();
        if (status == 1 || status == 2 || status == 3) {
            appCompatImageView.setImageResource(R$drawable.post_detail_ic_video_downloading);
            appCompatImageView.setEnabled(false);
            c0(appCompatImageView);
        } else {
            if (status != 5) {
                d0(appCompatImageView);
                appCompatImageView.setImageResource(R$mipmap.post_detail_ic_video_download_new);
                appCompatImageView.setEnabled(true);
                appCompatImageView.setOnClickListener(this);
                return;
            }
            d0(appCompatImageView);
            appCompatImageView.setImageResource(R$drawable.post_detail_ic_video_downloaded);
            appCompatImageView.setEnabled(true);
            appCompatImageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    ImmVideoItemView.k0(this.f48009a, postId, view);
                }
            });
        }
    }

    public static final void k0(ImmVideoItemView immVideoItemView, String str, View view) {
        com.transsion.postdetail.helper.a.f46861a.k(immVideoItemView.data, VideoFragment.PAGE_NAME, immVideoItemView.pageFrom);
        Navigator.x(TheRouter.c("/download/panel_activity").F("extra_page_index", 0).K("extra_target_resource_id", str), immVideoItemView.getContext(), null, 2, null);
    }

    private final void l0(long share) {
        this.viewBinding.E.setText(com.transsion.baseui.util.j.a(share));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v47, types: [T, com.transsion.moviedetailapi.bean.ShortTVFavInfo] */
    private final void m0() {
        Subject subject;
        Subject subject2;
        Cover cover;
        String url;
        String thumbnail;
        Subject subject3;
        Cover cover2;
        Subject subject4;
        Subject subject5;
        Subject subject6;
        Subject subject7;
        ShortTVItem shortTVFirstEp;
        Subject subject8;
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (subject = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                BLLinearLayout root = this.viewBinding.f74573r.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                uf.c.g(root);
                ShapeableImageView ivVideoAvatar = this.viewBinding.f74572q;
                Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
                uf.c.g(ivVideoAvatar);
                AppCompatImageView ivDownload = this.viewBinding.f74565j;
                Intrinsics.g(ivDownload, "ivDownload");
                uf.c.k(ivDownload);
                AppCompatTextView tvTitle = this.viewBinding.G;
                Intrinsics.g(tvTitle, "tvTitle");
                uf.c.k(tvTitle);
                BLTextView tvShortTvEp = this.viewBinding.F;
                Intrinsics.g(tvShortTvEp, "tvShortTvEp");
                uf.c.k(tvShortTvEp);
                ShapeableImageView ivShortCover = this.viewBinding.f74571p;
                Intrinsics.g(ivShortCover, "ivShortCover");
                uf.c.k(ivShortCover);
                AppCompatTextView appCompatTextView = this.viewBinding.G;
                PostSubjectItem postSubjectItem2 = this.data;
                T shortTVFavInfo = 0;
                shortTVFavInfo = 0;
                appCompatTextView.setText((postSubjectItem2 == null || (subject8 = postSubjectItem2.getSubject()) == null) ? null : subject8.getTitle());
                com.transsion.postdetail.util.s sVar = com.transsion.postdetail.util.s.f48087a;
                PostSubjectItem postSubjectItem3 = this.data;
                sVar.a(Integer.valueOf((postSubjectItem3 == null || (subject7 = postSubjectItem3.getSubject()) == null || (shortTVFirstEp = subject7.getShortTVFirstEp()) == null) ? 1 : shortTVFirstEp.getEp()));
                PostSubjectItem postSubjectItem4 = this.data;
                this.viewBinding.F.setText(getContext().getString(R$string.short_tv_play_all, sVar.a(Integer.valueOf((postSubjectItem4 == null || (subject6 = postSubjectItem4.getSubject()) == null) ? 0 : subject6.getTotalEpisode()))));
                com.transsion.baseui.widget.jumpingbeans.a.a(this.viewBinding.F).e(0, this.viewBinding.F.getText().toString().length()).g(true).i(100).f(0.05f).h(10000).a();
                ShapeableImageView shapeableImageView = this.viewBinding.f74571p;
                PostSubjectItem postSubjectItem5 = this.data;
                if (postSubjectItem5 == null || !postSubjectItem5.getBuiltIn()) {
                    PostSubjectItem postSubjectItem6 = this.data;
                    if (postSubjectItem6 != null && (subject2 = postSubjectItem6.getSubject()) != null && (cover = subject2.getCover()) != null && (url = cover.getUrl()) != null) {
                        ni.f.a aVar = ni.f.f67269a;
                        Context context = getContext();
                        Intrinsics.g(context, "getContext(...)");
                        ni.f.b bVarC = aVar.m(context).g(url).m(com.blankj.utilcode.util.i.e(21.0f)).c(com.blankj.utilcode.util.i.e(30.0f));
                        PostSubjectItem postSubjectItem7 = this.data;
                        if (postSubjectItem7 == null || (subject3 = postSubjectItem7.getSubject()) == null || (cover2 = subject3.getCover()) == null || (thumbnail = cover2.getThumbnail()) == null) {
                            thumbnail = "";
                        }
                        ni.f.b bVarH = bVarC.l(thumbnail).h(true);
                        ShapeableImageView ivShortCover2 = this.viewBinding.f74571p;
                        Intrinsics.g(ivShortCover2, "ivShortCover");
                        bVarH.d(ivShortCover2);
                    }
                } else {
                    kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ImmVideoItemView$updateShortTVInfo$1(this, null), 3, null);
                }
                final Ref.ObjectRef objectRef = new Ref.ObjectRef();
                PostSubjectItem postSubjectItem8 = this.data;
                if (postSubjectItem8 != null && (subject5 = postSubjectItem8.getSubject()) != null) {
                    shortTVFavInfo = subject5.getShortTVFavInfo();
                }
                objectRef.element = shortTVFavInfo;
                if (shortTVFavInfo == 0) {
                    ?? shortTVFavInfo2 = new ShortTVFavInfo(null, false, null, 7, null);
                    shortTVFavInfo2.setFavoriteNum("0");
                    objectRef.element = shortTVFavInfo2;
                    PostSubjectItem postSubjectItem9 = this.data;
                    if (postSubjectItem9 != null && (subject4 = postSubjectItem9.getSubject()) != null) {
                        subject4.setShortTVFavInfo((ShortTVFavInfo) objectRef.element);
                    }
                }
                AppCompatTextView tvFavorite = this.viewBinding.f74580y;
                Intrinsics.g(tvFavorite, "tvFavorite");
                uf.c.k(tvFavorite);
                this.viewBinding.f74580y.setSelected(((ShortTVFavInfo) objectRef.element).getHasFavorite());
                AppCompatTextView appCompatTextView2 = this.viewBinding.f74580y;
                String favoriteNum = ((ShortTVFavInfo) objectRef.element).getFavoriteNum();
                appCompatTextView2.setText(com.transsion.baseui.util.j.a(Long.parseLong(favoriteNum != null ? favoriteNum : "0")));
                this.viewBinding.f74580y.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        ImmVideoItemView.n0(this.f48013a, objectRef, view);
                    }
                });
                return;
            }
        }
        AppCompatTextView tvTitle2 = this.viewBinding.G;
        Intrinsics.g(tvTitle2, "tvTitle");
        uf.c.g(tvTitle2);
        BLTextView tvShortTvEp2 = this.viewBinding.F;
        Intrinsics.g(tvShortTvEp2, "tvShortTvEp");
        uf.c.g(tvShortTvEp2);
        ShapeableImageView ivShortCover3 = this.viewBinding.f74571p;
        Intrinsics.g(ivShortCover3, "ivShortCover");
        uf.c.g(ivShortCover3);
        AppCompatImageView ivDownload2 = this.viewBinding.f74565j;
        Intrinsics.g(ivDownload2, "ivDownload");
        uf.c.g(ivDownload2);
        ShapeableImageView ivVideoAvatar2 = this.viewBinding.f74572q;
        Intrinsics.g(ivVideoAvatar2, "ivVideoAvatar");
        uf.c.k(ivVideoAvatar2);
        AppCompatTextView tvFavorite2 = this.viewBinding.f74580y;
        Intrinsics.g(tvFavorite2, "tvFavorite");
        uf.c.g(tvFavorite2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void n0(ImmVideoItemView immVideoItemView, Ref.ObjectRef objectRef, View view) {
        Subject subject;
        Subject subject2;
        com.transsion.postdetail.shorttv.k kVar = com.transsion.postdetail.shorttv.k.f47192a;
        PostSubjectItem postSubjectItem = immVideoItemView.data;
        String subjectId = (postSubjectItem == null || (subject2 = postSubjectItem.getSubject()) == null) ? null : subject2.getSubjectId();
        PostSubjectItem postSubjectItem2 = immVideoItemView.data;
        kVar.c(subjectId, (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) ? null : subject.getOps(), "", ((ShortTVFavInfo) objectRef.element).getHasFavorite(), VideoFragment.PAGE_NAME, immVideoItemView.pageFrom);
        ShortTvPlayListViewModel shortTvPlayListViewModel = immVideoItemView.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel != null) {
            PostSubjectItem postSubjectItem3 = immVideoItemView.data;
            shortTvPlayListViewModel.d(postSubjectItem3 != null ? postSubjectItem3.getSubject() : null);
        }
    }

    private final void o0(PostSubjectItem item) {
        setBottomSubjectAndRoomVisibility(item.getSubject() != null, item.getGroup() != null);
        if (item.getSubject() != null) {
            setBottomSubjectModuleData(item);
        }
        if (item.getGroup() != null) {
            Group group = item.getGroup();
            String name = group != null ? group.getName() : null;
            if (name == null || name.length() == 0) {
                return;
            }
            setBottomRoomModuleData(item);
        }
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0176  */
    /* JADX WARN: Code duplicated, block: B:70:0x01ed  */
    private final void p0(final PostSubjectItem item) {
        String avatar;
        FirstFrame firstFrame;
        String url;
        String string;
        Subject subject;
        Subject subject2;
        FirstFrame firstFrame2;
        String description = null;
        if (item.getBuiltIn()) {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ImmVideoItemView$updateVideoInfo$1(item, this, null), 3, null);
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ImmVideoItemView$updateVideoInfo$2(item, this, null), 3, null);
            wf.a.C0922a c0922a = wf.a.f74274a;
            String str = this.TAG;
            Media media = item.getMedia();
            String url2 = (media == null || (firstFrame2 = media.getFirstFrame()) == null) ? null : firstFrame2.getUrl();
            User user = item.getUser();
            wf.a.C0922a.f(c0922a, str, "set info - firstFrame = " + url2 + ", avatar = " + (user != null ? user.getAvatar() : null), false, 4, null);
        } else {
            Media media2 = item.getMedia();
            if (media2 != null && (firstFrame = media2.getFirstFrame()) != null && (url = firstFrame.getUrl()) != null) {
                Glide.with(getContext()).load2(ni.f.a.e(ni.f.f67269a, url, sm.b.f72338e.a(), false, false, 12, null)).into(this.viewBinding.f74564i);
            }
            ni.f.a aVar = ni.f.f67269a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            User user2 = item.getUser();
            if (user2 == null || (avatar = user2.getAvatar()) == null) {
                avatar = "";
            }
            ni.f.b bVarC = bVarM.g(avatar).m(this.viewBinding.f74572q.getWidth()).c(this.viewBinding.f74572q.getHeight());
            ShapeableImageView ivVideoAvatar = this.viewBinding.f74572q;
            Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
            bVarC.d(ivVideoAvatar);
        }
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (subject2 = postSubjectItem.getSubject()) != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                this.viewBinding.G.setTextSize(18.0f);
                NestedScrollableHost nsPostDes = this.viewBinding.f74575t;
                Intrinsics.g(nsPostDes, "nsPostDes");
                uf.c.g(nsPostDes);
                AppCompatImageView ivSave = this.viewBinding.f74570o;
                Intrinsics.g(ivSave, "ivSave");
                uf.c.g(ivSave);
                return;
            }
        }
        NestedScrollableHost nsPostDes2 = this.viewBinding.f74575t;
        Intrinsics.g(nsPostDes2, "nsPostDes");
        uf.c.k(nsPostDes2);
        AppCompatImageView ivSave2 = this.viewBinding.f74570o;
        Intrinsics.g(ivSave2, "ivSave");
        uf.c.k(ivSave2);
        j0();
        this.viewBinding.G.setTextSize(16.0f);
        final ExpandView expandView = this.viewBinding.f74562g;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        expandView.setExpandListener(new g(booleanRef));
        if (TextUtils.isEmpty(item.getTitle())) {
            String content = item.getContent();
            if (content != null) {
                string = StringsKt.n1(content).toString();
            } else {
                string = null;
            }
        } else if (TextUtils.isEmpty(item.getContent())) {
            String title = item.getTitle();
            if (title != null) {
                string = StringsKt.n1(title).toString();
            } else {
                string = null;
            }
        } else {
            String title2 = item.getTitle();
            String string2 = title2 != null ? StringsKt.n1(title2).toString() : null;
            String content2 = item.getContent();
            string = string2 + "\n" + (content2 != null ? StringsKt.n1(content2).toString() : null);
        }
        PostSubjectItem postSubjectItem2 = this.data;
        if (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) {
            description = string;
        } else {
            Integer subjectType2 = subject.getSubjectType();
            int value2 = SubjectType.SHORT_TV.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                Subject subject3 = item.getSubject();
                if (subject3 != null) {
                    description = subject3.getDescription();
                }
            } else {
                description = string;
            }
        }
        if (TextUtils.isEmpty(description)) {
            Intrinsics.e(expandView);
            uf.c.g(expandView);
        } else {
            Intrinsics.e(expandView);
            uf.c.k(expandView);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            expandView.m(com.transsion.baseui.util.l.b(expandView, description, false, new h(objectRef), new Function2() {
                @Override
                public final Object invoke(Object obj, Object obj2) {
                    return ImmVideoItemView.q0(expandView, booleanRef, objectRef, item, this, (View) obj, (String) obj2);
                }
            }));
        }
        Intrinsics.e(expandView);
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0065  */
    public static final Unit q0(ExpandView expandView, Ref.BooleanRef booleanRef, Ref.ObjectRef objectRef, PostSubjectItem postSubjectItem, ImmVideoItemView immVideoItemView, View view, String str) {
        boolean z10;
        boolean z11;
        String resourceLink;
        ResourceDetectors resourceDetector;
        String subjectId;
        List<UrlContent> list;
        int length = expandView.getText().length();
        if (!booleanRef.element || (list = (List) objectRef.element) == null) {
            z10 = false;
        } else {
            z10 = false;
            for (UrlContent urlContent : list) {
                int indexOfUrl = urlContent.getIndexOfUrl();
                int indexOfUrl2 = urlContent.getIndexOfUrl() + urlContent.getUrl().length();
                if (indexOfUrl <= length && indexOfUrl2 >= length && indexOfUrl <= length && length < indexOfUrl2 + 1) {
                    z10 = true;
                }
            }
        }
        if (z10) {
            expandView.performClick();
        } else {
            Subject subject = postSubjectItem.getSubject();
            if (subject != null && (subjectId = subject.getSubjectId()) != null) {
                z11 = subjectId.length() > 0;
            }
            if (z11) {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context = expandView.getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context;
                Subject subject2 = postSubjectItem.getSubject();
                Intrinsics.e(str);
                PostSubjectItem postSubjectItem2 = immVideoItemView.data;
                String ops = postSubjectItem2 != null ? postSubjectItem2.getOps() : null;
                Subject subject3 = postSubjectItem.getSubject();
                if (subject3 == null || (resourceDetector = subject3.getResourceDetector()) == null || (resourceLink = resourceDetector.getResourceLink()) == null) {
                    resourceLink = "";
                }
                String str2 = resourceLink;
                User user = postSubjectItem.getUser();
                downloadManagerApiA.U(fragmentActivity, subject2, str, "post_video_detail", ops, str2, user != null ? user.getNickname() : null);
            } else {
                Navigator.x(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str), expandView.getContext(), null, 2, null);
            }
        }
        return Unit.f64096a;
    }

    private final void setBottomRoomModuleData(PostSubjectItem item) {
        String avatar;
        Cover cover;
        AppCompatTextView appCompatTextView = this.viewBinding.f74573r.f74682g;
        Group group = item.getGroup();
        String url = null;
        appCompatTextView.setText(group != null ? group.getName() : null);
        ni.f.a aVar = ni.f.f67269a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarM = aVar.m(context);
        Group group2 = item.getGroup();
        if (group2 == null || (avatar = group2.getAvatar()) == null) {
            Group group3 = item.getGroup();
            if (group3 != null && (cover = group3.getCover()) != null) {
                url = cover.getUrl();
            }
            avatar = url == null ? "" : url;
        }
        ni.f.b bVarC = bVarM.g(avatar).m(lj.a.b(32)).c(lj.a.b(32));
        ShapeableImageView ivRoomCover = this.viewBinding.f74573r.f74678c;
        Intrinsics.g(ivRoomCover, "ivRoomCover");
        bVarC.d(ivRoomCover);
    }

    private final void setBottomSubjectAndRoomVisibility(boolean isShowSubject, boolean isShowRoom) {
        if (ij.g.f62108a.b()) {
            BLLinearLayout root = this.viewBinding.f74573r.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            root.setVisibility(isShowRoom ? 0 : 8);
            ConstraintLayout clSubjectContent = this.viewBinding.f74573r.f74677b;
            Intrinsics.g(clSubjectContent, "clSubjectContent");
            uf.c.g(clSubjectContent);
            View vSubjectRoomLine = this.viewBinding.f74573r.f74688m;
            Intrinsics.g(vSubjectRoomLine, "vSubjectRoomLine");
            uf.c.g(vSubjectRoomLine);
            LinearLayout llRoomTag = this.viewBinding.f74573r.f74681f;
            Intrinsics.g(llRoomTag, "llRoomTag");
            llRoomTag.setVisibility(isShowRoom ? 0 : 8);
            return;
        }
        if (isShowSubject) {
            BLLinearLayout root2 = this.viewBinding.f74573r.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            uf.c.k(root2);
            ConstraintLayout clSubjectContent2 = this.viewBinding.f74573r.f74677b;
            Intrinsics.g(clSubjectContent2, "clSubjectContent");
            uf.c.k(clSubjectContent2);
            View vSubjectRoomLine2 = this.viewBinding.f74573r.f74688m;
            Intrinsics.g(vSubjectRoomLine2, "vSubjectRoomLine");
            vSubjectRoomLine2.setVisibility(isShowRoom ? 0 : 8);
            LinearLayout llRoomTag2 = this.viewBinding.f74573r.f74681f;
            Intrinsics.g(llRoomTag2, "llRoomTag");
            llRoomTag2.setVisibility(isShowRoom ? 0 : 8);
            return;
        }
        BLLinearLayout root3 = this.viewBinding.f74573r.getRoot();
        Intrinsics.g(root3, "getRoot(...)");
        root3.setVisibility(isShowRoom ? 0 : 8);
        ConstraintLayout clSubjectContent3 = this.viewBinding.f74573r.f74677b;
        Intrinsics.g(clSubjectContent3, "clSubjectContent");
        uf.c.g(clSubjectContent3);
        View vSubjectRoomLine3 = this.viewBinding.f74573r.f74688m;
        Intrinsics.g(vSubjectRoomLine3, "vSubjectRoomLine");
        uf.c.g(vSubjectRoomLine3);
        LinearLayout llRoomTag3 = this.viewBinding.f74573r.f74681f;
        Intrinsics.g(llRoomTag3, "llRoomTag");
        llRoomTag3.setVisibility(isShowRoom ? 0 : 8);
    }

    private final void setBottomSubjectModuleData(PostSubjectItem item) {
        String url;
        String thumbnail;
        String title;
        Subject subject;
        String genre;
        List listS0;
        String str;
        Cover cover;
        Cover cover2;
        ni.f.a aVar = ni.f.f67269a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarM = aVar.m(context);
        Subject subject2 = item.getSubject();
        String str2 = "";
        if (subject2 == null || (cover2 = subject2.getCover()) == null || (url = cover2.getUrl()) == null) {
            url = "";
        }
        ni.f.b bVarC = bVarM.g(url).m(lj.a.b(32)).c(lj.a.b(32));
        Subject subject3 = item.getSubject();
        if (subject3 == null || (cover = subject3.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
            thumbnail = "";
        }
        ni.f.b bVarL = bVarC.l(thumbnail);
        ShapeableImageView ivSubjectCover = this.viewBinding.f74573r.f74679d;
        Intrinsics.g(ivSubjectCover, "ivSubjectCover");
        bVarL.d(ivSubjectCover);
        AppCompatTextView appCompatTextView = this.viewBinding.f74573r.f74685j;
        Subject subject4 = item.getSubject();
        if (subject4 == null || (title = subject4.getTitle()) == null) {
            title = "";
        }
        appCompatTextView.setText(title);
        Subject subject5 = item.getSubject();
        this.viewBinding.f74573r.f74680e.setImageResource(com.transsion.moviedetailapi.h.a(subject5 != null ? subject5.getSubjectType() : null));
        Subject subject6 = item.getSubject();
        Date dateL = com.blankj.utilcode.util.c0.l(subject6 != null ? subject6.getReleaseDate() : null, "yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateL);
        this.viewBinding.f74573r.f74683h.setText(String.valueOf(calendar.get(1)));
        Subject subject7 = item.getSubject();
        String genre2 = subject7 != null ? subject7.getGenre() : null;
        if (genre2 != null && genre2.length() != 0 && (subject = item.getSubject()) != null && (genre = subject.getGenre()) != null && (listS0 = StringsKt.S0(genre, new String[]{", "}, false, 0, 6, null)) != null && (str = (String) CollectionsKt.k0(listS0)) != null) {
            str2 = str;
        }
        AppCompatTextView tvSubjectGenre = this.viewBinding.f74573r.f74684i;
        Intrinsics.g(tvSubjectGenre, "tvSubjectGenre");
        tvSubjectGenre.setVisibility(str2.length() > 0 ? 0 : 8);
        AppCompatTextView tvSubjectGenre2 = this.viewBinding.f74573r.f74684i;
        Intrinsics.g(tvSubjectGenre2, "tvSubjectGenre");
        tvSubjectGenre2.setVisibility(str2.length() > 0 ? 0 : 8);
        this.viewBinding.f74573r.f74684i.setText(str2);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:21:0x00d0  */
    /* JADX WARN: Code duplicated, block: B:22:0x00dd  */
    /* JADX WARN: Code duplicated, block: B:40:0x0166  */
    public final void setContentVisibility(boolean visible) {
        Subject subject;
        String str;
        String str2;
        Subject subject2;
        if (!visible) {
            BLConstraintLayout clHotComment = this.viewBinding.f74559d;
            Intrinsics.g(clHotComment, "clHotComment");
            if (clHotComment.getVisibility() == 0) {
                this.isShowHotComment = true;
                BLConstraintLayout clHotComment2 = this.viewBinding.f74559d;
                Intrinsics.g(clHotComment2, "clHotComment");
                uf.c.h(clHotComment2);
            }
            AppCompatTextView tvFavorite = this.viewBinding.f74580y;
            Intrinsics.g(tvFavorite, "tvFavorite");
            if (tvFavorite.getVisibility() == 0) {
                this.isFavoriteShow = true;
                AppCompatTextView tvFavorite2 = this.viewBinding.f74580y;
                Intrinsics.g(tvFavorite2, "tvFavorite");
                uf.c.h(tvFavorite2);
            }
            PostSubjectItem postSubjectItem = this.data;
            if (postSubjectItem == null || (subject = postSubjectItem.getSubject()) == null) {
                ShapeableImageView ivVideoAvatar = this.viewBinding.f74572q;
                Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
                uf.c.h(ivVideoAvatar);
                BLLinearLayout root = this.viewBinding.f74573r.getRoot();
                Intrinsics.g(root, "getRoot(...)");
                uf.c.h(root);
                NestedScrollableHost nsPostDes = this.viewBinding.f74575t;
                Intrinsics.g(nsPostDes, "nsPostDes");
                uf.c.h(nsPostDes);
                AppCompatImageView ivSave = this.viewBinding.f74570o;
                Intrinsics.g(ivSave, "ivSave");
                uf.c.h(ivSave);
            } else {
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    BLTextView tvShortTvEp = this.viewBinding.F;
                    Intrinsics.g(tvShortTvEp, "tvShortTvEp");
                    uf.c.h(tvShortTvEp);
                    AppCompatTextView tvTitle = this.viewBinding.G;
                    Intrinsics.g(tvTitle, "tvTitle");
                    uf.c.h(tvTitle);
                    AppCompatImageView ivDownload = this.viewBinding.f74565j;
                    Intrinsics.g(ivDownload, "ivDownload");
                    uf.c.h(ivDownload);
                    ShapeableImageView ivShortCover = this.viewBinding.f74571p;
                    Intrinsics.g(ivShortCover, "ivShortCover");
                    uf.c.h(ivShortCover);
                } else {
                    ShapeableImageView ivVideoAvatar2 = this.viewBinding.f74572q;
                    Intrinsics.g(ivVideoAvatar2, "ivVideoAvatar");
                    uf.c.h(ivVideoAvatar2);
                    BLLinearLayout root2 = this.viewBinding.f74573r.getRoot();
                    Intrinsics.g(root2, "getRoot(...)");
                    uf.c.h(root2);
                    NestedScrollableHost nsPostDes2 = this.viewBinding.f74575t;
                    Intrinsics.g(nsPostDes2, "nsPostDes");
                    uf.c.h(nsPostDes2);
                    AppCompatImageView ivSave2 = this.viewBinding.f74570o;
                    Intrinsics.g(ivSave2, "ivSave");
                    uf.c.h(ivSave2);
                }
            }
            ProgressBar progressBar = this.viewBinding.f74576u;
            Intrinsics.g(progressBar, "progressBar");
            uf.c.h(progressBar);
            AppCompatTextView tvLike = this.viewBinding.C;
            Intrinsics.g(tvLike, "tvLike");
            uf.c.h(tvLike);
            AppCompatTextView tvShare = this.viewBinding.E;
            Intrinsics.g(tvShare, "tvShare");
            uf.c.h(tvShare);
            AppCompatImageView ivSave3 = this.viewBinding.f74570o;
            Intrinsics.g(ivSave3, "ivSave");
            uf.c.h(ivSave3);
            AppCompatTextView tvComment = this.viewBinding.f74579x;
            Intrinsics.g(tvComment, "tvComment");
            uf.c.h(tvComment);
            return;
        }
        PostSubjectItem postSubjectItem2 = this.data;
        if (postSubjectItem2 != null && (subject2 = postSubjectItem2.getSubject()) != null) {
            Integer subjectType2 = subject2.getSubjectType();
            str = "tvFavorite";
            int value2 = SubjectType.SHORT_TV.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                BLTextView tvShortTvEp2 = this.viewBinding.F;
                Intrinsics.g(tvShortTvEp2, "tvShortTvEp");
                uf.c.k(tvShortTvEp2);
                AppCompatTextView tvTitle2 = this.viewBinding.G;
                Intrinsics.g(tvTitle2, "tvTitle");
                uf.c.k(tvTitle2);
                AppCompatImageView ivDownload2 = this.viewBinding.f74565j;
                Intrinsics.g(ivDownload2, "ivDownload");
                uf.c.k(ivDownload2);
                ShapeableImageView ivShortCover2 = this.viewBinding.f74571p;
                Intrinsics.g(ivShortCover2, "ivShortCover");
                uf.c.k(ivShortCover2);
            }
            ProgressBar progressBar2 = this.viewBinding.f74576u;
            Intrinsics.g(progressBar2, "progressBar");
            uf.c.k(progressBar2);
            AppCompatTextView tvLike2 = this.viewBinding.C;
            Intrinsics.g(tvLike2, "tvLike");
            uf.c.k(tvLike2);
            AppCompatTextView tvShare2 = this.viewBinding.E;
            Intrinsics.g(tvShare2, "tvShare");
            uf.c.k(tvShare2);
            AppCompatTextView tvComment2 = this.viewBinding.f74579x;
            Intrinsics.g(tvComment2, "tvComment");
            uf.c.k(tvComment2);
            if (this.isShowHotComment) {
                BLConstraintLayout clHotComment3 = this.viewBinding.f74559d;
                Intrinsics.g(clHotComment3, "clHotComment");
                uf.c.k(clHotComment3);
            }
            if (this.isFavoriteShow) {
                AppCompatTextView appCompatTextView = this.viewBinding.f74580y;
                str2 = str;
                Intrinsics.g(appCompatTextView, str2);
                uf.c.k(appCompatTextView);
            } else {
                str2 = str;
            }
            AppCompatTextView appCompatTextView2 = this.viewBinding.f74580y;
            Intrinsics.g(appCompatTextView2, str2);
            uf.c.k(appCompatTextView2);
        }
        str = "tvFavorite";
        ShapeableImageView ivVideoAvatar3 = this.viewBinding.f74572q;
        Intrinsics.g(ivVideoAvatar3, "ivVideoAvatar");
        uf.c.k(ivVideoAvatar3);
        BLLinearLayout root3 = this.viewBinding.f74573r.getRoot();
        Intrinsics.g(root3, "getRoot(...)");
        uf.c.k(root3);
        NestedScrollableHost nsPostDes3 = this.viewBinding.f74575t;
        Intrinsics.g(nsPostDes3, "nsPostDes");
        uf.c.k(nsPostDes3);
        AppCompatImageView ivSave4 = this.viewBinding.f74570o;
        Intrinsics.g(ivSave4, "ivSave");
        uf.c.k(ivSave4);
        ProgressBar progressBar3 = this.viewBinding.f74576u;
        Intrinsics.g(progressBar3, "progressBar");
        uf.c.k(progressBar3);
        AppCompatTextView tvLike3 = this.viewBinding.C;
        Intrinsics.g(tvLike3, "tvLike");
        uf.c.k(tvLike3);
        AppCompatTextView tvShare3 = this.viewBinding.E;
        Intrinsics.g(tvShare3, "tvShare");
        uf.c.k(tvShare3);
        AppCompatTextView tvComment3 = this.viewBinding.f74579x;
        Intrinsics.g(tvComment3, "tvComment");
        uf.c.k(tvComment3);
        if (this.isShowHotComment) {
            BLConstraintLayout clHotComment4 = this.viewBinding.f74559d;
            Intrinsics.g(clHotComment4, "clHotComment");
            uf.c.k(clHotComment4);
        }
        if (this.isFavoriteShow) {
            AppCompatTextView appCompatTextView3 = this.viewBinding.f74580y;
            str2 = str;
            Intrinsics.g(appCompatTextView3, str2);
            uf.c.k(appCompatTextView3);
        } else {
            str2 = str;
        }
        AppCompatTextView appCompatTextView4 = this.viewBinding.f74580y;
        Intrinsics.g(appCompatTextView4, str2);
        uf.c.k(appCompatTextView4);
    }

    private final void setLoading(boolean show) {
        if (show) {
            ClipLoading clLoading = this.viewBinding.f74560e;
            Intrinsics.g(clLoading, "clLoading");
            uf.c.k(clLoading);
            ProgressBar progressBar = this.viewBinding.f74576u;
            Intrinsics.g(progressBar, "progressBar");
            uf.c.g(progressBar);
            this.viewBinding.f74560e.start();
            return;
        }
        ProgressBar progressBar2 = this.viewBinding.f74576u;
        Intrinsics.g(progressBar2, "progressBar");
        uf.c.k(progressBar2);
        ClipLoading clLoading2 = this.viewBinding.f74560e;
        Intrinsics.g(clLoading2, "clLoading");
        uf.c.g(clLoading2);
        this.viewBinding.f74560e.stop();
    }

    public static final com.transsnet.downloader.manager.g w() {
        return com.transsnet.downloader.manager.p.f57282a.a(Utils.a());
    }

    public static final void x(ImmVideoItemView immVideoItemView, String str) {
        immVideoItemView.y(str);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    private final void y(String type) {
        Integer numValueOf;
        if (type == null) {
            numValueOf = null;
        } else {
            int iHashCode = type.hashCode();
            if (iHashCode != -1550083459) {
                if (iHashCode != -877500447) {
                    if (iHashCode == 525878142 && type.equals("favorite_add")) {
                        numValueOf = Integer.valueOf(com.transsnet.downloader.R$string.short_tv_favorite_toast);
                    } else {
                        numValueOf = null;
                    }
                } else if (type.equals("favorite_fail")) {
                    numValueOf = Integer.valueOf(com.tn.lib.widget.R$string.failed_toast);
                } else {
                    numValueOf = null;
                }
            } else if (type.equals("favorite_cancel")) {
                numValueOf = Integer.valueOf(com.transsnet.downloader.R$string.short_tv_favorite_remove_toast);
            } else {
                numValueOf = null;
            }
        }
        if (numValueOf != null) {
            fh.b.f60176a.d(numValueOf.intValue());
        }
    }

    public final void z(String id2) {
        androidx.p009lifecycle.b0 b0VarC;
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"finishAfterReport, position = " + this.position}, false, 4, null);
        PostDetailViewModel postDetailViewModel = this.videoDetailModel;
        if (postDetailViewModel == null || (b0VarC = postDetailViewModel.C()) == null) {
            return;
        }
        b0VarC.q(this.position);
    }

    public final void app2Background() {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.d(true);
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    public final FrameLayout getPlayerContainer() {
        FrameLayout flContainer = this.viewBinding.f74563h;
        Intrinsics.g(flContainer, "flContainer");
        return flContainer;
    }

    public final Integer getPosition() {
        return this.position;
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    protected void onAttachedToWindow() {
        androidx.p009lifecycle.u viewLifecycleOwner;
        ShortTvPlayListViewModel shortTvPlayListViewModel;
        androidx.p009lifecycle.b0 b0VarF;
        super.onAttachedToWindow();
        Fragment fragment = this.fragment;
        if (fragment != null && (viewLifecycleOwner = fragment.getViewLifecycleOwner()) != null && (shortTvPlayListViewModel = this.shortTvPlayListViewModel) != null && (b0VarF = shortTvPlayListViewModel.f()) != null) {
            b0VarF.j(viewLifecycleOwner, this.favoriteResultObserver);
        }
        getDownloadManager().g(this.downloadListener);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onClick(View v10) {
        Subject subject;
        Context context;
        PostSubjectItem postSubjectItem;
        Subject subject2;
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        int i10 = R$id.tv_like;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            O(v10);
            return;
        }
        int i11 = R$id.tv_comment;
        if (numValueOf == null || numValueOf.intValue() != i11) {
            int i12 = R$id.clHotComment;
            if (numValueOf == null || numValueOf.intValue() != i12) {
                int i13 = R$id.tv_share;
                if (numValueOf != null && numValueOf.intValue() == i13) {
                    T(v10);
                    return;
                }
                int i14 = R$id.iv_save;
                if (numValueOf != null && numValueOf.intValue() == i14) {
                    S(v10);
                    return;
                }
                int i15 = R$id.iv_video_avatar;
                if (numValueOf != null && numValueOf.intValue() == i15) {
                    F(v10);
                    return;
                }
                int i16 = R$id.ev_post_des;
                if (numValueOf != null && numValueOf.intValue() == i16) {
                    return;
                }
                int i17 = R$id.cl_subject_content;
                if (numValueOf != null && numValueOf.intValue() == i17) {
                    H(v10);
                    return;
                }
                int i18 = R$id.ll_room_tag;
                if (numValueOf != null && numValueOf.intValue() == i18) {
                    G(v10);
                    return;
                }
                int i19 = R$id.tvShortTvEp;
                if (numValueOf != null && numValueOf.intValue() == i19) {
                    Fragment fragment = this.fragment;
                    if (fragment == null || (context = fragment.getContext()) == null || (postSubjectItem = this.data) == null || (subject2 = postSubjectItem.getSubject()) == null) {
                        return;
                    }
                    PostSubjectItem postSubjectItem2 = this.data;
                    subject2.setOps(postSubjectItem2 != null ? postSubjectItem2.getOps() : null);
                    Navigator navigatorF = TheRouter.c(pr.a.f69252a.b()).K("id", subject2.getSubjectId()).F("ep", 1);
                    PostSubjectItem postSubjectItem3 = this.data;
                    Navigator.x(navigatorF.K("ops", postSubjectItem3 != null ? postSubjectItem3.getOps() : null), context, null, 2, null);
                    return;
                }
                int i20 = R$id.iv_download;
                if (numValueOf == null || numValueOf.intValue() != i20) {
                    int i21 = R$id.iv_short_cover;
                    if (numValueOf == null || numValueOf.intValue() != i21) {
                        int i22 = R$id.tv_title;
                        if (numValueOf == null || numValueOf.intValue() != i22) {
                            return;
                        }
                    }
                }
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                FragmentActivity fragmentActivity = (FragmentActivity) context2;
                PostSubjectItem postSubjectItem4 = this.data;
                String ops = (postSubjectItem4 == null || (subject = postSubjectItem4.getSubject()) == null) ? null : subject.getOps();
                boolean z10 = v10.getId() == R$id.iv_download;
                PostSubjectItem postSubjectItem5 = this.data;
                downloadManagerApiA.d0(fragmentActivity, VideoFragment.PAGE_NAME, (384 & 4) != 0 ? "" : "", ops, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : z10, (384 & 64) != 0 ? null : postSubjectItem5 != null ? postSubjectItem5.getSubject() : null, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
                return;
            }
        }
        N(v10);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        Subject subject;
        Fragment fragment;
        Context context;
        PostSubjectItem postSubjectItem;
        Subject subject2;
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"player- onCompletion"}, false, 4, null);
        PostSubjectItem postSubjectItem2 = this.data;
        if (postSubjectItem2 == null || (subject = postSubjectItem2.getSubject()) == null) {
            return;
        }
        Integer subjectType = subject.getSubjectType();
        int value = SubjectType.SHORT_TV.getValue();
        if (subjectType == null || subjectType.intValue() != value || (fragment = this.fragment) == null || (context = fragment.getContext()) == null || (postSubjectItem = this.data) == null || (subject2 = postSubjectItem.getSubject()) == null) {
            return;
        }
        PostSubjectItem postSubjectItem3 = this.data;
        subject2.setOps(postSubjectItem3 != null ? postSubjectItem3.getOps() : null);
        Navigator navigatorF = TheRouter.c(pr.a.f69252a.b()).K("id", subject2.getSubjectId()).F("ep", 1);
        PostSubjectItem postSubjectItem4 = this.data;
        Navigator.x(navigatorF.K("ops", postSubjectItem4 != null ? postSubjectItem4.getOps() : null), context, null, 2, null);
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.seekTo(0L);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        androidx.p009lifecycle.b0 b0VarF;
        androidx.p009lifecycle.b0 b0VarF2;
        super.onDetachedFromWindow();
        ShortTvPlayListViewModel shortTvPlayListViewModel = this.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel != null && (b0VarF2 = shortTvPlayListViewModel.f()) != null) {
            b0VarF2.q(null);
        }
        ShortTvPlayListViewModel shortTvPlayListViewModel2 = this.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel2 != null && (b0VarF = shortTvPlayListViewModel2.f()) != null) {
            b0VarF.o(this.favoriteResultObserver);
        }
        getDownloadManager().k(this.downloadListener);
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
    public void onLoadingBegin(gn.e mediaSource) {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.h();
        }
        setLoading(true);
    }

    @Override
    public void onLoadingEnd(gn.e mediaSource) {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.i();
        }
        setLoading(false);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.j();
        }
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.k(errorInfo);
        }
        wf.a.f74274a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.j() : null) + " --> 短播放失败了", true);
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, gn.e eVar) {
        com.transsion.player.orplayer.e.a.s(this, tnPlayerType, eVar);
    }

    @Override
    public void onPlayerRelease(gn.e mediaSource) {
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
    }

    @Override
    public void onPlayerReset() {
        String postId;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPlayerReset", false, 4, null);
        this.isPageRelease = true;
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        setKeepScreenOn(false);
        this.isClickPause = false;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            com.transsion.postdetail.layer.b.e(bVar, false, 1, null);
        }
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (postId = postSubjectItem.getPostId()) != null) {
        }
        AppCompatImageView ivCover = this.viewBinding.f74564i;
        Intrinsics.g(ivCover, "ivCover");
        uf.c.k(ivCover);
        AppCompatImageView ivPause = this.viewBinding.f74569n;
        Intrinsics.g(ivPause, "ivPause");
        uf.c.g(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f74578w;
        Intrinsics.g(seekBar, "seekBar");
        uf.c.g(seekBar);
        this.viewBinding.f74562g.reset();
        ImmVideoGuideView immVideoGuideView = this.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        this.currentSaveProgress = 0L;
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        Fragment fragment;
        String postId;
        long jLongValue;
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        boolean z10 = false;
        int duration = fVar != null ? (int) fVar.getDuration() : 0;
        this.viewBinding.f74576u.setMax(duration);
        this.viewBinding.f74578w.setMax(duration);
        PostSubjectItem postSubjectItem = this.data;
        if (postSubjectItem != null && (postId = postSubjectItem.getPostId()) != null) {
            if (this.isFromDownloaded) {
                jLongValue = io.f.f62276a.c(postId);
            } else {
                Long lB = io.d.f62274a.b(postId);
                jLongValue = lB != null ? lB.longValue() : 0L;
            }
            Long lValueOf = Long.valueOf(jLongValue);
            if (lValueOf.longValue() <= 0) {
                lValueOf = null;
            }
            if (lValueOf != null) {
                long jLongValue2 = lValueOf.longValue();
                wf.a.C0922a.v(wf.a.f74274a, "PostFeedVideo", "immvideo seek:" + jLongValue2, false, 4, null);
                com.transsion.player.orplayer.f fVar2 = this.orPlayer;
                if (fVar2 != null) {
                    fVar2.seekTo(jLongValue2);
                }
                z10 = true;
            }
            Long l10 = (Long) ImmVideoHelper.f46840h.a().j().get(postId);
            long jLongValue3 = l10 != null ? l10.longValue() : 0L;
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f74576u.getMax() + ", progress = " + jLongValue3, false, 4, null);
            if (jLongValue3 > 0 && !z10) {
                this.currentSaveProgress = jLongValue3;
                int i10 = (int) jLongValue3;
                this.viewBinding.f74576u.setProgress(i10);
                this.viewBinding.f74578w.setProgress(i10);
                com.transsion.player.orplayer.f fVar3 = this.orPlayer;
                if (fVar3 != null) {
                    fVar3.seekTo(jLongValue3);
                }
            }
        }
        if (!this.isClickPause && !this.isPageHide && (fragment = this.fragment) != null && fragment.isVisible()) {
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPrepare， play~", false, 4, null);
            com.transsion.player.orplayer.f fVar4 = this.orPlayer;
            if (fVar4 != null) {
                fVar4.play();
            }
        }
        setKeepScreenOn(true);
        j0();
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        if (this.isSeekToFinish.get() && !this.isHorizontalDragging) {
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.l(progress);
            }
            int i10 = (int) progress;
            this.viewBinding.f74576u.setProgress(i10);
            this.viewBinding.f74578w.setProgress(i10);
            P(progress);
        }
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onRenderFirstFrame", false, 4, null);
        AppCompatImageView ivCover = this.viewBinding.f74564i;
        Intrinsics.g(ivCover, "ivCover");
        uf.c.g(ivCover);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.m();
        }
        setLoading(false);
    }

    @Override
    public void onSetDataSource() {
        this.isPageRelease = false;
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        setLoading(true);
    }

    @Override
    public void onStateChanged(androidx.p009lifecycle.u source, Lifecycle.Event event) {
        String postId;
        String postId2;
        Lifecycle lifecycle;
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i10 = a.f47835a[event.ordinal()];
        if (i10 == 1) {
            this.isPageHide = true;
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, this.TAG, "player- onPause", false, 4, null);
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            if (fVar != null) {
                fVar.pause();
            }
            PostSubjectItem postSubjectItem = this.data;
            if (postSubjectItem == null || (postId = postSubjectItem.getPostId()) == null) {
                return;
            }
            wf.a.C0922a.v(c0922a, "PostFeedVideo", "immvideo savePlayProgress:" + this.viewBinding.f74576u.getProgress(), false, 4, null);
            if (this.isFromDownloaded) {
                io.f.f62276a.e(postId, this.viewBinding.f74576u.getProgress());
                return;
            } else {
                io.d.f62274a.c(postId, this.viewBinding.f74576u.getProgress());
                return;
            }
        }
        if (i10 == 2) {
            this.isPageHide = false;
            if (this.isClickPause) {
                return;
            }
            Fragment fragment = this.fragment;
            if (fragment != null && !fragment.isVisible()) {
                post(new Runnable() {
                    @Override
                    public final void run() {
                        ImmVideoItemView.V(this.f47978a);
                    }
                });
                return;
            }
            com.transsion.player.orplayer.f fVar2 = this.orPlayer;
            if (fVar2 != null) {
                fVar2.play();
                return;
            }
            return;
        }
        if (i10 == 3) {
            PostSubjectItem postSubjectItem2 = this.data;
            if (postSubjectItem2 == null || (postId2 = postSubjectItem2.getPostId()) == null) {
                return;
            }
            return;
        }
        if (i10 != 5) {
            return;
        }
        Fragment fragment2 = this.fragment;
        if (fragment2 != null && (lifecycle = fragment2.getLifecycle()) != null) {
            lifecycle.d(this);
        }
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.p();
        }
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
    public void onVideoPause(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoPause", false, 4, null);
        AppCompatImageView ivPause = this.viewBinding.f74569n;
        Intrinsics.g(ivPause, "ivPause");
        uf.c.k(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f74578w;
        Intrinsics.g(seekBar, "seekBar");
        uf.c.k(seekBar);
        ProgressBar progressBar = this.viewBinding.f74576u;
        Intrinsics.g(progressBar, "progressBar");
        uf.c.g(progressBar);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.n();
        }
        setKeepScreenOn(false);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoStart", false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.o();
        }
        AppCompatImageView ivPause = this.viewBinding.f74569n;
        Intrinsics.g(ivPause, "ivPause");
        uf.c.g(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f74578w;
        Intrinsics.g(seekBar, "seekBar");
        uf.c.g(seekBar);
        setLoading(false);
        setKeepScreenOn(true);
        ep.a aVar = this.audioApi;
        if (aVar != null) {
            aVar.pause();
        }
    }

    public final void setData(PostSubjectItem item, final Fragment fragment, Integer position, boolean videoLoadMore, String basePostId, String baseItemType, boolean attachToMain, String commentId, String pageFrom, boolean isFromDownloaded) {
        Long shareCount;
        Long commentCount;
        Integer subjectType;
        Intrinsics.h(item, "item");
        Intrinsics.h(fragment, "fragment");
        Intrinsics.h(commentId, "commentId");
        Intrinsics.h(pageFrom, "pageFrom");
        com.transsion.postdetail.layer.b bVar = new com.transsion.postdetail.layer.b();
        this.dotLayer = bVar;
        bVar.s(basePostId);
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.r(baseItemType);
        }
        com.transsion.postdetail.layer.b bVar3 = this.dotLayer;
        if (bVar3 != null) {
            String postId = item.getPostId();
            if (postId == null) {
                postId = "";
            }
            bVar3.x(postId, item);
        }
        com.transsion.postdetail.layer.b bVar4 = this.dotLayer;
        if (bVar4 != null) {
            Subject subject = item.getSubject();
            bVar4.y((subject == null || (subjectType = subject.getSubjectType()) == null) ? 0 : subjectType.intValue());
        }
        this.fragment = fragment;
        this.videoLoadMore = Boolean.valueOf(videoLoadMore);
        this.basePostId = basePostId;
        this.position = position;
        this.attachToMain = attachToMain;
        this.commentId = commentId;
        this.pageFrom = pageFrom;
        this.isFromDownloaded = isFromDownloaded;
        fragment.getLifecycle().a(this);
        final Function0<Fragment> function0 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.videoDetailModel = Z(FragmentViewModelLazyKt.a(fragment, Reflection.b(PostDetailViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function0.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function0.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        }));
        final Function0<Fragment> function1 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.shortTvPlayListViewModel = a0(FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTvPlayListViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function1.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function1.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        }));
        final Function0<Fragment> function2 = new Function0<Fragment>() {
            {
                super(0);
            }

            @Override
            public final Fragment invoke() {
                return fragment;
            }
        };
        this.mCommentViewModel = b0(FragmentViewModelLazyKt.a(fragment, Reflection.b(CommentViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
            {
                super(0);
            }

            @Override
            public final androidx.p009lifecycle.x0 invoke() {
                androidx.p009lifecycle.x0 viewModelStore = ((androidx.p009lifecycle.y0) function2.invoke()).getViewModelStore();
                Intrinsics.g(viewModelStore, "ownerProducer().viewModelStore");
                return viewModelStore;
            }
        }, new Function0<androidx.lifecycle.v0.c>() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override
            public final androidx.lifecycle.v0.c invoke() {
                Object objInvoke = function2.invoke();
                androidx.p009lifecycle.m mVar = objInvoke instanceof androidx.p009lifecycle.m ? (androidx.p009lifecycle.m) objInvoke : null;
                androidx.lifecycle.v0.c defaultViewModelProviderFactory = mVar != null ? mVar.getDefaultViewModelProviderFactory() : null;
                if (defaultViewModelProviderFactory == null) {
                    defaultViewModelProviderFactory = fragment.getDefaultViewModelProviderFactory();
                }
                Intrinsics.g(defaultViewModelProviderFactory, "(ownerProducer() as? Has…tViewModelProviderFactory");
                return defaultViewModelProviderFactory;
            }
        }));
        this.data = item;
        p0(item);
        i0(item);
        Stat stat = item.getStat();
        long jLongValue = 0;
        e0((stat == null || (commentCount = stat.getCommentCount()) == null) ? 0L : commentCount.longValue());
        Stat stat2 = item.getStat();
        if (stat2 != null && (shareCount = stat2.getShareCount()) != null) {
            jLongValue = shareCount.longValue();
        }
        l0(jLongValue);
        o0(item);
        f0(item);
        if (attachToMain) {
            ViewGroup.LayoutParams layoutParams = this.viewBinding.f74577v.getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.b) {
                ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).bottomMargin = com.blankj.utilcode.util.a0.a(16.0f);
            }
        }
        m0();
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
        this.isSeekToFinish.set(true);
        long j10 = this.nextSeekTo;
        if (j10 > 0) {
            wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"seek OnSeekComplete，nextSeekTo:" + j10}, false, 4, null);
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            if (fVar != null) {
                fVar.seekTo(this.nextSeekTo);
            }
            this.nextSeekTo = 0L;
        }
    }

    public final void setPagerLayoutManager(PagerLayoutManager pagerLayoutManager) {
        Intrinsics.h(pagerLayoutManager, "pagerLayoutManager");
        this.pagerLayoutManager = pagerLayoutManager;
    }

    public final void setPlayer(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(orPlayerView, "orPlayerView");
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.v(orPlayer);
        }
    }

    public final void setPosition(Integer num) {
        this.position = num;
    }

    public final void setVideoUrl(String url) {
        Intrinsics.h(url, "url");
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.A(url);
        }
    }

    public final void showCommentDialog() {
        FragmentManager childFragmentManager;
        Fragment fragment = this.fragment;
        if (fragment != null && (childFragmentManager = fragment.getChildFragmentManager()) != null) {
            ImmVideoCommentDialog immVideoCommentDialogB = ImmVideoCommentDialog.Companion.b(ImmVideoCommentDialog.INSTANCE, this.data, this.commentId, VideoFragment.PAGE_NAME, null, 8, null);
            this.commentDialog = immVideoCommentDialogB;
            if (immVideoCommentDialogB != null) {
                immVideoCommentDialogB.show(childFragmentManager, "immComment");
            }
        }
        ImmVideoCommentDialog immVideoCommentDialog = this.commentDialog;
        if (immVideoCommentDialog != null) {
            immVideoCommentDialog.A0(new f());
        }
        com.transsion.postdetail.helper.a.f46861a.e(this.data, VideoFragment.PAGE_NAME, this.pageFrom);
    }

    public final void videoStartPrepare(String pageFrom) {
        com.transsion.postdetail.layer.b bVar;
        this.pageFrom = pageFrom;
        if (pageFrom != null && (bVar = this.dotLayer) != null) {
            bVar.t(pageFrom);
        }
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.g();
        }
        com.transsion.postdetail.layer.b bVar3 = this.dotLayer;
        if (bVar3 != null) {
            bVar3.a(0, 0);
        }
        com.transsion.postdetail.layer.b bVar4 = this.dotLayer;
        if (bVar4 != null) {
            bVar4.w(this.position);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ImmVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }
}
