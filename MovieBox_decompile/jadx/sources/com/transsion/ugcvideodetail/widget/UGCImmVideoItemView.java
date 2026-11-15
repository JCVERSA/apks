package com.transsion.ugcvideodetail.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.Space;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.b0;
import androidx.p009lifecycle.c0;
import androidx.p009lifecycle.u;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.blankj.utilcode.util.y;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.miniapp.utils.toast.ToastStrategy;
import com.google.android.material.imageview.ShapeableImageView;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.pager.PagerLayoutManager;
import com.tn.lib.widget.R$string;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baseui.util.j;
import com.transsion.baseui.util.m;
import com.transsion.baseui.widget.NestedScrollableHost;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.FirstFrame;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.push.PushConstants;
import com.transsion.ugcvideodetail.R$drawable;
import com.transsion.ugcvideodetail.R$layout;
import com.transsion.ugcvideodetail.api.UGCVideoTypeKt;
import com.transsion.ugcvideodetail.api.bean.UGCImmVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.ugcvideodetail.api.bean.UGCVideoCreator;
import com.transsion.ugcvideodetail.api.bean.UGCVideoHashTag;
import com.transsion.ugcvideodetail.api.bean.UGCVideoInteractiveInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayInfo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoPlayStream;
import com.transsion.ugcvideodetail.dialog.UGCImmVideoSettingDialog;
import com.transsion.ugcvideodetail.fragment.UGCImmVideoDetailFragment;
import com.transsion.ugcvideodetail.viewmodel.UGCImmVideoDetailViewModel;
import com.transsion.ugcvideodetail.widget.UGCImmVideoItemView;
import com.transsion.web.api.WebConstants;
import com.transsion.wrapperad.R$color;
import com.transsnet.downloader.ugc.viewmodel.UGCDownloadViewModel;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import iu.r;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import lu.h;
import lu.i;
import lu.n;

@Metadata(d1 = {"\u0000\u0086\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u001d\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B!\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bB\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\fB\u001b\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\n\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012JI\u0010\u001d\u001a\u00020\u001c2\b\u0010\u0013\u001a\u0004\u0018\u00010\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00162\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00162\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\b¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u001cH\u0014¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\u001cH\u0014¢\u0006\u0004\b$\u0010#J\r\u0010%\u001a\u00020\u001c¢\u0006\u0004\b%\u0010#J\r\u0010&\u001a\u00020\u001c¢\u0006\u0004\b&\u0010#J\r\u0010'\u001a\u00020\u001c¢\u0006\u0004\b'\u0010#J\r\u0010(\u001a\u00020\u001c¢\u0006\u0004\b(\u0010#J+\u0010.\u001a\u00020\u001c2\b\u0010*\u001a\u0004\u0018\u00010)2\b\u0010,\u001a\u0004\u0018\u00010+2\b\u0010-\u001a\u0004\u0018\u00010\u001a¢\u0006\u0004\b.\u0010/J!\u00104\u001a\u00020\u001c2\b\u00101\u001a\u0004\u0018\u0001002\b\u00103\u001a\u0004\u0018\u000102¢\u0006\u0004\b4\u00105J\r\u00107\u001a\u000206¢\u0006\u0004\b7\u00108J\u0015\u0010:\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\b¢\u0006\u0004\b:\u0010!J\u0019\u0010<\u001a\u00020\u001c2\b\u0010;\u001a\u0004\u0018\u000100H\u0016¢\u0006\u0004\b<\u0010=J\r\u0010>\u001a\u00020\u001c¢\u0006\u0004\b>\u0010#J\u000f\u0010?\u001a\u00020\u001cH\u0016¢\u0006\u0004\b?\u0010#J\r\u0010@\u001a\u00020\u001c¢\u0006\u0004\b@\u0010#J\r\u0010A\u001a\u00020\u001c¢\u0006\u0004\bA\u0010#J\r\u0010B\u001a\u00020\u001c¢\u0006\u0004\bB\u0010#J\u0015\u0010D\u001a\u00020\u001c2\u0006\u0010C\u001a\u00020\u0016¢\u0006\u0004\bD\u0010EJ\u000f\u0010F\u001a\u00020\u001cH\u0016¢\u0006\u0004\bF\u0010#J\u001f\u0010I\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\b2\u0006\u0010H\u001a\u00020\bH\u0016¢\u0006\u0004\bI\u0010JJ\u000f\u0010K\u001a\u00020\u001cH\u0016¢\u0006\u0004\bK\u0010#J\u0019\u0010N\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bN\u0010OJ\u0019\u0010P\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bP\u0010OJ\u0019\u0010Q\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bQ\u0010OJ!\u0010S\u001a\u00020\u001c2\u0006\u0010R\u001a\u0002062\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bS\u0010TJ\u0019\u0010U\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bU\u0010OJ\u0019\u0010V\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bV\u0010OJ!\u0010Y\u001a\u00020\u001c2\u0006\u0010X\u001a\u00020W2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\bY\u0010ZJ\u000f\u0010[\u001a\u00020\u001cH\u0016¢\u0006\u0004\b[\u0010#J\u0019\u0010\\\u001a\u00020\u001c2\b\u0010M\u001a\u0004\u0018\u00010LH\u0016¢\u0006\u0004\b\\\u0010OJ\r\u0010]\u001a\u00020\u001c¢\u0006\u0004\b]\u0010#J\u000f\u0010^\u001a\u00020\u001cH\u0002¢\u0006\u0004\b^\u0010#J\u0017\u0010_\u001a\u00020\u001c2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b_\u0010`J\u0017\u0010c\u001a\u00020\u001c2\u0006\u0010b\u001a\u00020aH\u0002¢\u0006\u0004\bc\u0010dJ\u0017\u0010e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020\bH\u0002¢\u0006\u0004\be\u0010!J\u0017\u0010g\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002¢\u0006\u0004\bg\u0010hJ\u0017\u0010i\u001a\u00020\u001c2\u0006\u0010b\u001a\u00020aH\u0002¢\u0006\u0004\bi\u0010dJ\u0017\u0010j\u001a\u00020\u001c2\u0006\u0010R\u001a\u000206H\u0002¢\u0006\u0004\bj\u0010kJ\u0017\u0010m\u001a\u00020\u001c2\u0006\u0010l\u001a\u000206H\u0002¢\u0006\u0004\bm\u0010kJ\u0017\u0010n\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002¢\u0006\u0004\bn\u0010hJ#\u0010q\u001a\u00020\u001c2\b\u0010o\u001a\u0004\u0018\u00010\b2\b\u0010p\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0004\bq\u0010rJ\u000f\u0010s\u001a\u00020\u001cH\u0002¢\u0006\u0004\bs\u0010#J\u0017\u0010u\u001a\u00020\u001c2\u0006\u0010t\u001a\u00020\bH\u0002¢\u0006\u0004\bu\u0010!J\u000f\u0010v\u001a\u00020\u001cH\u0002¢\u0006\u0004\bv\u0010#J\u000f\u0010w\u001a\u00020\u001cH\u0002¢\u0006\u0004\bw\u0010#J\u0017\u0010x\u001a\u00020\u001c2\u0006\u0010f\u001a\u00020\u0010H\u0002¢\u0006\u0004\bx\u0010hR\u0014\u0010{\u001a\u00020\u00168\u0002X\u0082D¢\u0006\u0006\n\u0004\by\u0010zR\u0014\u0010\u007f\u001a\u00020|8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b}\u0010~R\u001a\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0080\u0001\u0010\u0081\u0001R\u001c\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0082\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0001\u0010\u0084\u0001R\u001c\u0010\u0089\u0001\u001a\u0005\u0018\u00010\u0086\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001c\u0010\u008d\u0001\u001a\u0005\u0018\u00010\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008b\u0001\u0010\u008c\u0001R\u001c\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008e\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008f\u0001\u0010\u0090\u0001R\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bp\u0010\u0092\u0001R\u0017\u0010\u0017\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0093\u0001\u0010zR\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0094\u0001\u0010zR\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0095\u0001\u0010zR\u001a\u0010*\u001a\u0004\u0018\u00010)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0097\u0001R\u001a\u0010,\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0099\u0001R\u001c\u0010\u009d\u0001\u001a\u0005\u0018\u00010\u009a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u009c\u0001R!\u0010£\u0001\u001a\u00030\u009e\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009f\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001R!\u0010¨\u0001\u001a\u00030¤\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¥\u0001\u0010 \u0001\u001a\u0006\b¦\u0001\u0010§\u0001R!\u0010\u00ad\u0001\u001a\u00030©\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\bª\u0001\u0010 \u0001\u001a\u0006\b«\u0001\u0010¬\u0001R!\u0010²\u0001\u001a\u00030®\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¯\u0001\u0010 \u0001\u001a\u0006\b°\u0001\u0010±\u0001R!\u0010·\u0001\u001a\u00030³\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b´\u0001\u0010 \u0001\u001a\u0006\bµ\u0001\u0010¶\u0001R!\u0010¼\u0001\u001a\u00030¸\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¹\u0001\u0010 \u0001\u001a\u0006\bº\u0001\u0010»\u0001R\u0017\u0010¿\u0001\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u0018\u0010Á\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b;\u0010À\u0001R\u0018\u0010Â\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bo\u0010À\u0001R\u0019\u0010Ä\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÃ\u0001\u0010À\u0001R\u0017\u0010Æ\u0001\u001a\u00020\b8\u0002X\u0082D¢\u0006\b\n\u0006\bÅ\u0001\u0010¾\u0001R\u0017\u0010È\u0001\u001a\u00020\b8\u0002X\u0082D¢\u0006\b\n\u0006\bÇ\u0001\u0010¾\u0001R\u0017\u0010Ê\u0001\u001a\u00020\b8\u0002X\u0082D¢\u0006\b\n\u0006\bÉ\u0001\u0010¾\u0001R\u0019\u0010Ì\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010¾\u0001R\u0018\u0010Í\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bc\u0010À\u0001R\u0018\u0010Î\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b^\u0010À\u0001R\u0019\u0010Ð\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÏ\u0001\u0010À\u0001R\u0019\u0010Ó\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÑ\u0001\u0010Ò\u0001R\u0018\u0010Ô\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bu\u0010Ò\u0001R\u0018\u0010Õ\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bv\u0010À\u0001R#\u0010Ù\u0001\u001a\u0005\u0018\u00010Ö\u00018BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¾\u0001\u0010 \u0001\u001a\u0006\b×\u0001\u0010Ø\u0001R\u0019\u0010Ú\u0001\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0001\u0010¾\u0001R-\u0010ß\u0001\u001a\u0018\u0012\u0013\u0012\u0011\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0010\u0018\u00010Ü\u00010Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÝ\u0001\u0010Þ\u0001R\u0018\u0010à\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bw\u0010À\u0001R\u0018\u0010á\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bs\u0010À\u0001R\u0019\u0010ã\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010À\u0001R\u0018\u0010ç\u0001\u001a\u00030ä\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bå\u0001\u0010æ\u0001R\u0019\u0010é\u0001\u001a\u0002068\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0001\u0010Ò\u0001R\u0019\u0010ë\u0001\u001a\u00020\u00108\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0001\u0010À\u0001¨\u0006ì\u0001"}, d2 = {"Lcom/transsion/ugcvideodetail/widget/UGCImmVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/e;", "Landroid/view/View$OnClickListener;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "adapterPosition", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "fragment", "", "trackId", "previousTrackId", "previousPageVideoId", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "data", "", "setData", "(Ljava/lang/Integer;Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V", NotificationCompat.CATEGORY_STATUS, "setDownloadStatus", "(I)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "onPagePause", "onPageResume", "onPageStop", "onPageDestroy", "Lcom/transsion/player/orplayer/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", WebConstants.FIELD_ITEM, "onPageSelected", "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Lcom/transsion/moviedetailapi/bean/FirstFrame;", "firstImage", "addVideoView", "(Landroid/view/View;Lcom/transsion/moviedetailapi/bean/FirstFrame;)V", "", "getProgress", "()J", RequestParameters.POSITION, "onPageRelease", "v", "onClick", "(Landroid/view/View;)V", "onNetConnect", "onPlayerReset", "reset", "app2Background", "videoStartPrepare", "url", "setVideoUrl", "(Ljava/lang/String;)V", "onSetDataSource", "width", "height", "onVideoSizeChanged", "(II)V", "onRenderFirstFrame", "Lgn/e;", "mediaSource", "onPrepare", "(Lgn/e;)V", "onVideoStart", "onVideoPause", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onLoopingStart", "onCompletion", "onItemViewMediaItemTransition", "D", "setContent", "(Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;)V", "Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;", "video", "C", "(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;)V", "V", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setDownloadLoadingIconVisibility", "(Z)V", "setupHashTags", "W", "(J)V", "max", "X", "setLoading", "w", "h", "Y", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "M", "resolution", "G", "H", "L", "setControlVisible", "a", "Ljava/lang/String;", "TAG", "Liu/r;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Liu/r;", "viewBinding", "c", "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoDetailFragment;", "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;", "detailViewModel", "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", "e", "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;", "subtitleViewModel", "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;", "f", "Lcom/transsnet/downloader/ugc/viewmodel/UGCDownloadViewModel;", "downloadViewModel", "Lcom/transsion/ugcvideodetail/hepler/a;", "g", "Lcom/transsion/ugcvideodetail/hepler/a;", "dotLayer", "Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;", "i", "j", CampaignEx.JSON_KEY_AD_K, "l", "Lcom/transsion/player/orplayer/f;", "m", "Lcom/transsion/player/ui/ORPlayerView;", "Lcom/tn/lib/pager/PagerLayoutManager;", "n", "Lcom/tn/lib/pager/PagerLayoutManager;", "pagerLayoutManager", "Llu/i;", "o", "Lkotlin/Lazy;", "getReportDelegate", "()Llu/i;", "reportDelegate", "Llu/e;", TtmlNode.TAG_P, "getDownloadDelegate", "()Llu/e;", "downloadDelegate", "Llu/h;", CampaignEx.JSON_KEY_AD_Q, "getPlayerDelegate", "()Llu/h;", "playerDelegate", "Llu/a;", CampaignEx.JSON_KEY_AD_R, "getActionDelegate", "()Llu/a;", "actionDelegate", "Llu/n;", "s", "getSubtitleDelegate", "()Llu/n;", "subtitleDelegate", "Llu/g;", "t", "getGestureDelegate", "()Llu/g;", "gestureDelegate", TmcStartParams.KEY_URL_SHORT, "I", "screenWidth", "Z", "isClickPause", "isPageHide", "x", "isDownloadImmediately", "y", "DOWNLOAD_STATUS_DOWNLOAD_NONE", "z", "DOWNLOAD_STATUS_DOWNLOADING", "A", "DOWNLOAD_STATUS_DOWNLOAD_COMPLETE", "B", "singleDownloadImmediatelyStatus", "isSearchShow", "isEpLayoutShow", "E", "isHashTagShow", "F", "J", "totalDuration", "playProgress", "isSubscriptionInitiatedByThisView", "Lqx/a;", "getLoginApi", "()Lqx/a;", "loginApi", "curStatus", "Landroidx/lifecycle/c0;", "Lkotlin/Pair;", "K", "Landroidx/lifecycle/c0;", "subscriptObserver", "isLoading", "isFirstFrame", "N", "isPrepare", "Ljava/lang/Runnable;", "O", "Ljava/lang/Runnable;", "delayToastNetErrRunnable", "P", "lastShowNetWorkErrToastTime", "Q", "isBarHide", "UGCVideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class UGCImmVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.e, View.OnClickListener {

    private final int DOWNLOAD_STATUS_DOWNLOAD_COMPLETE;

    private int singleDownloadImmediatelyStatus;

    private boolean isSearchShow;

    private boolean isEpLayoutShow;

    private boolean isHashTagShow;

    private long totalDuration;

    private long playProgress;

    private boolean isSubscriptionInitiatedByThisView;

    private final Lazy loginApi;

    private int curStatus;

    private final c0 subscriptObserver;

    private boolean isLoading;

    private boolean isFirstFrame;

    private boolean isPrepare;

    private final Runnable delayToastNetErrRunnable;

    private long lastShowNetWorkErrToastTime;

    private boolean isBarHide;

    private final String TAG;

    private final r viewBinding;

    private UGCImmVideoDetailFragment fragment;

    private UGCImmVideoDetailViewModel detailViewModel;

    private com.transsion.ugcvideodetail.hepler.subtitle.a subtitleViewModel;

    private UGCDownloadViewModel downloadViewModel;

    private com.transsion.ugcvideodetail.hepler.a dotLayer;

    private UGCImmVideo data;

    private String trackId;

    private String previousTrackId;

    private String previousPageVideoId;

    private com.transsion.player.orplayer.f orPlayer;

    private ORPlayerView orPlayerView;

    private PagerLayoutManager pagerLayoutManager;

    private final Lazy reportDelegate;

    private final Lazy downloadDelegate;

    private final Lazy playerDelegate;

    private final Lazy actionDelegate;

    private final Lazy subtitleDelegate;

    private final Lazy gestureDelegate;

    private final int screenWidth;

    private boolean isClickPause;

    private boolean isPageHide;

    private boolean isDownloadImmediately;

    private final int DOWNLOAD_STATUS_DOWNLOAD_NONE;

    private final int DOWNLOAD_STATUS_DOWNLOADING;

    public static final class a implements lu.a.b {

        private final r f54441a;

        a() {
            this.f54441a = UGCImmVideoItemView.this.viewBinding;
        }

        @Override
        public r a() {
            return this.f54441a;
        }

        @Override
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override
        public UGCImmVideoDetailFragment c() {
            return UGCImmVideoItemView.this.fragment;
        }

        @Override
        public String d() {
            return UGCImmVideoItemView.this.trackId;
        }

        @Override
        public String e() {
            return UGCImmVideoItemView.this.previousPageVideoId;
        }

        @Override
        public String f() {
            return UGCImmVideoItemView.this.previousTrackId;
        }

        @Override
        public boolean g() {
            return UGCImmVideoItemView.this.isDownloadImmediately;
        }

        @Override
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override
        public qx.a h() {
            return UGCImmVideoItemView.this.getLoginApi();
        }

        @Override
        public void i(boolean z10) {
            UGCImmVideoItemView.this.isSubscriptionInitiatedByThisView = z10;
        }
    }

    public static final class b implements lu.e.b {
        b() {
        }

        @Override
        public void a(boolean z10) {
            UGCImmVideoItemView.this.setDownloadLoadingIconVisibility(z10);
        }

        @Override
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override
        public UGCImmVideoDetailFragment c() {
            return UGCImmVideoItemView.this.fragment;
        }

        @Override
        public String d() {
            return UGCImmVideoItemView.this.trackId;
        }

        @Override
        public String e() {
            return UGCImmVideoItemView.this.previousTrackId;
        }

        @Override
        public UGCDownloadViewModel f() {
            return UGCImmVideoItemView.this.downloadViewModel;
        }

        @Override
        public String g() {
            return UGCImmVideoItemView.this.previousPageVideoId;
        }

        @Override
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }
    }

    public static final class c implements lu.g.a {

        private final r f54444a;

        private final int f54445b;

        c() {
            this.f54444a = UGCImmVideoItemView.this.viewBinding;
            this.f54445b = UGCImmVideoItemView.this.screenWidth;
        }

        @Override
        public r a() {
            return this.f54444a;
        }

        @Override
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override
        public PagerLayoutManager c() {
            return UGCImmVideoItemView.this.pagerLayoutManager;
        }

        @Override
        public void d() {
            UGCImmVideoItemView.this.M();
        }

        @Override
        public void e(boolean z10) {
            UGCImmVideoItemView.this.setControlVisible(z10);
        }

        @Override
        public void f(long j10) {
            UGCImmVideoItemView.this.W(j10);
        }

        @Override
        public void g() {
            UGCImmVideoItemView.this.H();
        }

        @Override
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override
        public String getLogTag() {
            return UGCImmVideoItemView.this.TAG;
        }

        @Override
        public com.transsion.player.orplayer.f getOrPlayer() {
            return UGCImmVideoItemView.this.orPlayer;
        }

        @Override
        public void h(boolean z10) {
            UGCImmVideoItemView.this.isClickPause = z10;
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = UGCImmVideoItemView.this.fragment;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.b1(z10);
            }
        }

        @Override
        public int i() {
            return this.f54445b;
        }

        @Override
        public boolean isLoading() {
            return UGCImmVideoItemView.this.isLoading;
        }
    }

    public static final class d implements h.a {

        private final r f54447a;

        d() {
            this.f54447a = UGCImmVideoItemView.this.viewBinding;
        }

        @Override
        public r a() {
            return this.f54447a;
        }

        @Override
        public UGCImmVideoDetailViewModel b() {
            return UGCImmVideoItemView.this.detailViewModel;
        }

        @Override
        public void c(boolean z10) {
            UGCImmVideoItemView.this.setKeepScreenOn(z10);
        }

        @Override
        public void d() {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = UGCImmVideoItemView.this.fragment;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.hideLoading();
            }
        }

        @Override
        public n e() {
            return UGCImmVideoItemView.this.getSubtitleDelegate();
        }

        @Override
        public com.transsion.ugcvideodetail.hepler.a f() {
            return UGCImmVideoItemView.this.dotLayer;
        }

        @Override
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override
        public String getLogTag() {
            return UGCImmVideoItemView.this.TAG;
        }

        @Override
        public com.transsion.player.orplayer.f getOrPlayer() {
            return UGCImmVideoItemView.this.orPlayer;
        }

        @Override
        public void showLoading() {
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = UGCImmVideoItemView.this.fragment;
            if (uGCImmVideoDetailFragment != null) {
                uGCImmVideoDetailFragment.startLoading();
            }
        }
    }

    public static final class e implements i.a {
        e() {
        }

        @Override
        public String d() {
            return UGCImmVideoItemView.this.trackId;
        }

        @Override
        public String e() {
            return UGCImmVideoItemView.this.previousPageVideoId;
        }

        @Override
        public String f() {
            return UGCImmVideoItemView.this.previousTrackId;
        }
    }

    public static final class f implements RequestListener {
        f() {
        }

        @Override
        public boolean onResourceReady(Drawable resource, Object model, Target target, DataSource dataSource, boolean z10) {
            Intrinsics.h(resource, "resource");
            Intrinsics.h(model, "model");
            Intrinsics.h(dataSource, "dataSource");
            wf.a.C0922a.f(wf.a.f74274a, UGCImmVideoItemView.this.TAG, "onResourceReady ", false, 4, null);
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z10) {
            Intrinsics.h(target, "target");
            wf.a.C0922a.f(wf.a.f74274a, UGCImmVideoItemView.this.TAG, "onLoadFailed ", false, 4, null);
            return false;
        }
    }

    public static final class g implements n.a {

        private final r f54451a;

        g() {
            this.f54451a = UGCImmVideoItemView.this.viewBinding;
        }

        @Override
        public r a() {
            return this.f54451a;
        }

        @Override
        public com.transsion.ugcvideodetail.hepler.subtitle.a b() {
            return UGCImmVideoItemView.this.subtitleViewModel;
        }

        @Override
        public UGCImmVideoDetailFragment c() {
            return UGCImmVideoItemView.this.fragment;
        }

        @Override
        public UGCImmVideo getData() {
            return UGCImmVideoItemView.this.data;
        }

        @Override
        public String getLogTag() {
            return UGCImmVideoItemView.this.TAG;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UGCImmVideoItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "UGCImmVideoItemView";
        String string = UUID.randomUUID().toString();
        Intrinsics.g(string, "toString(...)");
        this.trackId = string;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.NONE;
        this.reportDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.J(this.f65458a);
            }
        });
        this.downloadDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.A(this.f65461a);
            }
        });
        this.playerDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.I(this.f65464a);
            }
        });
        this.actionDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.y(this.f65467a);
            }
        });
        this.subtitleDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.U(this.f65425a);
            }
        });
        this.gestureDelegate = LazyKt.a(lazyThreadSafetyMode, new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.B(this.f65429a);
            }
        });
        this.screenWidth = y.e();
        this.DOWNLOAD_STATUS_DOWNLOAD_NONE = 1;
        this.DOWNLOAD_STATUS_DOWNLOADING = 2;
        this.DOWNLOAD_STATUS_DOWNLOAD_COMPLETE = 3;
        this.singleDownloadImmediatelyStatus = 1;
        this.loginApi = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return UGCImmVideoItemView.F();
            }
        });
        View.inflate(getContext(), R$layout.view_ugc_imm_video_detail_item, this);
        r rVarA = r.a(this);
        Intrinsics.g(rVarA, "bind(...)");
        this.viewBinding = rVarA;
        rVarA.D.setOnClickListener(this);
        rVarA.C.setOnClickListener(this);
        rVarA.f62798z.setOnClickListener(this);
        rVarA.f62787o.setOnClickListener(this);
        rVarA.f62783k.setOnClickListener(this);
        rVarA.f62789q.setOnClickListener(this);
        rVarA.H.setOnClickListener(this);
        rVarA.f62788p.setOnClickListener(this);
        rVarA.f62790r.setOnClickListener(this);
        rVarA.f62791s.setOnClickListener(this);
        FrameLayout vTopStatus = rVarA.J;
        Intrinsics.g(vTopStatus, "vTopStatus");
        uf.c.e(vTopStatus);
        getGestureDelegate().i();
        D();
        this.curStatus = -1;
        this.subscriptObserver = new c0() {
            @Override
            public final void onChanged(Object obj) {
                UGCImmVideoItemView.T(this.f65435a, (Pair) obj);
            }
        };
        this.delayToastNetErrRunnable = new Runnable() {
            @Override
            public final void run() {
                UGCImmVideoItemView.z(this.f65438a);
            }
        };
    }

    public static final lu.e A(UGCImmVideoItemView uGCImmVideoItemView) {
        return new lu.e(uGCImmVideoItemView.new b());
    }

    public static final lu.g B(UGCImmVideoItemView uGCImmVideoItemView) {
        return new lu.g(uGCImmVideoItemView.new c(), uGCImmVideoItemView.getReportDelegate());
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    private final void C(UGCVideo video) {
        boolean z10;
        UGCVideoPlayInfo playInfo;
        List<UGCVideoPlayStream> resources;
        if (video.isCollection()) {
            z10 = false;
        } else {
            z10 = true;
            if (video.getDownloadStyle() != null) {
                Integer downloadStyle = video.getDownloadStyle();
                if (downloadStyle == null || downloadStyle.intValue() != 1) {
                    z10 = false;
                }
            } else {
                UGCImmVideo uGCImmVideo = this.data;
                if (((uGCImmVideo == null || (playInfo = uGCImmVideo.getPlayInfo()) == null || (resources = playInfo.getResources()) == null) ? 0 : resources.size()) > 1) {
                    z10 = false;
                }
            }
        }
        this.isDownloadImmediately = z10;
        if (z10) {
            UGCImmVideo uGCImmVideo2 = this.data;
            V(uGCImmVideo2 != null ? uGCImmVideo2.getDownloadStatus() : 0);
        } else {
            setDownloadLoadingIconVisibility(false);
            this.viewBinding.f62783k.setImageResource(R$drawable.ugc_imm_video_ic_download);
        }
    }

    private final void D() {
        if (Build.VERSION.SDK_INT >= 30) {
            post(new Runnable() {
                @Override
                public final void run() {
                    UGCImmVideoItemView.E(this.f65440a);
                }
            });
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0034  */
    public static final void E(UGCImmVideoItemView uGCImmVideoItemView) {
        WindowInsets rootWindowInsets;
        Insets insets;
        boolean z10;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        Context context = uGCImmVideoItemView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        Window window = ((Activity) context).getWindow();
        if (window == null || (rootWindowInsets = window.getDecorView().getRootWindowInsets()) == null || (insets = rootWindowInsets.getInsets(WindowInsets.Type.tappableElement())) == null) {
            return;
        }
        if (com.blankj.utilcode.util.d.e(window)) {
            z10 = com.blankj.utilcode.util.d.a() > 1;
        }
        int iA = a0.a(24.0f);
        int iA2 = Build.VERSION.SDK_INT >= 35 ? a0.a(20.0f) + RangesKt.e(iA, insets.top) : RangesKt.e(iA, insets.top);
        if (z10 || insets.top <= 0) {
            Space progressUgcImmGuideline = uGCImmVideoItemView.viewBinding.f62795w;
            Intrinsics.g(progressUgcImmGuideline, "progressUgcImmGuideline");
            ViewGroup.LayoutParams layoutParams = progressUgcImmGuideline.getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
            }
            ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
            ViewGroup.LayoutParams layoutParams2 = uGCImmVideoItemView.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
            int i10 = marginLayoutParams2 != null ? marginLayoutParams2.leftMargin : 0;
            ViewGroup.LayoutParams layoutParams3 = uGCImmVideoItemView.getLayoutParams();
            ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
            int i11 = marginLayoutParams3 != null ? marginLayoutParams3.topMargin : 0;
            ViewGroup.LayoutParams layoutParams4 = uGCImmVideoItemView.getLayoutParams();
            marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
            bVar.setMargins(i10, i11, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iA);
            progressUgcImmGuideline.setLayoutParams(bVar);
            return;
        }
        Space progressUgcImmGuideline2 = uGCImmVideoItemView.viewBinding.f62795w;
        Intrinsics.g(progressUgcImmGuideline2, "progressUgcImmGuideline");
        ViewGroup.LayoutParams layoutParams5 = progressUgcImmGuideline2.getLayoutParams();
        if (layoutParams5 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams5;
        ViewGroup.LayoutParams layoutParams6 = uGCImmVideoItemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
        int i12 = marginLayoutParams4 != null ? marginLayoutParams4.leftMargin : 0;
        ViewGroup.LayoutParams layoutParams7 = uGCImmVideoItemView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
        int i13 = marginLayoutParams5 != null ? marginLayoutParams5.topMargin : 0;
        ViewGroup.LayoutParams layoutParams8 = uGCImmVideoItemView.getLayoutParams();
        marginLayoutParams = layoutParams8 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams8 : null;
        bVar2.setMargins(i12, i13, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iA2);
        progressUgcImmGuideline2.setLayoutParams(bVar2);
    }

    public static final qx.a F() {
        return (qx.a) TheRouter.d(qx.a.class, new Object[0]);
    }

    private final void G(int resolution) {
        UGCVideoPlayInfo playInfo;
        Integer numValueOf;
        Object next;
        UGCVideo ugcVideo;
        Map mapB;
        UGCVideo ugcVideo2;
        UGCImmVideo uGCImmVideo = this.data;
        if (uGCImmVideo == null || (playInfo = uGCImmVideo.getPlayInfo()) == null) {
            return;
        }
        Iterator<T> it = playInfo.getResources().iterator();
        do {
            numValueOf = null;
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.c(((UGCVideoPlayStream) next).getResolutions(), String.valueOf(resolution)));
        UGCVideoPlayStream uGCVideoPlayStream = (UGCVideoPlayStream) next;
        if (uGCVideoPlayStream == null) {
            return;
        }
        String url = uGCVideoPlayStream.getUrl();
        String url2 = uGCVideoPlayStream.getUrl();
        UGCImmVideo uGCImmVideo2 = this.data;
        boolean zContainsKey = false;
        gn.e eVar = new gn.e(url, url2, (uGCImmVideo2 == null || (ugcVideo2 = uGCImmVideo2.getUgcVideo()) == null) ? 0 : ugcVideo2.videoUGCPosition(), null, null, 24, null);
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        pn.f fVar2 = fVar instanceof pn.f ? (pn.f) fVar : null;
        if (fVar2 != null && (mapB = fVar2.b()) != null) {
            zContainsKey = mapB.containsKey(eVar.e());
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        UGCImmVideo uGCImmVideo3 = this.data;
        if (uGCImmVideo3 != null && (ugcVideo = uGCImmVideo3.getUgcVideo()) != null) {
            numValueOf = Integer.valueOf(ugcVideo.videoUGCPosition());
        }
        wf.a.C0922a.f(c0922a, str, "resolution play, resolution:" + resolution + ", EP:" + numValueOf + ", inList:" + zContainsKey + ", url:" + uGCVideoPlayStream.getUrl(), false, 4, null);
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        long currentPosition = fVar3 != null ? fVar3.getCurrentPosition() : 0L;
        if (!zContainsKey) {
            com.transsion.player.orplayer.f fVar4 = this.orPlayer;
            if (fVar4 != null) {
                fVar4.addDataSource(eVar);
            }
            com.transsion.player.orplayer.f fVar5 = this.orPlayer;
            if (fVar5 != null) {
                fVar5.prepare();
            }
        }
        com.transsion.player.orplayer.f fVar6 = this.orPlayer;
        if (fVar6 != null) {
            String strE = eVar.e();
            if (strE == null) {
                strE = "";
            }
            fVar6.seekTo(strE, currentPosition);
        }
    }

    public final void H() {
        getPlayerDelegate().e();
    }

    public static final h I(UGCImmVideoItemView uGCImmVideoItemView) {
        return new h(uGCImmVideoItemView.new d());
    }

    public static final i J(UGCImmVideoItemView uGCImmVideoItemView) {
        return new i(uGCImmVideoItemView.new e());
    }

    public static final void K(UGCVideo uGCVideo, UGCImmVideoItemView uGCImmVideoItemView, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        List<UGCVideoHashTag> filteredHashTags = uGCVideo.getFilteredHashTags();
        UGCVideoHashTag uGCVideoHashTag = filteredHashTags != null ? (UGCVideoHashTag) CollectionsKt.l0(filteredHashTags, i10) : null;
        i reportDelegate = uGCImmVideoItemView.getReportDelegate();
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = uGCImmVideoItemView.detailViewModel;
        reportDelegate.a("hash_tag", uGCVideo, uGCImmVideoDetailViewModel != null ? Boolean.valueOf(uGCImmVideoDetailViewModel.Y0()) : null, uGCVideoHashTag != null ? uGCVideoHashTag.getTag() : null, Integer.valueOf(i10));
        Navigator.x(TheRouter.c("/home/hashtag").I("titleHashTag", uGCVideoHashTag).K("UGCVideoId", uGCVideo.getUgcVideoId()), uGCImmVideoItemView.getContext(), null, 2, null);
    }

    private final void L() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastShowNetWorkErrToastTime > ToastStrategy.LONG_DURATION_TIMEOUT) {
            this.lastShowNetWorkErrToastTime = jCurrentTimeMillis;
            fh.b.f60176a.d(R$string.no_network_toast);
        }
    }

    public final void M() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment;
        FragmentManager childFragmentManager;
        Object objM453constructorimpl;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment2 = this.fragment;
        if (uGCImmVideoDetailFragment2 == null || !uGCImmVideoDetailFragment2.isAdded() || (uGCImmVideoDetailFragment = this.fragment) == null || (childFragmentManager = uGCImmVideoDetailFragment.getChildFragmentManager()) == null) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            UGCImmVideoSettingDialog uGCImmVideoSettingDialogA = UGCImmVideoSettingDialog.INSTANCE.a();
            uGCImmVideoSettingDialogA.u0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.N(this.f65421a, ((Float) obj).floatValue());
                }
            });
            uGCImmVideoSettingDialogA.t0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.O(this.f65444a, ((Integer) obj).intValue());
                }
            });
            uGCImmVideoSettingDialogA.v0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.P(this.f65445a, (ht.a) obj);
                }
            });
            uGCImmVideoSettingDialogA.s0(new Function0() {
                @Override
                public final Object invoke() {
                    return UGCImmVideoItemView.Q(this.f65448a);
                }
            });
            uGCImmVideoSettingDialogA.r0(new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return UGCImmVideoItemView.S(this.f65451a, ((Boolean) obj).booleanValue());
                }
            });
            uGCImmVideoSettingDialogA.show(childFragmentManager, "UGCImmVideoSettingDialog");
            objM453constructorimpl = Result.m453constructorimpl(uGCImmVideoSettingDialogA);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Result.m452boximpl(objM453constructorimpl);
    }

    public static final Unit N(UGCImmVideoItemView uGCImmVideoItemView, float f10) {
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = uGCImmVideoItemView.detailViewModel;
        if (uGCImmVideoDetailViewModel != null) {
            uGCImmVideoDetailViewModel.e1(f10);
        }
        com.transsion.player.orplayer.f fVar = uGCImmVideoItemView.orPlayer;
        if (fVar != null) {
            fVar.setSpeed(f10);
        }
        wf.a.C0922a.f(wf.a.f74274a, uGCImmVideoItemView.TAG, "setSpeed speed:" + f10, false, 4, null);
        return Unit.f64096a;
    }

    public static final Unit O(UGCImmVideoItemView uGCImmVideoItemView, int i10) {
        wf.a.C0922a.f(wf.a.f74274a, uGCImmVideoItemView.TAG, "resolution change:" + i10, false, 4, null);
        uGCImmVideoItemView.G(i10);
        return Unit.f64096a;
    }

    public static final Unit P(UGCImmVideoItemView uGCImmVideoItemView, ht.a subtitle) {
        Intrinsics.h(subtitle, "subtitle");
        wf.a.C0922a.f(wf.a.f74274a, uGCImmVideoItemView.TAG, "subtitle change:" + subtitle, false, 4, null);
        uGCImmVideoItemView.getSubtitleDelegate().o(subtitle);
        return Unit.f64096a;
    }

    public static final Unit Q(final UGCImmVideoItemView uGCImmVideoItemView) {
        uGCImmVideoItemView.isBarHide = true;
        uGCImmVideoItemView.post(new Runnable() {
            @Override
            public final void run() {
                UGCImmVideoItemView.R(this.f65442a);
            }
        });
        uGCImmVideoItemView.setControlVisible(false);
        return Unit.f64096a;
    }

    public static final void R(UGCImmVideoItemView uGCImmVideoItemView) {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = uGCImmVideoItemView.fragment;
        if (uGCImmVideoDetailFragment != null) {
            ImmersionBar.with(uGCImmVideoDetailFragment).hideBar(BarHide.FLAG_HIDE_BAR).init();
        }
    }

    public static final Unit S(UGCImmVideoItemView uGCImmVideoItemView, boolean z10) {
        com.transsion.player.orplayer.f fVar = uGCImmVideoItemView.orPlayer;
        if (fVar != null) {
            fVar.setLooping(!z10);
        }
        wf.a.C0922a.f(wf.a.f74274a, uGCImmVideoItemView.TAG, "autoplay change:" + z10, false, 4, null);
        return Unit.f64096a;
    }

    public static final void T(UGCImmVideoItemView uGCImmVideoItemView, Pair pair) {
        UGCVideo ugcVideo;
        UGCVideoCreator creator;
        String uid;
        UGCVideo ugcVideo2;
        UGCVideoCreator creator2;
        UGCVideo ugcVideo3;
        UGCVideoCreator creator3;
        String uid2 = null;
        String str = pair != null ? (String) pair.getFirst() : null;
        UGCImmVideo uGCImmVideo = uGCImmVideoItemView.data;
        if (uGCImmVideo != null && (ugcVideo3 = uGCImmVideo.getUgcVideo()) != null && (creator3 = ugcVideo3.getCreator()) != null) {
            uid2 = creator3.getUid();
        }
        if (Intrinsics.c(str, uid2)) {
            boolean z10 = uGCImmVideoItemView.isSubscriptionInitiatedByThisView;
            if (z10) {
                uGCImmVideoItemView.isSubscriptionInitiatedByThisView = false;
                ProgressBar pbUgcImmSubscribeLoading = uGCImmVideoItemView.viewBinding.f62793u;
                Intrinsics.g(pbUgcImmSubscribeLoading, "pbUgcImmSubscribeLoading");
                uf.c.g(pbUgcImmSubscribeLoading);
            }
            if (pair == null) {
                if (z10) {
                    AppCompatImageView ivUgcImmSubscribe = uGCImmVideoItemView.viewBinding.f62788p;
                    Intrinsics.g(ivUgcImmSubscribe, "ivUgcImmSubscribe");
                    uf.c.k(ivUgcImmSubscribe);
                    return;
                }
                return;
            }
            if (((Boolean) pair.getSecond()).booleanValue()) {
                AppCompatImageView ivUgcImmSubscribe2 = uGCImmVideoItemView.viewBinding.f62788p;
                Intrinsics.g(ivUgcImmSubscribe2, "ivUgcImmSubscribe");
                uf.c.g(ivUgcImmSubscribe2);
            }
            UGCImmVideo uGCImmVideo2 = uGCImmVideoItemView.data;
            if (uGCImmVideo2 != null && (ugcVideo2 = uGCImmVideo2.getUgcVideo()) != null && (creator2 = ugcVideo2.getCreator()) != null) {
                creator2.setHasSubscribe((Boolean) pair.getSecond());
            }
            if (z10) {
                m.c(((Boolean) pair.getSecond()).booleanValue() ? com.transsion.baseui.R$string.ugc_video_detail_followed : com.transsion.baseui.R$string.ugc_video_detail_unfollowed);
                UGCImmVideo uGCImmVideo3 = uGCImmVideoItemView.data;
                if (uGCImmVideo3 == null || (ugcVideo = uGCImmVideo3.getUgcVideo()) == null || (creator = ugcVideo.getCreator()) == null || (uid = creator.getUid()) == null) {
                    return;
                }
                gu.d dVar = new gu.d(uid, ((Boolean) pair.getSecond()).booleanValue());
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = gu.d.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, dVar, 0L);
            }
        }
    }

    public static final n U(UGCImmVideoItemView uGCImmVideoItemView) {
        return new n(uGCImmVideoItemView.new g());
    }

    private final void V(int status) {
        switch (status) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 6:
                this.singleDownloadImmediatelyStatus = this.DOWNLOAD_STATUS_DOWNLOADING;
                setDownloadLoadingIconVisibility(true);
                break;
            case 5:
                this.singleDownloadImmediatelyStatus = this.DOWNLOAD_STATUS_DOWNLOAD_COMPLETE;
                setDownloadLoadingIconVisibility(false);
                this.viewBinding.f62783k.setImageResource(R$drawable.ugc_imm_video_ic_downloaded);
                break;
            default:
                this.singleDownloadImmediatelyStatus = this.DOWNLOAD_STATUS_DOWNLOAD_NONE;
                setDownloadLoadingIconVisibility(false);
                this.viewBinding.f62783k.setImageResource(R$drawable.ugc_imm_video_ic_download);
                break;
        }
    }

    public final void W(long progress) {
        getPlayerDelegate().g(progress);
    }

    private final void X(long max) {
        getPlayerDelegate().h(max);
    }

    private final void Y(Integer w10, Integer h10) {
        if (w10 == null || h10 == null || w10.intValue() == 0) {
            return;
        }
        int i10 = this.screenWidth;
        int iC = w10.intValue() > h10.intValue() ? (int) (y.c() * 0.14f) : 0;
        FrameLayout flUgcImmContainer = this.viewBinding.f62776d;
        Intrinsics.g(flUgcImmContainer, "flUgcImmContainer");
        ViewGroup.LayoutParams layoutParams = flUgcImmContainer.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        int iIntValue = (h10.intValue() * this.screenWidth) / w10.intValue();
        if (i10 != ((ViewGroup.MarginLayoutParams) bVar).width || iIntValue != ((ViewGroup.MarginLayoutParams) bVar).height) {
            ((ViewGroup.MarginLayoutParams) bVar).width = i10;
            ((ViewGroup.MarginLayoutParams) bVar).height = iIntValue;
            wf.a.C0922a.v(wf.a.f74274a, this.TAG, "=====> updateSurface, w:" + i10 + ", h:" + iIntValue, false, 4, null);
        }
        ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = iC;
        flUgcImmContainer.setLayoutParams(bVar);
        AppCompatImageView ivUgcImmCover = this.viewBinding.f62782j;
        Intrinsics.g(ivUgcImmCover, "ivUgcImmCover");
        ViewGroup.LayoutParams layoutParams2 = ivUgcImmCover.getLayoutParams();
        if (layoutParams2 == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
        ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin = iC;
        ivUgcImmCover.setLayoutParams(bVar2);
    }

    private final lu.a getActionDelegate() {
        return (lu.a) this.actionDelegate.getValue();
    }

    private final lu.e getDownloadDelegate() {
        return (lu.e) this.downloadDelegate.getValue();
    }

    private final lu.g getGestureDelegate() {
        return (lu.g) this.gestureDelegate.getValue();
    }

    public final qx.a getLoginApi() {
        return (qx.a) this.loginApi.getValue();
    }

    private final h getPlayerDelegate() {
        return (h) this.playerDelegate.getValue();
    }

    private final i getReportDelegate() {
        return (i) this.reportDelegate.getValue();
    }

    public final n getSubtitleDelegate() {
        return (n) this.subtitleDelegate.getValue();
    }

    /* JADX WARN: Code duplicated, block: B:115:0x02b6 A[PHI: r5
      0x02b6: PHI (r5v38 java.lang.String) = (r5v26 java.lang.String), (r5v28 java.lang.String), (r5v40 java.lang.String) binds: [B:120:0x02c4, B:123:0x02cc, B:113:0x02b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:27:0x0081  */
    private final void setContent(UGCImmVideo data) {
        boolean zC;
        String url;
        String str;
        Object objM453constructorimpl;
        FragmentActivity activity;
        int i10;
        Integer width;
        Integer height;
        Integer width2;
        Integer height2;
        FirstFrame firstImage;
        Integer width3;
        FirstFrame firstImage2;
        Integer height3;
        FirstFrame firstImage3;
        String str2;
        String description;
        UGCVideo ugcVideo;
        UGCVideoCreator creator;
        LiveData liveDataI0;
        int iIntValue = 1;
        UGCVideo ugcVideo2 = data.getUgcVideo();
        if (ugcVideo2 == null) {
            return;
        }
        UGCVideoCreator creator2 = ugcVideo2.getCreator();
        String string = "";
        if (creator2 != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            String avatar = creator2.getAvatar();
            if (avatar == null) {
                avatar = "";
            }
            ni.f.b bVarI = bVarM.g(avatar).i(R$color.white_20);
            ShapeableImageView ivUgcImmUserCover = this.viewBinding.f62789q;
            Intrinsics.g(ivUgcImmUserCover, "ivUgcImmUserCover");
            bVarI.d(ivUgcImmUserCover);
            this.viewBinding.H.setText(creator2.getNickname());
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel == null || !uGCImmVideoDetailViewModel.Y0()) {
            UGCVideoCreator creator3 = ugcVideo2.getCreator();
            if (creator3 != null) {
                zC = Intrinsics.c(creator3.getHasSubscribe(), Boolean.TRUE);
            } else {
                zC = false;
            }
        } else {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.detailViewModel;
            UGCImmVideo uGCImmVideo = (uGCImmVideoDetailViewModel2 == null || (liveDataI0 = uGCImmVideoDetailViewModel2.I0()) == null) ? null : (UGCImmVideo) liveDataI0.f();
            if (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null || (creator = ugcVideo.getCreator()) == null) {
                zC = false;
            } else {
                zC = Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
            }
        }
        AppCompatImageView ivUgcImmSubscribe = this.viewBinding.f62788p;
        Intrinsics.g(ivUgcImmSubscribe, "ivUgcImmSubscribe");
        ivUgcImmSubscribe.setVisibility(!zC ? 0 : 8);
        this.viewBinding.H.setMaxWidth(this.screenWidth - lj.a.b(zC ? Sdk$SDKError.Reason.PROTOBUF_SERIALIZATION_ERROR_VALUE : 142));
        String description2 = ugcVideo2.getDescription();
        if (description2 == null || description2.length() == 0) {
            NestedScrollableHost nsUgcImmPostDes = this.viewBinding.f62792t;
            Intrinsics.g(nsUgcImmPostDes, "nsUgcImmPostDes");
            uf.c.g(nsUgcImmPostDes);
        } else {
            this.viewBinding.f62775c.setText(ugcVideo2.getDescription());
            if (ugcVideo2.videoUGCPosition() > 0) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
                description = String.format("EP%s | %s", Arrays.copyOf(new Object[]{Integer.valueOf(ugcVideo2.videoUGCPosition()), ugcVideo2.getDescription()}, 2));
                Intrinsics.g(description, "format(...)");
            } else {
                description = ugcVideo2.getDescription();
            }
            this.viewBinding.f62775c.l(description);
            NestedScrollableHost nsUgcImmPostDes2 = this.viewBinding.f62792t;
            Intrinsics.g(nsUgcImmPostDes2, "nsUgcImmPostDes");
            uf.c.k(nsUgcImmPostDes2);
        }
        RecyclerView recyclerView = this.viewBinding.f62796x;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        if (this.viewBinding.f62796x.getItemDecorationCount() == 0) {
            recyclerView.addItemDecoration(new tf.c(lj.a.b(12), lj.a.b(8)));
        }
        setupHashTags(ugcVideo2);
        UGCVideoInteractiveInfo interactiveInfo = ugcVideo2.getInteractiveInfo();
        if (interactiveInfo != null) {
            AppCompatTextView appCompatTextView = this.viewBinding.D;
            String likeNum = interactiveInfo.getLikeNum();
            if (likeNum == null) {
                likeNum = "0";
            }
            Long lX = StringsKt.x(likeNum);
            appCompatTextView.setText(j.a(lX != null ? lX.longValue() : 0L));
            AppCompatTextView appCompatTextView2 = this.viewBinding.D;
            Boolean hasLike = interactiveInfo.getHasLike();
            Boolean bool = Boolean.TRUE;
            appCompatTextView2.setSelected(Intrinsics.c(hasLike, bool));
            AppCompatTextView appCompatTextView3 = this.viewBinding.C;
            String favoriteNum = interactiveInfo.getFavoriteNum();
            if (favoriteNum == null) {
                favoriteNum = "0";
            }
            Long lX2 = StringsKt.x(favoriteNum);
            appCompatTextView3.setText(j.a(lX2 != null ? lX2.longValue() : 0L));
            this.viewBinding.C.setSelected(Intrinsics.c(interactiveInfo.getHasFavorite(), bool));
            AppCompatTextView appCompatTextView4 = this.viewBinding.f62798z;
            String commentNum = interactiveInfo.getCommentNum();
            Long lX3 = StringsKt.x(commentNum != null ? commentNum : "0");
            appCompatTextView4.setText(j.a(lX3 != null ? lX3.longValue() : 0L));
        }
        String str3 = " ";
        if (ugcVideo2.isCollection()) {
            this.isEpLayoutShow = true;
            ConstraintLayout layoutUgcImmTvEpisode = this.viewBinding.f62790r;
            Intrinsics.g(layoutUgcImmTvEpisode, "layoutUgcImmTvEpisode");
            uf.c.k(layoutUgcImmTvEpisode);
            AppCompatTextView appCompatTextView5 = this.viewBinding.B;
            if (ugcVideo2.isShortTv()) {
                Context context2 = getContext();
                int i11 = com.transsion.ugcvideodetail.R$string.ugc_video_detail_short_tv_prefix;
                String title = ugcVideo2.getTitle();
                if (title == null) {
                    title = " ";
                }
                string = context2.getString(i11, title);
            } else {
                String title2 = ugcVideo2.getTitle();
                if (title2 != null) {
                    string = title2;
                }
            }
            appCompatTextView5.setText(string);
            int iVideoUGCPosition = ugcVideo2.videoUGCPosition();
            if (iVideoUGCPosition > 0) {
                this.viewBinding.A.setText("/EP" + iVideoUGCPosition);
            }
            AppCompatImageView ivUgcImmEpTitleIc = this.viewBinding.f62785m;
            Intrinsics.g(ivUgcImmEpTitleIc, "ivUgcImmEpTitleIc");
            UGCVideoTypeKt.h(ivUgcImmEpTitleIc, ugcVideo2, Integer.valueOf(lj.a.b(16)));
        } else {
            this.isEpLayoutShow = false;
            ConstraintLayout layoutUgcImmTvEpisode2 = this.viewBinding.f62790r;
            Intrinsics.g(layoutUgcImmTvEpisode2, "layoutUgcImmTvEpisode");
            uf.c.g(layoutUgcImmTvEpisode2);
        }
        List<String> searchWord = ugcVideo2.getSearchWord();
        if (searchWord == null || searchWord.isEmpty()) {
            this.isSearchShow = false;
            FrameLayout layoutUgcImmTvSearch = this.viewBinding.f62791s;
            Intrinsics.g(layoutUgcImmTvSearch, "layoutUgcImmTvSearch");
            uf.c.g(layoutUgcImmTvSearch);
        } else {
            this.isSearchShow = true;
            FrameLayout layoutUgcImmTvSearch2 = this.viewBinding.f62791s;
            Intrinsics.g(layoutUgcImmTvSearch2, "layoutUgcImmTvSearch");
            uf.c.k(layoutUgcImmTvSearch2);
            TextView textView = this.viewBinding.G;
            Context context3 = getContext();
            int i12 = com.transsion.ugcvideodetail.R$string.ugc_video_detail_search_prefix;
            List<String> searchWord2 = ugcVideo2.getSearchWord();
            if (searchWord2 != null && (str2 = (String) CollectionsKt.k0(searchWord2)) != null) {
                str3 = str2;
            }
            textView.setText(context3.getString(i12, str3));
        }
        UGCVideoPlayInfo playInfo = data.getPlayInfo();
        if (playInfo == null || (firstImage3 = playInfo.getFirstImage()) == null || (url = firstImage3.getUrl()) == null) {
            Cover coverVertical = ugcVideo2.getCoverVertical();
            url = coverVertical != null ? coverVertical.getUrl() : null;
            if (url != null) {
                str = url;
            } else {
                Cover cover = ugcVideo2.getCover();
                if (cover != null) {
                    url = cover.getUrl();
                    str = url;
                } else {
                    str = null;
                }
            }
        } else {
            str = url;
        }
        int i13 = this.screenWidth / 2;
        try {
            Result.Companion companion = Result.INSTANCE;
            UGCVideoPlayInfo playInfo2 = data.getPlayInfo();
            if ((playInfo2 != null ? playInfo2.getFirstImage() : null) != null) {
                UGCVideoPlayInfo playInfo3 = data.getPlayInfo();
                int iIntValue2 = ((playInfo3 == null || (firstImage2 = playInfo3.getFirstImage()) == null || (height3 = firstImage2.getHeight()) == null) ? 0 : height3.intValue()) * i13;
                UGCVideoPlayInfo playInfo4 = data.getPlayInfo();
                if (playInfo4 != null && (firstImage = playInfo4.getFirstImage()) != null && (width3 = firstImage.getWidth()) != null) {
                    iIntValue = width3.intValue();
                }
                i10 = iIntValue2 / iIntValue;
            } else if (ugcVideo2.getCoverVertical() != null) {
                Cover coverVertical2 = ugcVideo2.getCoverVertical();
                int iIntValue3 = ((coverVertical2 == null || (height2 = coverVertical2.getHeight()) == null) ? 0 : height2.intValue()) * i13;
                Cover coverVertical3 = ugcVideo2.getCoverVertical();
                if (coverVertical3 != null && (width2 = coverVertical3.getWidth()) != null) {
                    iIntValue = width2.intValue();
                }
                i10 = iIntValue3 / iIntValue;
            } else {
                Cover cover2 = ugcVideo2.getCover();
                int iIntValue4 = ((cover2 == null || (height = cover2.getHeight()) == null) ? 0 : height.intValue()) * i13;
                Cover cover3 = ugcVideo2.getCover();
                if (cover3 != null && (width = cover3.getWidth()) != null) {
                    iIntValue = width.intValue();
                }
                i10 = iIntValue4 / iIntValue;
            }
            objM453constructorimpl = Result.m453constructorimpl(Integer.valueOf(i10));
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Integer num = (Integer) (Result.m459isFailureimpl(objM453constructorimpl) ? null : objM453constructorimpl);
        int iIntValue5 = num != null ? num.intValue() : 0;
        if (str != null) {
            String strD = er.b.f59791a.d(str, (120 & 2) != 0 ? 0 : i13, (120 & 4) != 0 ? 0 : iIntValue5, (120 & 8) != 0, (120 & 16) != 0 ? false : false, (120 & 32) == 0 ? false : false, (120 & 64) != 0 ? 25 : 0);
            if (Intrinsics.c(strD, this.viewBinding.f62782j.getTag())) {
                return;
            }
            UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
            if (uGCImmVideoDetailFragment != null && (activity = uGCImmVideoDetailFragment.getActivity()) != null) {
                this.viewBinding.f62782j.setTag(strD);
                Glide.with(activity).load2(strD).addListener(new f()).into(this.viewBinding.f62782j);
            }
        }
        C(ugcVideo2);
    }

    public final void setControlVisible(boolean show) {
        AppCompatImageView appCompatImageViewL0;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment;
        if (show && this.isBarHide && (uGCImmVideoDetailFragment = this.fragment) != null) {
            this.isBarHide = false;
            ImmersionBar.with(uGCImmVideoDetailFragment).hideBar(BarHide.FLAG_SHOW_BAR).init();
        }
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment2 = this.fragment;
        if (uGCImmVideoDetailFragment2 != null && (appCompatImageViewL0 = uGCImmVideoDetailFragment2.L0()) != null) {
            appCompatImageViewL0.setVisibility(show ? 0 : 8);
        }
        Group groupUgcImmControl = this.viewBinding.f62781i;
        Intrinsics.g(groupUgcImmControl, "groupUgcImmControl");
        groupUgcImmControl.setVisibility(show ? 0 : 8);
        FrameLayout layoutUgcImmTvSearch = this.viewBinding.f62791s;
        Intrinsics.g(layoutUgcImmTvSearch, "layoutUgcImmTvSearch");
        layoutUgcImmTvSearch.setVisibility(show && this.isSearchShow ? 0 : 8);
        ConstraintLayout layoutUgcImmTvEpisode = this.viewBinding.f62790r;
        Intrinsics.g(layoutUgcImmTvEpisode, "layoutUgcImmTvEpisode");
        layoutUgcImmTvEpisode.setVisibility(show && this.isEpLayoutShow ? 0 : 8);
        RecyclerView rvUgcImmTags = this.viewBinding.f62796x;
        Intrinsics.g(rvUgcImmTags, "rvUgcImmTags");
        rvUgcImmTags.setVisibility(show && this.isHashTagShow ? 0 : 8);
    }

    public final void setDownloadLoadingIconVisibility(boolean show) {
        if (show) {
            AppCompatImageView ivUgcImmDownload = this.viewBinding.f62783k;
            Intrinsics.g(ivUgcImmDownload, "ivUgcImmDownload");
            uf.c.h(ivUgcImmDownload);
            UGCImmRingLoadingView vUgcImmDownloadLoading = this.viewBinding.K;
            Intrinsics.g(vUgcImmDownloadLoading, "vUgcImmDownloadLoading");
            uf.c.k(vUgcImmDownloadLoading);
            return;
        }
        AppCompatImageView ivUgcImmDownload2 = this.viewBinding.f62783k;
        Intrinsics.g(ivUgcImmDownload2, "ivUgcImmDownload");
        uf.c.k(ivUgcImmDownload2);
        UGCImmRingLoadingView vUgcImmDownloadLoading2 = this.viewBinding.K;
        Intrinsics.g(vUgcImmDownloadLoading2, "vUgcImmDownloadLoading");
        uf.c.g(vUgcImmDownloadLoading2);
    }

    private final void setLoading(boolean show) {
        this.isLoading = show;
        getPlayerDelegate().f(show);
    }

    private final void setupHashTags(final UGCVideo video) {
        List<UGCVideoHashTag> filteredHashTags = video.getFilteredHashTags();
        if (filteredHashTags == null || filteredHashTags.isEmpty()) {
            this.isHashTagShow = false;
            RecyclerView rvUgcImmTags = this.viewBinding.f62796x;
            Intrinsics.g(rvUgcImmTags, "rvUgcImmTags");
            uf.c.g(rvUgcImmTags);
            return;
        }
        this.isHashTagShow = true;
        RecyclerView rvUgcImmTags2 = this.viewBinding.f62796x;
        Intrinsics.g(rvUgcImmTags2, "rvUgcImmTags");
        uf.c.k(rvUgcImmTags2);
        List<UGCVideoHashTag> filteredHashTags2 = video.getFilteredHashTags();
        Intrinsics.e(filteredHashTags2);
        com.transsion.ugcvideodetail.adapter.i iVar = new com.transsion.ugcvideodetail.adapter.i(filteredHashTags2, true);
        this.viewBinding.f62796x.setAdapter(iVar);
        iVar.w1(new r6.d() {
            @Override
            public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                UGCImmVideoItemView.K(video, this, baseQuickAdapter, view, i10);
            }
        });
    }

    public static final lu.a y(UGCImmVideoItemView uGCImmVideoItemView) {
        return new lu.a(uGCImmVideoItemView.new a(), uGCImmVideoItemView.getReportDelegate(), uGCImmVideoItemView.getDownloadDelegate());
    }

    public static final void z(UGCImmVideoItemView uGCImmVideoItemView) {
        uGCImmVideoItemView.L();
    }

    public final void addVideoView(View view, FirstFrame firstImage) {
        ORPlayerView oRPlayerView = this.orPlayerView;
        if ((oRPlayerView != null ? oRPlayerView.getParent() : null) != null) {
            ORPlayerView oRPlayerView2 = this.orPlayerView;
            ViewParent parent = oRPlayerView2 != null ? oRPlayerView2.getParent() : null;
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this.orPlayerView);
            }
        }
        this.viewBinding.f62776d.addView(view, new FrameLayout.LayoutParams(-1, -1));
        if (firstImage != null) {
            Y(firstImage.getWidth(), firstImage.getHeight());
        }
    }

    public final void app2Background() {
        UGCImmVideo uGCImmVideo = this.data;
        boolean zIsFree = uGCImmVideo != null ? uGCImmVideo.isFree() : false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.c(zIsFree, true);
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    public final long getProgress() {
        return this.viewBinding.f62797y.getCurrentProgress();
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
        u viewLifecycleOwner;
        LiveData liveDataR;
        super.onAttachedToWindow();
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null && (viewLifecycleOwner = uGCImmVideoDetailFragment.getViewLifecycleOwner()) != null) {
            UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
            if (uGCImmVideoDetailViewModel != null && (liveDataR = uGCImmVideoDetailViewModel.R()) != null) {
                liveDataR.j(viewLifecycleOwner, this.subscriptObserver);
            }
            getDownloadDelegate().j(viewLifecycleOwner);
        }
        getSubtitleDelegate().e();
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onClick(View v10) {
        getActionDelegate().a(v10);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"onCompletion， play next"}, false, 4, null);
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.g();
        }
        W(0L);
    }

    @Override
    protected void onDetachedFromWindow() {
        u viewLifecycleOwner;
        LiveData liveDataR;
        super.onDetachedFromWindow();
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel != null && (liveDataR = uGCImmVideoDetailViewModel.R()) != null) {
            liveDataR.o(this.subscriptObserver);
        }
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null && (viewLifecycleOwner = uGCImmVideoDetailFragment.getViewLifecycleOwner()) != null) {
            getDownloadDelegate().k(viewLifecycleOwner);
        }
        getSubtitleDelegate().g();
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    public final void onItemViewMediaItemTransition() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onMediaItemTransition: " + this.viewBinding.f62797y.getMaxProgress() + "  : " + this, false, 4, null);
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.g();
        }
        reset();
    }

    @Override
    public void onLoadingBegin(gn.e mediaSource) {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.h();
        }
        setLoading(true);
    }

    @Override
    public void onLoadingEnd(gn.e mediaSource) {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.i();
        }
        setLoading(false);
        removeCallbacks(this.delayToastNetErrRunnable);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"onLoopingStart"}, false, 4, null);
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.j();
        }
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    public final void onNetConnect() {
        wf.a.C0922a.f(wf.a.f74274a, "ORSubtitle_v", "onNetConnect, 网络恢复，检测字幕", false, 4, null);
        getSubtitleDelegate().f();
    }

    public final void onPageDestroy() {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.p();
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.removePlayerListener(this);
        }
    }

    public final void onPagePause() {
        com.transsion.player.orplayer.f fVar;
        this.isPageHide = true;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPause", false, 4, null);
        if (cw.c.f58664a.c(this.orPlayer) || (fVar = this.orPlayer) == null) {
            return;
        }
        fVar.pause();
    }

    public final void onPageRelease(int position) {
        onPlayerReset();
    }

    public final void onPageResume() {
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment;
        this.isPageHide = false;
        if (this.isClickPause || (uGCImmVideoDetailFragment = this.fragment) == null || !uGCImmVideoDetailFragment.isVisible()) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "ON_RESUME", false, 4, null);
        H();
    }

    public final void onPageSelected(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView, UGCImmVideo item) {
        String url;
        b0 b0VarM0;
        UGCVideoPlayInfo playInfo;
        b0 b0VarB;
        UGCVideo ugcVideo;
        UGCVideoBelongToCollection belongToCollection;
        b0 b0VarD;
        UGCVideo ugcVideo2;
        b0 b0VarL0;
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.t(orPlayer);
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel != null && (b0VarL0 = uGCImmVideoDetailViewModel.L0()) != null) {
            b0VarL0.q(this.data);
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.detailViewModel;
        if (uGCImmVideoDetailViewModel2 != null && (b0VarD = uGCImmVideoDetailViewModel2.D()) != null) {
            UGCImmVideo uGCImmVideo = this.data;
            b0VarD.q((uGCImmVideo == null || (ugcVideo2 = uGCImmVideo.getUgcVideo()) == null) ? null : ugcVideo2.getUgcVideoId());
        }
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel3 = this.detailViewModel;
        if (uGCImmVideoDetailViewModel3 != null && (b0VarB = uGCImmVideoDetailViewModel3.B()) != null) {
            UGCImmVideo uGCImmVideo2 = this.data;
            b0VarB.q((uGCImmVideo2 == null || (ugcVideo = uGCImmVideo2.getUgcVideo()) == null || (belongToCollection = ugcVideo.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId());
        }
        if (orPlayer != null) {
            orPlayer.addPlayerListener(this);
        }
        FirstFrame firstImage = (item == null || (playInfo = item.getPlayInfo()) == null) ? null : playInfo.getFirstImage();
        if (orPlayerView != null) {
            addVideoView(orPlayerView, firstImage);
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "addView-----", false, 4, null);
        }
        UGCVideoPlayStream uGCVideoPlayStreamA = hu.a.f61494a.a(item != null ? item.getPlayInfo() : null);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel4 = this.detailViewModel;
        if (uGCImmVideoDetailViewModel4 != null && (b0VarM0 = uGCImmVideoDetailViewModel4.M0()) != null) {
            b0VarM0.q(uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getResolutions() : null);
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "play url=" + (uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getUrl() : null) + " , duration: " + (uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getDuration() : null) + ", resolutions:" + (uGCVideoPlayStreamA != null ? uGCVideoPlayStreamA.getResolutions() : null), false, 4, null);
        getSubtitleDelegate().i(uGCVideoPlayStreamA);
        videoStartPrepare();
        if (uGCVideoPlayStreamA != null && (url = uGCVideoPlayStreamA.getUrl()) != null) {
            if (orPlayer != null) {
                orPlayer.seekTo(url, 0L);
            }
            setVideoUrl(url);
        }
        if (orPlayer != null) {
            orPlayer.play();
        }
    }

    public final void onPageStop() {
        if (this.totalDuration == 0) {
            com.transsion.player.orplayer.f fVar = this.orPlayer;
            this.totalDuration = fVar != null ? fVar.getDuration() : 0L;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onPageStop: totalDuration:" + this.totalDuration + ",playProgress:" + this.playProgress, false, 4, null);
        getPlayerDelegate().a(this.totalDuration, this.playProgress);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Integer errorCode;
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.k(errorInfo);
        }
        wf.a.f74274a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.j() : null) + " --> 短播放失败了", true);
        setLoading(false);
        Integer errorCode2 = errorInfo.getErrorCode();
        if ((errorCode2 != null && errorCode2.intValue() == 2001) || ((errorCode = errorInfo.getErrorCode()) != null && errorCode.intValue() == 2002)) {
            L();
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
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "player- onPlayerReset data: " + this.data, false, 4, null);
        getSubtitleDelegate().n();
        setKeepScreenOn(false);
        this.isClickPause = false;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null) {
            uGCImmVideoDetailFragment.b1(false);
        }
        this.isFirstFrame = false;
        this.isPrepare = false;
        UGCImmVideo uGCImmVideo = this.data;
        boolean zIsFree = uGCImmVideo != null ? uGCImmVideo.isFree() : false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.c(zIsFree, false);
        }
        if (zIsFree && (uGCImmVideoDetailViewModel = this.detailViewModel) != null) {
            uGCImmVideoDetailViewModel.f1(this.data, this.playProgress, this.totalDuration);
        }
        AppCompatImageView ivUgcImmCover = this.viewBinding.f62782j;
        Intrinsics.g(ivUgcImmCover, "ivUgcImmCover");
        uf.c.k(ivUgcImmCover);
        wf.a.C0922a.f(c0922a, this.TAG, "onPlayerReset   visible  " + this, false, 4, null);
        AppCompatImageView ivUgcImmPlayStatus = this.viewBinding.f62786n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        uf.c.g(ivUgcImmPlayStatus);
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.removePlayerListener(this);
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        W(0L);
        X(100L);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        b0 b0VarH;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
        com.transsion.player.orplayer.f fVar;
        b0 b0VarH2;
        UGCVideo ugcVideo;
        if (this.isPrepare) {
            return;
        }
        this.isPrepare = true;
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        long duration = fVar2 != null ? fVar2.getDuration() : 0L;
        this.totalDuration = duration;
        X(duration);
        UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel = this.detailViewModel;
        if (uGCImmVideoDetailViewModel != null && (b0VarH = uGCImmVideoDetailViewModel.H()) != null && (uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) b0VarH.f()) != null) {
            String ugcVideoId = uGCVideoDetailPlayBean.getUgcVideoId();
            UGCImmVideo uGCImmVideo = this.data;
            if (Intrinsics.c(ugcVideoId, (uGCImmVideo == null || (ugcVideo = uGCImmVideo.getUgcVideo()) == null) ? null : ugcVideo.getUgcVideoId())) {
                long progress = uGCVideoDetailPlayBean.getProgress();
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f62797y.getCurrentProgress() + ", progress = " + progress + "  duration = " + duration, false, 4, null);
                UGCImmVideoDetailViewModel uGCImmVideoDetailViewModel2 = this.detailViewModel;
                if (uGCImmVideoDetailViewModel2 != null && (b0VarH2 = uGCImmVideoDetailViewModel2.H()) != null) {
                    b0VarH2.q(null);
                }
                if (progress > 0 && Math.abs(duration - progress) > 2000 && (fVar = this.orPlayer) != null) {
                    fVar.seekTo(progress);
                }
            }
        }
        setKeepScreenOn(true);
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        this.playProgress = progress;
        getPlayerDelegate().b(progress, getGestureDelegate().k());
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        AppCompatImageView ivUgcImmCover = this.viewBinding.f62782j;
        Intrinsics.g(ivUgcImmCover, "ivUgcImmCover");
        wf.a.C0922a.f(c0922a, str, "player-onRenderFirstFrame   viewBinding.ivCover.isVisible:" + (ivUgcImmCover.getVisibility() == 0) + " ", false, 4, null);
        if (!this.isFirstFrame) {
            this.isFirstFrame = true;
            com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
            if (aVar != null) {
                aVar.m();
            }
        }
        setLoading(false);
        AppCompatImageView ivUgcImmCover2 = this.viewBinding.f62782j;
        Intrinsics.g(ivUgcImmCover2, "ivUgcImmCover");
        uf.c.g(ivUgcImmCover2);
    }

    @Override
    public void onSetDataSource() {
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.f();
        }
        com.transsion.ugcvideodetail.hepler.a aVar2 = this.dotLayer;
        if (aVar2 != null) {
            aVar2.a();
        }
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        Intrinsics.h(event, "event");
        if (getGestureDelegate().m(event)) {
            return true;
        }
        return super.onTouchEvent(event);
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
        getPlayerDelegate().c();
    }

    @Override
    public void onVideoSizeChanged(int width, int height) {
        com.transsion.player.orplayer.e.a.H(this, width, height);
        Y(Integer.valueOf(width), Integer.valueOf(height));
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoStart", false, 4, null);
        onPrepare(mediaSource);
        getPlayerDelegate().d();
    }

    public final void reset() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "playNewMedia data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        UGCImmVideoDetailFragment uGCImmVideoDetailFragment = this.fragment;
        if (uGCImmVideoDetailFragment != null) {
            uGCImmVideoDetailFragment.b1(false);
        }
        this.isFirstFrame = false;
        UGCImmVideo uGCImmVideo = this.data;
        boolean zIsFree = uGCImmVideo != null ? uGCImmVideo.isFree() : false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.c(zIsFree, false);
        }
        AppCompatImageView ivUgcImmPlayStatus = this.viewBinding.f62786n;
        Intrinsics.g(ivUgcImmPlayStatus, "ivUgcImmPlayStatus");
        uf.c.g(ivUgcImmPlayStatus);
        W(0L);
        X(100L);
    }

    public final void setData(Integer adapterPosition, UGCImmVideoDetailFragment fragment, String trackId, String previousTrackId, String previousPageVideoId, UGCImmVideo data) {
        FragmentActivity activity;
        Intrinsics.h(trackId, "trackId");
        Intrinsics.h(data, "data");
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "--------------------------setData position:" + adapterPosition, false, 4, null);
        this.data = data;
        this.trackId = trackId;
        this.previousTrackId = previousTrackId;
        this.previousPageVideoId = previousPageVideoId;
        this.fragment = fragment;
        this.isSubscriptionInitiatedByThisView = false;
        com.transsion.ugcvideodetail.hepler.a aVar = new com.transsion.ugcvideodetail.hepler.a("/ugc_video/immersive_detail", fragment != null ? fragment.getLastPageFrom() : null);
        this.dotLayer = aVar;
        aVar.s(data.getUgcVideo());
        com.transsion.ugcvideodetail.hepler.a aVar2 = this.dotLayer;
        if (aVar2 != null) {
            aVar2.r(adapterPosition);
        }
        if (fragment != null && (activity = fragment.getActivity()) != null) {
            this.detailViewModel = (UGCImmVideoDetailViewModel) new v0(activity).a(UGCImmVideoDetailViewModel.class);
            this.subtitleViewModel = (com.transsion.ugcvideodetail.hepler.subtitle.a) new v0(activity).a(com.transsion.ugcvideodetail.hepler.subtitle.a.class);
            this.downloadViewModel = (UGCDownloadViewModel) new v0(activity).a(UGCDownloadViewModel.class);
        }
        setContent(data);
    }

    public final void setDownloadStatus(int status) {
        if (this.isDownloadImmediately && status != this.curStatus) {
            this.curStatus = status;
            UGCImmVideo uGCImmVideo = this.data;
            if (uGCImmVideo != null) {
                uGCImmVideo.setDownloadStatus(status);
            }
            V(status);
        }
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    public final void setVideoUrl(String url) {
        Intrinsics.h(url, "url");
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.u(url);
        }
    }

    public final void videoStartPrepare() {
        this.isFirstFrame = false;
        com.transsion.ugcvideodetail.hepler.a aVar = this.dotLayer;
        if (aVar != null) {
            aVar.f();
        }
        com.transsion.ugcvideodetail.hepler.a aVar2 = this.dotLayer;
        if (aVar2 != null) {
            aVar2.a();
        }
        setLoading(true);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCImmVideoItemView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public UGCImmVideoItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }
}
