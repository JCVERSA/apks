package com.transsion.player.longvideo.ui;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.Html;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.p009lifecycle.LiveData;
import com.avery.subtitle.widget.SimpleSubtitleView;
import com.blankj.utilcode.util.NetworkUtils;
import com.blankj.utilcode.util.ToastUtils;
import com.blankj.utilcode.util.Utils;
import com.cloud.config.utils.XLogUtil;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.cloud.tmc.miniapp.prepare.steps.PrepareException;
import com.google.common.collect.ImmutableList;
import com.gyf.immersionbar.BarHide;
import com.gyf.immersionbar.ImmersionBar;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.mbsignalcommon.commonwebview.ToolBar;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.ad.monopoly.model.AdPlans;
import com.transsion.ad.ps.activate.PSActivateManager;
import com.transsion.ad.view.CustomRoundCornerLayout;
import com.transsion.al.ka.KaManager;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.baselib.helper.ScreenRotationHelper;
import com.transsion.baselib.utils.PlayMode;
import com.transsion.baseui.R$drawable;
import com.transsion.baseui.R$mipmap;
import com.transsion.baseui.dialog.BaseDialog;
import com.transsion.baseui.music.MusicFloatManager;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsion.memberapi.MemberCheckResult;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.memberapi.MemberSource;
import com.transsion.moviedetailapi.bean.DubsInfo;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsion.player.config.RenderType;
import com.transsion.player.longvideo.R$array;
import com.transsion.player.longvideo.R$id;
import com.transsion.player.longvideo.R$string;
import com.transsion.player.longvideo.constants.LongVodContentType;
import com.transsion.player.longvideo.constants.LongVodPageType;
import com.transsion.player.longvideo.constants.LongVodPlayerConfigType;
import com.transsion.player.longvideo.helper.LongVodResolutionHelper;
import com.transsion.player.longvideo.helper.LongVodSubtitleHelper;
import com.transsion.player.longvideo.member.ResolutionMemberManager;
import com.transsion.player.longvideo.member.ResolutionUnlockFragment;
import com.transsion.player.longvideo.ui.dialog.LongVdPlayerConfigDialog;
import com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper;
import com.transsion.player.longvideo.ui.dialog.PlayerSettingDialog;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.p007enum.PlayMimeType;
import com.transsion.player.p007enum.ScaleMode;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.player.ui.longvideo.ORLongVodPlayerView;
import com.transsion.postdetail.layer.local.LocalUiType;
import com.transsion.postdetail.layer.local.h1;
import com.transsion.postdetail.layer.local.o1;
import com.transsion.postdetail.ui.view.ImmScaleView;
import com.transsion.postdetail.ui.view.ImmSpeedView;
import com.transsion.push.PushConstants;
import com.transsion.ugcvideodetail.api.bean.UGCVideo;
import com.transsion.ugcvideodetail.api.bean.UGCVideoBelongToCollection;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Function;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import okhttp3.internal.http2.Settings;
import org.mvel2.ast.ASTNode;

@Metadata(d1 = {"\u0000ú\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b-\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0017\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\bF\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0004ð\u0003ø\u0003\u0018\u0000 \u0085\u00042\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004:\u0002\u009f\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bB\u001b\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u0007\u0010\u000bB#\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0007\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f¢\u0006\u0004\b\u0012\u0010\u0013JS\u0010!\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u00182\b\u0010\u001b\u001a\u0004\u0018\u00010\u001a2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c2\u0006\u0010 \u001a\u00020\u001fH\u0016¢\u0006\u0004\b!\u0010\"J\u0017\u0010$\u001a\u00020\u00112\u0006\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b$\u0010\u0013J\u0019\u0010'\u001a\u00020\u00112\b\u0010&\u001a\u0004\u0018\u00010%H\u0016¢\u0006\u0004\b'\u0010(J\u0017\u0010+\u001a\u00020\u00112\b\b\u0002\u0010*\u001a\u00020)¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0011H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0011H\u0016¢\u0006\u0004\b/\u0010.J\u0017\u00101\u001a\u00020\u00112\u0006\u00100\u001a\u00020)H\u0016¢\u0006\u0004\b1\u0010,J\u0017\u00103\u001a\u00020\u00112\u0006\u00102\u001a\u00020)H\u0016¢\u0006\u0004\b3\u0010,J\u000f\u00104\u001a\u00020)H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00106\u001a\u00020\u0011H\u0016¢\u0006\u0004\b6\u0010.J-\u0010:\u001a\u00020\u00112\b\u00107\u001a\u0004\u0018\u00010\u000f2\b\u00108\u001a\u0004\u0018\u00010\u000f2\b\u00109\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b:\u0010;J\u0015\u0010=\u001a\u00020\u00112\u0006\u0010<\u001a\u00020)¢\u0006\u0004\b=\u0010,J2\u0010C\u001a\u00020\u00112#\u0010B\u001a\u001f\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0004\u0012\u00020\u0011\u0018\u00010>¢\u0006\u0004\bC\u0010DJ\u0017\u0010F\u001a\u00020\u00112\u0006\u0010E\u001a\u00020)H\u0016¢\u0006\u0004\bF\u0010,J\u0017\u0010H\u001a\u00020\u00112\u0006\u0010B\u001a\u00020GH\u0016¢\u0006\u0004\bH\u0010IJ\u0017\u0010L\u001a\u00020\u00112\u0006\u0010K\u001a\u00020JH\u0016¢\u0006\u0004\bL\u0010MJ\u0015\u0010O\u001a\u00020\u00112\u0006\u0010N\u001a\u00020)¢\u0006\u0004\bO\u0010,J\u000f\u0010P\u001a\u00020\u0011H\u0016¢\u0006\u0004\bP\u0010.J\u000f\u0010Q\u001a\u00020\u0011H\u0016¢\u0006\u0004\bQ\u0010.J\u000f\u0010R\u001a\u00020\u0011H\u0016¢\u0006\u0004\bR\u0010.J\u000f\u0010S\u001a\u00020\u0011H\u0016¢\u0006\u0004\bS\u0010.J\u000f\u0010T\u001a\u00020\u0011H\u0016¢\u0006\u0004\bT\u0010.J\u000f\u0010U\u001a\u00020\u0011H\u0016¢\u0006\u0004\bU\u0010.J\u000f\u0010V\u001a\u00020\u0011H\u0014¢\u0006\u0004\bV\u0010.J\u000f\u0010W\u001a\u00020\u0011H\u0014¢\u0006\u0004\bW\u0010.J\u000f\u0010X\u001a\u00020\u0011H\u0016¢\u0006\u0004\bX\u0010.J\u000f\u0010Y\u001a\u00020\u0011H\u0016¢\u0006\u0004\bY\u0010.J\u000f\u0010Z\u001a\u00020)H\u0016¢\u0006\u0004\bZ\u00105J\u000f\u0010\\\u001a\u00020[H\u0016¢\u0006\u0004\b\\\u0010]J\u000f\u0010^\u001a\u00020\u0011H\u0016¢\u0006\u0004\b^\u0010.J\u000f\u0010_\u001a\u00020\u0011H\u0016¢\u0006\u0004\b_\u0010.J\u0017\u0010a\u001a\u00020\u00112\u0006\u0010`\u001a\u00020)H\u0016¢\u0006\u0004\ba\u0010,J\u0017\u0010d\u001a\u00020\u00112\u0006\u0010c\u001a\u00020bH\u0016¢\u0006\u0004\bd\u0010eJ\u0011\u0010g\u001a\u0004\u0018\u00010fH\u0016¢\u0006\u0004\bg\u0010hJ\u0011\u0010j\u001a\u0004\u0018\u00010iH\u0016¢\u0006\u0004\bj\u0010kJ\u0011\u0010m\u001a\u0004\u0018\u00010lH\u0016¢\u0006\u0004\bm\u0010nJ\u0011\u0010o\u001a\u0004\u0018\u00010\u001aH\u0016¢\u0006\u0004\bo\u0010pJ\u0011\u0010r\u001a\u0004\u0018\u00010qH\u0016¢\u0006\u0004\br\u0010sJ\u0017\u0010u\u001a\u00020\u00112\u0006\u0010t\u001a\u00020)H\u0016¢\u0006\u0004\bu\u0010,J\u001f\u0010x\u001a\u00020\u00112\u0006\u0010v\u001a\u00020f2\u0006\u0010w\u001a\u00020iH\u0016¢\u0006\u0004\bx\u0010yJ\u000f\u0010z\u001a\u00020\u0011H\u0016¢\u0006\u0004\bz\u0010.J\u0017\u0010}\u001a\u00020\u00112\u0006\u0010|\u001a\u00020{H\u0007¢\u0006\u0004\b}\u0010~J\r\u0010\u007f\u001a\u00020\u0011¢\u0006\u0004\b\u007f\u0010.J\u0017\u0010\u0080\u0001\u001a\u00020\u00112\u0006\u0010|\u001a\u00020{¢\u0006\u0005\b\u0080\u0001\u0010~J\u000f\u0010\u0081\u0001\u001a\u00020\u0011¢\u0006\u0005\b\u0081\u0001\u0010.J$\u0010\u0084\u0001\u001a\u00020\u00112\u0006\u0010|\u001a\u00020{2\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0082\u0001¢\u0006\u0006\b\u0084\u0001\u0010\u0085\u0001J\u0012\u0010\u0086\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001J\u0011\u0010\u0088\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0088\u0001\u0010.J\u0011\u0010\u0089\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0089\u0001\u0010.J\u0011\u0010\u008a\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008a\u0001\u0010.J$\u0010\u008b\u0001\u001a\u00020\u00112\b\u0010\u0017\u001a\u0004\u0018\u00010\u000f2\u0006\u0010K\u001a\u00020JH\u0002¢\u0006\u0006\b\u008b\u0001\u0010\u008c\u0001J\u001a\u0010\u008e\u0001\u001a\u00020\u00112\u0007\u0010\u008d\u0001\u001a\u00020)H\u0002¢\u0006\u0005\b\u008e\u0001\u0010,J\u0011\u0010\u008f\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008f\u0001\u0010.J\u001c\u0010\u0090\u0001\u001a\u00020\u00112\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0006\b\u0090\u0001\u0010\u0091\u0001J\u0011\u0010\u0092\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0092\u0001\u0010.J\u0011\u0010\u0093\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0093\u0001\u0010.J\u0011\u0010\u0094\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0094\u0001\u0010.J\u0011\u0010\u0095\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0095\u0001\u0010.J\u0011\u0010\u0096\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0096\u0001\u0010.J\u0011\u0010\u0097\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0097\u0001\u0010.J\u0011\u0010\u0098\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0098\u0001\u0010.J\u001c\u0010\u009b\u0001\u001a\u00020\u00112\b\u0010\u009a\u0001\u001a\u00030\u0099\u0001H\u0002¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009d\u0001\u0010.J%\u0010¡\u0001\u001a\u00020\u00112\u0007\u0010\u009e\u0001\u001a\u00020)2\b\u0010 \u0001\u001a\u00030\u009f\u0001H\u0002¢\u0006\u0006\b¡\u0001\u0010¢\u0001J\u0011\u0010£\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b£\u0001\u0010.J\u001a\u0010¥\u0001\u001a\u00020\u00112\u0007\u0010¤\u0001\u001a\u00020)H\u0002¢\u0006\u0005\b¥\u0001\u0010,J\u0011\u0010¦\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¦\u0001\u0010.J\u0011\u0010§\u0001\u001a\u00020)H\u0002¢\u0006\u0005\b§\u0001\u00105J\u0011\u0010¨\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¨\u0001\u0010.J\u0011\u0010©\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b©\u0001\u0010.J\u0011\u0010ª\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bª\u0001\u00105J\u0011\u0010«\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b«\u0001\u0010.J\u0011\u0010¬\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¬\u0001\u0010.J#\u0010®\u0001\u001a\u00020\u00112\u0006\u0010K\u001a\u00020J2\u0007\u0010\u00ad\u0001\u001a\u00020qH\u0002¢\u0006\u0006\b®\u0001\u0010¯\u0001J+\u0010³\u0001\u001a\u00020\u00112\f\b\u0002\u0010±\u0001\u001a\u0005\u0018\u00010°\u00012\t\b\u0002\u0010²\u0001\u001a\u00020)H\u0002¢\u0006\u0006\b³\u0001\u0010´\u0001J\u0011\u0010µ\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bµ\u0001\u0010.J\u0011\u0010¶\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b¶\u0001\u0010.J\u001a\u0010¸\u0001\u001a\u00020\u00112\u0007\u0010·\u0001\u001a\u00020{H\u0002¢\u0006\u0005\b¸\u0001\u0010~J\u001a\u0010¹\u0001\u001a\u00020\u00112\u0007\u0010·\u0001\u001a\u00020{H\u0002¢\u0006\u0005\b¹\u0001\u0010~J\u0011\u0010º\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bº\u0001\u00105J+\u0010»\u0001\u001a\u00020\u00112\f\b\u0002\u0010±\u0001\u001a\u0005\u0018\u00010°\u00012\t\b\u0002\u0010²\u0001\u001a\u00020)H\u0002¢\u0006\u0006\b»\u0001\u0010´\u0001J%\u0010½\u0001\u001a\u00020\u00112\u0007\u0010¼\u0001\u001a\u00020)2\b\b\u0002\u0010t\u001a\u00020)H\u0002¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u0015\u0010À\u0001\u001a\u0005\u0018\u00010¿\u0001H\u0002¢\u0006\u0006\bÀ\u0001\u0010Á\u0001J\u0015\u0010Ã\u0001\u001a\u0005\u0018\u00010Â\u0001H\u0002¢\u0006\u0006\bÃ\u0001\u0010Ä\u0001J\u0011\u0010Å\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÅ\u0001\u0010.J\u0011\u0010Æ\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÆ\u0001\u0010.J#\u0010È\u0001\u001a\u00020\u00112\u0006\u0010t\u001a\u00020)2\u0007\u0010Ç\u0001\u001a\u00020)H\u0002¢\u0006\u0006\bÈ\u0001\u0010¾\u0001J\u001c\u0010É\u0001\u001a\u00020\u00112\t\b\u0002\u0010Ç\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bÉ\u0001\u0010,J\u001b\u0010Ê\u0001\u001a\u00020\u00112\b\b\u0002\u0010t\u001a\u00020)H\u0002¢\u0006\u0005\bÊ\u0001\u0010,J$\u0010Í\u0001\u001a\u00020\u00112\u0007\u0010Ë\u0001\u001a\u00020)2\u0007\u0010Ì\u0001\u001a\u00020[H\u0002¢\u0006\u0006\bÍ\u0001\u0010Î\u0001J\u001a\u0010Ð\u0001\u001a\u00020\u00112\u0007\u0010Ï\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bÐ\u0001\u0010,J\u001b\u0010Ñ\u0001\u001a\u00020\u00112\u0007\u0010Ì\u0001\u001a\u00020[H\u0002¢\u0006\u0006\bÑ\u0001\u0010Ò\u0001J\u0011\u0010Ó\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÓ\u0001\u0010.J\u001a\u0010Õ\u0001\u001a\u00020\u00112\u0007\u0010Ô\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bÕ\u0001\u0010,J\u0019\u0010Ö\u0001\u001a\u00020\u00112\u0006\u0010t\u001a\u00020)H\u0002¢\u0006\u0005\bÖ\u0001\u0010,J\u001a\u0010Ø\u0001\u001a\u00020\u00112\u0007\u0010×\u0001\u001a\u00020\u000fH\u0002¢\u0006\u0005\bØ\u0001\u0010\u0013J\u0011\u0010Ù\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÙ\u0001\u0010.J\u0011\u0010Ú\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÚ\u0001\u0010.J\u001c\u0010Ü\u0001\u001a\u00020\u00112\t\b\u0002\u0010Û\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bÜ\u0001\u0010,J\u0011\u0010Ý\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bÝ\u0001\u00105J\u0011\u0010Þ\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bÞ\u0001\u0010.J\u0011\u0010ß\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bß\u0001\u0010.J\u0019\u0010à\u0001\u001a\u00020\u00112\u0006\u0010K\u001a\u00020JH\u0002¢\u0006\u0005\bà\u0001\u0010MJ\u0011\u0010á\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bá\u0001\u0010.J\u0011\u0010â\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bâ\u0001\u0010.J\u0011\u0010ã\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bã\u0001\u0010.J#\u0010ä\u0001\u001a\u00020\u00112\u0006\u0010K\u001a\u00020J2\u0007\u0010\u00ad\u0001\u001a\u00020qH\u0002¢\u0006\u0006\bä\u0001\u0010¯\u0001J\u0011\u0010å\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bå\u0001\u0010.J\u0011\u0010æ\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bæ\u0001\u00105J\u0011\u0010ç\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bç\u0001\u00105J\u0011\u0010è\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bè\u0001\u00105J\u0011\u0010é\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bé\u0001\u0010.J\u0011\u0010ê\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bê\u0001\u0010.J\u001b\u0010ë\u0001\u001a\u00020\u00112\u0007\u0010\u00ad\u0001\u001a\u00020qH\u0002¢\u0006\u0006\bë\u0001\u0010ì\u0001J\u0011\u0010í\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bí\u0001\u00105J\u0011\u0010î\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bî\u0001\u0010.J\u0011\u0010ï\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bï\u0001\u0010.J\u001e\u0010ñ\u0001\u001a\u0005\u0018\u00010ð\u00012\u0007\u0010\u00ad\u0001\u001a\u00020qH\u0002¢\u0006\u0006\bñ\u0001\u0010ò\u0001J\u001e\u0010ô\u0001\u001a\u0005\u0018\u00010ó\u00012\u0007\u0010\u00ad\u0001\u001a\u00020qH\u0002¢\u0006\u0006\bô\u0001\u0010õ\u0001J$\u0010÷\u0001\u001a\u00030ö\u00012\u0007\u0010\u00ad\u0001\u001a\u00020q2\u0006\u0010\u0014\u001a\u00020\u000fH\u0002¢\u0006\u0006\b÷\u0001\u0010ø\u0001J\u0012\u0010ù\u0001\u001a\u00020\fH\u0002¢\u0006\u0006\bù\u0001\u0010ú\u0001J\u0011\u0010û\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bû\u0001\u0010.J\u0011\u0010ü\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\bü\u0001\u0010.J\u0011\u0010ý\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bý\u0001\u00105J\u001a\u0010ÿ\u0001\u001a\u00020\u00112\u0007\u0010þ\u0001\u001a\u00020)H\u0002¢\u0006\u0005\bÿ\u0001\u0010,J\u001a\u0010\u0081\u0002\u001a\u00020\u00112\u0007\u0010\u0080\u0002\u001a\u00020\u000fH\u0002¢\u0006\u0005\b\u0081\u0002\u0010\u0013J!\u0010\u0083\u0002\u001a\u0011\u0012\u0004\u0012\u00020\u000f\u0012\u0006\u0012\u0004\u0018\u00010\u000f0\u0082\u0002H\u0002¢\u0006\u0006\b\u0083\u0002\u0010\u0084\u0002J\u0011\u0010\u0085\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0085\u0002\u0010.J%\u0010\u0089\u0002\u001a\u00020\u00112\b\u0010\u0087\u0002\u001a\u00030\u0086\u00022\u0007\u0010\u0088\u0002\u001a\u00020\u000fH\u0002¢\u0006\u0006\b\u0089\u0002\u0010\u008a\u0002J\u0011\u0010\u008b\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008b\u0002\u0010.J\u0011\u0010\u008c\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008c\u0002\u0010.J\u0011\u0010\u008d\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008d\u0002\u0010.J\u0011\u0010\u008e\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008e\u0002\u0010.J\u0011\u0010\u008f\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u008f\u0002\u0010.J&\u0010\u0092\u0002\u001a\u00020\u00112\u0007\u0010\u0090\u0002\u001a\u00020)2\t\u0010\u0091\u0002\u001a\u0004\u0018\u00010\fH\u0002¢\u0006\u0006\b\u0092\u0002\u0010\u0093\u0002J(\u0010\u0096\u0002\u001a\u00020\u00112\u0007\u0010\u0094\u0002\u001a\u00020)2\u000b\b\u0002\u0010\u0095\u0002\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0006\b\u0096\u0002\u0010\u0097\u0002J\u0019\u0010\u0098\u0002\u001a\u00020\u00112\u0006\u0010|\u001a\u00020{H\u0002¢\u0006\u0005\b\u0098\u0002\u0010~J\u0011\u0010\u0099\u0002\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0099\u0002\u0010.J%\u0010\u009b\u0002\u001a\u00020\u00112\t\u0010\u009a\u0002\u001a\u0004\u0018\u00010\u000f2\u0006\u0010|\u001a\u00020{H\u0002¢\u0006\u0006\b\u009b\u0002\u0010\u009c\u0002J\u0019\u0010\u009d\u0002\u001a\u00020\u00112\u0006\u0010|\u001a\u00020{H\u0002¢\u0006\u0005\b\u009d\u0002\u0010~R\u0018\u0010¡\u0002\u001a\u00030\u009e\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009f\u0002\u0010 \u0002R*\u0010©\u0002\u001a\u00030¢\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b£\u0002\u0010¤\u0002\u001a\u0006\b¥\u0002\u0010¦\u0002\"\u0006\b§\u0002\u0010¨\u0002R\u001c\u0010\u00ad\u0002\u001a\u0005\u0018\u00010ª\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0002\u0010¬\u0002R \u0010±\u0002\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b®\u0002\u0010¯\u0002\u001a\u0006\b°\u0002\u0010ú\u0001R\u0017\u0010³\u0002\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b±\u0001\u0010²\u0002R\u0017\u0010µ\u0002\u001a\u00020\f8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b´\u0002\u0010²\u0002R\u0018\u0010¹\u0002\u001a\u00030¶\u00028\u0002X\u0082\u0004¢\u0006\b\n\u0006\b·\u0002\u0010¸\u0002R\u001b\u0010¼\u0002\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0002\u0010»\u0002R\u001a\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0002\u0010¾\u0002R\u001b\u0010Á\u0002\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¿\u0002\u0010À\u0002R\u0018\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0002\u0010Ã\u0002R\u001a\u0010\u0014\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0002\u0010À\u0002R\u0019\u0010Ç\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÅ\u0002\u0010Æ\u0002R\u0019\u0010É\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0002\u0010Æ\u0002R\u0019\u0010Ë\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0002\u0010Æ\u0002R\u001a\u0010 \u0001\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÌ\u0002\u0010Í\u0002R\u001a\u0010Ï\u0002\u001a\u00030\u009f\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0002\u0010Í\u0002R\u0019\u0010Ñ\u0002\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0002\u0010²\u0002R\u0019\u0010Ó\u0002\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÒ\u0002\u0010²\u0002R\u0019\u0010Ö\u0002\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÔ\u0002\u0010Õ\u0002R\u0019\u0010Ø\u0002\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b×\u0002\u0010Õ\u0002R\u0019\u0010Ú\u0002\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÙ\u0002\u0010Õ\u0002R\u001b\u0010Ü\u0002\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÛ\u0002\u0010À\u0002R\u0019\u0010Þ\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÝ\u0002\u0010Æ\u0002R\u0019\u0010à\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0002\u0010Æ\u0002R\u0019\u0010â\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bá\u0002\u0010Æ\u0002R\u0018\u00104\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0002\u0010Æ\u0002R\u0019\u0010å\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bä\u0002\u0010Æ\u0002R\u0019\u0010ç\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bæ\u0002\u0010Æ\u0002R\u0019\u0010é\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bè\u0002\u0010Æ\u0002R\u0019\u0010ë\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bê\u0002\u0010Æ\u0002R\u0019\u0010í\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bì\u0002\u0010Æ\u0002R\u0019\u0010ï\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bî\u0002\u0010Æ\u0002R\u0019\u0010ñ\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bð\u0002\u0010Æ\u0002R\u0019\u0010ò\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0002\u0010Æ\u0002R\u0019\u0010ó\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÕ\u0002\u0010Æ\u0002R\u0019\u0010õ\u0002\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bô\u0002\u0010Æ\u0002R\u001a\u0010#\u001a\u0004\u0018\u00010\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bö\u0002\u0010À\u0002R\u001b\u0010ù\u0002\u001a\u0004\u0018\u00010J8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0002\u0010ø\u0002R\u001b\u0010ü\u0002\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bú\u0002\u0010û\u0002R\u001c\u0010\u0080\u0003\u001a\u0005\u0018\u00010ý\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0002\u0010ÿ\u0002R\u001c\u0010\u0082\u0003\u001a\u0005\u0018\u00010ý\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0081\u0003\u0010ÿ\u0002R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0083\u0003\u0010\u0084\u0003R\u001a\u0010\u0088\u0003\u001a\u00030\u0085\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0003\u0010\u0087\u0003R\u001c\u0010\u008b\u0003\u001a\u0005\u0018\u00010¿\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0089\u0003\u0010\u008a\u0003R\u001c\u0010\u008e\u0003\u001a\u0005\u0018\u00010Â\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008c\u0003\u0010\u008d\u0003R\u001c\u0010\u0092\u0003\u001a\u0005\u0018\u00010\u008f\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0090\u0003\u0010\u0091\u0003R\u001c\u0010\u0094\u0003\u001a\u0005\u0018\u00010ý\u00028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0003\u0010ÿ\u0002R\u001b\u0010\u0096\u0003\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0095\u0003\u0010û\u0002R\u001b\u0010\u0099\u0003\u001a\u0004\u0018\u00010i8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0097\u0003\u0010\u0098\u0003R\u001c\u0010\u009d\u0003\u001a\u0005\u0018\u00010\u009a\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009b\u0003\u0010\u009c\u0003R!\u0010¢\u0003\u001a\u00030\u009e\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u009f\u0003\u0010¯\u0002\u001a\u0006\b \u0003\u0010¡\u0003R!\u0010§\u0003\u001a\u00030£\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b¤\u0003\u0010¯\u0002\u001a\u0006\b¥\u0003\u0010¦\u0003R\u001b\u0010©\u0003\u001a\u0004\u0018\u00010G8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÿ\u0001\u0010¨\u0003R\u001c\u0010¬\u0003\u001a\u0005\u0018\u00010ª\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010«\u0003R\u001c\u0010°\u0003\u001a\u0005\u0018\u00010\u00ad\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0003\u0010¯\u0003R\u0018\u0010´\u0003\u001a\u00030±\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b²\u0003\u0010³\u0003R\u001c\u0010¸\u0003\u001a\u0005\u0018\u00010µ\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0003\u0010·\u0003R\u001c\u0010¼\u0003\u001a\u0005\u0018\u00010¹\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0003\u0010»\u0003R\u001c\u0010À\u0003\u001a\u0005\u0018\u00010½\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¾\u0003\u0010¿\u0003R\u0019\u0010Á\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0088\u0001\u0010Æ\u0002R\u0019\u0010Ã\u0003\u001a\u00020b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÂ\u0003\u0010ì\u0002R!\u0010Ç\u0003\u001a\u00030Ä\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u008f\u0002\u0010¯\u0002\u001a\u0006\bÅ\u0003\u0010Æ\u0003R!\u0010Ë\u0003\u001a\u00030È\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0097\u0001\u0010¯\u0002\u001a\u0006\bÉ\u0003\u0010Ê\u0003R\u001c\u0010Î\u0003\u001a\u0005\u0018\u00010Ì\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010Í\u0003R\u001c\u0010Ò\u0003\u001a\u0005\u0018\u00010Ï\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÐ\u0003\u0010Ñ\u0003R\u0019\u0010Ó\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010Æ\u0002R \u0010Ö\u0003\u001a\t\u0012\u0004\u0012\u00020{0Ô\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b÷\u0001\u0010Õ\u0003R\u0019\u0010×\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bñ\u0001\u0010Æ\u0002R\u0018\u0010Ø\u0003\u001a\u00030\u0085\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bô\u0001\u0010\u0087\u0003R\u001c\u0010Û\u0003\u001a\u0005\u0018\u00010Ù\u00038\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b«\u0001\u0010Ú\u0003R\u001f\u0010Ý\u0003\u001a\u00020[8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\bÅ\u0001\u0010¯\u0002\u001a\u0005\bÜ\u0003\u0010]R\u001f\u0010ß\u0003\u001a\u00020)8BX\u0082\u0084\u0002¢\u0006\u000f\n\u0006\b»\u0001\u0010¯\u0002\u001a\u0005\bÞ\u0003\u00105R\u0018\u0010â\u0003\u001a\u00030à\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b§\u0001\u0010á\u0003R6\u0010å\u0003\u001a\u001f\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b?\u0012\b\b@\u0012\u0004\b\b(A\u0012\u0004\u0012\u00020\u0011\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bã\u0003\u0010ä\u0003R\u001e\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001c8\u0002@\u0002X\u0082.¢\u0006\b\n\u0006\bê\u0001\u0010Õ\u0003R\u0019\u0010æ\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0099\u0002\u0010Æ\u0002R\u0019\u0010è\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bç\u0003\u0010Æ\u0002R\u0019\u0010é\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÓ\u0001\u0010Æ\u0002R\u0019\u0010ê\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b©\u0001\u0010Æ\u0002R!\u0010î\u0003\u001a\u00030ë\u00038BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0089\u0001\u0010¯\u0002\u001a\u0006\bì\u0003\u0010í\u0003R\u0019\u0010ï\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010Æ\u0002R\u0018\u0010ò\u0003\u001a\u00030ð\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008f\u0001\u0010ñ\u0003R\u0019\u0010ô\u0003\u001a\u00020[8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bó\u0003\u0010Õ\u0002R\u0018\u0010÷\u0003\u001a\u00030õ\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0094\u0001\u0010ö\u0003R\u0018\u0010û\u0003\u001a\u00030ø\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bù\u0003\u0010ú\u0003R\u0018\u0010ý\u0003\u001a\u00030õ\u00038\u0002X\u0082\u0004¢\u0006\b\n\u0006\bü\u0003\u0010ö\u0003R\u0019\u0010ÿ\u0003\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bþ\u0003\u0010Æ\u0002R#\u0010\u0084\u0004\u001a\u0005\u0018\u00010\u0080\u00048BX\u0082\u0084\u0002¢\u0006\u0010\n\u0006\b\u0081\u0004\u0010¯\u0002\u001a\u0006\b\u0082\u0004\u0010\u0083\u0004¨\u0006\u0086\u0004"}, d2 = {"Lcom/transsion/player/longvideo/ui/LongVodPlayerView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lkn/a;", "Lcom/transsion/baselib/report/k$a;", "Lcom/transsion/ad/strategy/b$a;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "genre", "", "initAdHelper", "(Ljava/lang/String;)V", "pageName", "Lcom/transsion/player/longvideo/constants/LongVodPageType;", "pageType", "tag", "Landroid/widget/FrameLayout;", "fullscreenContainer", "Landroid/view/ViewGroup;", "subtitleSyncView", "", "Lcom/transsion/moviedetailapi/bean/DubsInfo;", "dubs", "Lcom/transsion/player/longvideo/constants/LongVodContentType;", "contentType", "init", "(Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPageType;Ljava/lang/String;Landroid/widget/FrameLayout;Landroid/view/ViewGroup;Ljava/util/List;Lcom/transsion/player/longvideo/constants/LongVodContentType;)V", "fragmentId", "setFragmentId", "Lcom/transsion/ad/monopoly/model/AdPlans;", "adPlan", "onAdClick", "(Lcom/transsion/ad/monopoly/model/AdPlans;)V", "", "needFinish", "backClick", "(Z)V", "replay", "()V", "showReplay", "fastHide", "hideBottomController", "isInPipMode", "onPipModeChanged", "isPressedPause", "()Z", "ugcAutoPause2PlayVideo", "parentVideoId", "trackId", "previousTrackId", "updateReportId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "visible", "setFeedBackVisible", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "info", "callback", "setAudioSelectCallback", "(Lkotlin/jvm/functions/Function1;)V", "isBackground", "onBackgroundStatusChange", "Lkn/a$b;", "setCallback", "(Lkn/a$b;)V", "Lln/a;", "bean", "setDataSource", "(Lln/a;)V", "from", "setMusicLikedFragment", "onViewResume", "onViewPause", "onHandlePause", "onHandlePlay", "onSaveHistory", "release", "onAttachedToWindow", "onDetachedFromWindow", "onPageDestroy", "reset", "onBackPressed", "", "currentPosition", "()J", "showNoNetError", "removeNoNetError", "hasNext", "hasNextEpisode", "", "speed", "setSpeed", "(F)V", "Lcom/transsion/player/orplayer/f;", "getPlayer", "()Lcom/transsion/player/orplayer/f;", "Lcom/transsion/player/ui/ORPlayerView;", "getPlayerView", "()Lcom/transsion/player/ui/ORPlayerView;", "Lcom/avery/subtitle/widget/SimpleSubtitleView;", "getSubtitleView", "()Lcom/avery/subtitle/widget/SimpleSubtitleView;", "getSubtitleViewGroup", "()Landroid/view/ViewGroup;", "Lln/c;", "getPlayingStream", "()Lln/c;", PushConstants.PUSH_SERVICE_TYPE_SHOW, "setFloatIsShow", "orPlayer", "playerView", "floatBack2ExitPage", "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;)V", "exitFullScreen", "Lln/b;", XLogUtil.TAG, "onResolutionTipFailedFromDialog", "(Lln/b;)V", "onResolutionTipFailedFromMemberTipView", "showResolutionIntercept", "openResolutionPanel", "Lcom/transsion/memberapi/MemberCheckResult;", "memberCheckResult", "closeResolutionPanel", "(Lln/b;Lcom/transsion/memberapi/MemberCheckResult;)V", "getClassTag", "()Ljava/lang/String;", "l0", "F0", "j1", "c1", "(Ljava/lang/String;Lln/a;)V", "videoPlaying", "F2", "H0", "g1", "(Landroid/view/ViewGroup;)V", "H2", "G0", "J0", "E1", "w1", "o0", "d1", "Lcom/tn/lib/view/SecondariesSeekBar;", "seekBarView", "e1", "(Lcom/tn/lib/view/SecondariesSeekBar;)V", "r0", KaManager.NOTIFICATION_GROUP_FULLSCREEN, "Lcom/transsion/player/longvideo/ui/LongVodUiType;", "curUiType", "g2", "(ZLcom/transsion/player/longvideo/ui/LongVodUiType;)V", "U1", "keepScreenOn", "u1", "y1", "y0", "B2", "E0", "s1", "v0", "f1", "playStream", "b1", "(Lln/a;Lln/c;)V", "Landroid/view/MotionEvent;", "e", "isDoubleClick", "L2", "(Landroid/view/MotionEvent;Z)V", "G1", "b2", "selectedBean", "z1", "F1", "o1", "x0", ToolBar.FORWARD, "p0", "(ZZ)V", "Lcom/transsion/player/longvideo/helper/i;", "getLocalVideoLandForwardViewControl", "()Lcom/transsion/player/longvideo/helper/i;", "Lcom/transsion/postdetail/layer/local/o1;", "getLocalVideoMiddleForwardViewControl", "()Lcom/transsion/postdetail/layer/local/o1;", "w0", "N2", "autoHide", "f0", "j2", "u2", "isSeek", NotificationCompat.CATEGORY_PROGRESS, "G2", "(ZJ)V", "vis", "v1", "I2", "(J)V", "D0", "playing", "setPauseViewStatus", "z2", "content", "y2", "i1", "V1", "isNoNet", "m2", "p1", "T1", "R1", "J2", "i2", "P1", "E2", "Y1", "h2", "t1", "q1", "r1", "l2", "A0", "setPlayerDataSourceAdPrepare", "(Lln/c;)V", "s2", "O1", "Z1", "Lcom/transsion/player/mediasession/MediaItem;", "t0", "(Lln/c;)Lcom/transsion/player/mediasession/MediaItem;", "Landroid/app/PendingIntent;", "u0", "(Lln/c;)Landroid/app/PendingIntent;", "Landroid/content/Intent;", "s0", "(Lln/c;Ljava/lang/String;)Landroid/content/Intent;", "getPendingIntentFlag", "()I", "e2", "a2", "n1", "isPortrait", "e0", NativeComponentConstants.KEY_COMPONENT_TYPE, "X1", "", "getReportNextMap", "()Ljava/util/Map;", "W1", "Lcom/transsion/player/enum/ScaleMode;", "scaleMode", "scaleModeName", "O2", "(Lcom/transsion/player/enum/ScaleMode;Ljava/lang/String;)V", "S1", "Q1", "C1", "D1", "n0", "hasAtLeast720P", "target", "x2", "(ZLjava/lang/Integer;)V", "isShow", NotificationCompat.CATEGORY_MESSAGE, "t2", "(ZLjava/lang/String;)V", "D2", "B0", "skuId", "K1", "(Ljava/lang/String;Lln/b;)V", "r2", "Lmn/j;", "a", "Lmn/j;", "viewBinding", "Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;", "getLongVodPlayerViewAdHelper", "()Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;", "setLongVodPlayerViewAdHelper", "(Lcom/transsion/player/longvideo/ui/dialog/LongVodPlayerViewAdHelper;)V", "longVodPlayerViewAdHelper", "Landroid/animation/ValueAnimator;", "c", "Landroid/animation/ValueAnimator;", "resolutionPanelAnimator", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lkotlin/Lazy;", "getResolutionPanelTargetWidth", "resolutionPanelTargetWidth", "I", "screenWidth", "f", "screenHeight", "Lcom/transsion/player/ui/longvideo/a;", "g", "Lcom/transsion/player/ui/longvideo/a;", "playerControl", "h", "Landroid/view/ViewGroup;", "playerViewParent", "i", "Lcom/transsion/player/longvideo/constants/LongVodPageType;", "j", "Ljava/lang/String;", "playerTag", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/player/longvideo/constants/LongVodContentType;", "l", "m", "Z", "isFloatPlaying", "n", "isUGCPlay", "o", "isUGCPauseShowing", TtmlNode.TAG_P, "Lcom/transsion/player/longvideo/ui/LongVodUiType;", CampaignEx.JSON_KEY_AD_Q, "curUiRotation", CampaignEx.JSON_KEY_AD_R, "videoHeight", "s", "videoWidth", "t", "J", "totalDuration", TmcStartParams.KEY_URL_SHORT, "playProgress", "v", "pressSeekProgress", "w", "subSelectId", "x", "showToolbarAlways", "y", "isShowLoading", "z", "isSeeking", "A", "B", "formUserSeek", "C", "isReload", "D", "isMobilePaused", "E", "isPageResumed", "F", "isHasNext", "G", "isMultipleResChangeResolution", "H", "isNewPlayer", "isFloatShow", "isMultiplePlayer", "K", "isPrepared", "L", "M", "Lln/a;", "curBean", "N", "Lln/c;", "curPlayStream", "Landroid/view/View;", "O", "Landroid/view/View;", "errorLayout", "P", "replayLayout", "Q", "Landroid/widget/FrameLayout;", "Landroid/os/Handler;", "R", "Landroid/os/Handler;", "handler", "S", "Lcom/transsion/player/longvideo/helper/i;", "localVideoLandForwardViewControl", "T", "Lcom/transsion/postdetail/layer/local/o1;", "localVideoMiddleForwardViewControl", "Lcom/transsion/postdetail/layer/local/h1;", "U", "Lcom/transsion/postdetail/layer/local/h1;", "localToastControl", "V", "toastLayout", "W", "playingStream", "a0", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "Lcom/transsion/postdetail/layer/local/c0;", "b0", "Lcom/transsion/postdetail/layer/local/c0;", "videoDot", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "c0", "getVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "videoDetailPlayDao", "Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "d0", "getUgcVideoDetailPlayDao", "()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;", "ugcVideoDetailPlayDao", "Lkn/a$b;", "playerCallback", "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;", "Lcom/transsion/player/longvideo/helper/LongVodSubtitleHelper;", "subtitleHelper", "Lcom/transsion/player/longvideo/helper/j;", "g0", "Lcom/transsion/player/longvideo/helper/j;", "spaceHelper", "Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;", "h0", "Lcom/transsion/player/longvideo/helper/LongVodResolutionHelper;", "resolutionHelper", "Lcom/transsion/player/longvideo/helper/g;", "i0", "Lcom/transsion/player/longvideo/helper/g;", "gameResHelper", "Lcom/transsion/player/longvideo/helper/u;", "j0", "Lcom/transsion/player/longvideo/helper/u;", "mobileDataHelper", "Lcom/transsion/player/longvideo/helper/c;", "k0", "Lcom/transsion/player/longvideo/helper/c;", "adHelper", "isCompletionBlock", "m0", "resumeSpeed", "Lcom/transsion/player/longvideo/ui/dialog/a;", "getConfigViewModel", "()Lcom/transsion/player/longvideo/ui/dialog/a;", "configViewModel", "Lcom/transsion/postdetail/ui/dialog/k;", "getSpeedViewModel", "()Lcom/transsion/postdetail/ui/dialog/k;", "speedViewModel", "Lqn/d;", "Lqn/d;", "dashVideoTracksGroup", "Lqn/b;", "q0", "Lqn/b;", "curVideoFormat", "isFirstSetTracks", "", "Ljava/util/List;", "resolutionList", "hideFloat", "playTimeoutHandler", "Lgn/e;", "Lgn/e;", "curTimeoutMediaSource", "getPlayTimeoutStream", "playTimeoutStream", "getPkStyle", "pkStyle", "Lkotlinx/coroutines/n0;", "Lkotlinx/coroutines/n0;", "coroutineScopeIO", "z0", "Lkotlin/jvm/functions/Function1;", "audioSelectCallback", "isAdShowing", "C0", "isRewardUnlock", "isRewardInterceptShowing", "canNonSubscriberPlay", "Lcom/transsion/baselib/helper/ScreenRotationHelper;", "getScreenHelper", "()Lcom/transsion/baselib/helper/ScreenRotationHelper;", "screenHelper", "isPreparedInterceptPlay", "com/transsion/player/longvideo/ui/LongVodPlayerView$k", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$k;", "playerListener", "I0", "pressTime", "Ljava/lang/Runnable;", "Ljava/lang/Runnable;", "runnable", "com/transsion/player/longvideo/ui/LongVodPlayerView$h", "K0", "Lcom/transsion/player/longvideo/ui/LongVodPlayerView$h;", "netListener", "L0", "playTimeoutRunnable", "M0", "isMusicLikedFragment", "Lcom/transsion/postdetail/util/n;", "N0", "getOrientationEventListener", "()Lcom/transsion/postdetail/util/n;", "orientationEventListener", "Companion", "LongVideo_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class LongVodPlayerView extends ConstraintLayout implements kn.a, com.transsion.baselib.report.k.a, com.transsion.ad.strategy.b.a {
    public static final String PK_NEW_PLAYER_UI_KEY = "pk_player_ui_key";
    public static final String TAG = "LongVodPlayerView";

    private boolean isPressedPause;

    private List dubs;

    private boolean formUserSeek;

    private boolean isAdShowing;

    private boolean isReload;

    private boolean isRewardUnlock;

    private boolean isMobilePaused;

    private boolean isRewardInterceptShowing;

    private boolean isPageResumed;

    private boolean canNonSubscriberPlay;

    private boolean isHasNext;

    private final Lazy screenHelper;

    private boolean isMultipleResChangeResolution;

    private boolean isPreparedInterceptPlay;

    private boolean isNewPlayer;

    private final k playerListener;

    private boolean isFloatShow;

    private long pressTime;

    private boolean isMultiplePlayer;

    private final Runnable runnable;

    private boolean isPrepared;

    private final h netListener;

    private String fragmentId;

    private final Runnable playTimeoutRunnable;

    private ln.a curBean;

    private boolean isMusicLikedFragment;

    private ln.c curPlayStream;

    private final Lazy orientationEventListener;

    private View errorLayout;

    private View replayLayout;

    private FrameLayout fullscreenContainer;

    private Handler handler;

    private com.transsion.player.longvideo.helper.i localVideoLandForwardViewControl;

    private o1 localVideoMiddleForwardViewControl;

    private h1 localToastControl;

    private View toastLayout;

    private ln.c playingStream;

    private final mn.j viewBinding;

    private ORPlayerView orPlayerView;

    private LongVodPlayerViewAdHelper longVodPlayerViewAdHelper;

    private com.transsion.postdetail.layer.local.c0 videoDot;

    private ValueAnimator resolutionPanelAnimator;

    private final Lazy videoDetailPlayDao;

    private final Lazy resolutionPanelTargetWidth;

    private final Lazy ugcVideoDetailPlayDao;

    private final int screenWidth;

    private kn.a.b playerCallback;

    private final int screenHeight;

    private LongVodSubtitleHelper subtitleHelper;

    private final com.transsion.player.ui.longvideo.a playerControl;

    private com.transsion.player.longvideo.helper.j spaceHelper;

    private ViewGroup playerViewParent;

    private final LongVodResolutionHelper resolutionHelper;

    private LongVodPageType pageType;

    private com.transsion.player.longvideo.helper.g gameResHelper;

    private String playerTag;

    private com.transsion.player.longvideo.helper.u mobileDataHelper;

    private LongVodContentType contentType;

    private com.transsion.player.longvideo.helper.c adHelper;

    private String pageName;

    private boolean isCompletionBlock;

    private boolean isFloatPlaying;

    private float resumeSpeed;

    private boolean isUGCPlay;

    private final Lazy configViewModel;

    private boolean isUGCPauseShowing;

    private final Lazy speedViewModel;

    private LongVodUiType curUiType;

    private qn.d dashVideoTracksGroup;

    private LongVodUiType curUiRotation;

    private qn.b curVideoFormat;

    private int videoHeight;

    private boolean isFirstSetTracks;

    private int videoWidth;

    private List resolutionList;

    private long totalDuration;

    private boolean hideFloat;

    private long playProgress;

    private final Handler playTimeoutHandler;

    private long pressSeekProgress;

    private gn.e curTimeoutMediaSource;

    private String subSelectId;

    private final Lazy playTimeoutStream;

    private boolean showToolbarAlways;

    private final Lazy pkStyle;

    private boolean isShowLoading;

    private final kotlinx.coroutines.n0 coroutineScopeIO;

    private boolean isSeeking;

    private Function1 audioSelectCallback;

    public class b {

        public static final int[] f46265a;

        public static final int[] f46266b;

        static {
            int[] iArr = new int[LongVodPlayerConfigType.values().length];
            try {
                iArr[LongVodPlayerConfigType.BITRATE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LongVodPlayerConfigType.SPEED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            f46265a = iArr;
            int[] iArr2 = new int[LongVodContentType.values().length];
            try {
                iArr2[LongVodContentType.SUBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[LongVodContentType.UGC_VIDEO_LOCAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[LongVodContentType.UGC_VIDEO_ONLINE.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            f46266b = iArr2;
        }
    }

    public static final class c extends AnimatorListenerAdapter {

        final CustomRoundCornerLayout f46267a;

        final LongVodPlayerView f46268b;

        c(CustomRoundCornerLayout customRoundCornerLayout, LongVodPlayerView longVodPlayerView) {
            this.f46267a = customRoundCornerLayout;
            this.f46268b = longVodPlayerView;
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            this.f46267a.setVisibility(8);
            this.f46267a.getLayoutParams().width = this.f46268b.getResolutionPanelTargetWidth();
            this.f46267a.requestLayout();
        }
    }

    public static final class d implements com.transsion.mbwidget.guide.a {
        d() {
        }

        @Override
        public void a() {
            wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "DeskWidget，show stop auto pip", false, 4, null);
            LongVodPlayerView.this.F2(false);
        }

        @Override
        public void onDismiss() {
            LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
            try {
                Result.Companion companion = Result.INSTANCE;
                if (longVodPlayerView.playerControl.isPlaying()) {
                    wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "DeskWidget，dismiss resume auto pip", false, 4, null);
                    longVodPlayerView.F2(true);
                }
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
    }

    public static final class e implements com.transsion.player.ui.longvideo.a.b {

        private long f46270a;

        private float f46271b;

        private boolean f46272c;

        private long f46273d;

        final boolean f46275f;

        e(boolean z10) {
            this.f46275f = z10;
        }

        @Override
        public void a() {
            LongVodPlayerView.this.E1();
        }

        @Override
        public void b(float f10, float f11) {
            if (!this.f46272c) {
                this.f46273d = LongVodPlayerView.this.viewBinding.f66585o.f66616t.getCurrentProgress();
                LongVodPlayerView.this.j2(false);
            }
            LongVodPlayerView.this.formUserSeek = true;
            this.f46272c = true;
            LongVodPlayerView.this.handler.removeCallbacks(LongVodPlayerView.this.runnable);
            long j10 = (long) (this.f46273d + (((this.f46275f ? f10 - f11 : f11 - f10) * LongVodPlayerView.this.totalDuration) / ((LongVodPlayerView.this.curUiType == LongVodUiType.LAND ? LongVodPlayerView.this.screenHeight : LongVodPlayerView.this.screenWidth) * 4)));
            if (j10 < 0) {
                j10 = 0;
            } else if (j10 > LongVodPlayerView.this.totalDuration) {
                j10 = LongVodPlayerView.this.totalDuration;
            }
            LongVodPlayerView.this.viewBinding.f66585o.f66616t.setProgress(j10);
            LongVodPlayerView.this.viewBinding.f66586p.f66636n.setProgress(j10);
            this.f46271b = (j10 * 1.0f) / LongVodPlayerView.this.totalDuration;
            long j11 = (long) (LongVodPlayerView.this.totalDuration * this.f46271b);
            this.f46270a = j11;
            LongVodPlayerView.this.G2(true, j11);
        }

        @Override
        public void c() {
            if (this.f46272c) {
                LongVodPlayerView.this.playerControl.seekTo(this.f46270a);
                if (!LongVodPlayerView.this.playerControl.isPlaying() && !LongVodPlayerView.this.p1()) {
                    if (LongVodPlayerView.this.s1()) {
                        LongVodPlayerView.this.B2();
                    } else {
                        LongVodPlayerView.this.playerControl.play();
                    }
                }
                com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
                if (c0Var != null) {
                    c0Var.p();
                }
                LongVodPlayerView.this.G2(false, 0L);
                LongVodPlayerView.this.hideBottomController(false);
            }
            LongVodPlayerView.this.formUserSeek = false;
            this.f46272c = false;
            LongVodPlayerView.this.o0();
        }

        @Override
        public void onDoubleTap(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            if (LongVodPlayerView.this.viewBinding.f66585o.f66608l.isSelected()) {
                return;
            }
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onDoubleTap ", false, 4, null);
            LongVodPlayerView.this.L2(e10, true);
        }

        @Override
        public void onLongPress(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            LongVodPlayerView.this.w1();
        }
    }

    public static final class f implements com.tn.lib.view.s {

        final Ref.LongRef f46277b;

        f(Ref.LongRef longRef) {
            this.f46277b = longRef;
        }

        @Override
        public void a(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onStopTrackingTouch targetProgress:" + this.f46277b.element + " ", false, 4, null);
            LongVodPlayerView.this.formUserSeek = false;
            LongVodPlayerView.this.playerControl.seekTo(this.f46277b.element);
            if (!LongVodPlayerView.this.playerControl.isPlaying() && !LongVodPlayerView.this.p1()) {
                LongVodPlayerView.this.playerControl.play();
            }
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.p();
            }
            LongVodPlayerView.this.G2(false, 0L);
            LongVodPlayerView.this.hideBottomController(false);
        }

        @Override
        public void b(SecondariesSeekBar seekBar, long j10, boolean z10) {
            View view;
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                View view2 = LongVodPlayerView.this.replayLayout;
                if (view2 != null && uf.c.i(view2) && (view = LongVodPlayerView.this.replayLayout) != null) {
                    uf.c.g(view);
                }
                if (LongVodPlayerView.this.s1()) {
                    LongVodPlayerView.this.B2();
                }
                LongVodPlayerView.this.formUserSeek = true;
                LongVodPlayerView.this.handler.removeCallbacks(LongVodPlayerView.this.runnable);
                if (LongVodPlayerView.this.totalDuration > 0) {
                    this.f46277b.element = (long) (LongVodPlayerView.this.totalDuration * (j10 / LongVodPlayerView.this.totalDuration));
                }
                LongVodPlayerView.this.G2(true, this.f46277b.element);
            }
        }

        @Override
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onStartTrackingTouch ", false, 4, null);
        }
    }

    public static final class g implements com.transsion.player.longvideo.helper.w {
        g() {
        }

        @Override
        public void b(boolean z10, boolean z11) {
            LongVodPlayerView.this.f0(z10, z11);
        }

        @Override
        public void c(String text) {
            Intrinsics.h(text, "text");
            LongVodPlayerView.this.y2(text);
        }

        @Override
        public void d(String str, String str2) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.s(str, str2);
            }
        }

        @Override
        public void e(List list) {
            Intrinsics.h(list, "list");
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.q(list);
            }
        }

        @Override
        public void f(String str) {
            LongVodPlayerView.this.subSelectId = str;
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onSetSelectId, selectId:" + str + " ", false, 4, null);
        }

        @Override
        public void g(String name, String lan, int i10) {
            Intrinsics.h(name, "name");
            Intrinsics.h(lan, "lan");
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.r(name, lan, i10);
            }
        }
    }

    public static final class h implements yg.m {
        h() {
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
            LongVodPlayerView.this.T1();
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, LongVodPlayerView.TAG, "onConnected ", false, 4, null);
            if (!LongVodPlayerView.this.isPressedPause && yg.l.f76264a.e() && LongVodPlayerView.this.isPageResumed) {
                c0922a.c(LongVodPlayerView.TAG, "onConnected, isPrepared:" + LongVodPlayerView.this.isPrepared + " ", true);
                if (LongVodPlayerView.this.isPrepared) {
                    c0922a.c(LongVodPlayerView.TAG, "onConnected play", true);
                    LongVodPlayerView.this.playerControl.play();
                } else {
                    ln.c cVar = LongVodPlayerView.this.curPlayStream;
                    if (cVar != null) {
                        LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                        c0922a.c(LongVodPlayerView.TAG, "onConnected setPlayerDataSourceAdPrepare", true);
                        longVodPlayerView.setPlayerDataSourceAdPrepare(cVar);
                    }
                }
            }
            LongVodSubtitleHelper longVodSubtitleHelper = LongVodPlayerView.this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.S();
            }
        }
    }

    public static final class i implements nw.e {

        final ln.b f46281b;

        i(ln.b bVar) {
            this.f46281b = bVar;
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                LongVodPlayerView.this.getConfigViewModel().c(this.f46281b);
            }
            LongVodPlayerView.this.playerControl.play();
            wj.h.f74282a.a(LongVodPlayerView.this.getClassTag() + " --> onResolutionTipFailedFromDialog() --> 继续播放");
        }
    }

    public static final class j implements nw.e {
        j() {
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                LongVodPlayerView.this.viewBinding.f66585o.f66614r.onShowComplete();
                ln.b bVarH = com.transsion.player.longvideo.member.r.f46212a.h(LongVodPlayerView.this.resolutionList);
                if (bVarH != null) {
                    LongVodPlayerView.this.getConfigViewModel().c(bVarH);
                    wj.h.f74282a.a(LongVodPlayerView.this.getClassTag() + " --> onResolutionTipFailedFromMemberTipView() --> 自动播放最高分辨率 --> maxResolution = " + bVarH.d());
                }
            }
            LongVodPlayerView.this.playerControl.play();
            wj.h.f74282a.a(LongVodPlayerView.this.getClassTag() + " --> onResolutionTipFailedFromMemberTipView() --> 继续播放");
        }
    }

    public static final class k implements com.transsion.player.orplayer.e {
        k() {
        }

        public static final Unit g(LongVodPlayerView longVodPlayerView) {
            kn.a.b bVar = longVodPlayerView.playerCallback;
            if (bVar != null) {
                bVar.onCompletion();
            }
            if (longVodPlayerView.pageType == LongVodPageType.TRAILER) {
                longVodPlayerView.l2();
                longVodPlayerView.showReplay();
            }
            return Unit.f64096a;
        }

        public static final Unit h(LongVodPlayerView longVodPlayerView) {
            longVodPlayerView.playerControl.play();
            return Unit.f64096a;
        }

        public static final Unit i(final LongVodPlayerView longVodPlayerView) {
            String strA;
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "---> showStartAd end", false, 4, null);
            if (longVodPlayerView.contentType == LongVodContentType.UGC_VIDEO_LOCAL) {
                longVodPlayerView.y1();
                return Unit.f64096a;
            }
            long j10 = 0;
            if (longVodPlayerView.totalDuration == 0) {
                ln.c cVar = longVodPlayerView.playingStream;
                if (cVar != null && (strA = cVar.a()) != null) {
                    j10 = ((long) 1000) * Long.parseLong(strA);
                }
            } else {
                j10 = longVodPlayerView.totalDuration;
            }
            longVodPlayerView.getLongVodPlayerViewAdHelper().B3(j10, new Function0() {
                @Override
                public final Object invoke() {
                    return LongVodPlayerView.k.j(longVodPlayerView);
                }
            }, new Function0() {
                @Override
                public final Object invoke() {
                    return LongVodPlayerView.k.k(longVodPlayerView);
                }
            }, new Function1() {
                @Override
                public final Object invoke(Object obj) {
                    return LongVodPlayerView.k.l(longVodPlayerView, ((Boolean) obj).booleanValue());
                }
            });
            return Unit.f64096a;
        }

        public static final Unit j(LongVodPlayerView longVodPlayerView) {
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "-----> checkShowRewardIntercept end", false, 4, null);
            longVodPlayerView.y1();
            return Unit.f64096a;
        }

        public static final Unit k(LongVodPlayerView longVodPlayerView) {
            View orLongVodPlayerBg = longVodPlayerView.viewBinding.f66590t;
            Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
            uf.c.g(orLongVodPlayerBg);
            longVodPlayerView.C1();
            return Unit.f64096a;
        }

        public static final Unit l(LongVodPlayerView longVodPlayerView, boolean z10) {
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "-----> checkShowInterpolateAd --> onRewardUnlock prepareIntercept:" + z10, false, 4, null);
            longVodPlayerView.D1();
            longVodPlayerView.y1();
            return Unit.f64096a;
        }

        @Override
        public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dashVideoTracksGroup) {
            Intrinsics.h(dashVideoTracksGroup, "dashVideoTracksGroup");
            com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dashVideoTracksGroup);
            wj.h.f74282a.a(LongVodPlayerView.this.getClassTag() + " --> canNonSubscriberPlay() -->  非会员可以播放 = " + z10 + " --> canNonSubscriberPlay = " + z10 + "可以播放的分辨率是 = " + i10 + "可以播放的index是 = " + i11 + "可以播放的group是 = " + dashVideoTracksGroup);
            LongVodPlayerView.this.canNonSubscriberPlay = z10;
            LongVodPlayerView.this.t2(z10 ^ true, "canNonSubscriberPlay(播放器回调)");
            if (i11 >= 0) {
                LongVodPlayerView.this.playerControl.changeTrackSelection(dashVideoTracksGroup, i11);
            }
        }

        @Override
        public void initPlayer() {
            com.transsion.player.orplayer.e.a.b(this);
        }

        @Override
        public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.y(true);
            }
        }

        @Override
        public void onBufferedPosition(long j10, gn.e eVar) {
            com.transsion.player.orplayer.e.a.d(this, j10, eVar);
        }

        @Override
        public void onCompletion(gn.e eVar) {
            LongVodPlayerView.this.F2(false);
            LongVodPlayerView.this.z2(false);
            LongVodPlayerView.this.setPauseViewStatus(false);
            com.transsion.player.orplayer.e.a.z(this, LongVodPlayerView.this.totalDuration, null, 2, null);
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.h();
            }
            wf.a.f74274a.c(LongVodPlayerView.TAG, "onCompletion", true);
            LongVodPlayerViewAdHelper longVodPlayerViewAdHelper = LongVodPlayerView.this.getLongVodPlayerViewAdHelper();
            final LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
            longVodPlayerViewAdHelper.d4(new Function0() {
                @Override
                public final Object invoke() {
                    return LongVodPlayerView.k.g(longVodPlayerView);
                }
            });
        }

        @Override
        public void onFocusChange(boolean z10) {
            com.transsion.player.orplayer.e.a.g(this, z10);
        }

        @Override
        public void onIsPlayingChanged(boolean z10) {
            LongVodSubtitleHelper longVodSubtitleHelper = LongVodPlayerView.this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.e0(z10);
            }
        }

        @Override
        public void onLoadingBegin(gn.e eVar) {
            ln.c cVar;
            LongVodPlayerView.this.showToolbarAlways = false;
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.i();
            }
            if (yg.l.f76264a.e() || (cVar = LongVodPlayerView.this.curPlayStream) == null || !cVar.j()) {
                LongVodPlayerView.this.T1();
                LongVodPlayerView.this.z2(true);
            } else {
                wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onLoadingBegin， not net----", false, 4, null);
                LongVodPlayerView.n2(LongVodPlayerView.this, false, 1, null);
            }
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onLoadingBegin", false, 4, null);
        }

        @Override
        public void onLoadingEnd(gn.e eVar) {
            LongVodPlayerView.this.showToolbarAlways = false;
            LongVodPlayerView.this.T1();
            LongVodPlayerView.this.z2(false);
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.j();
            }
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onLoadingEnd", false, 4, null);
            LongVodPlayerView.this.handler.removeCallbacksAndMessages(null);
        }

        @Override
        public void onLoadingProgress(int i10, float f10, gn.e eVar) {
            com.transsion.player.orplayer.e.a.m(this, i10, f10, eVar);
        }

        @Override
        public void onLoopingStart() {
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onLoopingStart", false, 4, null);
        }

        @Override
        public void onMediaItemTransition(String str) {
            com.transsion.player.orplayer.e.a.p(this, str);
        }

        @Override
        public void onPlayError(PlayError errorInfo, gn.e eVar) {
            Intrinsics.h(errorInfo, "errorInfo");
            LongVodPlayerView.this.Z1();
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.l(errorInfo);
            }
            boolean zE = yg.l.f76264a.e();
            wf.a.f74274a.c(LongVodPlayerView.TAG, "onPlayError， hasNet:" + zE + ", code:" + errorInfo.getErrorCode() + ", msg:" + errorInfo.getErrorMessage(), true);
            LongVodPlayerView.this.m2(zE ^ true);
        }

        @Override
        public void onPlayerRelease(gn.e eVar) {
            com.transsion.player.orplayer.e.a.t(this, eVar);
            if (LongVodPlayerView.this.q1()) {
                Context context = LongVodPlayerView.this.getContext();
                AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
                if (appCompatActivity != null) {
                    appCompatActivity.finish();
                }
            }
        }

        @Override
        public void onPlayerReset() {
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onPlayerReset", false, 4, null);
            LongVodPlayerView.this.showToolbarAlways = false;
            LongVodPlayerView.this.totalDuration = 0L;
            LongVodPlayerView.this.playProgress = 0L;
            LongVodPlayerView.this.getLongVodPlayerViewAdHelper().f4();
        }

        @Override
        public void onPrepare(gn.e eVar) {
            LongVodPlayerView.this.Z1();
            LongVodPlayerView.this.isPrepared = true;
            LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
            longVodPlayerView.totalDuration = longVodPlayerView.playerControl.getDuration();
            wf.a.f74274a.c(LongVodPlayerView.TAG, "onPrepare， totalDuration:" + LongVodPlayerView.this.totalDuration, true);
            LongVodPlayerView.this.viewBinding.f66586p.f66636n.setMax(LongVodPlayerView.this.totalDuration);
            LongVodPlayerView.this.viewBinding.f66585o.f66616t.setMax(LongVodPlayerView.this.totalDuration);
            if (LongVodPlayerView.this.isPreparedInterceptPlay) {
                LongVodPlayerView.this.isPreparedInterceptPlay = false;
            } else if (!LongVodPlayerView.this.isMobilePaused && !LongVodPlayerView.this.isUGCPauseShowing) {
                LongVodPlayerView.this.playerControl.play();
            }
            LongVodPlayerView.this.f1();
            LongVodPlayerView.this.isMultipleResChangeResolution = false;
        }

        @Override
        public void onProgress(long j10, gn.e eVar) {
            if (LongVodPlayerView.this.isMultipleResChangeResolution && j10 == 0 && LongVodPlayerView.this.playProgress > 0) {
                wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onProgress, 正在切换分辨率，progress重置，不做处理", false, 4, null);
            } else {
                LongVodPlayerView.this.I2(j10);
            }
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.m(j10);
            }
            LongVodPlayerView.this.playProgress = j10;
            LongVodPlayerView.this.pressSeekProgress = j10;
            com.transsion.player.longvideo.helper.c cVar = LongVodPlayerView.this.adHelper;
            if (cVar != null) {
                cVar.e(j10, LongVodPlayerView.this.totalDuration);
            }
            LongVodSubtitleHelper longVodSubtitleHelper = LongVodPlayerView.this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.X(j10);
            }
            LongVodPlayerView.this.viewBinding.f66586p.f66636n.setMax(LongVodPlayerView.this.totalDuration);
            LongVodPlayerView.this.viewBinding.f66585o.f66616t.setMax(LongVodPlayerView.this.totalDuration);
            if (!ij.o.f62115a.i() && !ij.g.f62108a.b()) {
                LongVodPlayerViewAdHelper longVodPlayerViewAdHelper = LongVodPlayerView.this.getLongVodPlayerViewAdHelper();
                final LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                longVodPlayerViewAdHelper.N(j10, new Function0() {
                    @Override
                    public final Object invoke() {
                        return LongVodPlayerView.k.h(longVodPlayerView);
                    }
                });
            }
            LongVodPlayerView.this.getLongVodPlayerViewAdHelper().y3(j10);
        }

        @Override
        public void onRenderFirstFrame() {
            wf.a.f74274a.c(LongVodPlayerView.TAG, "onRenderFirstFrame", true);
            if (!LongVodPlayerView.this.isPrepared) {
                LongVodPlayerView.this.isPreparedInterceptPlay = true;
            }
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.n();
            }
            LongVodPlayerView.this.playerControl.pause();
            if (LongVodPlayerView.this.canNonSubscriberPlay) {
                LongVodPlayerViewAdHelper longVodPlayerViewAdHelper = LongVodPlayerView.this.getLongVodPlayerViewAdHelper();
                final LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                longVodPlayerViewAdHelper.Y1(new Function0() {
                    @Override
                    public final Object invoke() {
                        return LongVodPlayerView.k.i(longVodPlayerView);
                    }
                });
            } else {
                com.transsion.player.longvideo.member.k.f46204a.a(LongVodPlayerView.this.getClassTag() + " --> onRenderFirstFrame() --> 当前无法播放，vip分辨率");
            }
        }

        @Override
        public void onSetDataSource() {
            com.transsion.player.orplayer.e.a.B(this);
        }

        @Override
        public void onTracksAudioBitrateChange(int i10) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.t(i10);
            }
        }

        @Override
        public void onTracksChange(qn.c tracks) {
            ImmutableList immutableListA;
            com.transsion.postdetail.layer.local.c0 c0Var;
            Intrinsics.h(tracks, "tracks");
            com.transsion.player.orplayer.e.a.D(this, tracks);
            ln.a aVar = LongVodPlayerView.this.curBean;
            if ((aVar == null || !aVar.w()) && (immutableListA = tracks.a()) != null && !immutableListA.isEmpty() && LongVodPlayerView.this.isFirstSetTracks) {
                LongVodPlayerView.this.isFirstSetTracks = false;
                LongVodPlayerView.this.resolutionList.clear();
                wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onTracksChange, tracks =\n " + tracks, false, 4, null);
                ImmutableList<qn.d> immutableListA2 = tracks.a();
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                for (qn.d dVar : immutableListA2) {
                    if (dVar.e() == 2) {
                        longVodPlayerView.dashVideoTracksGroup = dVar;
                        for (qn.b bVar : dVar.b()) {
                            longVodPlayerView.resolutionList.add(new ln.b(false, bVar.c() + "P", LongVodPlayerConfigType.BITRATE));
                        }
                    }
                }
                ln.a aVar2 = LongVodPlayerView.this.curBean;
                if ((aVar2 != null ? aVar2.v() : null) != PlayMimeType.HLS || (c0Var = LongVodPlayerView.this.videoDot) == null) {
                    return;
                }
                c0Var.J(LongVodPlayerView.this.resolutionList.size() > 1 ? PrepareException.ERROR_NO_URL : "5");
            }
        }

        @Override
        public void onTracksVideoBitrateChange(int i10) {
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.u(i10);
            }
        }

        @Override
        public void onVideoPause(gn.e eVar) {
            LongVodPlayerView.this.F2(false);
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.v();
            }
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onVideoPause", false, 4, null);
            LongVodPlayerView.this.u1(false);
            com.transsion.player.longvideo.helper.c cVar = LongVodPlayerView.this.adHelper;
            if (cVar != null) {
                cVar.d();
            }
            LongVodPlayerView.this.setPauseViewStatus(false);
            if (LongVodPlayerView.this.isAdShowing || LongVodPlayerView.this.isRewardInterceptShowing) {
                return;
            }
            LongVodPlayerView.k2(LongVodPlayerView.this, false, 1, null);
        }

        @Override
        public void onVideoSizeChanged(int i10, int i11) {
            LongVodPlayerView.this.videoWidth = i10;
            LongVodPlayerView.this.videoHeight = i11;
            com.transsion.player.longvideo.helper.j jVar = LongVodPlayerView.this.spaceHelper;
            if (jVar != null) {
                jVar.b(i10, i11);
            }
        }

        @Override
        public void onVideoStart(gn.e eVar) {
            com.transsion.player.longvideo.helper.u uVar;
            if (LongVodPlayerView.this.isRewardInterceptShowing) {
                LongVodPlayerView.this.playerControl.pause();
                return;
            }
            LongVodPlayerView.this.isUGCPauseShowing = false;
            FrameLayout flUGCAutoPlayGroup = LongVodPlayerView.this.viewBinding.f66586p.f66624b;
            Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
            uf.c.g(flUGCAutoPlayGroup);
            LongVodPlayerView.this.F2(true);
            com.transsion.player.longvideo.helper.u uVar2 = LongVodPlayerView.this.mobileDataHelper;
            if (uVar2 != null) {
                uVar2.E();
            }
            LongVodPlayerView.this.isPressedPause = false;
            LongVodPlayerView.this.A0();
            LongVodPlayerView.this.Z1();
            com.transsion.postdetail.layer.local.c0 c0Var = LongVodPlayerView.this.videoDot;
            if (c0Var != null) {
                c0Var.w();
            }
            wf.a.C0922a.f(wf.a.f74274a, LongVodPlayerView.TAG, "onVideoStart", false, 4, null);
            LongVodPlayerView.this.hideBottomController(false);
            LongVodPlayerView.this.setPauseViewStatus(true);
            LongVodPlayerView.this.u1(true);
            LongVodPlayerView.this.T1();
            LongVodPlayerView.this.z2(false);
            com.transsion.player.longvideo.helper.c cVar = LongVodPlayerView.this.adHelper;
            if (cVar != null) {
                cVar.f();
            }
            if (LongVodPlayerView.this.isMobilePaused) {
                LongVodPlayerView.this.isMobilePaused = false;
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                String string = Utils.a().getString(R$string.long_vod_load_us_cellular);
                Intrinsics.g(string, "getString(...)");
                longVodPlayerView.y2(string);
            }
            if (LongVodPlayerView.this.s2() && (uVar = LongVodPlayerView.this.mobileDataHelper) != null) {
                uVar.D();
            }
            LongVodPlayerView.this.getLongVodPlayerViewAdHelper().o4();
            MusicFloatManager.f42282h.b().B(eVar != null ? eVar.h() : null);
        }

        @Override
        public void setOnSeekCompleteListener() {
            com.transsion.player.orplayer.e.a.K(this);
        }
    }

    static final class l implements androidx.p009lifecycle.c0, FunctionAdapter {

        private final Function1 f46284a;

        l(Function1 function) {
            Intrinsics.h(function, "function");
            this.f46284a = function;
        }

        @Override
        public final Function a() {
            return this.f46284a;
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
            this.f46284a.invoke(obj);
        }
    }

    public static final class m implements im.c {

        final ln.b f46286b;

        m(ln.b bVar) {
            this.f46286b = bVar;
        }

        @Override
        public void a() {
            wj.h.f74282a.a("LongVdPlayerConfigDialog --> MemberGuideCallback{} --> onFailed(开通会员失败，提示做任务)");
        }

        @Override
        public void onSuccess() {
            wj.h.f74282a.a("LongVdPlayerConfigDialog --> MemberGuideCallback{} --> onSuccess()");
            LongVodPlayerView.this.getConfigViewModel().c(this.f46286b);
        }
    }

    public static final class n implements im.c {
        n() {
        }

        @Override
        public void a() {
        }

        @Override
        public void onSuccess() {
            ln.a aVar = LongVodPlayerView.this.curBean;
            if (aVar != null) {
                LongVodPlayerView.this.setDataSource(aVar);
            }
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$onSaveHistory$1", f = "LongVodPlayerView.kt", l = {2652, 2689}, m = "invokeSuspend")
    @SourceDebugExtension
    static final class AnonymousClass1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final ln.a $bean;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final LongVodPlayerView this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(ln.a aVar, LongVodPlayerView longVodPlayerView, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$bean = aVar;
            this.this$0 = longVodPlayerView;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$bean, this.this$0, continuation);
        }

        /* JADX WARN: Code duplicated, block: B:60:0x0169  */
        /* JADX WARN: Code duplicated, block: B:63:0x0182 A[RETURN] */
        @Override
        public final Object invokeSuspend(Object obj) {
            ln.a aVar;
            LongVodPlayerView longVodPlayerView;
            ArrayList arrayList;
            Object objL;
            String str;
            String ops;
            VideoDetailPlayBean videoDetailPlayBean;
            VideoDetailPlayDao videoDetailPlayDao;
            Long lastAdEndTimeStamp;
            Long lastAdStartTimeStamp;
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 != 0) {
                if (i10 == 1) {
                    arrayList = (ArrayList) this.L$2;
                    aVar = (ln.a) this.L$1;
                    longVodPlayerView = (LongVodPlayerView) this.L$0;
                    ResultKt.b(obj);
                    objL = obj;
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                yw.e eVar = new yw.e(true, false);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = yw.e.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, eVar, 0L);
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            aVar = this.$bean;
            if (aVar != null) {
                longVodPlayerView = this.this$0;
                arrayList = new ArrayList();
                Iterator it = aVar.a().iterator();
                while (it.hasNext()) {
                    String subjectId = ((DubsInfo) it.next()).getSubjectId();
                    if (subjectId != null) {
                        arrayList.add(subjectId);
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList.add(aVar.o());
                }
                VideoDetailPlayDao videoDetailPlayDao2 = longVodPlayerView.getVideoDetailPlayDao();
                String strO = aVar.o();
                int iL = aVar.l();
                int iE = aVar.e();
                this.L$0 = longVodPlayerView;
                this.L$1 = aVar;
                this.L$2 = arrayList;
                this.label = 1;
                objL = videoDetailPlayDao2.l(strO, iL, iE, this);
                if (objL == objF) {
                    return objF;
                }
            }
            return Unit.f64096a;
            ArrayList arrayList2 = arrayList;
            VideoDetailPlayBean videoDetailPlayBean2 = (VideoDetailPlayBean) objL;
            boolean rewardPlayed = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardPlayed() : false;
            boolean rewardFree = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardFree() : false;
            longVodPlayerView.isRewardUnlock = videoDetailPlayBean2 != null ? videoDetailPlayBean2.getRewardUnlock() : false;
            ln.c cVar = longVodPlayerView.curPlayStream;
            if (cVar != null) {
                String strO2 = aVar.o();
                String strC = cVar.c();
                int iE2 = aVar.e();
                int iL2 = aVar.l();
                long j10 = longVodPlayerView.playProgress;
                long j11 = longVodPlayerView.totalDuration;
                long jN = aVar.n();
                String strP = aVar.p();
                String strH = cVar.h();
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strC2 = aVar.c();
                String strS = aVar.s();
                String strB = aVar.b();
                Integer numR = aVar.r();
                boolean zG = aVar.g();
                String value = PlayMode.STREAM.getValue();
                long jLongValue = (videoDetailPlayBean2 == null || (lastAdStartTimeStamp = videoDetailPlayBean2.getLastAdStartTimeStamp()) == null) ? 0L : lastAdStartTimeStamp.longValue();
                long jLongValue2 = (videoDetailPlayBean2 == null || (lastAdEndTimeStamp = videoDetailPlayBean2.getLastAdEndTimeStamp()) == null) ? 0L : lastAdEndTimeStamp.longValue();
                boolean z10 = longVodPlayerView.isRewardUnlock;
                String strQ = aVar.q();
                if (strQ == null || strQ.length() == 0) {
                    if (videoDetailPlayBean2 != null) {
                        ops = videoDetailPlayBean2.getOps();
                    } else {
                        str = null;
                    }
                    videoDetailPlayBean = new VideoDetailPlayBean(strO2, strC, iE2, iL2, j10, strP, strC2, strS, strH, jCurrentTimeMillis, null, Boxing.e(j11), Boxing.e(jN), strB, numR, zG, value, null, null, 0L, arrayList2, Boxing.e(jLongValue), Boxing.e(jLongValue2), rewardPlayed, z10, rewardFree, str, 525312, null);
                    if (longVodPlayerView.subSelectId != null) {
                        videoDetailPlayBean.setSubtitleSelectId(longVodPlayerView.subSelectId);
                    }
                    videoDetailPlayDao = longVodPlayerView.getVideoDetailPlayDao();
                    this.L$0 = null;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 2;
                    if (videoDetailPlayDao.p(videoDetailPlayBean, this) == objF) {
                        return objF;
                    }
                    yw.e eVar2 = new yw.e(true, false);
                    FlowEventBus flowEventBus2 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                    String name2 = yw.e.class.getName();
                    Intrinsics.g(name2, "getName(...)");
                    flowEventBus2.postEvent(name2, eVar2, 0L);
                } else {
                    ops = aVar.q();
                }
                str = ops;
                videoDetailPlayBean = new VideoDetailPlayBean(strO2, strC, iE2, iL2, j10, strP, strC2, strS, strH, jCurrentTimeMillis, null, Boxing.e(j11), Boxing.e(jN), strB, numR, zG, value, null, null, 0L, arrayList2, Boxing.e(jLongValue), Boxing.e(jLongValue2), rewardPlayed, z10, rewardFree, str, 525312, null);
                if (longVodPlayerView.subSelectId != null) {
                    videoDetailPlayBean.setSubtitleSelectId(longVodPlayerView.subSelectId);
                }
                videoDetailPlayDao = longVodPlayerView.getVideoDetailPlayDao();
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.label = 2;
                if (videoDetailPlayDao.p(videoDetailPlayBean, this) == objF) {
                    return objF;
                }
                yw.e eVar3 = new yw.e(true, false);
                FlowEventBus flowEventBus3 = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name3 = yw.e.class.getName();
                Intrinsics.g(name3, "getName(...)");
                flowEventBus3.postEvent(name3, eVar3, 0L);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$setDataSource$1", f = "LongVodPlayerView.kt", l = {2304}, m = "invokeSuspend")
    static final class C10491 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final ln.a $bean;
        private Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10491(ln.a aVar, Continuation<? super C10491> continuation) {
            super(2, continuation);
            this.$bean = aVar;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C10491 c10491 = LongVodPlayerView.this.new C10491(this.$bean, continuation);
            c10491.L$0 = obj;
            return c10491;
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                kotlinx.coroutines.n0 n0Var = (kotlinx.coroutines.n0) this.L$0;
                LongVodResolutionHelper longVodResolutionHelper = LongVodPlayerView.this.resolutionHelper;
                ln.a aVar = this.$bean;
                this.L$0 = n0Var;
                this.label = 1;
                obj = longVodResolutionHelper.b(aVar, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            ln.c cVar = (ln.c) obj;
            if (cVar != null) {
                LongVodPlayerView longVodPlayerView = LongVodPlayerView.this;
                ln.a aVar2 = this.$bean;
                longVodPlayerView.z2(longVodPlayerView.isNewPlayer);
                LongVodSubtitleHelper longVodSubtitleHelper = longVodPlayerView.subtitleHelper;
                if (longVodSubtitleHelper != null) {
                    longVodSubtitleHelper.T(aVar2, cVar);
                }
                if (aVar2.w()) {
                    longVodPlayerView.b1(aVar2, cVar);
                }
                longVodPlayerView.curPlayStream = cVar;
                longVodPlayerView.Y1(aVar2, cVar);
                if (longVodPlayerView.isNewPlayer) {
                    longVodPlayerView.setPlayerDataSourceAdPrepare(cVar);
                } else {
                    longVodPlayerView.setPauseViewStatus(true);
                    longVodPlayerView.playerControl.play();
                    LongVodSubtitleHelper longVodSubtitleHelper2 = longVodPlayerView.subtitleHelper;
                    if (longVodSubtitleHelper2 != null) {
                        longVodSubtitleHelper2.e0(true);
                    }
                }
                longVodPlayerView.t2(false, "getDefaultPlayStream() --> 获取到可用分辨率，隐藏提示");
                wf.a.C0922a.v(wf.a.f74274a, LongVodPlayerView.TAG, "setDataSource, reset isNewPlayer", false, 4, null);
                longVodPlayerView.isNewPlayer = true;
            } else {
                LongVodPlayerView longVodPlayerView2 = LongVodPlayerView.this;
                longVodPlayerView2.canNonSubscriberPlay = false;
                longVodPlayerView2.t2(true, "getDefaultPlayStream() --> 没有获取到可用分辨率，显示提示");
            }
            MediaItem mediaItemQ = MusicFloatManager.f42282h.b().q();
            if (mediaItemQ != null) {
                mediaItemQ.setPageName(LongVodPlayerView.this.pageName);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10491) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$setPlayerDataSourceAdPrepare$1", f = "LongVodPlayerView.kt", l = {2396}, m = "invokeSuspend")
    static final class C10501 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        int label;

        C10501(Continuation<? super C10501> continuation) {
            super(2, continuation);
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LongVodPlayerView.this.new C10501(continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            boolean zBooleanValue = true;
            if (i10 == 0) {
                ResultKt.b(obj);
                if (!ij.o.f62115a.g() && !ij.g.f62108a.b()) {
                    ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
                    ln.a aVar = LongVodPlayerView.this.curBean;
                    this.label = 1;
                    obj = resolutionMemberManager.f(aVar, this);
                    if (obj == objF) {
                        return objF;
                    }
                }
                int i11 = com.transsion.player.longvideo.member.r.f46212a.i();
                LongVodPlayerView.this.playerControl.setVipResolution(zBooleanValue, i11);
                wj.h.f74282a.a(LongVodPlayerView.this.getClassTag() + " --> setPlayerDataSourceAdPrepare() --> isVipSubscriber = " + zBooleanValue + " --> vipResolution = " + i11);
                LongVodPlayerView.this.playerControl.prepare();
                LongVodPlayerView.this.playTimeoutHandler.postDelayed(LongVodPlayerView.this.playTimeoutRunnable, LongVodPlayerView.this.getPlayTimeoutStream());
                if (LongVodPlayerView.this.s2() && !nn.a.f67319a.b()) {
                    LongVodPlayerView.this.v0();
                }
                return Unit.f64096a;
            }
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            zBooleanValue = ((Boolean) obj).booleanValue();
            int i12 = com.transsion.player.longvideo.member.r.f46212a.i();
            LongVodPlayerView.this.playerControl.setVipResolution(zBooleanValue, i12);
            wj.h.f74282a.a(LongVodPlayerView.this.getClassTag() + " --> setPlayerDataSourceAdPrepare() --> isVipSubscriber = " + zBooleanValue + " --> vipResolution = " + i12);
            LongVodPlayerView.this.playerControl.prepare();
            LongVodPlayerView.this.playTimeoutHandler.postDelayed(LongVodPlayerView.this.playTimeoutRunnable, LongVodPlayerView.this.getPlayTimeoutStream());
            if (LongVodPlayerView.this.s2()) {
                LongVodPlayerView.this.v0();
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10501) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$showResolutionIntercept$1", f = "LongVodPlayerView.kt", l = {3251}, m = "invokeSuspend")
    static final class C10511 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final ln.b $config;
        int label;
        final LongVodPlayerView this$0;

        public static final class a implements im.a {

            final LongVodPlayerView f46292a;

            final ln.b f46293b;

            public static final class C0615a implements im.c {

                final LongVodPlayerView f46294a;

                final ln.b f46295b;

                C0615a(LongVodPlayerView longVodPlayerView, ln.b bVar) {
                    this.f46294a = longVodPlayerView;
                    this.f46295b = bVar;
                }

                @Override
                public void a() {
                    com.transsion.player.longvideo.member.k.f46204a.a("LongVdPlayerConfigDialog --> MemberGuideCallback{} --> onFailed(开通会员失败，提示做任务)");
                    this.f46294a.onResolutionTipFailedFromDialog(this.f46295b);
                }

                @Override
                public void onSuccess() {
                    com.transsion.player.longvideo.member.k.f46204a.a("LongVdPlayerConfigDialog --> MemberGuideCallback{} --> onSuccess()");
                    this.f46294a.D2(this.f46295b);
                }
            }

            a(LongVodPlayerView longVodPlayerView, ln.b bVar) {
                this.f46292a = longVodPlayerView;
                this.f46293b = bVar;
            }

            @Override
            public void a(MemberCheckResult memberCheckResult) {
                Context context = this.f46292a.getContext();
                AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
                if (appCompatActivity != null) {
                    LongVodPlayerView longVodPlayerView = this.f46292a;
                    ln.b bVar = this.f46293b;
                    im.b bVar2 = (im.b) TheRouter.d(im.b.class, new Object[0]);
                    if (bVar2 != null) {
                        im.b.a.c(bVar2, appCompatActivity, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, new C0615a(longVodPlayerView, bVar), false, null, 24, null);
                    }
                }
            }

            @Override
            public void b(MemberCheckResult memberCheckResult) {
            }

            @Override
            public void c(MemberCheckResult memberCheckResult) {
                im.a.C0761a.g(this, memberCheckResult);
                wj.h.f74282a.a(this.f46292a.getClassTag() + " --> memberCheckResult = " + memberCheckResult);
                this.f46292a.closeResolutionPanel(this.f46293b, memberCheckResult);
            }

            @Override
            public void d(MemberCheckResult memberCheckResult) {
            }

            @Override
            public void e() {
                wj.h.f74282a.a(this.f46292a.getClassTag() + " --> onPassed() --> 会员权益验证通过 -- 切换分辨率播放");
                this.f46292a.D2(this.f46293b);
            }

            @Override
            public void f(MemberCheckResult memberCheckResult) {
                im.a.C0761a.a(this, memberCheckResult);
                wj.h.f74282a.a(this.f46292a.getClassTag() + " --> notImplement() --> 当前类型没有实现");
            }

            @Override
            public void onFail(String errorMsg) {
                Intrinsics.h(errorMsg, "errorMsg");
                im.a.C0761a.b(this, errorMsg);
                wj.h.f74282a.a(this.f46292a.getClassTag() + " --> onFail() --> 加载失败");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C10511(ln.b bVar, LongVodPlayerView longVodPlayerView, Continuation<? super C10511> continuation) {
            super(2, continuation);
            this.$config = bVar;
            this.this$0 = longVodPlayerView;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C10511(this.$config, this.this$0, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            Object objF = IntrinsicsKt.f();
            int i10 = this.label;
            if (i10 == 0) {
                ResultKt.b(obj);
                this.label = 1;
                if (kotlinx.coroutines.u0.a(500L, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            im.b bVar = (im.b) TheRouter.d(im.b.class, new Object[0]);
            if (bVar != null) {
                MemberSceneType memberSceneType = MemberSceneType.SCENE_PREDL;
                com.transsion.player.longvideo.member.r rVar = com.transsion.player.longvideo.member.r.f46212a;
                ln.b bVar2 = this.$config;
                bVar.d(memberSceneType, Boxing.d(rVar.r(bVar2 != null ? bVar2.d() : null)), new a(this.this$0, this.$config));
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((C10511) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongVodPlayerView(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    public final void A0() {
        List listJ;
        ln.c cVar;
        ln.a aVar = this.curBean;
        if ((aVar == null || (listJ = aVar.j()) == null || (cVar = (ln.c) CollectionsKt.k0(listJ)) == null) ? false : cVar.i()) {
            return;
        }
        AppCompatImageView orLongVodIvBg = this.viewBinding.f66589s;
        Intrinsics.g(orLongVodIvBg, "orLongVodIvBg");
        uf.c.g(orLongVodIvBg);
    }

    public static final void A1(LongVodPlayerView longVodPlayerView, ln.b bVar) {
        wj.h.f74282a.a(longVodPlayerView.getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率面板开通会员失败，继续激励场景 --> config = " + bVar);
        Context context = longVodPlayerView.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            longVodPlayerView.w0();
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            resolutionMemberManager.i(supportFragmentManager, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, longVodPlayerView.curBean, longVodPlayerView.pageName, longVodPlayerView.new i(bVar));
        }
    }

    public static final com.transsion.postdetail.ui.dialog.k A2(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (com.transsion.postdetail.ui.dialog.k) new androidx.p009lifecycle.v0((FragmentActivity) context).a(com.transsion.postdetail.ui.dialog.k.class);
    }

    public final void B0() {
        final CustomRoundCornerLayout flResolution = this.viewBinding.f66580j;
        Intrinsics.g(flResolution, "flResolution");
        ValueAnimator valueAnimator = this.resolutionPanelAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(flResolution.getWidth(), 0);
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.setInterpolator(new AccelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LongVodPlayerView.C0(flResolution, valueAnimator2);
            }
        });
        valueAnimatorOfInt.addListener(new c(flResolution, this));
        valueAnimatorOfInt.start();
        this.resolutionPanelAnimator = valueAnimatorOfInt;
    }

    public static final void B1(LongVodPlayerView longVodPlayerView) {
        wj.h.f74282a.a(longVodPlayerView.getClassTag() + " --> onResolutionTipFailedFromMemberTipView() --> 右下角提示开通会员失败，继续激励场景");
        Context context = longVodPlayerView.getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            longVodPlayerView.w0();
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            resolutionMemberManager.i(supportFragmentManager, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, longVodPlayerView.curBean, longVodPlayerView.pageName, longVodPlayerView.new j());
        }
    }

    public final void B2() {
        E0();
        y1();
    }

    public static final void C0(CustomRoundCornerLayout customRoundCornerLayout, ValueAnimator animator) {
        Intrinsics.h(animator, "animator");
        ViewGroup.LayoutParams layoutParams = customRoundCornerLayout.getLayoutParams();
        Object animatedValue = animator.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        customRoundCornerLayout.requestLayout();
    }

    public final void C1() {
        wf.a.C0922a.f(wf.a.f74274a, TAG, " ---> onRewardInterceptShow", false, 4, null);
        this.isRewardInterceptShowing = true;
        this.showToolbarAlways = true;
        hideBottomController(true);
        LinearLayout root = this.viewBinding.f66586p.f66630h.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.g(root);
        ConstraintLayout root2 = this.viewBinding.f66587q.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        uf.c.k(root2);
        i2();
        if (this.playerControl.isPlaying()) {
            this.playerControl.pause();
        }
    }

    public static final UGCVideoDetailPlayDao C2() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).B1();
    }

    private final void D0() {
        if (!this.showToolbarAlways) {
            ConstraintLayout root = this.viewBinding.f66587q.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            root.setVisibility(8);
        }
        kn.a.b bVar = this.playerCallback;
        if (bVar != null) {
            bVar.f(false);
        }
        AppCompatTextView ivLock = this.viewBinding.f66585o.f66608l;
        Intrinsics.g(ivLock, "ivLock");
        ivLock.setVisibility(8);
        ConstraintLayout clBottomControl = this.viewBinding.f66585o.f66600d;
        Intrinsics.g(clBottomControl, "clBottomControl");
        clBottomControl.setVisibility(8);
        ConstraintLayout root2 = this.viewBinding.f66585o.f66599c.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        root2.setVisibility(8);
        Group groupControlPk = this.viewBinding.f66585o.f66604h;
        Intrinsics.g(groupControlPk, "groupControlPk");
        groupControlPk.setVisibility(8);
        AppCompatTextView tvPlayNext = this.viewBinding.f66585o.f66621y;
        Intrinsics.g(tvPlayNext, "tvPlayNext");
        tvPlayNext.setVisibility(8);
        View landGradientTop = this.viewBinding.f66585o.f66612p;
        Intrinsics.g(landGradientTop, "landGradientTop");
        landGradientTop.setVisibility(8);
        View landGradientBottom = this.viewBinding.f66585o.f66611o;
        Intrinsics.g(landGradientBottom, "landGradientBottom");
        landGradientBottom.setVisibility(8);
        View middleGradientTop = this.viewBinding.f66586p.f66633k;
        Intrinsics.g(middleGradientTop, "middleGradientTop");
        middleGradientTop.setVisibility(8);
        View middleGradientBottom = this.viewBinding.f66586p.f66632j;
        Intrinsics.g(middleGradientBottom, "middleGradientBottom");
        middleGradientBottom.setVisibility(8);
        LinearLayout llMiddleBottomController = this.viewBinding.f66586p.f66631i;
        Intrinsics.g(llMiddleBottomController, "llMiddleBottomController");
        llMiddleBottomController.setVisibility(8);
    }

    public final void D1() {
        wf.a.C0922a.f(wf.a.f74274a, TAG, " ---> onRewardUnlock", false, 4, null);
        this.isRewardUnlock = true;
        this.isRewardInterceptShowing = false;
        this.showToolbarAlways = false;
        i2();
    }

    public final void D2(ln.b config) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        getConfigViewModel().c(ln.b.b(config, false, config.d(), null, 5, null));
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new LongVodPlayerView$unLockResolution$1(this, null), 3, null);
    }

    private final void E0() {
        this.isUGCPlay = true;
        this.isUGCPauseShowing = false;
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f66586p.f66624b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        uf.c.g(flUGCAutoPlayGroup);
    }

    public final void E1() {
        ConstraintLayout root = this.viewBinding.f66587q.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        if (root.getVisibility() == 0) {
            wf.a.C0922a.f(wf.a.f74274a, TAG, "onSingleTap hideBottomController ", false, 4, null);
            hideBottomController(true);
        } else {
            wf.a.C0922a.f(wf.a.f74274a, TAG, "onSingleTap showBottomController ", false, 4, null);
            k2(this, false, 1, null);
        }
    }

    private final void E2() {
        com.transsion.baselib.report.k.f42210a.t(this);
        yg.l.f76264a.m(this.netListener);
    }

    private final void F0() {
        if (!getPkStyle()) {
            this.viewBinding.f66585o.f66608l.setText((CharSequence) null);
            this.viewBinding.f66585o.f66620x.setText((CharSequence) null);
            TextView tvPlayScale = this.viewBinding.f66585o.f66622z;
            Intrinsics.g(tvPlayScale, "tvPlayScale");
            uf.c.g(tvPlayScale);
        }
        this.viewBinding.f66585o.A.updateSpeed(com.transsion.baselib.helper.d.f42124a.d(), true);
    }

    private final void F1(ln.b selectedBean) {
        Float fT = StringsKt.t(selectedBean.d());
        if (fT != null) {
            this.playerControl.setSpeed(fT.floatValue());
        }
    }

    public final void F2(boolean videoPlaying) {
        if (q1()) {
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            Context context = getContext();
            FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
            if (fragmentActivity != null && !fragmentActivity.isDestroyed() && !fragmentActivity.isFinishing()) {
                cw.e.a aVar = cw.e.f58665a;
                if (aVar.b().c() && com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_pip_enable", true)) {
                    cw.e eVarB = aVar.b();
                    ViewParent parent = getParent();
                    Result.m453constructorimpl(eVarB.a(fragmentActivity, false, videoPlaying, parent instanceof ViewGroup ? (ViewGroup) parent : null));
                }
            }
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void G0() {
    }

    private final void G1() {
        kn.a.b bVar = this.playerCallback;
        if (bVar != null) {
            bVar.g(this.curBean);
        }
    }

    public final void G2(boolean isSeek, long progress) {
        this.isSeeking = isSeek;
        if (p1()) {
            AppCompatTextView tvCenterProgress = this.viewBinding.f66594x;
            Intrinsics.g(tvCenterProgress, "tvCenterProgress");
            uf.c.g(tvCenterProgress);
            return;
        }
        if (isSeek) {
            this.viewBinding.f66594x.setVisibility(0);
            this.viewBinding.f66594x.setText(Html.fromHtml(Utils.a().getString(R$string.long_vod_progress_tx_style, com.transsion.postdetail.util.m.d(progress), com.transsion.postdetail.util.m.d(this.totalDuration))));
            LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.i0(progress);
            }
            v1(false);
            wf.a.C0922a.f(wf.a.f74274a, TAG, "updateSeekbar loading gone", false, 4, null);
            return;
        }
        LongVodSubtitleHelper longVodSubtitleHelper2 = this.subtitleHelper;
        if (longVodSubtitleHelper2 != null) {
            longVodSubtitleHelper2.Y();
        }
        AppCompatTextView tvCenterProgress2 = this.viewBinding.f66594x;
        Intrinsics.g(tvCenterProgress2, "tvCenterProgress");
        uf.c.g(tvCenterProgress2);
        wf.a.C0922a.f(wf.a.f74274a, TAG, "updateSeekbar loading " + this.isShowLoading, false, 4, null);
        v1(this.isShowLoading);
    }

    private final void H0() {
        if (t1()) {
            com.transsion.player.longvideo.helper.c cVar = new com.transsion.player.longvideo.helper.c(this.viewBinding);
            cVar.a();
            this.adHelper = cVar;
        }
    }

    public static final void H1(CustomRoundCornerLayout customRoundCornerLayout, ValueAnimator animator) {
        Intrinsics.h(animator, "animator");
        ViewGroup.LayoutParams layoutParams = customRoundCornerLayout.getLayoutParams();
        Object animatedValue = animator.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.width = ((Integer) animatedValue).intValue();
        customRoundCornerLayout.requestLayout();
    }

    private final void H2() {
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            List list = this.dubs;
            if (list == null) {
                Intrinsics.y("dubs");
                list = null;
            }
            longVodSubtitleHelper.h0(list);
        }
    }

    public static final Unit I0(LongVodPlayerView longVodPlayerView, boolean z10) {
        longVodPlayerView.isAdShowing = z10;
        if (z10) {
            longVodPlayerView.hideBottomController(true);
            if (longVodPlayerView.playerControl.isPlaying()) {
                longVodPlayerView.playerControl.pause();
            }
        }
        return Unit.f64096a;
    }

    public static final com.transsion.postdetail.util.n I1(final LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
        return new com.transsion.postdetail.util.n((Activity) context, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodPlayerView.J1(this.f46370a, ((Integer) obj).intValue());
            }
        });
    }

    public final void I2(long progress) {
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.i0(progress);
        }
        if (this.totalDuration <= 0) {
            this.totalDuration = this.playerControl.getDuration();
        }
        if (!this.formUserSeek) {
            long j10 = this.totalDuration;
            if (j10 > 0) {
                int i10 = (int) ((progress / j10) * j10);
                if (!this.isSeeking) {
                    long j11 = i10;
                    this.viewBinding.f66585o.f66616t.setProgress(j11);
                    this.viewBinding.f66586p.f66636n.setProgress(j11);
                }
            }
        }
        if (this.totalDuration >= 0) {
            String strD = com.transsion.postdetail.util.m.d(progress);
            String strD2 = com.transsion.postdetail.util.m.d(this.totalDuration);
            this.viewBinding.f66585o.f66618v.setText(strD);
            this.viewBinding.f66585o.f66619w.setText(strD2);
            this.viewBinding.f66586p.f66637o.setText(strD + "/" + strD2);
        }
    }

    private final void J0() {
        o1.f47070b.f(this.viewBinding);
        this.viewBinding.f66586p.f66628f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.K0(this.f46382a, view);
            }
        });
        this.viewBinding.f66593w.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.L0(this.f46300a, view);
            }
        });
        this.viewBinding.f66587q.f66563b.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.M0(this.f46303a, view);
            }
        });
        this.viewBinding.f66586p.f66627e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.N0(this.f46306a, view);
            }
        });
        this.viewBinding.f66585o.f66607k.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.O0(this.f46309a, view);
            }
        });
        this.viewBinding.f66587q.f66566e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.P0(this.f46361a, view);
            }
        });
        this.viewBinding.f66587q.f66567f.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.Q0(this.f46363a, view);
            }
        });
        this.viewBinding.f66585o.f66617u.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.R0(this.f46364a, view);
            }
        });
        this.viewBinding.f66585o.f66621y.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.S0(this.f46367a, view);
            }
        });
        this.viewBinding.f66585o.f66599c.f63150d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.T0(this.f46369a, view);
            }
        });
        this.viewBinding.f66585o.f66599c.f63151e.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.U0(this.f46384a, view);
            }
        });
        this.viewBinding.f66585o.f66599c.f63149c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.V0(this.f46387a, view);
            }
        });
        this.viewBinding.f66585o.f66610n.setOnModelChangeListener(new ImmScaleView.a() {
            @Override
            public final void a(ScaleMode scaleMode, String str) {
                LongVodPlayerView.W0(this.f46390a, scaleMode, str);
            }
        });
        this.viewBinding.f66585o.f66613q.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.X0(this.f46392a, view);
            }
        });
        this.viewBinding.f66587q.f66565d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.Y0(this.f46398a, view);
            }
        });
        this.viewBinding.f66585o.f66608l.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.Z0(this.f46400a, view);
            }
        });
        this.playerControl.setGestureListener(new e(uf.c.f()));
        AppCompatImageView ivFloat = this.viewBinding.f66586p.f66626d;
        Intrinsics.g(ivFloat, "ivFloat");
        ivFloat.setVisibility(r1() ? 0 : 8);
        this.viewBinding.f66586p.f66626d.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.a1(this.f46402a, view);
            }
        });
    }

    public static final Unit J1(LongVodPlayerView longVodPlayerView, int i10) {
        com.transsion.player.longvideo.helper.j jVar;
        if ((i10 == 0 || i10 == 1 || i10 == 3) && (jVar = longVodPlayerView.spaceHelper) != null) {
            jVar.d(longVodPlayerView.curUiType, i10);
        }
        return Unit.f64096a;
    }

    private final void J2(ln.a bean) {
        String strP;
        if (bean.e() > 0) {
            strP = bean.p() + " " + ij.i.b(bean.e(), bean.l(), bean.r()) + ij.i.d(bean.f());
        } else {
            strP = bean.p();
        }
        this.viewBinding.f66587q.f66570i.setText(strP);
        i2();
    }

    public static final void K0(LongVodPlayerView longVodPlayerView, View view) {
        if (longVodPlayerView.canNonSubscriberPlay) {
            longVodPlayerView.r0();
        } else {
            wj.h.f74282a.a("click{ivMiddleScreenChange 横竖屏切换按钮} --> 会员分辨率拦截");
        }
    }

    private final void K1(String skuId, ln.b config) {
        wj.h.f74282a.a(getClassTag() + " --> pay() --> 切换竖屏，支付逻辑 --> skuId = " + skuId + " -- config = " + config);
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(appCompatActivity), null, null, new LongVodPlayerView$pay$1$1(this, appCompatActivity, skuId, config, null), 3, null);
        }
    }

    public static final VideoDetailPlayDao K2() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public static final void L0(LongVodPlayerView longVodPlayerView, View view) {
        if (longVodPlayerView.curUiType == LongVodUiType.LAND) {
            backClick$default(longVodPlayerView, false, 1, null);
        } else {
            longVodPlayerView.r0();
        }
    }

    public static final boolean L1() {
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), PK_NEW_PLAYER_UI_KEY, false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        return value == null || value.length() == 0;
    }

    public final void L2(MotionEvent e10, boolean isDoubleClick) {
        if (com.transsion.baseui.util.c.f42332a.a(this.viewBinding.f66586p.f66627e.getId(), 500L)) {
            return;
        }
        wf.a.f74274a.c(TAG, "videoPause click", true);
        if (p1()) {
            if (yg.l.f76264a.e()) {
                return;
            }
            ToastUtils.r(com.transsion.baseui.R$string.base_network_fail);
            return;
        }
        View orLongVodPlayerBg = this.viewBinding.f66590t;
        Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
        uf.c.g(orLongVodPlayerBg);
        com.transsion.player.longvideo.helper.u uVar = this.mobileDataHelper;
        if (uVar != null) {
            uVar.E();
        }
        if (this.playerControl.isComplete()) {
            if (o1()) {
                return;
            }
            N2();
        } else {
            if (this.playerControl.isPlaying()) {
                x0(e10, isDoubleClick);
                return;
            }
            com.transsion.player.longvideo.helper.c cVar = this.adHelper;
            if (cVar == null || !cVar.b()) {
                if (s1()) {
                    B2();
                } else {
                    this.playerControl.play();
                }
                this.isPressedPause = false;
                setPauseViewStatus(true);
                cw.c.f58664a.a();
            }
        }
    }

    public static final void M0(LongVodPlayerView longVodPlayerView, View view) {
        backClick$default(longVodPlayerView, false, 1, null);
    }

    public static final void M1(LongVodPlayerView longVodPlayerView) {
        gn.e eVar = longVodPlayerView.curTimeoutMediaSource;
        if (eVar != null) {
            longVodPlayerView.playerControl.reset();
            longVodPlayerView.playerControl.stop();
            com.transsion.postdetail.layer.local.c0 c0Var = longVodPlayerView.videoDot;
            if (c0Var != null) {
                c0Var.L(true);
            }
            wf.a.f74274a.c(TAG, "playerTimeout,change 2 software decoder, path = " + eVar.j(), true);
            longVodPlayerView.playerControl.enableHardwareDecoder(false);
            longVodPlayerView.playerControl.setDataSource(eVar);
            longVodPlayerView.playerControl.prepare();
        }
    }

    static void M2(LongVodPlayerView longVodPlayerView, MotionEvent motionEvent, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            motionEvent = null;
        }
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        longVodPlayerView.L2(motionEvent, z10);
    }

    public static final void N0(LongVodPlayerView longVodPlayerView, View view) {
        M2(longVodPlayerView, null, false, 3, null);
    }

    public static final long N1() {
        Long lX;
        ConfigBean configBeanD = cm.f.d(cm.f.f17019c.a(), "sb_lv_play_timeout_dp", false, 2, null);
        String value = configBeanD != null ? configBeanD.getValue() : null;
        if (value == null || value.length() == 0 || (lX = StringsKt.x(value)) == null) {
            return 12000L;
        }
        return lX.longValue();
    }

    private final void N2() {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.o();
        }
        View view = this.replayLayout;
        if (view != null) {
            uf.c.g(view);
        }
        this.playerControl.seekTo(0L);
        this.playerControl.play();
    }

    public static final void O0(LongVodPlayerView longVodPlayerView, View view) {
        hn.c cVar = hn.c.f61413a;
        String str = longVodPlayerView.pageName;
        String str2 = longVodPlayerView.subSelectId;
        ln.a aVar = longVodPlayerView.curBean;
        cVar.a(str, str2, aVar != null ? aVar.q() : null, false);
        M2(longVodPlayerView, null, false, 3, null);
    }

    private final void O1() {
        long jK = this.playProgress;
        long j10 = 0;
        if (jK <= 2000) {
            ln.a aVar = this.curBean;
            jK = aVar != null ? aVar.k() : 0L;
        }
        long j11 = this.totalDuration;
        if (jK >= j11 - ((long) 5000)) {
            wf.a.C0922a.v(wf.a.f74274a, TAG, "prepareSeekTo,记录时长已经是播放完成,重置播放 " + jK + ",<-> " + j11, false, 4, null);
        } else {
            j10 = jK;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        ln.a aVar2 = this.curBean;
        wf.a.C0922a.v(c0922a, TAG, "prepareSeekTo,progress:" + j10 + ", historyProgress:" + (aVar2 != null ? Long.valueOf(aVar2.k()) : null), false, 4, null);
        if (j10 < 1000 || q1()) {
            return;
        }
        c0922a.c(TAG, "prepareSeekTo,progress = " + j10, true);
        this.playerControl.seekTo(j10);
        I2(j10);
        if (this.isReload || this.isMultipleResChangeResolution) {
            return;
        }
        y2(Utils.a().getString(R$string.long_vod_last_played_time) + " " + com.transsion.postdetail.util.m.d(j10));
    }

    private final void O2(ScaleMode scaleMode, String scaleModeName) {
        this.playerControl.setScaleMode(scaleMode);
        this.viewBinding.f66585o.f66622z.setText(scaleModeName);
    }

    public static final void P0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.G1();
    }

    private final void P1() {
        com.transsion.baselib.report.k.f42210a.g(this);
        yg.l.f76264a.l(this.netListener);
    }

    public static final void Q0(LongVodPlayerView longVodPlayerView, View view) {
        Integer numR;
        Context context = longVodPlayerView.getContext();
        String string = null;
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity != null) {
            PlayerSettingDialog playerSettingDialog = new PlayerSettingDialog();
            FragmentManager supportFragmentManager = appCompatActivity.getSupportFragmentManager();
            Intrinsics.g(supportFragmentManager, "getSupportFragmentManager(...)");
            playerSettingDialog.show(supportFragmentManager, "PlayerSettingDialog");
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        ln.a aVar = longVodPlayerView.curBean;
        linkedHashMap.put("subject_id", aVar != null ? aVar.o() : null);
        ln.a aVar2 = longVodPlayerView.curBean;
        linkedHashMap.put("subject_ops", aVar2 != null ? aVar2.q() : null);
        ln.a aVar3 = longVodPlayerView.curBean;
        linkedHashMap.put("ops", aVar3 != null ? aVar3.q() : null);
        ln.a aVar4 = longVodPlayerView.curBean;
        linkedHashMap.put("subject_name", aVar4 != null ? aVar4.p() : null);
        ln.a aVar5 = longVodPlayerView.curBean;
        linkedHashMap.put("title_name", aVar5 != null ? aVar5.t() : null);
        ln.a aVar6 = longVodPlayerView.curBean;
        if (aVar6 != null && (numR = aVar6.r()) != null) {
            string = numR.toString();
        }
        linkedHashMap.put("subject_type", string);
        linkedHashMap.put("module_name", "video_setting");
        String str = longVodPlayerView.pageName;
        if (str != null) {
            qi.h.f69682a.o(str, linkedHashMap);
        }
    }

    private final void Q1() {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            com.transsion.postdetail.util.n orientationEventListener = getOrientationEventListener();
            if (orientationEventListener != null) {
                orientationEventListener.disable();
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void R0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.b2();
    }

    private final void R1() {
        this.isReload = true;
        ln.a aVar = this.curBean;
        if (aVar != null) {
            T1();
            this.playerControl.stop();
            setDataSource(aVar);
        }
    }

    public static final void S0(LongVodPlayerView longVodPlayerView, View view) {
        qi.h hVar = qi.h.f69682a;
        String str = longVodPlayerView.pageName;
        if (str == null) {
            str = "";
        }
        hVar.o(str, longVodPlayerView.getReportNextMap());
        kn.a.b bVar = longVodPlayerView.playerCallback;
        if (bVar != null) {
            bVar.a();
        }
    }

    private final void S1() {
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        List<Fragment> listY0 = ((FragmentActivity) context).getSupportFragmentManager().y0();
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

    public static final void T0(LongVodPlayerView longVodPlayerView, View view) {
        hn.c cVar = hn.c.f61413a;
        String str = longVodPlayerView.pageName;
        String str2 = longVodPlayerView.subSelectId;
        ln.a aVar = longVodPlayerView.curBean;
        cVar.a(str, str2, aVar != null ? aVar.q() : null, true);
        M2(longVodPlayerView, null, false, 3, null);
    }

    public final void T1() {
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
    }

    public static final void U0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.X1(ToolBar.FORWARD);
        longVodPlayerView.p0(true, false);
        longVodPlayerView.hideBottomController(false);
    }

    private final void U1() {
        if (getParent() != null) {
            ViewParent parent = getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(this);
            }
        }
    }

    public static final void V0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.X1(ToolBar.BACKWARD);
        longVodPlayerView.hideBottomController(false);
        longVodPlayerView.p0(false, false);
    }

    private final void V1() {
        h1 h1Var = this.localToastControl;
        if (h1Var != null) {
            h1Var.d();
        }
    }

    public static final void W0(LongVodPlayerView longVodPlayerView, ScaleMode scaleMode, String scaleModeName) {
        Intrinsics.h(scaleMode, "scaleMode");
        Intrinsics.h(scaleModeName, "scaleModeName");
        longVodPlayerView.O2(scaleMode, scaleModeName);
    }

    private final void W1() {
        mn.j jVar = this.viewBinding;
        AppCompatTextView tvPlayNext = jVar.f66585o.f66621y;
        Intrinsics.g(tvPlayNext, "tvPlayNext");
        if (tvPlayNext.getVisibility() == 0) {
            ConstraintLayout root = jVar.f66585o.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            if (root.getVisibility() == 0) {
                qi.h hVar = qi.h.f69682a;
                String str = this.pageName;
                if (str == null) {
                    str = "";
                }
                hVar.z(str, getReportNextMap());
            }
        }
    }

    public static final void X0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.viewBinding.f66585o.f66610n.performClick();
    }

    private final void X1(String type) {
        List listJ;
        ln.c cVar;
        qi.h hVar = qi.h.f69682a;
        String str = this.pageName;
        if (str == null) {
            str = "";
        }
        Pair pair = new Pair("module_name", type);
        ln.a aVar = this.curBean;
        String strC = null;
        Pair pair2 = new Pair("subject_id", aVar != null ? aVar.o() : null);
        ln.a aVar2 = this.curBean;
        Pair pairA = TuplesKt.a("ops", aVar2 != null ? aVar2.q() : null);
        ln.a aVar3 = this.curBean;
        if (aVar3 != null && (listJ = aVar3.j()) != null && (cVar = (ln.c) CollectionsKt.k0(listJ)) != null) {
            strC = cVar.c();
        }
        hVar.o(str, MapsKt.l(pair, pair2, pairA, new Pair("resource_id", strC)));
    }

    public static final void Y0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.n0();
    }

    public final void Y1(ln.a bean, ln.c playStream) {
        DownloadBean downloadBean;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideoBelongToCollection belongToCollection2;
        UGCVideoBelongToCollection belongToCollection3;
        if (bean.d() != null) {
            downloadBean = bean.d();
        } else {
            downloadBean = new DownloadBean(playStream.h(), playStream.c(), bean.p(), "", StringsKt.x(playStream.g()), "", null, null, null, null, 0L, 0, 0, 0, 0L, 0L, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, null, null, null, null, 0L, 0, 0, null, null, 0L, null, null, 0L, 0, 0L, null, 0, null, null, false, false, 0, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, null, null, -64, -1, Settings.DEFAULT_INITIAL_WINDOW_SIZE, null);
            UGCVideo uGCVideoU = bean.u();
            downloadBean.setUgcVideoId(uGCVideoU != null ? uGCVideoU.getUgcVideoId() : null);
            UGCVideo uGCVideoU2 = bean.u();
            downloadBean.setUgcVideoCollectionId((uGCVideoU2 == null || (belongToCollection3 = uGCVideoU2.getBelongToCollection()) == null) ? null : belongToCollection3.getCollectionId());
            UGCVideo uGCVideoU3 = bean.u();
            downloadBean.setUgcVideoName(uGCVideoU3 != null ? uGCVideoU3.getTitle() : null);
            UGCVideo uGCVideoU4 = bean.u();
            downloadBean.setUgcVideoCollectionName((uGCVideoU4 == null || (belongToCollection2 = uGCVideoU4.getBelongToCollection()) == null) ? null : belongToCollection2.getCollectionName());
            UGCVideo uGCVideoU5 = bean.u();
            downloadBean.setUgcVideoPosition((uGCVideoU5 == null || (belongToCollection = uGCVideoU5.getBelongToCollection()) == null) ? null : belongToCollection.getPosition());
            UGCVideo uGCVideoU6 = bean.u();
            downloadBean.setUgcVideoType(uGCVideoU6 != null ? uGCVideoU6.getCategory() : null);
            downloadBean.setSubjectId(bean.o());
            downloadBean.setEp(bean.e());
            downloadBean.setSe(bean.l());
            downloadBean.setOps(bean.q());
            downloadBean.setSubtitleIdType(playStream.d());
        }
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.a();
        }
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
        if (c0Var2 != null) {
            c0Var2.z(downloadBean, bean.h());
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.P(bean.u());
        }
        if (bean.v() == PlayMimeType.DASH) {
            com.transsion.postdetail.layer.local.c0 c0Var4 = this.videoDot;
            if (c0Var4 != null) {
                c0Var4.J("3");
                return;
            }
            return;
        }
        if (bean.v() == PlayMimeType.HLS) {
            com.transsion.postdetail.layer.local.c0 c0Var5 = this.videoDot;
            if (c0Var5 != null) {
                c0Var5.J(bean.w() ? "5" : PrepareException.ERROR_NO_URL);
                return;
            }
            return;
        }
        if (playStream.j()) {
            com.transsion.postdetail.layer.local.c0 c0Var6 = this.videoDot;
            if (c0Var6 != null) {
                c0Var6.J("4");
                return;
            }
            return;
        }
        com.transsion.postdetail.layer.local.c0 c0Var7 = this.videoDot;
        if (c0Var7 != null) {
            c0Var7.J("0");
        }
    }

    public static final void Z0(LongVodPlayerView longVodPlayerView, View view) {
        String strO;
        view.setSelected(!view.isSelected());
        if (view.isSelected()) {
            Context context = longVodPlayerView.getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context).setRequestedOrientation(11);
            longVodPlayerView.hideBottomController(true);
            Intrinsics.e(view);
            uf.c.k(view);
        } else {
            Context context2 = longVodPlayerView.getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            ((Activity) context2).setRequestedOrientation(6);
            longVodPlayerView.j2(true);
        }
        qi.h hVar = qi.h.f69682a;
        String str = longVodPlayerView.pageName;
        String str2 = "";
        if (str == null) {
            str = "";
        }
        Pair pair = new Pair("module_name", "lock");
        ln.a aVar = longVodPlayerView.curBean;
        Pair pair2 = new Pair("ops", aVar != null ? aVar.q() : null);
        ln.a aVar2 = longVodPlayerView.curBean;
        if (aVar2 != null && (strO = aVar2.o()) != null) {
            str2 = strO;
        }
        hVar.o(str, MapsKt.m(pair, pair2, new Pair("subject_id", str2), new Pair(NativeComponentConstants.KEY_COMPONENT_TYPE, view.isSelected() ? "1" : "0")));
        com.transsion.postdetail.layer.local.c0 c0Var = longVodPlayerView.videoDot;
        if (c0Var != null) {
            c0Var.E(view.isSelected());
        }
        longVodPlayerView.playerControl.enableGesture(true ^ view.isSelected());
        if (longVodPlayerView.getPkStyle()) {
            longVodPlayerView.viewBinding.f66585o.f66608l.setText(view.isSelected() ? longVodPlayerView.getContext().getString(com.transsion.baseui.R$string.play_tap_unlock) : longVodPlayerView.getContext().getString(com.transsion.baseui.R$string.play_tap_lock));
        }
    }

    public final void Z1() {
        this.curTimeoutMediaSource = null;
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.L(false);
        }
        this.playTimeoutHandler.removeCallbacks(this.playTimeoutRunnable);
    }

    public static final void a1(LongVodPlayerView longVodPlayerView, View view) {
        kn.a.b bVar = longVodPlayerView.playerCallback;
        if (bVar != null) {
            bVar.c(FloatActionType.ICON);
        }
    }

    private final void a2() {
        if (this.isNewPlayer) {
            wf.a.f74274a.c(TAG, "player resetPlayer", true);
            this.isReload = false;
            this.isFirstSetTracks = true;
            com.transsion.player.longvideo.helper.j jVar = this.spaceHelper;
            if (jVar != null) {
                jVar.c();
            }
            this.playerControl.reset();
            setPauseViewStatus(false);
        }
    }

    public final void b1(ln.a bean, ln.c playStream) {
        if (playStream.e().length() == 0) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, TAG, "initMp4Resolution, resolution = " + playStream.e(), false, 4, null);
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.K(playStream.e() + "P");
        }
        this.viewBinding.f66585o.f66617u.setText(playStream.e() + "P");
        com.transsion.player.longvideo.member.r rVar = com.transsion.player.longvideo.member.r.f46212a;
        x2(com.transsion.player.longvideo.member.r.l(rVar, bean.j(), 0, 2, null), com.transsion.player.longvideo.member.r.c(rVar, bean.j(), 0, 2, null));
        this.resolutionList.clear();
        this.resolutionList.addAll(this.resolutionHelper.f(playStream, bean.j()));
    }

    private final void b2() {
        LongVdPlayerConfigDialog longVdPlayerConfigDialog = new LongVdPlayerConfigDialog();
        longVdPlayerConfigDialog.B0(this.pageName, LongVodPlayerConfigType.BITRATE, this.resolutionList, this.curBean, this);
        longVdPlayerConfigDialog.k0(getContext(), "LongVdPlayerConfigDialog");
    }

    public static void backClick$default(LongVodPlayerView longVodPlayerView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.backClick(z10);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x0121  */
    private final void c1(String tag, ln.a bean) {
        com.transsion.player.orplayer.f fVarS;
        boolean z10;
        String strH;
        if (this.orPlayerView != null) {
            return;
        }
        hn.d dVar = new hn.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 512, 0, false, false, false, false, false, null, 130559, null);
        com.transsion.baselib.helper.d dVar2 = com.transsion.baselib.helper.d.f42124a;
        hn.a aVar = new hn.a(dVar, null, false, false, dVar2.d(), dVar2.c(), 10, null);
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        this.orPlayerView = new ORPlayerView(context, aVar.c() ? RenderType.SURFACE_VIEW : RenderType.TEXTURE_VIEW);
        ln.c cVar = (ln.c) CollectionsKt.k0(bean.j());
        if (cVar == null || (strH = cVar.h()) == null) {
            fVarS = null;
            z10 = true;
        } else {
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, TAG, "initPayer, id：" + ij.k.k(strH).hashCode() + ",", false, 4, null);
            if (q1()) {
                MusicFloatManager.a aVar2 = MusicFloatManager.f42282h;
                fVarS = aVar2.b().s();
                String str = this.fragmentId;
                if (str != null) {
                    aVar2.b().w().add(str);
                }
                wf.a.C0922a.f(c0922a, TAG, "music  mediaSourceId:" + aVar2.b().r(), false, 4, null);
                if (Intrinsics.c(aVar2.b().r(), String.valueOf(ij.k.k(strH).hashCode()))) {
                    wf.a.C0922a.f(c0922a, TAG, "music 是同一个音乐", false, 4, null);
                    z10 = false;
                } else {
                    wf.a.C0922a.f(c0922a, TAG, "music 是不同的音乐", false, 4, null);
                    if (fVarS != null) {
                        fVarS.stop();
                    }
                    if (fVarS != null) {
                        fVarS.reset();
                    }
                    this.playProgress = 0L;
                }
            } else {
                fVarS = null;
            }
            z10 = true;
        }
        com.transsion.player.orplayer.f fVarB = com.transsion.videofloat.manager.a0.f55763a.b(tag == null ? "" : tag);
        boolean z11 = fVarB == null && z10;
        this.isNewPlayer = z11;
        wf.a.C0922a c0922a2 = wf.a.f74274a;
        c0922a2.c(TAG, "initPayer, tag:" + tag + ", isNewPlayer:" + z11, true);
        if (fVarS != null) {
            wf.a.C0922a.f(c0922a2, TAG, "initPayer, 音乐播放器复用", false, 4, null);
            com.transsion.player.ui.longvideo.a aVar3 = this.playerControl;
            ORPlayerView oRPlayerView = this.orPlayerView;
            Intrinsics.e(oRPlayerView);
            aVar3.setExistPlayer(aVar, fVarS, oRPlayerView);
            View orLongVodPlayerBg = this.viewBinding.f66590t;
            Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
            uf.c.g(orLongVodPlayerBg);
            this.playerControl.play();
        } else if (fVarB != null) {
            wf.a.C0922a.r(c0922a2, TAG, new String[]{"initPayer, float播放器复用"}, false, 4, null);
            View orLongVodPlayerBg2 = this.viewBinding.f66590t;
            Intrinsics.g(orLongVodPlayerBg2, "orLongVodPlayerBg");
            uf.c.g(orLongVodPlayerBg2);
            this.isFloatPlaying = true;
            com.transsion.player.ui.longvideo.a aVar4 = this.playerControl;
            ORPlayerView oRPlayerView2 = this.orPlayerView;
            Intrinsics.e(oRPlayerView2);
            aVar4.setExistPlayer(aVar, fVarB, oRPlayerView2);
        } else {
            com.transsion.player.ui.longvideo.a aVar5 = this.playerControl;
            ORPlayerView oRPlayerView3 = this.orPlayerView;
            Intrinsics.e(oRPlayerView3);
            aVar5.initLongVodPlayer(aVar, oRPlayerView3);
        }
        cw.b.C0694b.a(cw.b.f58659a.c(), false, 1, null);
        this.playerControl.addPlayerListener(this.playerListener);
    }

    public static final int c2() {
        return com.blankj.utilcode.util.a0.a(298.0f);
    }

    private final void d1() {
        SecondariesSeekBar seekBarLand = this.viewBinding.f66585o.f66616t;
        Intrinsics.g(seekBarLand, "seekBarLand");
        e1(seekBarLand);
        SecondariesSeekBar seekBarMiddle = this.viewBinding.f66586p.f66636n;
        Intrinsics.g(seekBarMiddle, "seekBarMiddle");
        e1(seekBarMiddle);
    }

    public static final void d2(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.D0();
    }

    public final void e0(boolean isPortrait) {
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = this.curUiRotation;
        boolean z10 = this.isPageResumed;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("旋转to竖屏: ");
        sb2.append(isPortrait);
        sb2.append("，curUiType：");
        sb2.append(longVodUiType);
        sb2.append("，curUiRation: ");
        sb2.append(longVodUiType2);
        sb2.append(", resume:");
        sb2.append(z10);
        if (this.viewBinding.f66585o.f66608l.isSelected()) {
            return;
        }
        LongVodUiType longVodUiType3 = isPortrait ? LongVodUiType.MIDDLE : LongVodUiType.LAND;
        if (!this.isPageResumed || this.curUiRotation == longVodUiType3 || longVodUiType3 == this.curUiType) {
            this.curUiRotation = longVodUiType3;
            return;
        }
        this.curUiRotation = longVodUiType3;
        qi.h.f69682a.r("auto_screen", MapsKt.f(new Pair("orientation", longVodUiType3 == LongVodUiType.LAND ? "land" : "port")));
        if (!isPortrait) {
            r0();
        } else {
            S1();
            backClick(false);
        }
    }

    private final void e1(SecondariesSeekBar seekBarView) {
        seekBarView.setOnSeekBarChangeListener(new f(new Ref.LongRef()));
    }

    private final void e2() {
        kotlinx.coroutines.k.d(this.coroutineScopeIO, null, null, new LongVodPlayerView$saveUGCVideoHistory$1(this, null), 3, null);
    }

    public final void f0(boolean show, boolean autoHide) {
        if (show) {
            j2(autoHide);
        } else {
            hideBottomController(autoHide);
        }
    }

    public final void f1() {
        ln.a aVar = this.curBean;
        if (aVar == null || !aVar.w()) {
            qn.b currentVideoFormat = this.playerControl.getCurrentVideoFormat();
            this.curVideoFormat = currentVideoFormat;
            if (currentVideoFormat != null && currentVideoFormat.c() > 0) {
                this.resolutionHelper.g(String.valueOf(currentVideoFormat.c()));
            }
            wf.a.C0922a.f(wf.a.f74274a, TAG, "onPrepareInitBitrate, curVideoFormat = " + this.curVideoFormat, false, 4, null);
            if (this.curVideoFormat != null && !this.resolutionList.isEmpty()) {
                qn.d dVar = this.dashVideoTracksGroup;
                if (dVar != null) {
                    for (qn.b bVar : dVar.b()) {
                        qn.b bVar2 = this.curVideoFormat;
                        if (Intrinsics.c(bVar2 != null ? bVar2.d() : null, bVar.d())) {
                            this.viewBinding.f66585o.f66617u.setText(bVar.c() + "P");
                            com.transsion.player.longvideo.member.r rVar = com.transsion.player.longvideo.member.r.f46212a;
                            x2(com.transsion.player.longvideo.member.r.o(rVar, dVar.b(), 0, 2, null), com.transsion.player.longvideo.member.r.e(rVar, dVar.b(), 0, 2, null));
                            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
                            if (c0Var == null) {
                                break;
                            }
                            c0Var.K(bVar.c() + "P");
                            break;
                        }
                    }
                }
                for (ln.b bVar3 : this.resolutionList) {
                    String strD = bVar3.d();
                    qn.b bVar4 = this.curVideoFormat;
                    Intrinsics.e(bVar4);
                    if (Intrinsics.c(strD, bVar4.c() + "P")) {
                        bVar3.f(true);
                    }
                }
            }
            wj.h hVar = wj.h.f74282a;
            String classTag = getClassTag();
            qn.b bVar5 = this.curVideoFormat;
            hVar.a(classTag + " --> initStreamResolution() --> 流媒体开始播放 --> curVideoFormat.height = " + (bVar5 != null ? Integer.valueOf(bVar5.c()) : null));
        }
    }

    public static final ScreenRotationHelper f2(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.g(context, "getContext(...)");
        return new ScreenRotationHelper(context, new LongVodPlayerView$screenHelper$2$1(longVodPlayerView), new LongVodPlayerView$screenHelper$2$2(longVodPlayerView));
    }

    public static final void g0(LongVodPlayerView longVodPlayerView, ln.b bVar, String str, Bundle result) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(result, "result");
        String string = result.getString("config_content");
        longVodPlayerView.B0();
        if (string != null) {
            longVodPlayerView.getConfigViewModel().c(ln.b.b(bVar, false, string, null, 5, null));
            Context context = longVodPlayerView.getContext();
            AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
            if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
                return;
            }
            kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new LongVodPlayerView$closeResolutionPanel$1$1(longVodPlayerView, null), 3, null);
        }
    }

    private final void g1(ViewGroup subtitleSyncView) {
        if (!t1()) {
            Group groupControlPk = this.viewBinding.f66585o.f66604h;
            Intrinsics.g(groupControlPk, "groupControlPk");
            uf.c.g(groupControlPk);
            return;
        }
        mn.j jVar = this.viewBinding;
        String str = this.pageName;
        List list = this.dubs;
        if (list == null) {
            Intrinsics.y("dubs");
            list = null;
        }
        LongVodSubtitleHelper longVodSubtitleHelper = new LongVodSubtitleHelper(jVar, str, list, new g(), new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodPlayerView.h1(this.f46379a, (DubsInfo) obj);
            }
        }, false, 32, null);
        longVodSubtitleHelper.j0(com.transsion.baselib.helper.d.f42124a.d());
        longVodSubtitleHelper.f0(subtitleSyncView);
        this.subtitleHelper = longVodSubtitleHelper;
    }

    private final void g2(boolean fullScreen, LongVodUiType curUiType) {
        com.transsion.player.longvideo.helper.u uVar;
        this.longVodPlayerViewAdHelper.n4(curUiType);
        if (curUiType == LongVodUiType.LAND) {
            this.viewBinding.f66587q.f66567f.setVisibility(0);
        } else {
            this.viewBinding.f66587q.f66567f.setVisibility(8);
        }
        if (q1()) {
            this.viewBinding.f66587q.f66567f.setVisibility(8);
        }
        i1();
        com.transsion.player.longvideo.helper.g gVar = this.gameResHelper;
        if (gVar != null) {
            gVar.h(curUiType);
        }
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.W(curUiType);
        }
        com.transsion.player.longvideo.helper.c cVar = this.adHelper;
        if (cVar != null) {
            cVar.c(curUiType);
        }
        i2();
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.k(curUiType == LongVodUiType.MIDDLE ? LocalUiType.MIDDLE : LocalUiType.LAND);
        }
        ViewGroup.LayoutParams layoutParams = this.viewBinding.f66583m.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        com.transsion.postdetail.util.n orientationEventListener = getOrientationEventListener();
        if (orientationEventListener != null) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            int iB = orientationEventListener.b((Activity) context);
            if (orientationEventListener.a() != iB) {
                orientationEventListener.c(iB);
            }
        }
        ViewGroup.LayoutParams layoutParams2 = this.viewBinding.f66594x.getLayoutParams();
        Intrinsics.f(layoutParams2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams2;
        if (fullScreen) {
            bVar.f7375l = 0;
            bVar.I = "0";
            bVar2.f7369i = -1;
            ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin = lj.a.b(80);
        } else {
            bVar.I = "h,16:9";
            bVar.f7375l = -1;
            bVar2.f7369i = this.viewBinding.f66583m.getId();
            ((ViewGroup.MarginLayoutParams) bVar2).bottomMargin = 0;
            this.viewBinding.f66585o.f66608l.setSelected(false);
        }
        ConstraintLayout root = this.viewBinding.f66585o.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        root.setVisibility(fullScreen ? 0 : 8);
        ConstraintLayout root2 = this.viewBinding.f66586p.getRoot();
        Intrinsics.g(root2, "getRoot(...)");
        root2.setVisibility(fullScreen ? 8 : 0);
        Log.e(TAG, "screenUIChange  fullScreen:" + fullScreen + "  rotation:" + getRotation());
        if (fullScreen) {
            if (this.playerViewParent == null) {
                ViewParent parent = getParent();
                this.playerViewParent = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            }
            ViewGroup viewGroup = this.fullscreenContainer;
            if (viewGroup != null) {
                Intrinsics.e(viewGroup);
            } else {
                Context context2 = getContext();
                Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
                viewGroup = (ViewGroup) ((Activity) context2).findViewById(R.id.content);
            }
            U1();
            viewGroup.addView(this, new FrameLayout.LayoutParams(-1, -1));
        } else {
            ViewGroup viewGroup2 = this.playerViewParent;
            if (viewGroup2 != null) {
                U1();
                viewGroup2.addView(this);
            }
        }
        if (s2() && (uVar = this.mobileDataHelper) != null) {
            uVar.C(fullScreen);
        }
        this.viewBinding.f66580j.setVisibility(8);
    }

    public final String getClassTag() {
        String simpleName = LongVodPlayerView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final com.transsion.player.longvideo.ui.dialog.a getConfigViewModel() {
        return (com.transsion.player.longvideo.ui.dialog.a) this.configViewModel.getValue();
    }

    private final com.transsion.player.longvideo.helper.i getLocalVideoLandForwardViewControl() {
        View viewInflate;
        if (this.localVideoLandForwardViewControl == null && (viewInflate = this.viewBinding.f66585o.F.inflate()) != null) {
            mn.c cVarA = mn.c.a(viewInflate);
            Intrinsics.g(cVarA, "bind(...)");
            this.localVideoLandForwardViewControl = new com.transsion.player.longvideo.helper.i(cVarA);
        }
        return this.localVideoLandForwardViewControl;
    }

    private final o1 getLocalVideoMiddleForwardViewControl() {
        View viewInflate;
        if (this.localVideoMiddleForwardViewControl == null && (viewInflate = this.viewBinding.f66586p.f66639q.inflate()) != null) {
            mn.c cVarA = mn.c.a(viewInflate);
            Intrinsics.g(cVarA, "bind(...)");
            this.localVideoMiddleForwardViewControl = new o1(cVarA);
        }
        return this.localVideoMiddleForwardViewControl;
    }

    private final com.transsion.postdetail.util.n getOrientationEventListener() {
        return (com.transsion.postdetail.util.n) this.orientationEventListener.getValue();
    }

    private final int getPendingIntentFlag() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    private final boolean getPkStyle() {
        return ((Boolean) this.pkStyle.getValue()).booleanValue();
    }

    public final long getPlayTimeoutStream() {
        return ((Number) this.playTimeoutStream.getValue()).longValue();
    }

    private final Map<String, String> getReportNextMap() {
        Pair pair = new Pair("module_name", "play_next");
        ln.a aVar = this.curBean;
        Pair pair2 = new Pair("subject_id", aVar != null ? aVar.o() : null);
        ln.a aVar2 = this.curBean;
        return MapsKt.l(pair, pair2, TuplesKt.a("ops", aVar2 != null ? aVar2.q() : null));
    }

    public final int getResolutionPanelTargetWidth() {
        return ((Number) this.resolutionPanelTargetWidth.getValue()).intValue();
    }

    private final ScreenRotationHelper getScreenHelper() {
        return (ScreenRotationHelper) this.screenHelper.getValue();
    }

    private final com.transsion.postdetail.ui.dialog.k getSpeedViewModel() {
        return (com.transsion.postdetail.ui.dialog.k) this.speedViewModel.getValue();
    }

    public final UGCVideoDetailPlayDao getUgcVideoDetailPlayDao() {
        return (UGCVideoDetailPlayDao) this.ugcVideoDetailPlayDao.getValue();
    }

    public final VideoDetailPlayDao getVideoDetailPlayDao() {
        return (VideoDetailPlayDao) this.videoDetailPlayDao.getValue();
    }

    public static final void h0(LongVodPlayerView longVodPlayerView, String str, Bundle bundle) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(bundle, "<unused var>");
        longVodPlayerView.B0();
    }

    public static final Unit h1(LongVodPlayerView longVodPlayerView, DubsInfo it) {
        Intrinsics.h(it, "it");
        Function1 function1 = longVodPlayerView.audioSelectCallback;
        if (function1 != null) {
            function1.invoke(it);
        }
        return Unit.f64096a;
    }

    private final void h2() {
        Map mapE;
        Map mapE2;
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null && (mapE2 = c0Var.e()) != null) {
                mapE2.clear();
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
            if (c0Var2 == null || (mapE = c0Var2.e()) == null) {
                return;
            }
            mapE.putAll(longVodSubtitleHelper.M());
        }
    }

    public static final void i0(LongVodPlayerView longVodPlayerView, ln.b bVar, String str, Bundle result) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(result, "result");
        String string = result.getString("sku_id");
        String string2 = result.getString("config_content");
        if (string2 == null) {
            string2 = "";
        }
        longVodPlayerView.K1(string, ln.b.b(bVar, false, string2, null, 5, null));
    }

    private final void i1() {
        com.transsion.player.longvideo.helper.j jVar;
        View view = this.toastLayout;
        if (view == null) {
            return;
        }
        Intrinsics.e(view);
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = LongVodUiType.LAND;
        int iA = 0;
        ((ViewGroup.MarginLayoutParams) bVar).bottomMargin = longVodUiType == longVodUiType2 ? com.blankj.utilcode.util.a0.a(72.0f) : 0;
        if (this.curUiType == longVodUiType2 && (jVar = this.spaceHelper) != null) {
            iA = jVar.a();
        }
        bVar.setMarginStart(iA);
        View view2 = this.toastLayout;
        Intrinsics.e(view2);
        view2.setLayoutParams(bVar);
    }

    private final void i2() {
        AppCompatTextView vdTitle = this.viewBinding.f66587q.f66570i;
        Intrinsics.g(vdTitle, "vdTitle");
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = LongVodUiType.MIDDLE;
        vdTitle.setVisibility(longVodUiType != longVodUiType2 ? 0 : 8);
        if (this.curUiType != longVodUiType2 || this.isRewardInterceptShowing) {
            AppCompatImageView ivBack = this.viewBinding.f66587q.f66563b;
            Intrinsics.g(ivBack, "ivBack");
            uf.c.k(ivBack);
        } else {
            AppCompatImageView ivBack2 = this.viewBinding.f66587q.f66563b;
            Intrinsics.g(ivBack2, "ivBack");
            uf.c.h(ivBack2);
        }
    }

    public static final void j0(LongVodPlayerView longVodPlayerView, ln.b bVar, String str, Bundle result) {
        Intrinsics.h(str, "<unused var>");
        Intrinsics.h(result, "result");
        String string = result.getString("config_content");
        if (string == null) {
            string = "";
        }
        longVodPlayerView.r2(ln.b.b(bVar, false, string, null, 5, null));
    }

    private final void j1() {
        com.transsion.postdetail.layer.local.c0 c0Var;
        ConstraintLayout root = this.viewBinding.f66585o.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        uf.c.g(root);
        if (this.contentType != LongVodContentType.SUBJECT) {
            AppCompatTextView tvDownloadView = this.viewBinding.f66587q.f66565d;
            Intrinsics.g(tvDownloadView, "tvDownloadView");
            uf.c.k(tvDownloadView);
        }
        this.spaceHelper = new com.transsion.player.longvideo.helper.j(this.viewBinding);
        LiveData liveDataB = getConfigViewModel().b();
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        liveDataB.j((FragmentActivity) context, new l(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodPlayerView.k1(this.f46372a, (ln.b) obj);
            }
        }));
        LiveData liveDataB2 = getSpeedViewModel().b();
        Context context2 = getContext();
        Intrinsics.f(context2, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        liveDataB2.j((FragmentActivity) context2, new l(new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodPlayerView.l1(this.f46373a, (Float) obj);
            }
        }));
        post(new Runnable() {
            @Override
            public final void run() {
                LongVodPlayerView.m1(this.f46375a);
            }
        });
        if (t1() || q1()) {
            this.videoDot = new com.transsion.postdetail.layer.local.c0();
            if (q1() && (c0Var = this.videoDot) != null) {
                c0Var.D("music_play");
            }
        }
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
        if (c0Var2 != null) {
            c0Var2.g();
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.H(this.playerControl);
        }
        if (q1()) {
            this.viewBinding.f66587q.f66567f.setVisibility(8);
        }
    }

    public final void j2(boolean autoHide) {
        if (!this.showToolbarAlways && com.blankj.utilcode.util.c.j()) {
            if (this.viewBinding.f66585o.f66608l.isSelected()) {
                AppCompatTextView ivLock = this.viewBinding.f66585o.f66608l;
                Intrinsics.g(ivLock, "ivLock");
                AppCompatTextView ivLock2 = this.viewBinding.f66585o.f66608l;
                Intrinsics.g(ivLock2, "ivLock");
                ivLock.setVisibility(ivLock2.getVisibility() == 0 ? 8 : 0);
                return;
            }
            AppCompatTextView ivLock3 = this.viewBinding.f66585o.f66608l;
            Intrinsics.g(ivLock3, "ivLock");
            ivLock3.setVisibility(0);
            if (autoHide) {
                hideBottomController(false);
            } else {
                this.handler.removeCallbacks(this.runnable);
            }
            ConstraintLayout clBottomControl = this.viewBinding.f66585o.f66600d;
            Intrinsics.g(clBottomControl, "clBottomControl");
            clBottomControl.setVisibility(0);
            ConstraintLayout root = this.viewBinding.f66585o.f66599c.getRoot();
            Intrinsics.g(root, "getRoot(...)");
            root.setVisibility(0);
            if (getPkStyle() && t1()) {
                Group groupControlPk = this.viewBinding.f66585o.f66604h;
                Intrinsics.g(groupControlPk, "groupControlPk");
                groupControlPk.setVisibility(0);
            }
            ConstraintLayout root2 = this.viewBinding.f66587q.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            root2.setVisibility(0);
            kn.a.b bVar = this.playerCallback;
            if (bVar != null) {
                bVar.f(true);
            }
            View landGradientTop = this.viewBinding.f66585o.f66612p;
            Intrinsics.g(landGradientTop, "landGradientTop");
            landGradientTop.setVisibility(0);
            View landGradientBottom = this.viewBinding.f66585o.f66611o;
            Intrinsics.g(landGradientBottom, "landGradientBottom");
            landGradientBottom.setVisibility(0);
            AppCompatTextView tvPlayNext = this.viewBinding.f66585o.f66621y;
            Intrinsics.g(tvPlayNext, "tvPlayNext");
            tvPlayNext.setVisibility(this.isHasNext ? 0 : 8);
            View middleGradientTop = this.viewBinding.f66586p.f66633k;
            Intrinsics.g(middleGradientTop, "middleGradientTop");
            middleGradientTop.setVisibility(0);
            LinearLayout llMiddleBottomController = this.viewBinding.f66586p.f66631i;
            Intrinsics.g(llMiddleBottomController, "llMiddleBottomController");
            llMiddleBottomController.setVisibility(0);
            View middleGradientBottom = this.viewBinding.f66586p.f66632j;
            Intrinsics.g(middleGradientBottom, "middleGradientBottom");
            middleGradientBottom.setVisibility(0);
            W1();
            View viewFindViewById = findViewById(R.id.message);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        }
    }

    public static final com.transsion.player.longvideo.ui.dialog.a k0(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        return (com.transsion.player.longvideo.ui.dialog.a) new androidx.p009lifecycle.v0((FragmentActivity) context).a(com.transsion.player.longvideo.ui.dialog.a.class);
    }

    public static final Unit k1(LongVodPlayerView longVodPlayerView, ln.b bVar) {
        int i10 = b.f46265a[bVar.c().ordinal()];
        if (i10 == 1) {
            Intrinsics.e(bVar);
            longVodPlayerView.z1(bVar);
        } else {
            if (i10 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            Intrinsics.e(bVar);
            longVodPlayerView.F1(bVar);
        }
        return Unit.f64096a;
    }

    static void k2(LongVodPlayerView longVodPlayerView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.j2(z10);
    }

    private final void l0() {
        com.transsion.player.longvideo.helper.g gVar = new com.transsion.player.longvideo.helper.g();
        gVar.c(this.pageName, this.viewBinding);
        this.gameResHelper = gVar;
        this.mobileDataHelper = new com.transsion.player.longvideo.helper.u(this.viewBinding, new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.m0(this.f46381a);
            }
        });
    }

    public static final Unit l1(LongVodPlayerView longVodPlayerView, Float f10) {
        Intrinsics.e(f10);
        longVodPlayerView.setSpeed(f10.floatValue());
        return Unit.f64096a;
    }

    public final void l2() {
        ln.a aVar = this.curBean;
        if (aVar == null || aVar.c().length() == 0) {
            return;
        }
        ln.c cVar = (ln.c) CollectionsKt.k0(aVar.j());
        boolean zI = cVar != null ? cVar.i() : false;
        wf.a.f74274a.c(TAG, "showCoverBg, isMp3:" + zI, true);
        if (this.pageType != LongVodPageType.TRAILER && !zI) {
            AppCompatImageView orLongVodIvBg = this.viewBinding.f66589s;
            Intrinsics.g(orLongVodIvBg, "orLongVodIvBg");
            uf.c.g(orLongVodIvBg);
            return;
        }
        AppCompatImageView orLongVodIvBg2 = this.viewBinding.f66589s;
        Intrinsics.g(orLongVodIvBg2, "orLongVodIvBg");
        uf.c.k(orLongVodIvBg2);
        ni.f.a aVar2 = ni.f.f67269a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarL = aVar2.m(context).g(aVar.c()).l(aVar.s());
        AppCompatImageView orLongVodIvBg3 = this.viewBinding.f66589s;
        Intrinsics.g(orLongVodIvBg3, "orLongVodIvBg");
        bVarL.d(orLongVodIvBg3);
    }

    public static final Unit m0(LongVodPlayerView longVodPlayerView) {
        Context context = longVodPlayerView.getContext();
        Intrinsics.g(context, "getContext(...)");
        if (!com.transsion.baseui.util.b.a(context)) {
            longVodPlayerView.getScreenHelper().h();
        }
        longVodPlayerView.E0();
        M2(longVodPlayerView, null, false, 3, null);
        return Unit.f64096a;
    }

    public static final void m1(LongVodPlayerView longVodPlayerView) {
        longVodPlayerView.P1();
    }

    public final void m2(boolean isNoNet) {
        TextView textView;
        if (this.errorLayout == null) {
            View viewInflate = this.viewBinding.C.inflate();
            this.errorLayout = viewInflate;
            if (viewInflate != null) {
                final TextView textView2 = (TextView) viewInflate.findViewById(R$id.tv_fail_left_btn);
                Intrinsics.e(textView2);
                textView2.setVisibility(isNoNet ? 0 : 8);
                textView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        LongVodPlayerView.o2(textView2, view);
                    }
                });
                ((TextView) viewInflate.findViewById(R$id.tv_fail_right_btn)).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        LongVodPlayerView.p2(this.f46371a, view);
                    }
                });
                ((ImageView) viewInflate.findViewById(R$id.iv_fail_back)).setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        LongVodPlayerView.q2(this.f46395a, view);
                    }
                });
            }
        }
        View view = this.errorLayout;
        if (view != null && (textView = (TextView) view.findViewById(R$id.tv_fail_title)) != null) {
            textView.setText(Utils.a().getString(isNoNet ? R$string.long_vod_load_failed : com.tn.lib.widget.R$string.error_load_failed));
        }
        z2(false);
        View view2 = this.replayLayout;
        if (view2 != null) {
            uf.c.g(view2);
        }
        if (this.curUiType == LongVodUiType.MIDDLE) {
            setPauseViewStatus(false);
        }
        this.playerControl.pause();
        View view3 = this.errorLayout;
        if (view3 != null) {
            uf.c.k(view3);
        }
    }

    private final void n0() {
        Navigator.x(TheRouter.c("/download/ugc_my_downloads"), getContext(), null, 2, null);
    }

    public final boolean n1() {
        return cw.e.f58665a.b().k() || s1();
    }

    static void n2(LongVodPlayerView longVodPlayerView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.m2(z10);
    }

    public final void o0() {
        if (this.resumeSpeed > 0.0f) {
            u2(false);
            setSpeed(this.resumeSpeed);
            String str = this.pageName;
            long jElapsedRealtime = SystemClock.elapsedRealtime() - this.pressTime;
            ln.a aVar = this.curBean;
            String strO = aVar != null ? aVar.o() : null;
            ln.a aVar2 = this.curBean;
            ij.p.b(str, jElapsedRealtime, strO, aVar2 != null ? aVar2.q() : null, Float.valueOf(this.resumeSpeed));
            this.resumeSpeed = 0.0f;
        }
    }

    private final boolean o1() {
        boolean z10 = this.curUiType == LongVodUiType.LAND && this.viewBinding.f66585o.f66601e.getVisibility() == 0;
        this.isCompletionBlock = z10;
        return z10;
    }

    public static final void o2(TextView textView, View view) {
        try {
            Result.Companion companion = Result.INSTANCE;
            NetworkUtils.v();
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void p0(boolean forward, boolean show) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.p();
        }
        if (show) {
            if (this.curUiType == LongVodUiType.MIDDLE) {
                o1 localVideoMiddleForwardViewControl = getLocalVideoMiddleForwardViewControl();
                if (localVideoMiddleForwardViewControl != null) {
                    localVideoMiddleForwardViewControl.e(forward);
                }
            } else {
                com.transsion.player.longvideo.helper.i localVideoLandForwardViewControl = getLocalVideoLandForwardViewControl();
                if (localVideoLandForwardViewControl != null) {
                    localVideoLandForwardViewControl.d(forward);
                }
            }
        }
        long jI = forward ? RangesKt.i(this.pressSeekProgress + ((long) 10000), this.totalDuration) : RangesKt.f(this.pressSeekProgress - ((long) 10000), 0L);
        this.pressSeekProgress = jI;
        this.playerControl.seekTo(jI);
    }

    public final boolean p1() {
        View view = this.errorLayout;
        return (view == null || view == null || view.getVisibility() != 0) ? false : true;
    }

    public static final void p2(LongVodPlayerView longVodPlayerView, View view) {
        kn.a.b bVar = longVodPlayerView.playerCallback;
        if ((bVar == null || !bVar.b()) && yg.l.f76264a.e()) {
            longVodPlayerView.R1();
        }
    }

    static void q0(LongVodPlayerView longVodPlayerView, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z11 = true;
        }
        longVodPlayerView.p0(z10, z11);
    }

    public final boolean q1() {
        return this.pageType == LongVodPageType.MUSIC;
    }

    public static final void q2(LongVodPlayerView longVodPlayerView, View view) {
        backClick$default(longVodPlayerView, false, 1, null);
    }

    private final void r0() {
        View view;
        if (!this.playerControl.isPlaying() && !this.playerControl.isComplete() && !p1() && !this.isAdShowing && !this.isRewardInterceptShowing) {
            if (s1()) {
                B2();
            } else {
                this.playerControl.play();
            }
            View view2 = this.replayLayout;
            if (view2 != null) {
                Intrinsics.e(view2);
                if (uf.c.i(view2) && (view = this.replayLayout) != null) {
                    uf.c.g(view);
                }
            }
        }
        cw.c.f58664a.a();
        this.curUiType = LongVodUiType.LAND;
        Context context = getContext();
        Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
        FragmentActivity fragmentActivity = (FragmentActivity) context;
        ImmersionBar.with(fragmentActivity).hideBar(BarHide.FLAG_HIDE_BAR).init();
        fragmentActivity.setRequestedOrientation(6);
        this.viewBinding.B.setPadding(0, 0, 0, 0);
        g2(true, this.curUiType);
    }

    private final boolean r1() {
        return (!this.isMultiplePlayer || q1() || this.hideFloat) ? false : true;
    }

    private final void r2(ln.b config) {
        im.b bVar;
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (bVar = (im.b) TheRouter.d(im.b.class, new Object[0])) == null) {
            return;
        }
        im.b.a.c(bVar, appCompatActivity, MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG, new m(config), false, null, 24, null);
    }

    private final Intent s0(ln.c playStream, String pageName) {
        DownloadBean downloadBeanD;
        DownloadBean downloadBeanD2;
        UGCVideo uGCVideoU;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideo uGCVideoU2;
        Intent intent = new Intent();
        int i10 = b.f46266b[this.contentType.ordinal()];
        String ugcVideoId = null;
        if (i10 == 1) {
            intent.putExtra("path", "/playvideo/music_detail");
            ln.a aVar = this.curBean;
            intent.putExtra("id", aVar != null ? aVar.o() : null);
            intent.putExtra("isMusicLikedFragment", this.isMusicLikedFragment);
        } else if (i10 == 2) {
            intent.putExtra("path", "/ugc_video/local_detail");
            ln.a aVar2 = this.curBean;
            intent.putExtra("resource_id", (aVar2 == null || (downloadBeanD2 = aVar2.d()) == null) ? null : downloadBeanD2.getResourceId());
            ln.a aVar3 = this.curBean;
            if (aVar3 != null && (downloadBeanD = aVar3.d()) != null) {
                ugcVideoId = downloadBeanD.getUgcVideoId();
            }
            intent.putExtra("id", ugcVideoId);
            intent.putExtra("isMusicLikedFragment", this.isMusicLikedFragment);
        } else {
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            intent.putExtra("path", "/ugc_video/detail");
            ln.a aVar4 = this.curBean;
            intent.putExtra("id", (aVar4 == null || (uGCVideoU2 = aVar4.u()) == null) ? null : uGCVideoU2.getUgcVideoId());
            ln.a aVar5 = this.curBean;
            if (aVar5 != null && (uGCVideoU = aVar5.u()) != null && (belongToCollection = uGCVideoU.getBelongToCollection()) != null) {
                ugcVideoId = belongToCollection.getCollectionId();
            }
            intent.putExtra("collection_id", ugcVideoId);
            intent.putExtra("isMusicLikedFragment", this.isMusicLikedFragment);
        }
        return intent;
    }

    public final boolean s1() {
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f66586p.f66624b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        return flUGCAutoPlayGroup.getVisibility() == 0;
    }

    public final boolean s2() {
        ln.c cVar;
        com.transsion.player.longvideo.helper.u uVar;
        yg.l lVar = yg.l.f76264a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        boolean z10 = lVar.h(applicationA) && (cVar = this.curPlayStream) != null && cVar.j() && (uVar = this.mobileDataHelper) != null && uVar.v();
        return (z10 && this.contentType == LongVodContentType.UGC_VIDEO_ONLINE) ? !com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false) : z10;
    }

    public final void setPauseViewStatus(boolean playing) {
        this.viewBinding.f66585o.f66607k.setTag(Boolean.valueOf(playing));
        this.viewBinding.f66586p.f66627e.setTag(Boolean.valueOf(playing));
        wf.a.C0922a.f(wf.a.f74274a, TAG, "setPauseViewStatus playing = " + playing, false, 4, null);
        if (playing) {
            this.viewBinding.f66585o.f66607k.setImageResource(R$mipmap.icon_player_pause);
            this.viewBinding.f66585o.f66599c.f63150d.setImageResource(R$drawable.ic_player_pause);
            this.viewBinding.f66586p.f66627e.setImageResource(R$mipmap.icon_player_pause);
        } else {
            this.viewBinding.f66585o.f66607k.setImageResource(R$mipmap.icon_player_play);
            this.viewBinding.f66585o.f66599c.f63150d.setImageResource(R$drawable.ic_player_play);
            this.viewBinding.f66586p.f66627e.setImageResource(R$mipmap.icon_player_play);
        }
    }

    public final void setPlayerDataSourceAdPrepare(ln.c playStream) {
        LinkedHashMap linkedHashMap;
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        this.playingStream = playStream;
        if (playStream.f().length() > 0) {
            linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("cookie", playStream.f());
        } else {
            linkedHashMap = null;
        }
        gn.e eVar = new gn.e(String.valueOf(ij.k.k(playStream.h()).hashCode()), playStream.h(), 0, playStream.b(), t0(playStream), 4, null);
        MusicFloatManager.a aVar = MusicFloatManager.f42282h;
        aVar.b().C(eVar.e());
        aVar.b().B(eVar.h());
        eVar.o(linkedHashMap);
        wf.a.C0922a c0922a = wf.a.f74274a;
        ln.a aVar2 = this.curBean;
        Integer numValueOf = aVar2 != null ? Integer.valueOf(aVar2.l()) : null;
        ln.a aVar3 = this.curBean;
        Integer numValueOf2 = aVar3 != null ? Integer.valueOf(aVar3.e()) : null;
        c0922a.c(TAG, "setPlayerDataSourceAdPrepare,  se:" + numValueOf + " ep:" + numValueOf2 + ", resolution:" + playStream.e() + "，id：" + eVar.e() + ",url:" + playStream.h(), true);
        Z1();
        this.curTimeoutMediaSource = eVar;
        this.playerControl.clearScreen();
        this.playerControl.setDataSource(eVar);
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new C10501(null), 3, null);
    }

    private final MediaItem t0(ln.c playStream) {
        LongVodPageType longVodPageType = this.pageType;
        LongVodPageType longVodPageType2 = LongVodPageType.MUSIC;
        if (longVodPageType != longVodPageType2) {
            return null;
        }
        ln.a aVar = this.curBean;
        String strT = aVar != null ? aVar.t() : null;
        ln.a aVar2 = this.curBean;
        String strO = aVar2 != null ? aVar2.o() : null;
        ln.a aVar3 = this.curBean;
        String strC = aVar3 != null ? aVar3.c() : null;
        PendingIntent pendingIntentU0 = u0(playStream);
        Intent intentS0 = s0(playStream, "media_music_float_notification");
        MusicFloatManager musicFloatManagerB = MusicFloatManager.f42282h.b();
        ln.a aVar4 = this.curBean;
        String strT2 = musicFloatManagerB.t(aVar4 != null ? aVar4.o() : null);
        boolean z10 = this.pageType == longVodPageType2;
        String str = this.pageName;
        ln.a aVar5 = this.curBean;
        return new MediaItem(strT, "", strC, null, null, null, pendingIntentU0, intentS0, strO, strT2, Boolean.valueOf(z10), str, null, aVar5 != null ? aVar5.q() : null, 4152, null);
    }

    private final boolean t1() {
        LongVodPageType longVodPageType = this.pageType;
        return longVodPageType == LongVodPageType.STREAM || longVodPageType == LongVodPageType.LOCAL_VIDEO;
    }

    public final void t2(boolean isShow, String msg) {
        com.transsion.player.longvideo.member.k.f46204a.a(getClassTag() + " --> showNoResolutionTip() --> isShow = " + isShow + " --> msg = " + msg);
        if (!isShow) {
            this.viewBinding.f66588r.setVisibility(8);
            return;
        }
        this.playerControl.pause();
        this.viewBinding.f66588r.showCover(this.curBean, this.pageName);
        this.viewBinding.f66588r.setListener(new n());
    }

    private final PendingIntent u0(ln.c playStream) {
        DownloadBean downloadBeanD;
        DownloadBean downloadBeanD2;
        DownloadBean downloadBeanD3;
        UGCVideo uGCVideoU;
        UGCVideoBelongToCollection belongToCollection;
        UGCVideo uGCVideoU2;
        UGCVideo uGCVideoU3;
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        int i10 = b.f46266b[this.contentType.ordinal()];
        Intent intent = null;
        if (i10 == 1) {
            sb2.append(q1() ? "/playvideo/music_detail" : "/movie/detail");
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("extra_resource_id");
            sb2.append(UrlUtils.EQUAL_MARK);
            sb2.append(playStream.c());
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("subject_type");
            sb2.append(UrlUtils.EQUAL_MARK);
            ln.a aVar2 = this.curBean;
            sb2.append(aVar2 != null ? aVar2.r() : null);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("season");
            sb2.append(UrlUtils.EQUAL_MARK);
            ln.a aVar3 = this.curBean;
            sb2.append(aVar3 != null ? aVar3.l() : 0);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("episode");
            sb2.append(UrlUtils.EQUAL_MARK);
            ln.a aVar4 = this.curBean;
            sb2.append(aVar4 != null ? aVar4.e() : 0);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("id");
            sb2.append(UrlUtils.EQUAL_MARK);
            ln.a aVar5 = this.curBean;
            sb2.append(aVar5 != null ? aVar5.o() : null);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("ops");
            sb2.append(UrlUtils.EQUAL_MARK);
            ln.a aVar6 = this.curBean;
            sb2.append(aVar6 != null ? aVar6.q() : null);
            sb2.append(UrlUtils.AND_MARK);
        } else if (i10 == 2) {
            sb2.append("/ugc_video/local_detail");
            sb2.append("&resource_id=");
            ln.a aVar7 = this.curBean;
            sb2.append((aVar7 == null || (downloadBeanD3 = aVar7.d()) == null) ? null : downloadBeanD3.getResourceId());
            sb2.append("&id=");
            ln.a aVar8 = this.curBean;
            sb2.append((aVar8 == null || (downloadBeanD2 = aVar8.d()) == null) ? null : downloadBeanD2.getUgcVideoId());
            sb2.append("&collection_id=");
            ln.a aVar9 = this.curBean;
            sb2.append((aVar9 == null || (downloadBeanD = aVar9.d()) == null) ? null : downloadBeanD.getUgcVideoCollectionId());
            sb2.append(UrlUtils.AND_MARK);
        } else {
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            sb2.append("/ugc_video/detail");
            sb2.append("&id=");
            ln.a aVar10 = this.curBean;
            sb2.append((aVar10 == null || (uGCVideoU3 = aVar10.u()) == null) ? null : uGCVideoU3.getUgcVideoId());
            sb2.append("&collection_id=");
            ln.a aVar11 = this.curBean;
            sb2.append((aVar11 == null || (uGCVideoU2 = aVar11.u()) == null) ? null : uGCVideoU2.getUgcVideoId());
            sb2.append(UrlUtils.AND_MARK);
            sb2.append("collection_id");
            sb2.append(UrlUtils.EQUAL_MARK);
            ln.a aVar12 = this.curBean;
            sb2.append((aVar12 == null || (uGCVideoU = aVar12.u()) == null || (belongToCollection = uGCVideoU.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionId());
            sb2.append(UrlUtils.AND_MARK);
        }
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(this.pageName);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("is_music_liked_fragment");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(this.isMusicLikedFragment);
        sb2.append(UrlUtils.AND_MARK);
        if (aVar != null) {
            Application applicationA = Utils.a();
            Intrinsics.g(applicationA, "getApp(...)");
            Intent intentA = aVar.a(applicationA);
            if (intentA != null) {
                intentA.addFlags(603979776);
                intentA.setData(Uri.parse(sb2.toString()));
                intent = intentA;
            }
        }
        return PendingIntent.getActivity(Utils.a(), 0, intent, getPendingIntentFlag());
    }

    public final void u1(boolean keepScreenOn) {
        this.viewBinding.getRoot().setKeepScreenOn(keepScreenOn);
    }

    private final void u2(boolean show) {
        if (!show) {
            AppCompatTextView tvPressSpeed = this.viewBinding.f66595y;
            Intrinsics.g(tvPressSpeed, "tvPressSpeed");
            tvPressSpeed.setVisibility(8);
        } else {
            hideBottomController(true);
            D0();
            AppCompatTextView tvPressSpeed2 = this.viewBinding.f66595y;
            Intrinsics.g(tvPressSpeed2, "tvPressSpeed");
            tvPressSpeed2.setVisibility(0);
        }
    }

    public final void v0() {
        wf.a.f74274a.c(TAG, "onPrepare2PlayVideo, is mobile , pause video", true);
        this.isMobilePaused = true;
        w0();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (!com.transsion.baseui.util.b.a(context)) {
            getScreenHelper().l();
        }
        com.transsion.player.longvideo.helper.u uVar = this.mobileDataHelper;
        if (uVar != null) {
            uVar.q();
        }
    }

    private final void v1(boolean vis) {
        ProgressBar progressBar = this.viewBinding.f66585o.f66599c.f63152f;
        Intrinsics.g(progressBar, "progressBar");
        progressBar.setVisibility(vis ? 0 : 8);
        AppCompatImageView ivCenterPause = this.viewBinding.f66585o.f66599c.f63150d;
        Intrinsics.g(ivCenterPause, "ivCenterPause");
        ivCenterPause.setVisibility(!vis ? 0 : 8);
        LinearLayout root = this.viewBinding.f66586p.f66630h.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        root.setVisibility(vis ? 0 : 8);
        if (vis) {
            AppCompatImageView ivCenterPause2 = this.viewBinding.f66585o.f66599c.f63150d;
            Intrinsics.g(ivCenterPause2, "ivCenterPause");
            uf.c.h(ivCenterPause2);
        }
    }

    static void v2(LongVodPlayerView longVodPlayerView, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        longVodPlayerView.u2(z10);
    }

    private final void w0() {
        this.isPressedPause = true;
        wf.a.f74274a.c(TAG, "----handlePause, pause video", true);
        setPauseViewStatus(false);
        this.playerControl.pause();
        z2(false);
        this.longVodPlayerViewAdHelper.U3(true ^ this.isMobilePaused);
    }

    public final void w1() {
        if (!this.playerControl.isPlaying() || this.viewBinding.f66585o.f66608l.isSelected()) {
            return;
        }
        float fD = com.transsion.baselib.helper.d.f42124a.d();
        this.resumeSpeed = fD;
        this.playerControl.setSpeed(fD * 2);
        v2(this, false, 1, null);
        this.pressTime = SystemClock.elapsedRealtime();
        String str = this.pageName;
        ln.a aVar = this.curBean;
        String strO = aVar != null ? aVar.o() : null;
        ln.a aVar2 = this.curBean;
        ij.p.a(str, strO, aVar2 != null ? aVar2.q() : null, Float.valueOf(this.resumeSpeed));
    }

    public static final void w2(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.N2();
    }

    private final void x0(MotionEvent e10, boolean isDoubleClick) {
        LongVodUiType longVodUiType = this.curUiType;
        if ((longVodUiType != LongVodUiType.LAND && longVodUiType != LongVodUiType.MIDDLE) || !isDoubleClick || e10 == null) {
            w0();
            return;
        }
        int iE = com.blankj.utilcode.util.y.e() / 3;
        int rawX = (int) e10.getRawX();
        boolean zF = uf.c.f();
        if (rawX >= 0 && rawX <= iE) {
            q0(this, zF, false, 2, null);
        } else if (rawX > iE * 2) {
            q0(this, !zF, false, 2, null);
        } else {
            w0();
        }
    }

    public static final void x1(LongVodPlayerView longVodPlayerView) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (longVodPlayerView.playerControl.isPlaying()) {
                wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onAdClick resume auto pip", false, 4, null);
                longVodPlayerView.F2(true);
            }
            Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    private final void x2(boolean hasAtLeast720P, Integer target) {
        Object objM453constructorimpl;
        if (!com.transsion.player.longvideo.member.r.f46212a.p()) {
            wj.h.f74282a.a(getClassTag() + " --> showResolutionTip() --> 分辨率提示 开通会员看高清 --> 开关关闭，不展示");
            return;
        }
        if (ij.o.f62115a.g() || ij.g.f62108a.b()) {
            wj.h.f74282a.a(getClassTag() + " --> showResolutionTip() --> 儿童/UGC模式，不展示分辨率会员提示");
            return;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            this.viewBinding.f66585o.f66614r.showResolutionTip(hasAtLeast720P, this.curBean, this.pageName, this, target);
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        if (Result.m456exceptionOrNullimpl(objM453constructorimpl) == null) {
            return;
        }
        wj.h.f74282a.a(getClassTag() + " --> showResolutionTip() --> 出现异常");
    }

    private final boolean y0() {
        if (this.contentType != LongVodContentType.UGC_VIDEO_ONLINE) {
            this.isUGCPauseShowing = false;
            FrameLayout flUGCAutoPlayGroup = this.viewBinding.f66586p.f66624b;
            Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
            uf.c.g(flUGCAutoPlayGroup);
            return false;
        }
        if (this.isUGCPlay || this.isFloatPlaying || com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_UGC_VIDEO_AUTO_PLAY", false) || ij.o.f62115a.i()) {
            this.isUGCPauseShowing = false;
            FrameLayout flUGCAutoPlayGroup2 = this.viewBinding.f66586p.f66624b;
            Intrinsics.g(flUGCAutoPlayGroup2, "flUGCAutoPlayGroup");
            uf.c.g(flUGCAutoPlayGroup2);
            return false;
        }
        this.isUGCPauseShowing = true;
        this.longVodPlayerViewAdHelper.F4(false);
        j2(false);
        FrameLayout flUGCAutoPlayGroup3 = this.viewBinding.f66586p.f66624b;
        Intrinsics.g(flUGCAutoPlayGroup3, "flUGCAutoPlayGroup");
        uf.c.k(flUGCAutoPlayGroup3);
        this.viewBinding.f66586p.f66629g.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                LongVodPlayerView.z0(this.f46377a, view);
            }
        });
        return true;
    }

    public final void y1() {
        View orLongVodPlayerBg = this.viewBinding.f66590t;
        Intrinsics.g(orLongVodPlayerBg, "orLongVodPlayerBg");
        uf.c.g(orLongVodPlayerBg);
        if (y0()) {
            return;
        }
        if (!this.isReload && !this.isMultipleResChangeResolution) {
            String string = Utils.a().getString(R$string.long_vod_analysing_from);
            String[] stringArray = Utils.a().getResources().getStringArray(R$array.long_vod_analysing_array);
            Intrinsics.g(stringArray, "getStringArray(...)");
            y2(string + " [" + ArraysKt.v0(stringArray, Random.INSTANCE) + "]");
        }
        I2(0L);
        O1();
        if (!this.isPageResumed) {
            wf.a.f74274a.c(TAG, "----onPrepare2PlayVideo, pause video", true);
            this.playerControl.pause();
            z2(false);
        } else {
            if (s2() && this.isMobilePaused) {
                wf.a.f74274a.c(TAG, "----onPrepare2PlayVideo, showMobileDataTips pause", true);
                return;
            }
            A0();
            wf.a.f74274a.c(TAG, "onPrepare2PlayVideo, play", true);
            this.playerControl.play();
        }
    }

    public final void y2(String content) {
        if (this.toastLayout == null) {
            this.toastLayout = this.viewBinding.F.inflate();
            i1();
            View view = this.toastLayout;
            Intrinsics.e(view);
            TextView textView = (TextView) view.findViewById(R$id.tv_toast_1);
            View view2 = this.toastLayout;
            Intrinsics.e(view2);
            this.localToastControl = new h1(textView, (TextView) view2.findViewById(R$id.tv_toast_2));
        }
        h1 h1Var = this.localToastControl;
        if (h1Var != null) {
            h1.i(h1Var, content, 0L, 2, null);
        }
    }

    public static final void z0(LongVodPlayerView longVodPlayerView, View view) {
        longVodPlayerView.B2();
    }

    private final void z1(ln.b selectedBean) {
        int i10;
        Iterator it = this.resolutionList.iterator();
        while (true) {
            i10 = 0;
            if (!it.hasNext()) {
                break;
            }
            ln.b bVar = (ln.b) it.next();
            if (bVar.e()) {
                bVar.f(false);
                break;
            }
        }
        int i11 = 0;
        for (ln.b bVar2 : this.resolutionList) {
            int i12 = i11 + 1;
            if (Intrinsics.c(selectedBean.d(), bVar2.d())) {
                bVar2.f(true);
                this.viewBinding.f66585o.f66617u.setText(bVar2.d());
                i10 = i11;
                break;
            }
            i11 = i12;
        }
        wf.a.f74274a.c(TAG, "onResolutionChange, content = " + selectedBean.d() + ", selectedIndex = " + i10, true);
        ln.a aVar = this.curBean;
        if (aVar != null) {
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null) {
                c0Var.K(selectedBean.d());
            }
            if (!aVar.w()) {
                qn.d dVar = this.dashVideoTracksGroup;
                if (dVar != null) {
                    this.playerControl.changeTrackSelection(dVar, i10);
                    return;
                }
                return;
            }
            ln.c cVarE = this.resolutionHelper.e(aVar, selectedBean);
            if (cVarE != null) {
                this.resolutionHelper.g(cVarE.e());
                ln.a aVar2 = this.curBean;
                if (aVar2 != null) {
                    aVar2.y(this.playerControl.getCurrentPosition());
                }
                this.isMultipleResChangeResolution = true;
                a2();
                setPlayerDataSourceAdPrepare(cVarE);
            }
        }
    }

    public final void z2(boolean show) {
        if (this.isShowLoading == show) {
            return;
        }
        this.isShowLoading = show;
        if (!show) {
            wf.a.C0922a.f(wf.a.f74274a, TAG, "showVideoLoading gone", false, 4, null);
            v1(false);
        } else {
            if (this.isSeeking) {
                return;
            }
            T1();
            v1(true);
            wf.a.C0922a.f(wf.a.f74274a, TAG, "showVideoLoading visible", false, 4, null);
        }
    }

    public final void backClick(boolean needFinish) {
        LongVodUiType longVodUiType = this.curUiType;
        LongVodUiType longVodUiType2 = LongVodUiType.MIDDLE;
        if (longVodUiType == longVodUiType2) {
            if (needFinish) {
                kn.a.b bVar = this.playerCallback;
                if (bVar != null ? bVar.c(FloatActionType.BACK) : false) {
                    return;
                }
                Context context = getContext();
                Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
                ((Activity) context).finish();
                return;
            }
            return;
        }
        if (longVodUiType == LongVodUiType.LAND) {
            Context context2 = getContext();
            Intrinsics.f(context2, "null cannot be cast to non-null type android.app.Activity");
            Activity activity = (Activity) context2;
            ImmersionBar.with(activity).hideBar(BarHide.FLAG_SHOW_BAR).init();
            activity.setRequestedOrientation(1);
        }
        this.viewBinding.B.setPadding(0, 0, 0, 0);
        this.curUiType = longVodUiType2;
        g2(false, longVodUiType2);
    }

    public final void closeResolutionPanel(final ln.b config, MemberCheckResult memberCheckResult) {
        Subject subjectM;
        Intrinsics.h(config, "config");
        Context context = getContext();
        String genre = null;
        FragmentActivity fragmentActivity = context instanceof FragmentActivity ? (FragmentActivity) context : null;
        if (fragmentActivity == null) {
            return;
        }
        CustomRoundCornerLayout flResolution = this.viewBinding.f66580j;
        Intrinsics.g(flResolution, "flResolution");
        openResolutionPanel();
        fragmentActivity.getSupportFragmentManager().G1("resolution_unlock_success", fragmentActivity, new androidx.fragment.app.t() {
            @Override
            public final void a(String str, Bundle bundle) {
                LongVodPlayerView.g0(this.f46388a, config, str, bundle);
            }
        });
        fragmentActivity.getSupportFragmentManager().G1("resolution_unlock_dismiss", fragmentActivity, new androidx.fragment.app.t() {
            @Override
            public final void a(String str, Bundle bundle) {
                LongVodPlayerView.h0(this.f46391a, str, bundle);
            }
        });
        fragmentActivity.getSupportFragmentManager().G1("resolution_pay", fragmentActivity, new androidx.fragment.app.t() {
            @Override
            public final void a(String str, Bundle bundle) {
                LongVodPlayerView.i0(this.f46393a, config, str, bundle);
            }
        });
        fragmentActivity.getSupportFragmentManager().G1("resolution_member", fragmentActivity, new androidx.fragment.app.t() {
            @Override
            public final void a(String str, Bundle bundle) {
                LongVodPlayerView.j0(this.f46396a, config, str, bundle);
            }
        });
        ResolutionUnlockFragment resolutionUnlockFragmentA = ResolutionUnlockFragment.INSTANCE.a(config);
        ln.a aVar = this.curBean;
        String str = this.pageName;
        if (aVar != null && (subjectM = aVar.m()) != null) {
            genre = subjectM.getGenre();
        }
        resolutionUnlockFragmentA.m0(aVar, str, genre, memberCheckResult);
        fragmentActivity.getSupportFragmentManager().p().t(flResolution.getId(), resolutionUnlockFragmentA, "ResolutionUnlockFragment").j();
    }

    @Override
    public long currentPosition() {
        return this.playerControl.getCurrentPosition();
    }

    @Override
    public void exitFullScreen() {
        if (this.curUiType != LongVodUiType.MIDDLE) {
            if (this.viewBinding.f66585o.f66608l.isSelected()) {
                this.viewBinding.f66585o.f66608l.performClick();
            }
            backClick(false);
        }
    }

    public void floatBack2ExitPage(com.transsion.player.orplayer.f orPlayer, ORPlayerView playerView) {
        Intrinsics.h(orPlayer, "orPlayer");
        Intrinsics.h(playerView, "playerView");
    }

    public final LongVodPlayerViewAdHelper getLongVodPlayerViewAdHelper() {
        return this.longVodPlayerViewAdHelper;
    }

    @Override
    public com.transsion.player.orplayer.f getPlayer() {
        return this.playerControl.getOrPlayer();
    }

    @Override
    public ORPlayerView getOrPlayerView() {
        return this.orPlayerView;
    }

    @Override
    public ln.c getPlayingStream() {
        return this.playingStream;
    }

    @Override
    public SimpleSubtitleView getSubtitleView() {
        return this.viewBinding.A;
    }

    @Override
    public ViewGroup getSubtitleViewGroup() {
        return this.viewBinding.f66582l;
    }

    @Override
    public void hasNextEpisode(boolean hasNext) {
        this.isHasNext = hasNext;
        ConstraintLayout clBottomControl = this.viewBinding.f66585o.f66600d;
        Intrinsics.g(clBottomControl, "clBottomControl");
        if (clBottomControl.getVisibility() == 0) {
            AppCompatTextView tvPlayNext = this.viewBinding.f66585o.f66621y;
            Intrinsics.g(tvPlayNext, "tvPlayNext");
            tvPlayNext.setVisibility(this.isHasNext ? 0 : 8);
            W1();
        }
    }

    @Override
    public void hideBottomController(boolean fastHide) {
        if (com.blankj.utilcode.util.c.j()) {
            if (fastHide) {
                D0();
            } else if (this.playerControl.isPlaying()) {
                this.handler.removeCallbacks(this.runnable);
                this.handler.postDelayed(this.runnable, 3000L);
            }
        }
    }

    @Override
    public void init(String pageName, LongVodPageType pageType, String tag, FrameLayout fullscreenContainer, ViewGroup subtitleSyncView, List<DubsInfo> dubs, LongVodContentType contentType) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(pageType, "pageType");
        Intrinsics.h(dubs, "dubs");
        Intrinsics.h(contentType, "contentType");
        Function0 function0J = on.e0.f67859a.j();
        boolean z10 = false;
        if (function0J != null && ((Boolean) function0J.invoke()).booleanValue()) {
            z10 = true;
        }
        this.isMultiplePlayer = z10;
        this.contentType = contentType;
        this.pageName = pageName;
        this.pageType = pageType;
        this.fullscreenContainer = fullscreenContainer;
        this.dubs = dubs;
        this.playerTag = tag;
        wf.a.C0922a.f(wf.a.f74274a, TAG, "init,pageName:" + pageName + ", pageType:" + pageType + " ", false, 4, null);
        j1();
        F0();
        d1();
        H0();
        g1(subtitleSyncView);
        J0();
        com.transsion.postdetail.util.n orientationEventListener = getOrientationEventListener();
        if (orientationEventListener != null) {
            orientationEventListener.enable();
        }
        G0();
        com.transsion.ad.strategy.b.f41175a.c(this);
        com.transsion.mbwidget.d.f44872a.q(new d());
    }

    public final void initAdHelper(String genre) {
        this.longVodPlayerViewAdHelper.V3(this.pageName, this.viewBinding, genre, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return LongVodPlayerView.I0(this.f46308a, ((Boolean) obj).booleanValue());
            }
        });
        this.longVodPlayerViewAdHelper.D4(this);
    }

    public boolean getIsPressedPause() {
        return this.isPressedPause;
    }

    @Override
    public void onAdClick(AdPlans adPlan) {
        wf.a.C0922a.f(wf.a.f74274a, "VideoFloat-pip", "onAdClick stop auto pip", false, 4, null);
        F2(false);
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                LongVodPlayerView.x1(this.f46365a);
            }
        }, 3000L);
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (com.transsion.baseui.util.b.a(context)) {
            return;
        }
        getScreenHelper().h();
    }

    @Override
    public boolean onBackPressed() {
        if (this.curUiType != LongVodUiType.MIDDLE) {
            backClick$default(this, false, 1, null);
            return true;
        }
        kn.a.b bVar = this.playerCallback;
        if (bVar != null ? bVar.c(FloatActionType.BACK) : false) {
            return false;
        }
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null) {
            return false;
        }
        activity.finish();
        return false;
    }

    @Override
    public void onBackgroundStatusChange(boolean isBackground) {
        if (isBackground) {
            wf.a.f74274a.c(TAG, "app退至后台 上报埋点", true);
            if (this.playerControl.isPlaying()) {
                this.isPageResumed = false;
                if (!q1()) {
                    this.playerControl.pause();
                }
                Q1();
            }
            h2();
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null) {
                c0Var.b(true);
            }
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        if (com.transsion.baseui.util.b.a(context)) {
            return;
        }
        getScreenHelper().l();
    }

    @Override
    public void onHandlePause() {
        wf.a.f74274a.c(TAG, "onHandlePause", true);
        this.isPageResumed = false;
        this.isPressedPause = true;
        if (!q1()) {
            this.playerControl.pause();
        }
        Q1();
    }

    @Override
    public void onHandlePlay() {
        wf.a.f74274a.c(TAG, "onHandlePlay", true);
        this.isPageResumed = true;
        if (this.isMobilePaused) {
            return;
        }
        M2(this, null, false, 3, null);
    }

    @Override
    public void onPageDestroy() {
        this.isFirstSetTracks = true;
        h2();
        wf.a.f74274a.c(TAG, "页面关闭 上报埋点", true);
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
        }
        this.playerControl.removePlayerListener(this.playerListener);
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.R();
        }
        E2();
        Z1();
        com.transsion.ad.strategy.b.f41175a.m(this);
        com.transsion.mbwidget.d.f44872a.q(null);
        this.longVodPlayerViewAdHelper.E3();
        this.viewBinding.f66585o.f66614r.destroy();
    }

    @Override
    public void onPipModeChanged(boolean isInPipMode) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.C(isInPipMode);
        }
    }

    @Deprecated
    public final void onResolutionTipFailedFromDialog(final ln.b config) {
        Intrinsics.h(config, "config");
        if (ij.o.f62115a.g() || ij.g.f62108a.b()) {
            return;
        }
        if (!PSActivateManager.f41122a.d()) {
            wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率面板 开通会员失败 后续逻辑 --> 没有激活广告，直接返回", false, 2, null);
            return;
        }
        if (!mw.a.f66724a.k(MemberSource.SOURCE_STREAM_RESOLUTION_DIALOG)) {
            backClick$default(this, false, 1, null);
            wj.h.f74282a.a("LongVdPlayerConfigDialog --> 横竖屏切换完成");
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LongVodPlayerView.A1(this.f46385a, config);
                }
            }, 500L);
        } else {
            wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率 --> 没有开启，直接返回", false, 2, null);
        }
    }

    public final void onResolutionTipFailedFromMemberTipView() {
        if (ij.o.f62115a.g() || ij.g.f62108a.b()) {
            return;
        }
        if (!PSActivateManager.f41122a.d()) {
            wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 分辨率面板 开通会员失败 后续逻辑 --> 没有激活广告，直接返回", false, 2, null);
            return;
        }
        if (!mw.a.f66724a.k(MemberSource.SOURCE_STREAM_RESOLUTION_TIP)) {
            backClick$default(this, false, 1, null);
            wj.h.f74282a.a("LongVdPlayerConfigDialog --> 横竖屏切换完成");
            postDelayed(new Runnable() {
                @Override
                public final void run() {
                    LongVodPlayerView.B1(this.f46383a);
                }
            }, 500L);
        } else {
            wf.a.C0922a.g(wf.a.f74274a, getClassTag() + " --> onResolutionTipFailedFromDialog() --> 右下角 --> 没有开启，直接返回", false, 2, null);
        }
    }

    @Override
    public void onSaveHistory() {
        if (this.pageType != LongVodPageType.TRAILER && this.playProgress > 0) {
            ln.a aVar = this.curBean;
            LongVodContentType longVodContentType = this.contentType;
            if (longVodContentType == LongVodContentType.UGC_VIDEO_ONLINE || longVodContentType == LongVodContentType.UGC_VIDEO_LOCAL) {
                e2();
            } else {
                kotlinx.coroutines.k.d(this.coroutineScopeIO, null, null, new AnonymousClass1(aVar, this, null), 3, null);
            }
        }
    }

    @Override
    public void onViewPause() {
        wf.a.f74274a.c(TAG, "onViewPause", true);
        this.isPageResumed = false;
        if (!q1()) {
            this.playerControl.pause();
        }
        Q1();
        this.longVodPlayerViewAdHelper.p4();
    }

    @Override
    public void onViewResume() {
        if (!this.canNonSubscriberPlay) {
            wj.h.f74282a.a(getClassTag() + " --> onViewResume() --> 会员分辨率需求拦截播放");
            return;
        }
        wf.a.f74274a.c(TAG, "onViewResume", true);
        this.isPageResumed = true;
        com.transsion.postdetail.util.n orientationEventListener = getOrientationEventListener();
        if (orientationEventListener != null) {
            orientationEventListener.enable();
        }
        if (!this.isPressedPause && yg.l.f76264a.e() && !cw.c.f58664a.d() && !this.isAdShowing && !this.isRewardInterceptShowing) {
            FrameLayout flUGCAutoPlayGroup = this.viewBinding.f66586p.f66624b;
            Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
            if (flUGCAutoPlayGroup.getVisibility() != 0) {
                this.playerControl.play();
            }
        }
        this.longVodPlayerViewAdHelper.q4();
    }

    public final void openResolutionPanel() {
        final CustomRoundCornerLayout flResolution = this.viewBinding.f66580j;
        Intrinsics.g(flResolution, "flResolution");
        ValueAnimator valueAnimator = this.resolutionPanelAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        flResolution.getLayoutParams().width = 0;
        flResolution.requestLayout();
        flResolution.setVisibility(0);
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(0, getResolutionPanelTargetWidth());
        valueAnimatorOfInt.setDuration(500L);
        valueAnimatorOfInt.setInterpolator(new DecelerateInterpolator());
        valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                LongVodPlayerView.H1(flResolution, valueAnimator2);
            }
        });
        valueAnimatorOfInt.start();
        this.resolutionPanelAnimator = valueAnimatorOfInt;
    }

    @Override
    public void release() {
        this.isPrepared = false;
        if (q1()) {
            wf.a.f74274a.c(TAG, "music release clearSurfaceOnly", true);
            this.playerControl.clearSurfaceOnly();
            return;
        }
        wf.a.C0922a c0922a = wf.a.f74274a;
        c0922a.c(TAG, "release player", true);
        if (com.transsion.videofloat.manager.a0.f55763a.c(getPlayer())) {
            c0922a.c(TAG, "播放器在缓存中，后续要用到，不能release", true);
            return;
        }
        com.transsion.player.ui.longvideo.a aVar = this.playerControl;
        ln.c cVar = this.playingStream;
        String strH = cVar != null ? cVar.h() : null;
        aVar.release(String.valueOf(strH != null ? strH.hashCode() : 0));
    }

    @Override
    public void removeNoNetError() {
        T1();
    }

    @Override
    public void replay() {
        N2();
    }

    @Override
    public void reset() {
        if (this.isNewPlayer) {
            wf.a.f74274a.c(TAG, "player reset", true);
            this.isReload = false;
            this.isPrepared = false;
            this.isFirstSetTracks = true;
            LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
            if (longVodSubtitleHelper != null) {
                longVodSubtitleHelper.Z();
            }
            com.transsion.player.longvideo.helper.j jVar = this.spaceHelper;
            if (jVar != null) {
                jVar.c();
            }
            this.playerControl.reset();
            Z1();
            I2(0L);
            setPauseViewStatus(false);
        }
    }

    public final void setAudioSelectCallback(Function1<? super DubsInfo, Unit> callback) {
        this.audioSelectCallback = callback;
    }

    @Override
    public void setCallback(kn.a.b callback) {
        Intrinsics.h(callback, "callback");
        this.playerCallback = callback;
        com.transsion.player.longvideo.helper.g gVar = this.gameResHelper;
        if (gVar != null) {
            gVar.d(callback);
        }
    }

    @Override
    public void setDataSource(ln.a bean) {
        String strO;
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        String strO2;
        Intrinsics.h(bean, "bean");
        this.isMobilePaused = false;
        this.isPrepared = false;
        this.playProgress = 0L;
        com.transsion.player.longvideo.helper.u uVar = this.mobileDataHelper;
        if (uVar != null) {
            uVar.E();
        }
        this.isRewardInterceptShowing = false;
        this.longVodPlayerViewAdHelper.C4(this.contentType, bean);
        I2(0L);
        this.canNonSubscriberPlay = true;
        wj.h.f74282a.a(getClassTag() + " --> setDataSource() --> 初始化数据 --> 默认所有的视频都可以看 --> canNonSubscriberPlay = true");
        c1(this.playerTag, bean);
        this.dubs = bean.a();
        H2();
        wf.a.C0922a.f(wf.a.f74274a, TAG, "setDataSource,  isNewPlayer：" + this.isNewPlayer, false, 4, null);
        onSaveHistory();
        if (this.curBean != null) {
            h2();
            com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
            if (c0Var != null) {
                com.transsion.postdetail.layer.local.c0.c(c0Var, false, 1, null);
            }
            com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
            if (c0Var2 != null) {
                c0Var2.g();
            }
        }
        this.isFirstSetTracks = true;
        this.curBean = bean;
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.I(bean.i());
        }
        com.transsion.postdetail.layer.local.c0 c0Var4 = this.videoDot;
        if (c0Var4 != null) {
            c0Var4.F(this.isMusicLikedFragment);
        }
        String strI = bean.i();
        this.pageName = strI;
        ImmScaleView immScaleView = this.viewBinding.f66585o.f66610n;
        ln.a aVar = this.curBean;
        String str = "";
        if (aVar == null || (strO = aVar.o()) == null) {
            strO = "";
        }
        immScaleView.setPageParams(strI, strO);
        ImmSpeedView immSpeedView = this.viewBinding.f66585o.A;
        String str2 = this.pageName;
        ln.a aVar2 = this.curBean;
        if (aVar2 != null && (strO2 = aVar2.o()) != null) {
            str = strO2;
        }
        immSpeedView.setPageParams(str2, str);
        ImmScaleView immScaleView2 = this.viewBinding.f66585o.f66610n;
        ln.a aVar3 = this.curBean;
        immScaleView2.setOps(aVar3 != null ? aVar3.q() : null);
        ImmSpeedView immSpeedView2 = this.viewBinding.f66585o.A;
        ln.a aVar4 = this.curBean;
        immSpeedView2.setOps(aVar4 != null ? aVar4.q() : null);
        J2(bean);
        if (this.isNewPlayer) {
            l2();
        }
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new C10491(bean, null), 3, null);
    }

    public final void setFeedBackVisible(boolean visible) {
        AppCompatTextView tvFeedback = this.viewBinding.f66587q.f66566e;
        Intrinsics.g(tvFeedback, "tvFeedback");
        uf.c.j(tvFeedback, visible);
    }

    @Override
    public void setFloatIsShow(boolean show) {
        this.isFloatShow = show;
    }

    public void setFragmentId(String fragmentId) {
        Intrinsics.h(fragmentId, "fragmentId");
        this.fragmentId = fragmentId;
    }

    public final void setLongVodPlayerViewAdHelper(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
        Intrinsics.h(longVodPlayerViewAdHelper, "<set-?>");
        this.longVodPlayerViewAdHelper = longVodPlayerViewAdHelper;
    }

    public final void setMusicLikedFragment(boolean from) {
        this.isMusicLikedFragment = from;
    }

    public void setSpeed(float speed) {
        this.playerControl.setSpeed(speed);
        ImmSpeedView.updateSpeed$default(this.viewBinding.f66585o.A, speed, false, 2, null);
        LongVodSubtitleHelper longVodSubtitleHelper = this.subtitleHelper;
        if (longVodSubtitleHelper != null) {
            longVodSubtitleHelper.j0(speed);
        }
    }

    @Override
    public void showNoNetError() {
        n2(this, false, 1, null);
    }

    @Override
    public void showReplay() {
        if (p1()) {
            return;
        }
        if (this.curUiType == LongVodUiType.MIDDLE) {
            hideBottomController(true);
        } else {
            j2(false);
        }
        setPauseViewStatus(false);
        V1();
        if (this.replayLayout == null) {
            this.replayLayout = this.viewBinding.E.inflate();
        }
        View view = this.replayLayout;
        if (view != null) {
            uf.c.k(view);
        }
        View view2 = this.replayLayout;
        if (view2 != null) {
            if (this.curUiType == LongVodUiType.LAND) {
                this.isCompletionBlock = false;
            }
            ((TextView) view2.findViewById(R$id.tv_replay)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view3) {
                    LongVodPlayerView.w2(this.f46380a, view3);
                }
            });
        }
    }

    public final void showResolutionIntercept(ln.b config) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        Intrinsics.h(config, "config");
        Context context = getContext();
        AppCompatActivity appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null || (lifecycleCoroutineScopeA = androidx.p009lifecycle.v.a(appCompatActivity)) == null) {
            return;
        }
        kotlinx.coroutines.k.d(lifecycleCoroutineScopeA, null, null, new C10511(config, this, null), 3, null);
    }

    @Override
    public void ugcAutoPause2PlayVideo() {
        FrameLayout flUGCAutoPlayGroup = this.viewBinding.f66586p.f66624b;
        Intrinsics.g(flUGCAutoPlayGroup, "flUGCAutoPlayGroup");
        if (flUGCAutoPlayGroup.getVisibility() == 0) {
            FrameLayout flUGCAutoPlayGroup2 = this.viewBinding.f66586p.f66624b;
            Intrinsics.g(flUGCAutoPlayGroup2, "flUGCAutoPlayGroup");
            uf.c.g(flUGCAutoPlayGroup2);
            this.playerControl.play();
        }
    }

    @Override
    public void updateReportId(String parentVideoId, String trackId, String previousTrackId) {
        com.transsion.postdetail.layer.local.c0 c0Var = this.videoDot;
        if (c0Var != null) {
            c0Var.M(parentVideoId);
        }
        com.transsion.postdetail.layer.local.c0 c0Var2 = this.videoDot;
        if (c0Var2 != null) {
            c0Var2.O(trackId);
        }
        com.transsion.postdetail.layer.local.c0 c0Var3 = this.videoDot;
        if (c0Var3 != null) {
            c0Var3.N(previousTrackId);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public LongVodPlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongVodPlayerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.longVodPlayerViewAdHelper = new LongVodPlayerViewAdHelper();
        this.resolutionPanelTargetWidth = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Integer.valueOf(LongVodPlayerView.c2());
            }
        });
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.screenHeight = com.blankj.utilcode.util.y.c();
        this.contentType = LongVodContentType.SUBJECT;
        LongVodUiType longVodUiType = LongVodUiType.MIDDLE;
        this.curUiType = longVodUiType;
        this.curUiRotation = longVodUiType;
        this.isPageResumed = true;
        this.isNewPlayer = true;
        this.isMultiplePlayer = true;
        this.handler = new Handler(Looper.getMainLooper());
        this.videoDetailPlayDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.K2();
            }
        });
        this.ugcVideoDetailPlayDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.C2();
            }
        });
        this.configViewModel = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.k0(this.f46366a);
            }
        });
        this.speedViewModel = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.A2(this.f46368a);
            }
        });
        this.isFirstSetTracks = true;
        this.resolutionList = new ArrayList();
        this.playTimeoutHandler = new Handler(Looper.getMainLooper());
        this.playTimeoutStream = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Long.valueOf(LongVodPlayerView.N1());
            }
        });
        this.pkStyle = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return Boolean.valueOf(LongVodPlayerView.L1());
            }
        });
        this.coroutineScopeIO = kotlinx.coroutines.o0.a(kotlinx.coroutines.y0.b());
        this.canNonSubscriberPlay = true;
        mn.j jVarB = mn.j.b(LayoutInflater.from(getContext()), this);
        Intrinsics.g(jVarB, "inflate(...)");
        this.viewBinding = jVarB;
        ORLongVodPlayerView orLongVodView = jVarB.f66591u;
        Intrinsics.g(orLongVodView, "orLongVodView");
        this.playerControl = orLongVodView;
        this.resolutionHelper = new LongVodResolutionHelper();
        setClickable(true);
        l0();
        this.screenHelper = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.f2(this.f46374a);
            }
        });
        this.playerListener = new k();
        this.runnable = new Runnable() {
            @Override
            public final void run() {
                LongVodPlayerView.d2(this.f46376a);
            }
        };
        this.netListener = new h();
        this.playTimeoutRunnable = new Runnable() {
            @Override
            public final void run() {
                LongVodPlayerView.M1(this.f46378a);
            }
        };
        this.orientationEventListener = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return LongVodPlayerView.I1(this.f46362a);
            }
        });
    }
}
