package com.transsion.postdetail.ui.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatSeekBar;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.p009lifecycle.Lifecycle;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.Glide;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.noober.background.view.BLTextView;
import com.therouter.TheRouter;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.Media;
import com.transsion.moviedetailapi.bean.PostSubjectItem;
import com.transsion.moviedetailapi.bean.ShortTVFavInfo;
import com.transsion.moviedetailapi.bean.ShortTVItem;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.moviedetailapi.bean.Video;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.postdetail.R$id;
import com.transsion.postdetail.R$layout;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.helper.ShortTvImmVideoHelper;
import com.transsion.postdetail.shorttv.ShortTvPlayListViewModel;
import com.transsion.push.PushConstants;
import com.transsion.share.bean.PostType;
import com.transsion.share.share.ShareDialogFragment;
import com.transsion.shorttv.base.pager.PagerLayoutManager;
import com.transsion.usercenterapi.ReportType;
import com.transsion.web.api.WebConstants;
import com.transsnet.downloader.DownloadManagerApi;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000ð\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\b\u0007*\u0002Ä\u0001\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B!\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fB\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u000b\u0010\rB\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u000b\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0012\u0010\u0011JE\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u001a\u001a\u0004\u0018\u00010\u00182\b\b\u0002\u0010\u001c\u001a\u00020\u001b¢\u0006\u0004\b\u001d\u0010\u001eJ\u001d\u0010#\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u001f2\u0006\u0010\"\u001a\u00020!¢\u0006\u0004\b#\u0010$J\u0015\u0010'\u001a\u00020\u000f2\u0006\u0010&\u001a\u00020%¢\u0006\u0004\b'\u0010(J)\u0010.\u001a\u00020\u000f2\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010,\u001a\u0004\u0018\u00010+2\u0006\u0010-\u001a\u00020\t¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u001b2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J\u001f\u00107\u001a\u00020\u000f2\u0006\u00105\u001a\u0002042\u0006\u00101\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u000f\u00109\u001a\u00020\u000fH\u0016¢\u0006\u0004\b9\u0010\u0011J\u0019\u0010<\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J\r\u0010>\u001a\u00020\u000f¢\u0006\u0004\b>\u0010\u0011J\u0015\u0010@\u001a\u00020\u000f2\u0006\u0010?\u001a\u00020\u0018¢\u0006\u0004\b@\u0010AJ\u0015\u0010C\u001a\u00020\u000f2\u0006\u0010B\u001a\u00020\u0018¢\u0006\u0004\bC\u0010AJ\u000f\u0010D\u001a\u00020\u000fH\u0016¢\u0006\u0004\bD\u0010\u0011J\u001f\u0010G\u001a\u00020\u000f2\u0006\u0010E\u001a\u00020\t2\u0006\u0010F\u001a\u00020\tH\u0016¢\u0006\u0004\bG\u0010HJ\u000f\u0010I\u001a\u00020\u000fH\u0016¢\u0006\u0004\bI\u0010\u0011J\u0019\u0010J\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bJ\u0010=J\u0019\u0010K\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bK\u0010=J\u0019\u0010L\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bL\u0010=J!\u0010O\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020M2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bO\u0010PJ\u0019\u0010Q\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bQ\u0010=J\u0019\u0010R\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bR\u0010=J!\u0010U\u001a\u00020\u000f2\u0006\u0010T\u001a\u00020S2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bU\u0010VJ\u000f\u0010W\u001a\u00020\u000fH\u0016¢\u0006\u0004\bW\u0010\u0011J\u0019\u0010X\u001a\u00020\u000f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bX\u0010=J\u0019\u0010Z\u001a\u00020\u000f2\b\u0010Y\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\bZ\u0010AJ\u000f\u0010[\u001a\u00020\u000fH\u0016¢\u0006\u0004\b[\u0010\u0011J\u0019\u0010]\u001a\u00020\u000f2\b\u0010\\\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b]\u0010^J\u0019\u0010`\u001a\u00020\u000f2\b\u0010_\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\b`\u0010AJ\u0017\u0010a\u001a\u00020\u000f2\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\ba\u0010\rJ\u0017\u0010b\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\bb\u0010cJ\u000f\u0010d\u001a\u00020\u000fH\u0002¢\u0006\u0004\bd\u0010\u0011J\u000f\u0010e\u001a\u00020\u000fH\u0002¢\u0006\u0004\be\u0010\u0011J/\u0010h\u001a\u00020\u000f2\b\u0010e\u001a\u0004\u0018\u00010\t2\b\u0010f\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010g\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\bh\u0010iJ\u0017\u0010k\u001a\u00020\u000f2\u0006\u0010j\u001a\u00020\u001bH\u0002¢\u0006\u0004\bk\u0010lJ\u0017\u0010m\u001a\u00020\u000f2\u0006\u0010N\u001a\u00020MH\u0002¢\u0006\u0004\bm\u0010nJ\u0017\u0010\\\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020)H\u0002¢\u0006\u0004\b\\\u0010^J\u0019\u0010p\u001a\u00020\u000f2\b\u0010o\u001a\u0004\u0018\u00010\u0018H\u0002¢\u0006\u0004\bp\u0010AJ\u000f\u0010q\u001a\u00020\u000fH\u0002¢\u0006\u0004\bq\u0010\u0011J\u0017\u0010s\u001a\u00020\u000f2\u0006\u0010r\u001a\u00020\u001bH\u0002¢\u0006\u0004\bs\u0010lR\u0014\u0010v\u001a\u00020\u00188\u0002X\u0082D¢\u0006\u0006\n\u0004\bt\u0010uR\u0014\u0010z\u001a\u00020w8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010~\u001a\u0004\u0018\u00010{8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u001b\u0010\u0082\u0001\u001a\u0004\u0018\u00010\u007f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0086\u0001\u001a\u0005\u0018\u00010\u0083\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0084\u0001\u0010\u0085\u0001R\u001b\u0010\u0089\u0001\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001a\u0010\u008d\u0001\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bf\u0010\u008c\u0001R*\u0010\u0017\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b\u008e\u0001\u0010\u008f\u0001\u001a\u0006\b\u0090\u0001\u0010\u0091\u0001\"\u0006\b\u0092\u0001\u0010\u0093\u0001R\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010uR\u001a\u0010 \u001a\u0004\u0018\u00010\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0096\u0001R\u001a\u0010\"\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0098\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u009a\u0001R\u001b\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009b\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b`\u0010\u009c\u0001R\u001b\u0010 \u0001\u001a\u0005\u0018\u00010\u009e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bp\u0010\u009f\u0001R\"\u0010¥\u0001\u001a\u0005\u0018\u00010¡\u00018BX\u0082\u0084\u0002¢\u0006\u000f\n\u0005\ba\u0010¢\u0001\u001a\u0006\b£\u0001\u0010¤\u0001R\u001b\u0010¨\u0001\u001a\u0005\u0018\u00010¦\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bq\u0010§\u0001R\u0019\u0010«\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010ª\u0001R\u0019\u0010\u00ad\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¬\u0001\u0010ª\u0001R\u0018\u0010®\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bm\u0010ª\u0001R\u0019\u0010±\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¯\u0001\u0010°\u0001R\u0016\u0010³\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\\\u0010²\u0001R\u0016\u0010´\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\be\u0010²\u0001R\u0017\u0010¶\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bµ\u0001\u0010²\u0001R\u0017\u0010¸\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b·\u0001\u0010²\u0001R\u0017\u0010º\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¹\u0001\u0010²\u0001R\u0016\u0010»\u0001\u001a\u00020\t8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\bd\u0010²\u0001R\u0017\u0010?\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b¼\u0001\u0010uR\u0018\u0010À\u0001\u001a\u00030½\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¾\u0001\u0010¿\u0001R\u0018\u0010Á\u0001\u001a\u00020M8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bh\u0010°\u0001R\u0018\u0010\u001c\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0001\u0010ª\u0001R\u0018\u0010Ã\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bb\u0010ª\u0001R\u0018\u0010Ç\u0001\u001a\u00030Ä\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÅ\u0001\u0010Æ\u0001R\u0019\u0010É\u0001\u001a\u00020\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010ª\u0001¨\u0006Ê\u0001²\u0006\f\u0010~\u001a\u00020{8\nX\u008a\u0084\u0002²\u0006\r\u0010\u0082\u0001\u001a\u00020\u007f8\nX\u008a\u0084\u0002"}, d2 = {"Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/e;", "Landroid/view/View$OnClickListener;", "Landroidx/lifecycle/r;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lcom/transsion/moviedetailapi/bean/Subject;", WebConstants.FIELD_ITEM, "Landroidx/fragment/app/Fragment;", "fragment", RequestParameters.POSITION, "", "basePostId", "baseItemType", "", "attachToMain", "setData", "(Lcom/transsion/moviedetailapi/bean/Subject;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Z)V", "Lcom/transsion/player/orplayer/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "setPlayer", "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "pagerLayoutManager", "setPagerLayoutManager", "(Lcom/transsion/shorttv/base/pager/PagerLayoutManager;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/moviedetailapi/bean/Video;", "video", "maxHeight", "addVideoView", "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/Video;I)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "onPlayerReset", "Lgn/e;", "mediaSource", "onPlayerRelease", "(Lgn/e;)V", "app2Background", "pageFrom", "videoStartPrepare", "(Ljava/lang/String;)V", "url", "setVideoUrl", "onSetDataSource", "width", "height", "onVideoSizeChanged", "(II)V", "onRenderFirstFrame", "onVideoStart", "onPrepare", "onVideoPause", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onLoopingStart", "onCompletion", "uuid", "onMediaItemTransition", "setOnSeekCompleteListener", "v", "onClick", "(Landroid/view/View;)V", NativeComponentConstants.KEY_COMPONENT_TYPE, "n", TtmlNode.TAG_P, "F", "(Lcom/transsion/moviedetailapi/bean/Subject;)V", "A", "w", "h", "rootHeight", "D", "(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setLoading", "(Z)V", "t", "(J)V", "id", "o", CampaignEx.JSON_KEY_AD_Q, "visible", "setContentVisibility", "a", "Ljava/lang/String;", "TAG", "Lwn/g0;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lwn/g0;", "viewBinding", "Lcom/transsion/postdetail/viewmodel/w;", "c", "Lcom/transsion/postdetail/viewmodel/w;", "videoDetailModel", "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/postdetail/shorttv/ShortTvPlayListViewModel;", "shortTvPlayListViewModel", "Lcom/transsion/share/share/ShareDialogFragment;", "e", "Lcom/transsion/share/share/ShareDialogFragment;", "mShareDialog", "f", "Lcom/transsion/moviedetailapi/bean/Subject;", "data", "g", "Landroidx/fragment/app/Fragment;", "Ljava/lang/Boolean;", "videoLoadMore", "i", "Ljava/lang/Integer;", "getPosition", "()Ljava/lang/Integer;", "setPosition", "(Ljava/lang/Integer;)V", "j", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/orplayer/f;", "l", "Lcom/transsion/player/ui/ORPlayerView;", "m", "Lcom/transsion/shorttv/base/pager/PagerLayoutManager;", "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", "Lcom/transsion/postdetail/ui/view/ImmVideoGuideView;", "guideView", "Landroid/view/GestureDetector;", "Landroid/view/GestureDetector;", "gestureDetector", "Lqx/a;", "Lkotlin/Lazy;", "getLoginApi", "()Lqx/a;", "loginApi", "Lcom/transsion/postdetail/layer/b;", "Lcom/transsion/postdetail/layer/b;", "dotLayer", CampaignEx.JSON_KEY_AD_R, "Z", "isClickPause", "s", "isHorizontalDragging", "isPageHide", TmcStartParams.KEY_URL_SHORT, "J", "currentSaveProgress", "I", "resImgLargeWidth", "resImgLargeHeight", "x", "resImgSmallWidth", "y", "resImgSmallHeight", "z", "screenHeight", "dp170", "B", "Ljava/util/concurrent/atomic/AtomicBoolean;", "C", "Ljava/util/concurrent/atomic/AtomicBoolean;", "isSeekToFinish", "nextSeekTo", "E", "isPageRelease", "com/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b", "G", "Lcom/transsion/postdetail/ui/view/ShortTvImmVideoItemView$b;", "favoriteResultObserver", "H", "isPrepare", "PostDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvImmVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.e, View.OnClickListener, androidx.p009lifecycle.r {

    private final int dp170;

    private String pageFrom;

    private final AtomicBoolean isSeekToFinish;

    private long nextSeekTo;

    private boolean attachToMain;

    private boolean isPageRelease;

    private final b favoriteResultObserver;

    private boolean isPrepare;

    private final String TAG;

    private final wn.g0 viewBinding;

    private com.transsion.postdetail.viewmodel.w videoDetailModel;

    private ShortTvPlayListViewModel shortTvPlayListViewModel;

    private ShareDialogFragment mShareDialog;

    private Subject data;

    private Fragment fragment;

    private Boolean videoLoadMore;

    private Integer position;

    private String basePostId;

    private com.transsion.player.orplayer.f orPlayer;

    private ORPlayerView orPlayerView;

    private PagerLayoutManager pagerLayoutManager;

    private ImmVideoGuideView guideView;

    private GestureDetector gestureDetector;

    private final Lazy loginApi;

    private com.transsion.postdetail.layer.b dotLayer;

    private boolean isClickPause;

    private boolean isHorizontalDragging;

    private boolean isPageHide;

    private long currentSaveProgress;

    private final int resImgLargeWidth;

    private final int resImgLargeHeight;

    private final int resImgSmallWidth;

    private final int resImgSmallHeight;

    private final int screenHeight;

    public class a {

        public static final int[] f47954a;

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
            f47954a = iArr;
        }
    }

    public static final class b implements androidx.p009lifecycle.c0 {

        private String f47955a;

        b() {
        }

        @Override
        public void onChanged(String str) {
            if (Intrinsics.c(this.f47955a, str)) {
                return;
            }
            ShortTvImmVideoItemView.this.n(str);
        }

        public final void b(String str) {
            this.f47955a = str;
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
        public boolean onSingleTapUp(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            ShortTvImmVideoItemView.this.w();
            return super.onSingleTapUp(e10);
        }
    }

    public static final class d implements com.transsion.baseui.widget.f.a {

        private int f47958a;

        private int f47959b;

        private int f47960c;

        private String f47961d = "";

        private int f47962e = com.blankj.utilcode.util.a0.a(1.5f);

        d() {
        }

        @Override
        public void a() {
        }

        @Override
        public void b(float f10, float f11) {
            int i10 = 0;
            if (!ShortTvImmVideoItemView.this.isHorizontalDragging) {
                PagerLayoutManager pagerLayoutManager = ShortTvImmVideoItemView.this.pagerLayoutManager;
                if (pagerLayoutManager != null) {
                    pagerLayoutManager.W(false);
                }
                this.f47958a = ShortTvImmVideoItemView.this.viewBinding.f74381m.getProgress();
                ShortTvImmVideoItemView.this.setContentVisibility(false);
                AppCompatTextView tvProgressDes = ShortTvImmVideoItemView.this.viewBinding.f74388t;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                uf.c.k(tvProgressDes);
                AppCompatSeekBar seekBar = ShortTvImmVideoItemView.this.viewBinding.f74383o;
                Intrinsics.g(seekBar, "seekBar");
                uf.c.k(seekBar);
                ProgressBar progressBar = ShortTvImmVideoItemView.this.viewBinding.f74381m;
                Intrinsics.g(progressBar, "progressBar");
                uf.c.g(progressBar);
                this.f47960c = ShortTvImmVideoItemView.this.viewBinding.f74381m.getWidth();
                int max = ShortTvImmVideoItemView.this.viewBinding.f74381m.getMax();
                this.f47959b = max;
                this.f47961d = com.transsion.postdetail.util.m.c(max);
            }
            ShortTvImmVideoItemView.this.isHorizontalDragging = true;
            float f12 = f11 - f10;
            int i11 = this.f47959b;
            int i12 = (int) (this.f47958a + ((f12 * i11) / this.f47960c));
            if (i12 >= 0) {
                i10 = i12 > i11 ? i11 : i12;
            }
            ShortTvImmVideoItemView.this.viewBinding.f74388t.setText(com.transsion.postdetail.util.m.c(i10) + " / " + this.f47961d);
            ShortTvImmVideoItemView.this.viewBinding.f74381m.setProgress(i10);
            ShortTvImmVideoItemView.this.viewBinding.f74383o.setProgress(i10);
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
            PagerLayoutManager pagerLayoutManager = ShortTvImmVideoItemView.this.pagerLayoutManager;
            if (pagerLayoutManager != null) {
                pagerLayoutManager.W(true);
            }
            if (ShortTvImmVideoItemView.this.isHorizontalDragging) {
                ShortTvImmVideoItemView.this.isHorizontalDragging = false;
                ShortTvImmVideoItemView.this.setContentVisibility(true);
                AppCompatTextView tvProgressDes = ShortTvImmVideoItemView.this.viewBinding.f74388t;
                Intrinsics.g(tvProgressDes, "tvProgressDes");
                uf.c.g(tvProgressDes);
                AppCompatSeekBar seekBar = ShortTvImmVideoItemView.this.viewBinding.f74383o;
                Intrinsics.g(seekBar, "seekBar");
                uf.c.g(seekBar);
                ProgressBar progressBar = ShortTvImmVideoItemView.this.viewBinding.f74381m;
                Intrinsics.g(progressBar, "progressBar");
                uf.c.k(progressBar);
                long progress = ShortTvImmVideoItemView.this.viewBinding.f74381m.getProgress();
                ShortTvImmVideoItemView shortTvImmVideoItemView = ShortTvImmVideoItemView.this;
                if (shortTvImmVideoItemView.isSeekToFinish.compareAndSet(true, false)) {
                    com.transsion.player.orplayer.f fVar2 = ShortTvImmVideoItemView.this.orPlayer;
                    if (fVar2 != null) {
                        fVar2.seekTo(progress);
                    }
                    progress = 0;
                }
                shortTvImmVideoItemView.nextSeekTo = progress;
                com.transsion.player.orplayer.f fVar3 = ShortTvImmVideoItemView.this.orPlayer;
                if (fVar3 == null || fVar3.isPlaying() || (fVar = ShortTvImmVideoItemView.this.orPlayer) == null) {
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
        e() {
        }

        @Override
        public void a(String id2, PostType postType) {
            Intrinsics.h(id2, "id");
        }

        @Override
        public void b(String str) {
            ShortTvImmVideoItemView.this.o(str);
        }

        @Override
        public void c(String url, String fileName, String fileSize, String fileImage) {
            Intrinsics.h(url, "url");
            Intrinsics.h(fileName, "fileName");
            Intrinsics.h(fileSize, "fileSize");
            Intrinsics.h(fileImage, "fileImage");
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

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortTvImmVideoItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "ImmVideoPlayer";
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvImmVideoItemView.s();
            }
        });
        this.screenHeight = com.blankj.utilcode.util.y.c();
        this.dp170 = com.blankj.utilcode.util.a0.a(170.0f);
        this.pageFrom = "";
        this.isSeekToFinish = new AtomicBoolean(true);
        this.attachToMain = true;
        this.favoriteResultObserver = new b();
        View.inflate(getContext(), R$layout.layout_short_tv_immersion_video_item_view, this);
        wn.g0 g0VarA = wn.g0.a(this);
        Intrinsics.g(g0VarA, "bind(...)");
        this.viewBinding = g0VarA;
        g0VarA.f74387s.setOnClickListener(this);
        g0VarA.f74377i.setOnClickListener(this);
        g0VarA.f74379k.setOnClickListener(this);
        g0VarA.f74389u.setOnClickListener(this);
        g0VarA.f74375g.setOnClickListener(this);
        g0VarA.f74378j.setOnClickListener(this);
        g0VarA.f74390v.setOnClickListener(this);
        g0VarA.f74385q.setOnClickListener(this);
        this.resImgLargeWidth = com.blankj.utilcode.util.a0.a(48.0f);
        this.resImgLargeHeight = com.blankj.utilcode.util.a0.a(64.0f);
        this.resImgSmallWidth = com.blankj.utilcode.util.a0.a(24.0f);
        this.resImgSmallHeight = com.blankj.utilcode.util.a0.a(32.0f);
        p(context);
        if (ShortTvImmVideoHelper.f46849k.a().m() > 0) {
            ViewGroup.LayoutParams layoutParams = g0VarA.f74382n.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            if (((ViewGroup.MarginLayoutParams) bVar).bottomMargin < com.blankj.utilcode.util.a0.a(35.0f)) {
                ((ViewGroup.MarginLayoutParams) bVar).bottomMargin += com.blankj.utilcode.util.a0.a(10.0f);
                g0VarA.f74382n.setLayoutParams(bVar);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v43, types: [T, com.transsion.moviedetailapi.bean.ShortTVFavInfo] */
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
    private final void A() {
        Cover cover;
        String url;
        Fragment fragment;
        FragmentActivity activity;
        String thumbnail;
        Cover cover2;
        ShortTVItem shortTVFirstEp;
        Media video;
        Video videoAddress;
        ShapeableImageView ivVideoAvatar = this.viewBinding.f74379k;
        Intrinsics.g(ivVideoAvatar, "ivVideoAvatar");
        uf.c.g(ivVideoAvatar);
        AppCompatImageView ivDownload = this.viewBinding.f74375g;
        Intrinsics.g(ivDownload, "ivDownload");
        uf.c.k(ivDownload);
        AppCompatTextView tvTitle = this.viewBinding.f74390v;
        Intrinsics.g(tvTitle, "tvTitle");
        uf.c.k(tvTitle);
        BLTextView tvShortTvEp = this.viewBinding.f74389u;
        Intrinsics.g(tvShortTvEp, "tvShortTvEp");
        uf.c.k(tvShortTvEp);
        ShapeableImageView ivShortCover = this.viewBinding.f74378j;
        Intrinsics.g(ivShortCover, "ivShortCover");
        uf.c.k(ivShortCover);
        AppCompatTextView appCompatTextView = this.viewBinding.f74390v;
        Subject subject = this.data;
        appCompatTextView.setText(subject != null ? subject.getTitle() : null);
        com.transsion.postdetail.util.s sVar = com.transsion.postdetail.util.s.f48087a;
        Subject subject2 = this.data;
        String strA = sVar.a(Integer.valueOf(subject2 != null ? subject2.getTotalEpisode() : 0));
        AppCompatTextView appCompatTextView2 = this.viewBinding.f74385q;
        Subject subject3 = this.data;
        appCompatTextView2.setText(subject3 != null ? subject3.getDescription() : null);
        this.viewBinding.f74389u.setText(getContext().getString(R$string.short_tv_play_all, strA));
        com.transsion.baseui.widget.jumpingbeans.a.a(this.viewBinding.f74389u).e(0, this.viewBinding.f74389u.getText().toString().length()).g(true).i(100).f(0.05f).h(10000).a();
        ShapeableImageView shapeableImageView = this.viewBinding.f74378j;
        Subject subject4 = this.data;
        if (subject4 == null || !subject4.getBuiltIn()) {
            Subject subject5 = this.data;
            if (subject5 != null && (cover = subject5.getCover()) != null && (url = cover.getUrl()) != null && (fragment = this.fragment) != null && (activity = fragment.getActivity()) != null && !activity.isFinishing()) {
                ni.f.b bVarC = ni.f.f67269a.m(activity).g(url).m(com.blankj.utilcode.util.i.e(21.0f)).c(com.blankj.utilcode.util.i.e(30.0f));
                Subject subject6 = this.data;
                if (subject6 == null || (cover2 = subject6.getCover()) == null || (thumbnail = cover2.getThumbnail()) == null) {
                    thumbnail = "";
                }
                ni.f.b bVarH = bVarC.l(thumbnail).h(true);
                ShapeableImageView ivShortCover2 = this.viewBinding.f74378j;
                Intrinsics.g(ivShortCover2, "ivShortCover");
                bVarH.d(ivShortCover2);
            }
        } else {
            kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ShortTvImmVideoItemView$updateShortTVInfo$1(this, null), 3, null);
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Subject subject7 = this.data;
        T shortTVFavInfo = subject7 != null ? subject7.getShortTVFavInfo() : 0;
        objectRef.element = shortTVFavInfo;
        if (shortTVFavInfo == 0) {
            ?? shortTVFavInfo2 = new ShortTVFavInfo(null, false, null, 7, null);
            shortTVFavInfo2.setFavoriteNum("0");
            objectRef.element = shortTVFavInfo2;
            Subject subject8 = this.data;
            if (subject8 != 0) {
                subject8.setShortTVFavInfo(shortTVFavInfo2);
            }
        }
        AppCompatTextView tvFavorite = this.viewBinding.f74386r;
        Intrinsics.g(tvFavorite, "tvFavorite");
        uf.c.k(tvFavorite);
        this.viewBinding.f74386r.setSelected(((ShortTVFavInfo) objectRef.element).getHasFavorite());
        AppCompatTextView appCompatTextView3 = this.viewBinding.f74386r;
        String favoriteNum = ((ShortTVFavInfo) objectRef.element).getFavoriteNum();
        appCompatTextView3.setText(com.transsion.baseui.util.j.a(Long.parseLong(favoriteNum != null ? favoriteNum : "0")));
        this.viewBinding.f74386r.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                ShortTvImmVideoItemView.B(this.f48040a, objectRef, view);
            }
        });
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        Function1 function1 = new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return ShortTvImmVideoItemView.C(this.f48043a, (hx.c) obj);
            }
        };
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = hx.c.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.observeEvent((AppCompatActivity) context, name, Lifecycle.State.CREATED, kotlinx.coroutines.y0.c().r(), false, function1);
        Subject subject9 = this.data;
        if (subject9 == null || (shortTVFirstEp = subject9.getShortTVFirstEp()) == null || (video = shortTVFirstEp.getVideo()) == null || (videoAddress = video.getVideoAddress()) == null) {
            return;
        }
        E(this, videoAddress.getWidth(), videoAddress.getHeight(), null, 4, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void B(ShortTvImmVideoItemView shortTvImmVideoItemView, Ref.ObjectRef objectRef, View view) {
        ShortTvPlayListViewModel shortTvPlayListViewModel;
        com.transsion.postdetail.shorttv.k kVar = com.transsion.postdetail.shorttv.k.f47192a;
        Subject subject = shortTvImmVideoItemView.data;
        String subjectId = subject != null ? subject.getSubjectId() : null;
        Subject subject2 = shortTvImmVideoItemView.data;
        com.transsion.postdetail.shorttv.k.d(kVar, subjectId, subject2 != null ? subject2.getOps() : null, "", ((ShortTVFavInfo) objectRef.element).getHasFavorite(), "shorttv_detail_video", null, 32, null);
        Subject subject3 = shortTvImmVideoItemView.data;
        if (subject3 == null || (shortTvPlayListViewModel = shortTvImmVideoItemView.shortTvPlayListViewModel) == null) {
            return;
        }
        shortTvPlayListViewModel.d(subject3);
    }

    public static final Unit C(ShortTvImmVideoItemView shortTvImmVideoItemView, hx.c value) {
        String favoriteNum;
        ShortTVFavInfo shortTVFavInfo;
        ShortTVFavInfo shortTVFavInfo2;
        Intrinsics.h(value, "value");
        try {
            String strC = value.c();
            Subject subject = shortTvImmVideoItemView.data;
            if (!Intrinsics.c(strC, subject != null ? subject.getSubjectId() : null)) {
                return Unit.f64096a;
            }
            Subject subject2 = shortTvImmVideoItemView.data;
            if (subject2 != null && (shortTVFavInfo2 = subject2.getShortTVFavInfo()) != null) {
                shortTVFavInfo2.update(value);
            }
            AppCompatTextView appCompatTextView = shortTvImmVideoItemView.viewBinding.f74386r;
            Subject subject3 = shortTvImmVideoItemView.data;
            if (subject3 == null || (shortTVFavInfo = subject3.getShortTVFavInfo()) == null || (favoriteNum = shortTVFavInfo.getFavoriteNum()) == null) {
                favoriteNum = "0";
            }
            appCompatTextView.setText(com.transsion.baseui.util.j.a(Long.parseLong(favoriteNum)));
            shortTvImmVideoItemView.viewBinding.f74386r.setSelected(value.a());
            return Unit.f64096a;
        } catch (Exception unused) {
            wf.a.C0922a.g(wf.a.f74274a, " callback change data fail", false, 2, null);
        }
    }

    private final void D(Integer w10, Integer h10, Integer rootHeight) {
        int iE;
        if (w10 == null || rootHeight == null || h10 == null || w10.intValue() == 0) {
            return;
        }
        FrameLayout flContainer = this.viewBinding.f74372d;
        Intrinsics.g(flContainer, "flContainer");
        ViewGroup.LayoutParams layoutParams = flContainer.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        int iIntValue = (h10.intValue() * com.blankj.utilcode.util.y.e()) / w10.intValue();
        if (RangesKt.s(1, iIntValue).o(rootHeight.intValue())) {
            iE = (rootHeight.intValue() * w10.intValue()) / h10.intValue();
            iIntValue = rootHeight.intValue();
        } else {
            iE = com.blankj.utilcode.util.y.e();
        }
        if (iE != ((ViewGroup.MarginLayoutParams) bVar).width || iIntValue != ((ViewGroup.MarginLayoutParams) bVar).height) {
            ((ViewGroup.MarginLayoutParams) bVar).width = iE;
            ((ViewGroup.MarginLayoutParams) bVar).height = iIntValue;
        }
        flContainer.setLayoutParams(bVar);
    }

    static void E(ShortTvImmVideoItemView shortTvImmVideoItemView, Integer num, Integer num2, Integer num3, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            ViewGroup viewGroup = (ViewGroup) shortTvImmVideoItemView.viewBinding.getRoot().getParent();
            num3 = viewGroup != null ? Integer.valueOf(viewGroup.getHeight()) : null;
        }
        shortTvImmVideoItemView.D(num, num2, num3);
    }

    private final void F(Subject item) {
        Media video;
        Cover cover;
        String url;
        Fragment fragment;
        FragmentActivity activity;
        Media video2;
        Cover cover2;
        if (!item.getBuiltIn()) {
            ShortTVItem shortTVFirstEp = item.getShortTVFirstEp();
            if (shortTVFirstEp == null || (video = shortTVFirstEp.getVideo()) == null || (cover = video.getCover()) == null || (url = cover.getUrl()) == null || (fragment = this.fragment) == null || (activity = fragment.getActivity()) == null || activity.isFinishing()) {
                return;
            }
            Glide.with(activity).load2(ni.f.a.e(ni.f.f67269a, url, sm.b.f72338e.a(), false, false, 12, null)).into(this.viewBinding.f74374f);
            return;
        }
        String url2 = null;
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.c()), null, null, new ShortTvImmVideoItemView$updateVideoInfo$1(item, this, null), 3, null);
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        ShortTVItem shortTVFirstEp2 = item.getShortTVFirstEp();
        if (shortTVFirstEp2 != null && (video2 = shortTVFirstEp2.getVideo()) != null && (cover2 = video2.getCover()) != null) {
            url2 = cover2.getUrl();
        }
        wf.a.C0922a.f(c0922a, str, "set info - cover = " + url2, false, 4, null);
    }

    private final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046  */
    public final void n(String type) {
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

    public final void o(String id2) {
        androidx.p009lifecycle.b0 b0VarO;
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"finishAfterReport, position = " + this.position}, false, 4, null);
        com.transsion.postdetail.viewmodel.w wVar = this.videoDetailModel;
        if (wVar == null || (b0VarO = wVar.o()) == null) {
            return;
        }
        b0VarO.q(this.position);
    }

    private final void p(Context context) {
        this.gestureDetector = new GestureDetector(context, new c());
        q();
    }

    private final void q() {
        new com.transsion.baseui.widget.f(getContext(), this.viewBinding.f74392x).s(new d());
        this.viewBinding.f74383o.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ShortTvImmVideoItemView.r(view, motionEvent);
            }
        });
    }

    public static final boolean r(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final qx.a s() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    public final void setContentVisibility(boolean visible) {
        Group groupContent = this.viewBinding.f74373e;
        Intrinsics.g(groupContent, "groupContent");
        groupContent.setVisibility(visible ? 0 : 8);
    }

    public static void setData$default(ShortTvImmVideoItemView shortTvImmVideoItemView, Subject subject, Fragment fragment, Integer num, String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 32) != 0) {
            z10 = false;
        }
        shortTvImmVideoItemView.setData(subject, fragment, num, str, str2, z10);
    }

    private final void setLoading(boolean show) {
        wf.a.C0922a.l(wf.a.f74274a, "yy", "setLoading:" + show + "  " + this, false, 4, null);
        if (show) {
            ClipLoading clLoading = this.viewBinding.f74371c;
            Intrinsics.g(clLoading, "clLoading");
            uf.c.k(clLoading);
            ProgressBar progressBar = this.viewBinding.f74381m;
            Intrinsics.g(progressBar, "progressBar");
            uf.c.g(progressBar);
            this.viewBinding.f74371c.start();
            return;
        }
        ProgressBar progressBar2 = this.viewBinding.f74381m;
        Intrinsics.g(progressBar2, "progressBar");
        uf.c.k(progressBar2);
        ClipLoading clLoading2 = this.viewBinding.f74371c;
        Intrinsics.g(clLoading2, "clLoading");
        uf.c.g(clLoading2);
        this.viewBinding.f74371c.stop();
    }

    private final void t(long progress) {
        if (Intrinsics.c(this.videoLoadMore, Boolean.TRUE)) {
            ShortTvImmVideoHelper.a aVar = ShortTvImmVideoHelper.f46849k;
            if (!aVar.a().s() || progress < 1000) {
                return;
            }
            aVar.a().A();
            ImmVideoGuideView immVideoGuideViewA = ImmVideoGuideView.INSTANCE.a(this);
            immVideoGuideViewA.postDelayed(new Runnable() {
                @Override
                public final void run() {
                    ShortTvImmVideoItemView.u(this.f48050a);
                }
            }, 5000L);
            this.guideView = immVideoGuideViewA;
        }
    }

    public static final void u(ShortTvImmVideoItemView shortTvImmVideoItemView) {
        ImmVideoGuideView immVideoGuideView = shortTvImmVideoItemView.guideView;
        if (immVideoGuideView != null) {
            immVideoGuideView.removeGuide();
        }
    }

    private final void v(View view) {
        Fragment fragment;
        FragmentManager childFragmentManager;
        ShareDialogFragment shareDialogFragment;
        if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 500L)) {
            return;
        }
        if (this.mShareDialog == null) {
            qx.a loginApi = getLoginApi();
            if (loginApi != null) {
                loginApi.i();
            }
            ShareDialogFragment.Companion companion = ShareDialogFragment.INSTANCE;
            PostType postType = PostType.SHORT_TV_TYPE;
            Subject subject = this.data;
            String subjectId = subject != null ? subject.getSubjectId() : null;
            String value = ReportType.SUBJECT.getValue();
            Subject subject2 = this.data;
            String title = subject2 != null ? subject2.getTitle() : null;
            Subject subject3 = this.data;
            ShareDialogFragment shareDialogFragmentA = companion.a(postType, subjectId, "", value, title, "", false, false, false, "postdetail", subject3 != null ? subject3.getOps() : null, view.getContext().getString(R$string.save_video));
            this.mShareDialog = shareDialogFragmentA;
            if (shareDialogFragmentA != null) {
                shareDialogFragmentA.G0(new e());
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

    public final void w() {
        ClipLoading clLoading = this.viewBinding.f74371c;
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

    public static final void x(ShortTvImmVideoItemView shortTvImmVideoItemView) {
        com.transsion.player.orplayer.f fVar;
        Fragment fragment = shortTvImmVideoItemView.fragment;
        if (fragment == null || !fragment.isVisible() || (fVar = shortTvImmVideoItemView.orPlayer) == null) {
            return;
        }
        fVar.play();
    }

    private static final com.transsion.postdetail.viewmodel.w y(Lazy lazy) {
        return (com.transsion.postdetail.viewmodel.w) lazy.getValue();
    }

    private static final ShortTvPlayListViewModel z(Lazy lazy) {
        return (ShortTvPlayListViewModel) lazy.getValue();
    }

    public final void addVideoView(View view, Video video, int maxHeight) {
        if (view == null) {
            return;
        }
        this.viewBinding.f74372d.addView(view, new FrameLayout.LayoutParams(-1, -1));
        if (video != null) {
            D(video.getWidth(), video.getHeight(), Integer.valueOf(maxHeight));
        }
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
        androidx.p009lifecycle.b0 b0VarF;
        androidx.p009lifecycle.b0 b0VarF2;
        super.onAttachedToWindow();
        Fragment fragment = this.fragment;
        if (fragment == null || (viewLifecycleOwner = fragment.getViewLifecycleOwner()) == null) {
            return;
        }
        b bVar = this.favoriteResultObserver;
        ShortTvPlayListViewModel shortTvPlayListViewModel = this.shortTvPlayListViewModel;
        bVar.b((shortTvPlayListViewModel == null || (b0VarF2 = shortTvPlayListViewModel.f()) == null) ? null : (String) b0VarF2.f());
        ShortTvPlayListViewModel shortTvPlayListViewModel2 = this.shortTvPlayListViewModel;
        if (shortTvPlayListViewModel2 == null || (b0VarF = shortTvPlayListViewModel2.f()) == null) {
            return;
        }
        b0VarF.j(viewLifecycleOwner, this.favoriteResultObserver);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onClick(View v10) {
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        int i10 = R$id.iv_share;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            v(v10);
            return;
        }
        int i11 = R$id.tv_short_tv_ep;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            Fragment fragment = this.fragment;
            if (fragment != null) {
                fragment.getContext();
                return;
            }
            return;
        }
        int i12 = R$id.iv_download;
        if (numValueOf == null || numValueOf.intValue() != i12) {
            int i13 = R$id.iv_short_cover;
            if (numValueOf == null || numValueOf.intValue() != i13) {
                int i14 = R$id.tv_title;
                if (numValueOf == null || numValueOf.intValue() != i14) {
                    int i15 = R$id.tv_desc;
                    if (numValueOf == null || numValueOf.intValue() != i15) {
                        return;
                    }
                }
            }
        }
        DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        Subject subject = this.data;
        downloadManagerApiA.d0(fragmentActivity, "shorttv_detail_video", (384 & 4) != 0 ? "" : "", subject != null ? subject.getOps() : null, (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : v10.getId() == R$id.iv_download, (384 & 64) != 0 ? null : this.data, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : Boolean.valueOf(v10.getId() != R$id.iv_download));
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        Fragment fragment;
        Subject subject;
        ShortTVItem shortTVFirstEp;
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"player- onCompletion"}, false, 4, null);
        Subject subject2 = this.data;
        if (subject2 != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType == null || subjectType.intValue() != value || (fragment = this.fragment) == null || fragment.getContext() == null || (subject = this.data) == null || subject.getDeleted()) {
                return;
            }
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.d(false);
            }
            Trailer trailer = subject.getTrailer();
            if ((trailer != null ? trailer.getVideoAddress() : null) == null && (shortTVFirstEp = subject.getShortTVFirstEp()) != null) {
                shortTVFirstEp.getEp();
            }
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            if (fVar != null) {
                fVar.seekTo(0L);
            }
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
        if (shortTvPlayListViewModel2 == null || (b0VarF = shortTvPlayListViewModel2.f()) == null) {
            return;
        }
        b0VarF.o(this.favoriteResultObserver);
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
    public void onMediaItemTransition(String uuid) {
        Fragment fragment;
        Subject subject;
        ShortTVItem shortTVFirstEp;
        com.transsion.player.orplayer.e.a.p(this, uuid);
        Subject subject2 = this.data;
        if (subject2 != null) {
            Integer subjectType = subject2.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType == null || subjectType.intValue() != value || (fragment = this.fragment) == null || fragment.getContext() == null || (subject = this.data) == null) {
                return;
            }
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.d(false);
            }
            Trailer trailer = subject.getTrailer();
            if ((trailer != null ? trailer.getVideoAddress() : null) == null && (shortTVFirstEp = subject.getShortTVFirstEp()) != null) {
                shortTVFirstEp.getEp();
            }
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            if (fVar != null) {
                fVar.pause();
            }
        }
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
        String strA;
        com.transsion.player.orplayer.f fVar;
        ShortTVItem shortTVFirstEp;
        Media video;
        Video videoAddress;
        String url;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPlayerReset", false, 4, null);
        this.isPrepare = false;
        this.isPageRelease = true;
        this.isSeekToFinish.set(true);
        this.nextSeekTo = 0L;
        setKeepScreenOn(false);
        this.isClickPause = false;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            com.transsion.postdetail.layer.b.e(bVar, false, 1, null);
        }
        Subject subject = this.data;
        if (subject != null && (shortTVFirstEp = subject.getShortTVFirstEp()) != null && (video = shortTVFirstEp.getVideo()) != null && (videoAddress = video.getVideoAddress()) != null && (url = videoAddress.getUrl()) != null) {
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.removePlayerListener(this);
        }
        Subject subject2 = this.data;
        if (subject2 != null && subject2.getDeleted() && (strA = com.transsion.postdetail.control.a.f46838o.a(subject2)) != null && (fVar = this.orPlayer) != null) {
            ShortTVItem shortTVFirstEp2 = subject2.getShortTVFirstEp();
            fVar.removeDataSource(new gn.e(shortTVFirstEp2 != null ? shortTVFirstEp2.getId() : null, strA, 0, null, null, 24, null));
        }
        AppCompatImageView ivCover = this.viewBinding.f74374f;
        Intrinsics.g(ivCover, "ivCover");
        uf.c.k(ivCover);
        AppCompatImageView ivPause = this.viewBinding.f74376h;
        Intrinsics.g(ivPause, "ivPause");
        uf.c.g(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f74383o;
        Intrinsics.g(seekBar, "seekBar");
        uf.c.g(seekBar);
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
        ShortTVItem shortTVFirstEp;
        Media video;
        Video videoAddress;
        String url;
        if (this.isPrepare) {
            return;
        }
        this.isPrepare = true;
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        int duration = fVar != null ? (int) fVar.getDuration() : 0;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.g(c0922a, "shorttv.here.duration: " + duration, false, 2, null);
        this.viewBinding.f74381m.setMax(duration);
        this.viewBinding.f74383o.setMax(duration);
        Subject subject = this.data;
        if (subject != null && (shortTVFirstEp = subject.getShortTVFirstEp()) != null && (video = shortTVFirstEp.getVideo()) != null && (videoAddress = video.getVideoAddress()) != null && (url = videoAddress.getUrl()) != null) {
            Long l10 = (Long) ShortTvImmVideoHelper.f46849k.a().o().get(url);
            long jLongValue = l10 != null ? l10.longValue() : 0L;
            wf.a.C0922a.f(c0922a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f74381m.getMax() + ", progress = " + jLongValue, false, 4, null);
            if (jLongValue >= 0) {
                this.currentSaveProgress = jLongValue;
                int i10 = (int) jLongValue;
                this.viewBinding.f74381m.setProgress(i10);
                this.viewBinding.f74383o.setProgress(i10);
                com.transsion.player.orplayer.f fVar2 = this.orPlayer;
                if (fVar2 != null) {
                    fVar2.seekTo(jLongValue);
                }
            }
        }
        if (!this.isClickPause && !this.isPageHide && (fragment = this.fragment) != null && fragment.isVisible()) {
            wf.a.C0922a.f(c0922a, this.TAG, "player- onPrepare， play~", false, 4, null);
            com.transsion.player.orplayer.f fVar3 = this.orPlayer;
            if (fVar3 != null) {
                fVar3.play();
            }
        }
        setKeepScreenOn(true);
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        ShortTVItem shortTVFirstEp;
        if (this.isSeekToFinish.get() && !this.isHorizontalDragging) {
            if (eo.b.f59776a.b() && mediaSource != null) {
                String strE = mediaSource.e();
                Subject subject = this.data;
                if (!Intrinsics.c(strE, (subject == null || (shortTVFirstEp = subject.getShortTVFirstEp()) == null) ? null : shortTVFirstEp.getId())) {
                    wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onProgress- vid 不同, return", false, 4, null);
                    return;
                }
            }
            com.transsion.postdetail.layer.b bVar = this.dotLayer;
            if (bVar != null) {
                bVar.l(progress);
            }
            int i10 = (int) progress;
            this.viewBinding.f74381m.setProgress(i10);
            this.viewBinding.f74383o.setProgress(i10);
            t(progress);
        }
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onRenderFirstFrame", false, 4, null);
        AppCompatImageView ivCover = this.viewBinding.f74374f;
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
        ShortTVItem shortTVFirstEp;
        Media video;
        Video videoAddress;
        String url;
        Lifecycle lifecycle;
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i10 = a.f47954a[event.ordinal()];
        if (i10 == 1) {
            this.isPageHide = true;
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPause", false, 4, null);
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            if (fVar != null) {
                fVar.pause();
                return;
            }
            return;
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
                        ShortTvImmVideoItemView.x(this.f48045a);
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
            Subject subject = this.data;
            if (subject == null || (shortTVFirstEp = subject.getShortTVFirstEp()) == null || (video = shortTVFirstEp.getVideo()) == null || (videoAddress = video.getVideoAddress()) == null || (url = videoAddress.getUrl()) == null) {
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
        AppCompatImageView ivPause = this.viewBinding.f74376h;
        Intrinsics.g(ivPause, "ivPause");
        uf.c.k(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f74383o;
        Intrinsics.g(seekBar, "seekBar");
        uf.c.k(seekBar);
        ProgressBar progressBar = this.viewBinding.f74381m;
        Intrinsics.g(progressBar, "progressBar");
        uf.c.g(progressBar);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.n();
        }
        setKeepScreenOn(false);
    }

    @Override
    public void onVideoSizeChanged(int width, int height) {
        com.transsion.player.orplayer.e.a.H(this, width, height);
        E(this, Integer.valueOf(width), Integer.valueOf(height), null, 4, null);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoStart", false, 4, null);
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
            bVar.o();
        }
        AppCompatImageView ivPause = this.viewBinding.f74376h;
        Intrinsics.g(ivPause, "ivPause");
        uf.c.g(ivPause);
        AppCompatSeekBar seekBar = this.viewBinding.f74383o;
        Intrinsics.g(seekBar, "seekBar");
        uf.c.g(seekBar);
        setLoading(false);
        setKeepScreenOn(true);
    }

    public final void setData(Subject item, final Fragment fragment, Integer position, String basePostId, String baseItemType, boolean attachToMain) {
        Intrinsics.h(item, "item");
        Intrinsics.h(fragment, "fragment");
        com.transsion.postdetail.layer.b bVar = new com.transsion.postdetail.layer.b();
        this.dotLayer = bVar;
        bVar.s(basePostId);
        com.transsion.postdetail.layer.b bVar2 = this.dotLayer;
        if (bVar2 != null) {
            bVar2.r(baseItemType);
        }
        com.transsion.postdetail.layer.b bVar3 = this.dotLayer;
        if (bVar3 != null) {
            bVar3.y(SubjectType.SHORT_TV.getValue());
        }
        PostSubjectItem postSubjectItem = new PostSubjectItem(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, null, null, false, null, false, null, false, false, false, false, null, -1, 1, null);
        postSubjectItem.setSubject(item);
        postSubjectItem.setOps(item.getOps());
        postSubjectItem.setItemType("7");
        com.transsion.postdetail.layer.b bVar4 = this.dotLayer;
        if (bVar4 != null) {
            bVar4.x("", postSubjectItem);
        }
        this.fragment = fragment;
        this.videoLoadMore = this.videoLoadMore;
        this.basePostId = basePostId;
        this.position = position;
        this.attachToMain = attachToMain;
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
        this.videoDetailModel = y(FragmentViewModelLazyKt.a(fragment, Reflection.b(com.transsion.postdetail.viewmodel.w.class), new Function0<androidx.p009lifecycle.x0>() {
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
        this.shortTvPlayListViewModel = z(FragmentViewModelLazyKt.a(fragment, Reflection.b(ShortTvPlayListViewModel.class), new Function0<androidx.p009lifecycle.x0>() {
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
        this.data = item;
        F(item);
        if (attachToMain) {
            ViewGroup.LayoutParams layoutParams = this.viewBinding.f74382n.getLayoutParams();
            if (layoutParams instanceof ConstraintLayout.b) {
                ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams)).bottomMargin = com.blankj.utilcode.util.a0.a(16.0f);
            }
        }
        A();
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

    public final void videoStartPrepare(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.pageFrom = pageFrom;
        com.transsion.postdetail.layer.b bVar = this.dotLayer;
        if (bVar != null) {
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
    public ShortTvImmVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ShortTvImmVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }
}
