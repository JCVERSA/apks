package com.transsion.shorttv_pugc.ui.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.SpannableStringBuilder;
import android.text.style.ImageSpan;
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
import androidx.p009lifecycle.LiveData;
import androidx.p009lifecycle.v0;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.cloud.tmc.integration.event.EventConstants;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.player.ui.ORPlayerView;
import com.transsion.push.PushConstants;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv_pugc.ShorttvModel;
import com.transsion.shorttv_pugc.base.pager.PagerLayoutManager;
import com.transsion.shorttv_pugc.base.widget.TnTextView;
import com.transsion.shorttv_pugc.base.widget.expand.ExpandView;
import com.transsion.shorttv_pugc.bean.Cover;
import com.transsion.shorttv_pugc.bean.ShortTvInnerPlayBean;
import com.transsion.shorttv_pugc.bean.Video;
import com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment;
import com.transsion.shorttv_pugc.utils.ShortTvExtKt;
import com.transsion.shorttv_pugc.viewmodel.ShortTvViewModel;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u009e\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b#\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u00052\u00020\u0006B!\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\r\u0010\u000eB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\r\u0010\u000fB\u001b\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\r\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0014¢\u0006\u0004\b\u0014\u0010\u0013JU\u0010!\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001a2\u0006\u0010 \u001a\u00020\u001aH\u0016¢\u0006\u0004\b!\u0010\"J-\u0010'\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b'\u0010(J-\u0010)\u001a\u00020\u00112\b\u0010$\u001a\u0004\u0018\u00010#2\b\u0010&\u001a\u0004\u0018\u00010%2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b)\u0010(J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u000bH\u0016¢\u0006\u0004\b*\u0010+J\u001f\u0010.\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u000b2\u0006\u0010-\u001a\u00020\u000bH\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b0\u00101J\u0017\u00104\u001a\u00020\u00112\u0006\u00103\u001a\u000202H\u0016¢\u0006\u0004\b4\u00105J\u000f\u00107\u001a\u000206H\u0016¢\u0006\u0004\b7\u00108J\u0017\u0010<\u001a\u00020;2\u0006\u0010:\u001a\u000209H\u0016¢\u0006\u0004\b<\u0010=J\u0017\u0010@\u001a\u00020\u001a2\u0006\u0010?\u001a\u00020>H\u0016¢\u0006\u0004\b@\u0010AJ\u001f\u0010E\u001a\u00020\u00112\u0006\u0010C\u001a\u00020B2\u0006\u0010?\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0011H\u0016¢\u0006\u0004\bG\u0010\u0013J\r\u0010H\u001a\u00020\u0011¢\u0006\u0004\bH\u0010\u0013J\u000f\u0010I\u001a\u00020\u0011H\u0016¢\u0006\u0004\bI\u0010\u0013J\u0015\u0010K\u001a\u00020\u00112\u0006\u0010J\u001a\u00020\u001c¢\u0006\u0004\bK\u0010LJ\u0015\u0010N\u001a\u00020\u00112\u0006\u0010M\u001a\u00020\u001c¢\u0006\u0004\bN\u0010LJ\u000f\u0010O\u001a\u00020\u0011H\u0016¢\u0006\u0004\bO\u0010\u0013J\u000f\u0010P\u001a\u00020\u0011H\u0016¢\u0006\u0004\bP\u0010\u0013J\u0019\u0010S\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bS\u0010TJ\u0019\u0010U\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bU\u0010TJ\u0019\u0010V\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bV\u0010TJ!\u0010Y\u001a\u00020\u00112\u0006\u0010X\u001a\u00020W2\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bY\u0010ZJ\u0019\u0010[\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\b[\u0010TJ\u0019\u0010\\\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\b\\\u0010TJ!\u0010_\u001a\u00020\u00112\u0006\u0010^\u001a\u00020]2\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\b_\u0010`J\u000f\u0010a\u001a\u00020\u0011H\u0016¢\u0006\u0004\ba\u0010\u0013J\u0019\u0010b\u001a\u00020\u00112\b\u0010R\u001a\u0004\u0018\u00010QH\u0016¢\u0006\u0004\bb\u0010TJ\u0019\u0010e\u001a\u00020\u00112\b\u0010d\u001a\u0004\u0018\u00010cH\u0016¢\u0006\u0004\be\u0010fJ\r\u0010g\u001a\u00020\u0011¢\u0006\u0004\bg\u0010\u0013J\u000f\u0010h\u001a\u00020WH\u0016¢\u0006\u0004\bh\u0010iJ\r\u0010j\u001a\u00020\u0011¢\u0006\u0004\bj\u0010\u0013J\u000f\u0010k\u001a\u00020\u0011H\u0016¢\u0006\u0004\bk\u0010\u0013J\u000f\u0010l\u001a\u00020\u0011H\u0016¢\u0006\u0004\bl\u0010\u0013J\u001f\u0010o\u001a\u00020\u00112\u0006\u0010X\u001a\u00020\u000b2\u0006\u0010n\u001a\u00020mH\u0016¢\u0006\u0004\bo\u0010pJ\u0017\u0010q\u001a\u00020\u00112\u0006\u0010n\u001a\u00020mH\u0016¢\u0006\u0004\bq\u0010rJ#\u0010w\u001a\u00020\u00112\n\u0010u\u001a\u00060sj\u0002`t2\u0006\u0010v\u001a\u00020mH\u0016¢\u0006\u0004\bw\u0010xJ\u000f\u0010y\u001a\u00020\u0011H\u0002¢\u0006\u0004\by\u0010\u0013J\u000f\u0010z\u001a\u00020\u0011H\u0002¢\u0006\u0004\bz\u0010\u0013J\u000f\u0010{\u001a\u00020\u0011H\u0002¢\u0006\u0004\b{\u0010\u0013J\u000f\u0010|\u001a\u00020\u0011H\u0002¢\u0006\u0004\b|\u0010\u0013J\u001b\u0010~\u001a\u00020\u00112\n\b\u0002\u0010}\u001a\u0004\u0018\u00010WH\u0002¢\u0006\u0004\b~\u0010\u007fJ\u0011\u0010\u0080\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0080\u0001\u0010\u0013J\u0011\u0010\u0081\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0081\u0001\u0010\u0013J\u001b\u0010\u0083\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J\u0019\u0010\u0085\u0001\u001a\u00020\u00112\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0005\b\u0085\u0001\u0010\u000fJ(\u0010\u0088\u0001\u001a\u00020\u00112\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010\u000b2\t\u0010\u0087\u0001\u001a\u0004\u0018\u00010\u000bH\u0002¢\u0006\u0006\b\u0088\u0001\u0010\u0089\u0001J$\u0010\u008c\u0001\u001a\u00020\u00112\u0007\u0010\u008a\u0001\u001a\u00020\u001c2\u0007\u0010\u008b\u0001\u001a\u00020\u0015H\u0002¢\u0006\u0006\b\u008c\u0001\u0010\u008d\u0001J\u001b\u0010\u008e\u0001\u001a\u00020\u00112\b\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0002¢\u0006\u0005\b\u008e\u0001\u00101J\u001a\u0010\u008f\u0001\u001a\u00020\u00112\u0006\u0010X\u001a\u00020WH\u0002¢\u0006\u0006\b\u008f\u0001\u0010\u0090\u0001J\u001b\u0010\u0092\u0001\u001a\u00020\u00112\u0007\u0010\u0091\u0001\u001a\u00020WH\u0002¢\u0006\u0006\b\u0092\u0001\u0010\u0090\u0001J\u0011\u0010\u0093\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0093\u0001\u0010\u0013J\u0011\u0010\u0094\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0094\u0001\u0010\u0013J\u0011\u0010\u0095\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0095\u0001\u0010\u0013J\u0011\u0010\u0096\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0096\u0001\u0010\u0013J\u001b\u0010\u0097\u0001\u001a\u00020\u00112\u0007\u0010\u0082\u0001\u001a\u00020\u001aH\u0002¢\u0006\u0006\b\u0097\u0001\u0010\u0084\u0001J\"\u0010\u009a\u0001\u001a\u00020\u00112\u000e\u0010\u0099\u0001\u001a\t\u0012\u0004\u0012\u00020\u00110\u0098\u0001H\u0002¢\u0006\u0006\b\u009a\u0001\u0010\u009b\u0001J\u0011\u0010\u009c\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009c\u0001\u0010\u0013J\u0011\u0010\u009d\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009d\u0001\u0010\u0013J\u0011\u0010\u009e\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009e\u0001\u0010\u0013J\u0011\u0010\u0086\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u0086\u0001\u0010\u0013J\u0011\u0010\u009f\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b\u009f\u0001\u0010\u0013J$\u0010d\u001a\u00020\u00112\u0006\u0010&\u001a\u00020%2\n\u0010¡\u0001\u001a\u0005\u0018\u00010 \u0001H\u0002¢\u0006\u0005\bd\u0010¢\u0001J\u0011\u0010£\u0001\u001a\u00020\u0011H\u0002¢\u0006\u0005\b£\u0001\u0010\u0013R\u0017\u0010¦\u0001\u001a\u00020\u001c8\u0002X\u0082D¢\u0006\b\n\u0006\b¤\u0001\u0010¥\u0001R\u0017\u0010©\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\b§\u0001\u0010¨\u0001R\u0018\u0010\u00ad\u0001\u001a\u00030ª\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b«\u0001\u0010¬\u0001R\u001b\u0010°\u0001\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b®\u0001\u0010¯\u0001R\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bu\u0010±\u0001R\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b²\u0001\u0010³\u0001R\u001a\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b´\u0001\u0010µ\u0001R\u001a\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0087\u0001\u0010¥\u0001R\u001a\u0010$\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¶\u0001\u0010·\u0001R\u001a\u0010&\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b¸\u0001\u0010¹\u0001R\u001a\u00103\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bº\u0001\u0010»\u0001R\u001c\u0010¿\u0001\u001a\u0005\u0018\u00010¼\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b½\u0001\u0010¾\u0001R\u001c\u0010Ã\u0001\u001a\u0005\u0018\u00010À\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÁ\u0001\u0010Â\u0001R\u0019\u0010Å\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÄ\u0001\u0010\u0081\u0001R\u0019\u0010Ç\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÆ\u0001\u0010\u0081\u0001R\u0019\u0010É\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÈ\u0001\u0010\u0081\u0001R\u0019\u0010Ì\u0001\u001a\u00020W8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÊ\u0001\u0010Ë\u0001R\u0017\u0010Î\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÍ\u0001\u0010¨\u0001R\u0017\u0010Ð\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÏ\u0001\u0010¨\u0001R\u0017\u0010Ò\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÑ\u0001\u0010¨\u0001R\u0017\u0010Ô\u0001\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÓ\u0001\u0010¨\u0001R\u0017\u0010J\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bd\u0010¥\u0001R\u001b\u0010Ö\u0001\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010Õ\u0001R\u001c\u0010Ú\u0001\u001a\u0005\u0018\u00010×\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bØ\u0001\u0010Ù\u0001R\u001e\u0010Þ\u0001\u001a\t\u0012\u0004\u0012\u00020\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bÜ\u0001\u0010Ý\u0001R \u0010à\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bß\u0001\u0010Ý\u0001R \u0010â\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bá\u0001\u0010Ý\u0001R \u0010ã\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001a0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u009e\u0001\u0010Ý\u0001R \u0010ä\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u001c0Û\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u0080\u0001\u0010Ý\u0001R\u0019\u0010å\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0081\u0001R\u0019\u0010æ\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b£\u0001\u0010\u0081\u0001R\u001d\u0010ë\u0001\u001a\b0ç\u0001j\u0003`è\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bé\u0001\u0010ê\u0001R\u0019\u0010ì\u0001\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0081\u0001R\u0018\u0010ð\u0001\u001a\u00030í\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\bî\u0001\u0010ï\u0001R\u001d\u0010ñ\u0001\u001a\b0ç\u0001j\u0003`è\u00018\u0002X\u0082\u0004¢\u0006\b\n\u0006\b¨\u0001\u0010ê\u0001R\u001c\u0010ô\u0001\u001a\u0005\u0018\u00010ò\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bË\u0001\u0010ó\u0001¨\u0006õ\u0001"}, d2 = {"Lcom/transsion/shorttv_pugc/ui/widget/ShortTvVideoItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Lcom/transsion/player/orplayer/e;", "Landroid/view/View$OnClickListener;", "Landroidx/lifecycle/r;", "Lcom/transsion/shorttv_pugc/ui/widget/a;", "Lcom/transsion/subtitle_download/a;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "onAttachedToWindow", "()V", "onDetachedFromWindow", "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", WebConstants.FIELD_ITEM, "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "fragment", RequestParameters.POSITION, "", "videoLoadMore", "", "basePostId", "baseItemType", "isPayloads", "fromTrending", "setData", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;ZZ)V", "Lcom/transsion/player/orplayer/f;", "orPlayer", "Lcom/transsion/player/ui/ORPlayerView;", "orPlayerView", "onPageSelected", "(Lcom/transsion/player/orplayer/f;Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "updateShortTvInfo", "onPageRelease", "(I)V", "width", "height", "onVideoSizeChanged", "(II)V", "updateLockState", "(Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "pagerLayoutManager", "setPagerLayoutManager", "(Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;)V", "Landroid/widget/FrameLayout;", "getPlayerContainer", "()Landroid/widget/FrameLayout;", "Landroidx/fragment/app/FragmentActivity;", "activity", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "getViewModel", "(Landroidx/fragment/app/FragmentActivity;)Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onTouchEvent", "(Landroid/view/MotionEvent;)Z", "Landroidx/lifecycle/u;", EventConstants.KEY_SOURCE, "Landroidx/lifecycle/Lifecycle$Event;", "onStateChanged", "(Landroidx/lifecycle/u;Landroidx/lifecycle/Lifecycle$Event;)V", "onPlayerReset", "reset", "app2Background", "pageFrom", "videoStartPrepare", "(Ljava/lang/String;)V", "url", "setVideoUrl", "onSetDataSource", "onRenderFirstFrame", "Lgn/e;", "mediaSource", "onVideoStart", "(Lgn/e;)V", "onPrepare", "onVideoPause", "", NotificationCompat.CATEGORY_PROGRESS, "onProgress", "(JLgn/e;)V", "onLoadingBegin", "onLoadingEnd", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onLoopingStart", "onCompletion", "Landroid/view/View;", "v", "onClick", "(Landroid/view/View;)V", "showEpisodeListDialog", "getProgress", "()J", "onNetConnect", "onGetDubsInfo", "onAudioTrackChange", "Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;", "stDownloadTable", "onDownloading", "(ILcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "onComplete", "(Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "dbBean", "onFail", "(Ljava/lang/Exception;Lcom/transsion/subtitle_download/db/SubtitleDownloadTable;)V", "a0", "c0", "b0", "f0", "count", "g0", "(Ljava/lang/Long;)V", "C", "Z", PushConstants.PUSH_SERVICE_TYPE_SHOW, "W", "(Z)V", "D", "w", "h", "h0", "(Ljava/lang/Integer;Ljava/lang/Integer;)V", "ep", "ugcVideo", "T", "(Ljava/lang/String;Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;)V", "i0", "d0", "(J)V", "max", "e0", "O", "U", "R", "X", "setLoading", "Lkotlin/Function0;", "block", "S", "(Lkotlin/jvm/functions/Function0;)V", "P", "G", "B", "Y", "Lcom/transsion/shorttv_pugc/bean/Video;", "video", "(Lcom/transsion/player/ui/ORPlayerView;Lcom/transsion/shorttv_pugc/bean/Video;)V", "E", "a", "Ljava/lang/String;", "TAG", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "I", "screenWidth", "Lqr/j0;", "c", "Lqr/j0;", "viewBinding", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lcom/transsion/shorttv_pugc/ShorttvModel$UGCVideo;", "data", "Lcom/transsion/shorttv_pugc/ui/fragment/ShortTvDetailListFragment;", "f", "Ljava/lang/Boolean;", "g", "Ljava/lang/Integer;", "i", "Lcom/transsion/player/orplayer/f;", "j", "Lcom/transsion/player/ui/ORPlayerView;", CampaignEx.JSON_KEY_AD_K, "Lcom/transsion/shorttv_pugc/base/pager/PagerLayoutManager;", "Landroid/view/GestureDetector;", "l", "Landroid/view/GestureDetector;", "gestureDetector", "Lxs/c;", "m", "Lxs/c;", "dotLayer", "n", "isClickPause", "o", "isHorizontalDragging", TtmlNode.TAG_P, "isPageHide", CampaignEx.JSON_KEY_AD_Q, "J", "currentSaveProgress", CampaignEx.JSON_KEY_AD_R, "resImgLargeWidth", "s", "resImgLargeHeight", "t", "resImgSmallWidth", TmcStartParams.KEY_URL_SHORT, "resImgSmallHeight", "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvViewModel;", "mShortTvViewModel", "Lat/a;", "x", "Lat/a;", "mShortTvSubViewModel", "Landroidx/lifecycle/c0;", "y", "Landroidx/lifecycle/c0;", "observer", "z", "favoriteObserver", "A", "likeObserver", "followObserver", "shareObserver", "isFirstFrame", "isPrepare", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "F", "Ljava/lang/Runnable;", "delayToastNetErrRunnable", "isLoading", "Landroid/os/Handler;", "H", "Landroid/os/Handler;", "autoHideRightMenuHandle", "autoHideRightMenuRunnable", "Lcom/transsion/shorttv_pugc/ui/adapter/p;", "Lcom/transsion/shorttv_pugc/ui/adapter/p;", "tagAdapter", "shortTvLib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class ShortTvVideoItemView extends ConstraintLayout implements com.transsion.player.orplayer.e, View.OnClickListener, androidx.p009lifecycle.r, com.transsion.shorttv_pugc.ui.widget.a, com.transsion.subtitle_download.a {

    private final androidx.p009lifecycle.c0 likeObserver;

    private final androidx.p009lifecycle.c0 followObserver;

    private final androidx.p009lifecycle.c0 shareObserver;

    private boolean isFirstFrame;

    private boolean isPrepare;

    private final Runnable delayToastNetErrRunnable;

    private boolean isLoading;

    private final Handler autoHideRightMenuHandle;

    private final Runnable autoHideRightMenuRunnable;

    private com.transsion.shorttv_pugc.ui.adapter.p tagAdapter;

    private final String TAG;

    private final int screenWidth;

    private final qr.j0 viewBinding;

    private ShorttvModel.UGCVideo data;

    private ShortTvDetailListFragment fragment;

    private Boolean videoLoadMore;

    private Integer position;

    private String basePostId;

    private com.transsion.player.orplayer.f orPlayer;

    private ORPlayerView orPlayerView;

    private PagerLayoutManager pagerLayoutManager;

    private GestureDetector gestureDetector;

    private xs.c dotLayer;

    private boolean isClickPause;

    private boolean isHorizontalDragging;

    private boolean isPageHide;

    private long currentSaveProgress;

    private final int resImgLargeWidth;

    private final int resImgLargeHeight;

    private final int resImgSmallWidth;

    private final int resImgSmallHeight;

    private String pageFrom;

    private ShortTvViewModel mShortTvViewModel;

    private at.a mShortTvSubViewModel;

    private final androidx.p009lifecycle.c0 observer;

    private final androidx.p009lifecycle.c0 favoriteObserver;

    public class a {

        public static final int[] f52360a;

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
            f52360a = iArr;
        }
    }

    public static final class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override
        public boolean onSingleTapUp(MotionEvent e10) {
            Intrinsics.h(e10, "e");
            ShortTvVideoItemView.this.O();
            return super.onSingleTapUp(e10);
        }
    }

    public static final class c implements com.transsion.shorttv_pugc.base.widget.e.a {

        private int f52362a;

        private int f52363b;

        private int f52364c;

        private String f52365d = "";

        private int f52366e = com.blankj.utilcode.util.a0.a(1.5f);

        c() {
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
                this.f52362a = ShortTvVideoItemView.this.viewBinding.f70063r.getProgress();
                AppCompatSeekBar seekBar = ShortTvVideoItemView.this.viewBinding.f70066u;
                Intrinsics.g(seekBar, "seekBar");
                gs.b.d(seekBar);
                ProgressBar progressBar = ShortTvVideoItemView.this.viewBinding.f70063r;
                Intrinsics.g(progressBar, "progressBar");
                gs.b.b(progressBar);
                this.f52364c = ShortTvVideoItemView.this.viewBinding.f70063r.getWidth();
                int max = ShortTvVideoItemView.this.viewBinding.f70063r.getMax();
                this.f52363b = max;
                this.f52365d = com.transsion.shorttv_pugc.utils.j.a(max);
            }
            ShortTvVideoItemView.this.isHorizontalDragging = true;
            float f12 = f11 - f10;
            int i11 = this.f52363b;
            int i12 = (int) (this.f52362a + ((f12 * i11) / this.f52364c));
            if (i12 >= 0) {
                i10 = i12 > i11 ? i11 : i12;
            }
            ShortTvVideoItemView.this.d0(i10);
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
            PagerLayoutManager pagerLayoutManager = ShortTvVideoItemView.this.pagerLayoutManager;
            if (pagerLayoutManager != null) {
                pagerLayoutManager.W(true);
            }
            if (ShortTvVideoItemView.this.isHorizontalDragging) {
                ShortTvVideoItemView.this.isHorizontalDragging = false;
                AppCompatSeekBar seekBar = ShortTvVideoItemView.this.viewBinding.f70066u;
                Intrinsics.g(seekBar, "seekBar");
                gs.b.b(seekBar);
                ProgressBar progressBar = ShortTvVideoItemView.this.viewBinding.f70063r;
                Intrinsics.g(progressBar, "progressBar");
                gs.b.d(progressBar);
                long progress = ShortTvVideoItemView.this.viewBinding.f70063r.getProgress();
                ShorttvModel.UGCVideo uGCVideo = ShortTvVideoItemView.this.data;
                if ((uGCVideo != null ? uGCVideo.getPlayUrl() : null) == null) {
                    wf.a.C0922a.f(wf.a.f74274a, ShortTvVideoItemView.this.TAG, "数据还没有拉下来，不进行seek", false, 4, null);
                    return;
                }
                com.transsion.player.orplayer.f fVar2 = ShortTvVideoItemView.this.orPlayer;
                if (fVar2 != null) {
                    fVar2.seekTo(progress);
                }
                com.transsion.player.orplayer.f fVar3 = ShortTvVideoItemView.this.orPlayer;
                if (fVar3 != null && !fVar3.isPlaying() && (fVar = ShortTvVideoItemView.this.orPlayer) != null) {
                    fVar.play();
                }
                xs.c cVar = ShortTvVideoItemView.this.dotLayer;
                if (cVar != null) {
                    cVar.h();
                }
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

    public static final class d implements ExpandView.c {
        d() {
        }

        @Override
        public void a(ExpandView expandView) {
            ShortTvVideoItemView.this.Y();
        }

        @Override
        public void b(ExpandView expandView) {
            ShortTvVideoItemView.this.w();
        }
    }

    public static final class e implements RequestListener {
        e() {
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
    public ShortTvVideoItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "ShortTvVideoItemView";
        this.screenWidth = com.blankj.utilcode.util.y.e();
        this.pageFrom = "";
        View.inflate(getContext(), R$layout.short_tv_layout_play_detail, this);
        qr.j0 j0VarA = qr.j0.a(this);
        Intrinsics.g(j0VarA, "bind(...)");
        this.viewBinding = j0VarA;
        j0VarA.f70070y.setText("");
        j0VarA.f70068w.setPadding(0, com.blankj.utilcode.util.d.c(), 0, 0);
        j0VarA.f70053h.setOnClickListener(this);
        j0VarA.f70071z.setOnClickListener(this);
        j0VarA.f70070y.setOnClickListener(this);
        j0VarA.f70057l.setOnClickListener(this);
        j0VarA.f70056k.setOnClickListener(this);
        j0VarA.f70055j.setOnClickListener(this);
        j0VarA.f70058m.setOnClickListener(this);
        j0VarA.B.setOnClickListener(this);
        j0VarA.C.setOnClickListener(this);
        j0VarA.f70059n.setOnClickListener(this);
        this.resImgLargeWidth = com.blankj.utilcode.util.a0.a(48.0f);
        this.resImgLargeHeight = com.blankj.utilcode.util.a0.a(64.0f);
        this.resImgSmallWidth = com.blankj.utilcode.util.a0.a(24.0f);
        this.resImgSmallHeight = com.blankj.utilcode.util.a0.a(32.0f);
        D(context);
        this.observer = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.J(this.f52419a, ((Boolean) obj).booleanValue());
            }
        };
        this.favoriteObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.z(this.f52371a, (Boolean) obj);
            }
        };
        this.likeObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.I(this.f52373a, (Boolean) obj);
            }
        };
        this.followObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.A(this.f52375a, (Boolean) obj);
            }
        };
        this.shareObserver = new androidx.p009lifecycle.c0() {
            @Override
            public final void onChanged(Object obj) {
                ShortTvVideoItemView.V(this.f52377a, (String) obj);
            }
        };
        this.delayToastNetErrRunnable = new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoItemView.y(this.f52379a);
            }
        };
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        this.autoHideRightMenuHandle = new Handler(looperMyLooper);
        this.autoHideRightMenuRunnable = new Runnable() {
            @Override
            public final void run() {
                ShortTvVideoItemView.x(this.f52381a);
            }
        };
    }

    public static final void A(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.b0();
    }

    private final void B() {
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.q0(false);
        }
    }

    private final void C() {
        Window window;
        View decorView;
        WindowInsetsController insetsController;
        if (Build.VERSION.SDK_INT < 30) {
            Context context = getContext();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            window = activity != null ? activity.getWindow() : null;
            if (window == null || (decorView = window.getDecorView()) == null) {
                return;
            }
            decorView.setSystemUiVisibility(5894);
            return;
        }
        Context context2 = getContext();
        Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
        window = activity2 != null ? activity2.getWindow() : null;
        if (window == null || (insetsController = window.getInsetsController()) == null) {
            return;
        }
        insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
        insetsController.setSystemBarsBehavior(2);
    }

    private final void D(Context context) {
        this.gestureDetector = new GestureDetector(context, new b());
        G();
    }

    private final void E() {
        final List<ShorttvModel.UGCVideoHasTag> hashTags;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        if (uGCVideo != null && (hashTags = uGCVideo.getHashTags()) != null) {
            final com.transsion.shorttv_pugc.ui.adapter.p pVar = new com.transsion.shorttv_pugc.ui.adapter.p(0, 1, null);
            pVar.n1(hashTags);
            pVar.w1(new r6.d() {
                @Override
                public final void a(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    ShortTvVideoItemView.F(pVar, hashTags, this, baseQuickAdapter, view, i10);
                }
            });
            this.tagAdapter = pVar;
        }
        RecyclerView recyclerView = this.viewBinding.f70065t;
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 0, false));
        recyclerView.addItemDecoration(new com.transsion.shorttv_pugc.base.widget.k(8.0f, 0.0f, 0.0f, 6, null));
        recyclerView.setAdapter(this.tagAdapter);
    }

    public static final void F(com.transsion.shorttv_pugc.ui.adapter.p pVar, List list, ShortTvVideoItemView shortTvVideoItemView, BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        Intrinsics.h(baseQuickAdapter, "<unused var>");
        Intrinsics.h(view, "<unused var>");
        ShorttvModel.UGCVideoHasTag uGCVideoHasTag = (ShorttvModel.UGCVideoHasTag) pVar.getData().get(i10);
        Navigator.x(TheRouter.c("/home/hashtag").K("hashtag", ShortTvExtKt.o(list, uGCVideoHasTag)), pVar.getContext(), null, 2, null);
        xs.a aVar = xs.a.f75393a;
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        aVar.c(uGCVideoHasTag, i10, shortTvViewModel != null ? shortTvViewModel.I() : null);
    }

    private final void G() {
        new com.transsion.shorttv_pugc.base.widget.e(getContext(), this.viewBinding.I).r(new c());
        this.viewBinding.f70066u.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return ShortTvVideoItemView.H(view, motionEvent);
            }
        });
    }

    public static final boolean H(View view, MotionEvent motionEvent) {
        return true;
    }

    public static final void I(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.c0();
    }

    public static final void J(ShortTvVideoItemView shortTvVideoItemView, boolean z10) {
        shortTvVideoItemView.W(z10);
    }

    public static final Unit K(ShortTvVideoItemView shortTvVideoItemView) {
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.o(shortTvVideoItemView.data);
        }
        return Unit.f64096a;
    }

    public static final Unit L(ShortTvVideoItemView shortTvVideoItemView) {
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.V(shortTvVideoItemView.data);
        }
        return Unit.f64096a;
    }

    public static final Unit M(ShortTvVideoItemView shortTvVideoItemView) {
        ShorttvModel.UGCVideo uGCVideo = shortTvVideoItemView.data;
        ShortTvViewModel shortTvViewModel = shortTvVideoItemView.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.n(uGCVideo);
        }
        return Unit.f64096a;
    }

    public static final Unit N(ShortTvVideoItemView shortTvVideoItemView) {
        ShorttvModel.UGCVideoCreator creator;
        ShorttvModel.UGCVideo uGCVideo = shortTvVideoItemView.data;
        if (uGCVideo != null && (creator = uGCVideo.getCreator()) != null) {
            Navigator.x(TheRouter.c("/profile/user_profile").K("userId", creator.getUid()), shortTvVideoItemView.getContext(), null, 2, null);
        }
        return Unit.f64096a;
    }

    public final void O() {
        if (this.isLoading) {
            FrameLayout layoutTvEpisode = this.viewBinding.f70060o;
            Intrinsics.g(layoutTvEpisode, "layoutTvEpisode");
            if (layoutTvEpisode.getVisibility() == 0) {
                B();
                return;
            } else {
                Y();
                return;
            }
        }
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        if (fVar == null || !fVar.isPlaying()) {
            FrameLayout layoutTvEpisode2 = this.viewBinding.f70060o;
            Intrinsics.g(layoutTvEpisode2, "layoutTvEpisode");
            if (layoutTvEpisode2.getVisibility() != 0) {
                Y();
            }
            xs.c cVar = this.dotLayer;
            if (cVar != null) {
                cVar.c();
            }
            R();
            this.isClickPause = false;
            ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
            if (shortTvDetailListFragment != null) {
                shortTvDetailListFragment.P0(false);
                return;
            }
            return;
        }
        FrameLayout layoutTvEpisode3 = this.viewBinding.f70060o;
        Intrinsics.g(layoutTvEpisode3, "layoutTvEpisode");
        if (layoutTvEpisode3.getVisibility() != 0) {
            Y();
            w();
            return;
        }
        this.isClickPause = true;
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null) {
            shortTvDetailListFragment2.P0(true);
        }
        xs.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.b();
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.pause();
        }
        Y();
    }

    private final void P() {
        ShortTvViewModel shortTvViewModel;
        vs.h hVarP;
        String pageName;
        if (this.data == null || (shortTvViewModel = this.mShortTvViewModel) == null || (hVarP = shortTvViewModel.P()) == null) {
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        Intrinsics.e(uGCVideo);
        String ugcVideoId = uGCVideo.getUgcVideoId();
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        Intrinsics.e(uGCVideo2);
        String title = uGCVideo2.getTitle();
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 == null || (pageName = shortTvDetailListFragment2.getPageName()) == null) {
            pageName = "";
        }
        hVarP.a(shortTvDetailListFragment, ugcVideoId, title, pageName);
    }

    public static final void Q(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.R();
    }

    private final void R() {
        com.transsion.player.orplayer.f fVar;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "playVideo   data:" + this.data + "  orPlayer:" + this.orPlayer + " ------- " + this, false, 4, null);
        ShorttvModel.UGCVideo uGCVideo = this.data;
        if (uGCVideo == null || this.orPlayer == null) {
            return;
        }
        if ((uGCVideo != null ? uGCVideo.getPlayUrl() : null) == null) {
            return;
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null && fVar2.isComplete() && (fVar = this.orPlayer) != null) {
            fVar.seekTo(0L);
        }
        com.transsion.player.orplayer.f fVar3 = this.orPlayer;
        if (fVar3 != null) {
            fVar3.play();
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.X();
        }
        wf.a.C0922a.f(c0922a, this.TAG, "player- startplay", false, 4, null);
    }

    private final void S(Function0 block) {
        if (yg.l.f76264a.e()) {
            block.invoke();
        } else {
            X();
        }
    }

    private final void T(String ep2, ShorttvModel.UGCVideo ugcVideo) {
        String description;
        String str;
        String description2;
        ExpandView expandView = this.viewBinding.f70048c;
        expandView.setExpandListener(new d());
        if (ugcVideo == null || (description2 = ugcVideo.getDescription()) == null || description2.length() <= 0) {
            description = ugcVideo.getDescription();
            if (description == null) {
                description = "";
            }
        } else {
            description = ugcVideo.getDescription();
        }
        if (description == null || description.length() == 0) {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            str = String.format("EP%s", Arrays.copyOf(new Object[]{ep2}, 1));
        } else {
            StringCompanionObject stringCompanionObject2 = StringCompanionObject.f64324a;
            str = String.format("EP%s | %s", Arrays.copyOf(new Object[]{ep2, description}, 2));
        }
        Intrinsics.g(str, "format(...)");
        expandView.l(str);
    }

    private final void U() {
        LiveData liveDataS;
        Boolean bool;
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        W((shortTvViewModel == null || (liveDataS = shortTvViewModel.S()) == null || (bool = (Boolean) liveDataS.f()) == null) ? true : bool.booleanValue());
    }

    public static final void V(ShortTvVideoItemView shortTvVideoItemView, String str) {
        shortTvVideoItemView.f0();
    }

    private final void W(boolean show) {
        ShorttvModel.UGCVideo uGCVideo;
        ShorttvModel.UGCVideoCreator creator;
        ShorttvModel.UGCVideoCreator creator2;
        if (!show) {
            C();
            Group groupContent = this.viewBinding.f70051f;
            Intrinsics.g(groupContent, "groupContent");
            gs.b.c(groupContent);
            AppCompatImageView ivSubscribe = this.viewBinding.f70059n;
            Intrinsics.g(ivSubscribe, "ivSubscribe");
            gs.b.c(ivSubscribe);
            return;
        }
        Z();
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        if (((uGCVideo2 == null || (creator2 = uGCVideo2.getCreator()) == null) ? null : creator2.getAvatar()) == null) {
            Group groupContent2 = this.viewBinding.f70051f;
            Intrinsics.g(groupContent2, "groupContent");
            gs.b.c(groupContent2);
            FrameLayout layoutTvEpisode = this.viewBinding.f70060o;
            Intrinsics.g(layoutTvEpisode, "layoutTvEpisode");
            gs.b.d(layoutTvEpisode);
            return;
        }
        Group groupContent3 = this.viewBinding.f70051f;
        Intrinsics.g(groupContent3, "groupContent");
        gs.b.d(groupContent3);
        AppCompatImageView appCompatImageView = this.viewBinding.f70059n;
        ShorttvModel.UGCVideo uGCVideo3 = this.data;
        appCompatImageView.setVisibility((uGCVideo3 == null || (creator = uGCVideo3.getCreator()) == null) ? false : Intrinsics.c(creator.getHasSubscribe(), Boolean.FALSE) ? 0 : 8);
        if (this.viewBinding.f70048c.isSetTitleSuccess() || (uGCVideo = this.data) == null) {
            return;
        }
        T(String.valueOf(uGCVideo.getEp()), uGCVideo);
    }

    private final void X() {
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.S0();
        }
    }

    public final void Y() {
        this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.q0(true);
        }
    }

    private final void Z() {
        Window window;
        View decorView;
        WindowInsetsController insetsController;
        if (Build.VERSION.SDK_INT >= 30) {
            Context context = getContext();
            Activity activity = context instanceof Activity ? (Activity) context : null;
            window = activity != null ? activity.getWindow() : null;
            if (window == null || (insetsController = window.getInsetsController()) == null) {
                return;
            }
            insetsController.show(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
            return;
        }
        Context context2 = getContext();
        Activity activity2 = context2 instanceof Activity ? (Activity) context2 : null;
        window = activity2 != null ? activity2.getWindow() : null;
        if (window == null || (decorView = window.getDecorView()) == null) {
            return;
        }
        decorView.setSystemUiVisibility(1792);
    }

    private final void a0() {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasFavorite;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2;
        String favoriteNum;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        this.viewBinding.f70071z.setText(ShortTvExtKt.t(ls.e.a((uGCVideo == null || (interactiveInfo2 = uGCVideo.getInteractiveInfo()) == null || (favoriteNum = interactiveInfo2.getFavoriteNum()) == null) ? 0L : Long.parseLong(favoriteNum))));
        AppCompatTextView appCompatTextView = this.viewBinding.f70071z;
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        appCompatTextView.setSelected((uGCVideo2 == null || (interactiveInfo = uGCVideo2.getInteractiveInfo()) == null || (hasFavorite = interactiveInfo.getHasFavorite()) == null) ? false : hasFavorite.booleanValue());
    }

    private final void b0() {
        ShorttvModel.UGCVideoCreator creator;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        boolean zC = (uGCVideo == null || (creator = uGCVideo.getCreator()) == null) ? false : Intrinsics.c(creator.getHasSubscribe(), Boolean.TRUE);
        qr.j0 j0Var = this.viewBinding;
        AppCompatImageView appCompatImageView = j0Var.f70059n;
        if (!zC) {
            Group groupContent = j0Var.f70051f;
            Intrinsics.g(groupContent, "groupContent");
            if (groupContent.getVisibility() == 0) {
                Intrinsics.e(appCompatImageView);
                gs.b.d(appCompatImageView);
                return;
            }
        }
        Intrinsics.e(appCompatImageView);
        gs.b.b(appCompatImageView);
    }

    private final void c0() {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        Boolean hasLike;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo2;
        String likeNum;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        this.viewBinding.B.setText(ShortTvExtKt.t(ls.e.a((uGCVideo == null || (interactiveInfo2 = uGCVideo.getInteractiveInfo()) == null || (likeNum = interactiveInfo2.getLikeNum()) == null) ? 0L : Long.parseLong(likeNum))));
        AppCompatTextView appCompatTextView = this.viewBinding.B;
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        appCompatTextView.setSelected((uGCVideo2 == null || (interactiveInfo = uGCVideo2.getInteractiveInfo()) == null || (hasLike = interactiveInfo.getHasLike()) == null) ? false : hasLike.booleanValue());
    }

    public final void d0(long progress) {
        int i10 = (int) progress;
        this.viewBinding.f70066u.setProgress(i10);
        this.viewBinding.f70063r.setProgress(i10);
        this.viewBinding.D.setText(com.transsion.shorttv_pugc.utils.j.a(i10) + " / " + com.transsion.shorttv_pugc.utils.j.a(this.viewBinding.f70063r.getMax()));
    }

    private final void e0(long max) {
        int i10 = (int) max;
        this.viewBinding.f70066u.setMax(i10);
        this.viewBinding.f70063r.setMax(i10);
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "updateProgressMax: " + max + "  : " + this, false, 4, null);
    }

    private final void f0() {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        String shareNum;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        ls.e.a((uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (shareNum = interactiveInfo.getShareNum()) == null) ? 0L : Long.parseLong(shareNum));
    }

    private final void g0(Long count) {
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        String shareNum;
        if (count == null || count.toString() == null) {
            ShorttvModel.UGCVideo uGCVideo = this.data;
            ls.e.a((uGCVideo == null || (interactiveInfo = uGCVideo.getInteractiveInfo()) == null || (shareNum = interactiveInfo.getShareNum()) == null) ? 0L : Long.parseLong(shareNum));
        }
    }

    private final void h0(Integer w10, Integer h10) {
        if (w10 == null || h10 == null || w10.intValue() == 0) {
            return;
        }
        FrameLayout flContainer = this.viewBinding.f70049d;
        Intrinsics.g(flContainer, "flContainer");
        ViewGroup.LayoutParams layoutParams = flContainer.getLayoutParams();
        if (layoutParams == null) {
            throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        }
        ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
        ((ViewGroup.MarginLayoutParams) bVar).width = com.blankj.utilcode.util.y.e();
        ((ViewGroup.MarginLayoutParams) bVar).height = (h10.intValue() * ((ViewGroup.MarginLayoutParams) bVar).width) / w10.intValue();
        flContainer.setLayoutParams(bVar);
    }

    private final void i0(ShorttvModel.UGCVideo item) {
        Cover cover;
        String url;
        ShortTvDetailListFragment shortTvDetailListFragment;
        FragmentActivity activity;
        d0(0L);
        if (item != null) {
            int iVideoUGCPosition = item.videoUGCPosition();
            TnTextView tnTextView = this.viewBinding.G;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str = String.format("EP%s", Arrays.copyOf(new Object[]{ShortTvExtKt.n(Integer.valueOf(iVideoUGCPosition))}, 1));
            Intrinsics.g(str, "format(...)");
            tnTextView.setText(str);
        }
        if (item == null || (cover = item.getCover()) == null || (url = cover.getUrl()) == null) {
            this.viewBinding.f70054i.setImageDrawable(null);
            return;
        }
        is.b.a aVar = is.b.f62607a;
        int i10 = this.screenWidth;
        String strD = aVar.d(url, (120 & 2) != 0 ? 0 : i10, (120 & 4) != 0 ? 0 : i10, (120 & 8) != 0, (120 & 16) != 0 ? false : false, (120 & 32) == 0 ? false : false, (120 & 64) != 0 ? 25 : 0);
        if (Intrinsics.c(strD, this.viewBinding.f70054i.getTag()) || (shortTvDetailListFragment = this.fragment) == null || (activity = shortTvDetailListFragment.getActivity()) == null) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "into  " + this, false, 4, null);
        this.viewBinding.f70054i.setTag(strD);
        Glide.with(activity).load2(strD).addListener(new e()).into(this.viewBinding.f70054i);
    }

    private final void setLoading(boolean show) {
        this.isLoading = show;
        if (show) {
            ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
            Intrinsics.f(shortTvDetailListFragment, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment");
            shortTvDetailListFragment.startLoading();
        } else {
            ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
            Intrinsics.f(shortTvDetailListFragment2, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment");
            shortTvDetailListFragment2.hideLoading();
        }
    }

    private final void v(ORPlayerView orPlayerView, Video video) {
        ViewParent parent = orPlayerView.getParent();
        if (!Intrinsics.c(parent, this.viewBinding.f70049d)) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(orPlayerView);
            }
            this.viewBinding.f70049d.addView(orPlayerView, new FrameLayout.LayoutParams(-1, -1));
        }
        if (video != null) {
            h0(video.getWidth(), video.getHeight());
        }
    }

    public final void w() {
        FrameLayout layoutTvEpisode = this.viewBinding.f70060o;
        Intrinsics.g(layoutTvEpisode, "layoutTvEpisode");
        if (layoutTvEpisode.getVisibility() == 0) {
            this.autoHideRightMenuHandle.removeCallbacks(this.autoHideRightMenuRunnable);
            this.autoHideRightMenuHandle.postDelayed(this.autoHideRightMenuRunnable, 3000L);
        }
    }

    public static final void x(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.B();
    }

    public static final void y(ShortTvVideoItemView shortTvVideoItemView) {
        shortTvVideoItemView.X();
    }

    public static final void z(ShortTvVideoItemView shortTvVideoItemView, Boolean bool) {
        shortTvVideoItemView.a0();
    }

    public void app2Background() {
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.d(true);
        }
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    public FrameLayout getPlayerContainer() {
        FrameLayout flContainer = this.viewBinding.f70049d;
        Intrinsics.g(flContainer, "flContainer");
        return flContainer;
    }

    @Override
    public long getProgress() {
        return this.viewBinding.f70066u.getProgress();
    }

    public ShortTvViewModel getViewModel(FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        return (ShortTvViewModel) new v0(activity).a(ShortTvViewModel.class);
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
        LiveData liveDataJ;
        LiveData liveDataB;
        LiveData liveDataE;
        LiveData liveDataY;
        LiveData liveDataS;
        super.onAttachedToWindow();
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment == null || (viewLifecycleOwner = shortTvDetailListFragment.getViewLifecycleOwner()) == null) {
            return;
        }
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataS = shortTvViewModel.S()) != null) {
            liveDataS.j(viewLifecycleOwner, this.observer);
        }
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 != null && (liveDataY = shortTvViewModel2.y()) != null) {
            liveDataY.j(viewLifecycleOwner, this.favoriteObserver);
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null && (liveDataE = shortTvViewModel3.E()) != null) {
            liveDataE.j(viewLifecycleOwner, this.likeObserver);
        }
        ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
        if (shortTvViewModel4 != null && (liveDataB = shortTvViewModel4.B()) != null) {
            liveDataB.j(viewLifecycleOwner, this.followObserver);
        }
        ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
        if (shortTvViewModel5 == null || (liveDataJ = shortTvViewModel5.J()) == null) {
            return;
        }
        liveDataJ.j(viewLifecycleOwner, this.shareObserver);
    }

    public void onAudioTrackChange() {
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        com.transsion.player.orplayer.e.a.d(this, j10, eVar);
    }

    @Override
    public void onClick(View v10) {
        ShortTvDetailListFragment shortTvDetailListFragment;
        FragmentActivity activity;
        String strR;
        ShortTvViewModel shortTvViewModel;
        vs.c cVarL;
        ShorttvModel.UGCVideoCollection belongToCollection;
        ShorttvModel.UGCVideoInteractiveInfo interactiveInfo;
        String shareNum;
        if (ls.c.f66110a.a(v10 != null ? v10.getId() : 0, 500L)) {
            return;
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onclick, " + v10, false, 4, null);
        Integer numValueOf = v10 != null ? Integer.valueOf(v10.getId()) : null;
        int i10 = R$id.iv_subscribe;
        if (numValueOf != null && numValueOf.intValue() == i10) {
            S(new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTvVideoItemView.K(this.f52383a);
                }
            });
            xs.a aVar = xs.a.f75393a;
            ShorttvModel.UGCVideo uGCVideo = this.data;
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            xs.a.b(aVar, PushConstants.TOPIC_SUBSCRIBE, uGCVideo, null, shortTvViewModel2 != null ? shortTvViewModel2.I() : null, 4, null);
            return;
        }
        int i11 = R$id.tv_episode;
        if (numValueOf != null && numValueOf.intValue() == i11) {
            showEpisodeListDialog();
            return;
        }
        int i12 = R$id.tv_like;
        if (numValueOf != null && numValueOf.intValue() == i12) {
            S(new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTvVideoItemView.L(this.f52385a);
                }
            });
            xs.a aVar2 = xs.a.f75393a;
            ShorttvModel.UGCVideo uGCVideo2 = this.data;
            ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
            xs.a.b(aVar2, "like", uGCVideo2, null, shortTvViewModel3 != null ? shortTvViewModel3.I() : null, 4, null);
            return;
        }
        int i13 = R$id.iv_share;
        if (numValueOf != null && numValueOf.intValue() == i13) {
            ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
            if (shortTvViewModel4 != null) {
                shortTvViewModel4.i0(this.data);
            }
            P();
            ShorttvModel.UGCVideo uGCVideo3 = this.data;
            g0(Long.valueOf((uGCVideo3 == null || (interactiveInfo = uGCVideo3.getInteractiveInfo()) == null || (shareNum = interactiveInfo.getShareNum()) == null) ? 1L : Long.parseLong(shareNum)));
            xs.a aVar3 = xs.a.f75393a;
            ShorttvModel.UGCVideo uGCVideo4 = this.data;
            ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
            xs.a.b(aVar3, "share", uGCVideo4, null, shortTvViewModel5 != null ? shortTvViewModel5.I() : null, 4, null);
            return;
        }
        int i14 = R$id.tv_favorite;
        if (numValueOf != null && numValueOf.intValue() == i14) {
            S(new Function0() {
                @Override
                public final Object invoke() {
                    return ShortTvVideoItemView.M(this.f52387a);
                }
            });
            xs.a aVar4 = xs.a.f75393a;
            ShorttvModel.UGCVideo uGCVideo5 = this.data;
            ShortTvViewModel shortTvViewModel6 = this.mShortTvViewModel;
            xs.a.b(aVar4, "favorite", uGCVideo5, null, shortTvViewModel6 != null ? shortTvViewModel6.I() : null, 4, null);
            return;
        }
        int i15 = R$id.iv_play_status;
        if (numValueOf != null && numValueOf.intValue() == i15) {
            O();
            return;
        }
        int i16 = R$id.iv_short_cover;
        if (numValueOf == null || numValueOf.intValue() != i16) {
            int i17 = R$id.tv_name;
            if (numValueOf == null || numValueOf.intValue() != i17) {
                int i18 = R$id.iv_download;
                if (numValueOf == null || numValueOf.intValue() != i18) {
                    int i19 = R$id.iv_back;
                    if (numValueOf == null || numValueOf.intValue() != i19 || (shortTvDetailListFragment = this.fragment) == null || (activity = shortTvDetailListFragment.getActivity()) == null) {
                        return;
                    }
                    activity.finish();
                    return;
                }
                ShortTvViewModel shortTvViewModel7 = this.mShortTvViewModel;
                if (shortTvViewModel7 != null && (strR = shortTvViewModel7.r()) != null && (shortTvViewModel = this.mShortTvViewModel) != null && (cVarL = shortTvViewModel.L()) != null) {
                    Context context = getContext();
                    Intrinsics.f(context, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                    FragmentActivity fragmentActivity = (FragmentActivity) context;
                    ShorttvModel.UGCVideo uGCVideo6 = this.data;
                    String collectionName = (uGCVideo6 == null || (belongToCollection = uGCVideo6.getBelongToCollection()) == null) ? null : belongToCollection.getCollectionName();
                    ShortTvViewModel shortTvViewModel8 = this.mShortTvViewModel;
                    String strI = shortTvViewModel8 != null ? shortTvViewModel8.I() : null;
                    ShorttvModel.UGCVideo uGCVideo7 = this.data;
                    cVarL.a(fragmentActivity, strR, collectionName, "ugc_video", "/ugc_shorts/detail", strI, uGCVideo7 != null ? uGCVideo7.getSubjectId() : null);
                }
                xs.a aVar5 = xs.a.f75393a;
                ShorttvModel.UGCVideo uGCVideo8 = this.data;
                ShortTvViewModel shortTvViewModel9 = this.mShortTvViewModel;
                xs.a.b(aVar5, "saved", uGCVideo8, null, shortTvViewModel9 != null ? shortTvViewModel9.I() : null, 4, null);
                return;
            }
        }
        S(new Function0() {
            @Override
            public final Object invoke() {
                return ShortTvVideoItemView.N(this.f52420a);
            }
        });
        xs.a aVar6 = xs.a.f75393a;
        ShorttvModel.UGCVideo uGCVideo9 = this.data;
        ShortTvViewModel shortTvViewModel10 = this.mShortTvViewModel;
        xs.a.b(aVar6, "cover", uGCVideo9, null, shortTvViewModel10 != null ? shortTvViewModel10.I() : null, 4, null);
    }

    @Override
    public void onComplete(SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        wf.a.C0922a.r(wf.a.f74274a, this.TAG, new String[]{"onCompletion， play next"}, false, 4, null);
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.f(cVar, null, 1, null);
        }
        d0(0L);
    }

    @Override
    protected void onDetachedFromWindow() {
        LiveData liveDataB;
        LiveData liveDataE;
        LiveData liveDataJ;
        LiveData liveDataY;
        LiveData liveDataS;
        super.onDetachedFromWindow();
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataS = shortTvViewModel.S()) != null) {
            liveDataS.o(this.observer);
        }
        ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
        if (shortTvViewModel2 != null && (liveDataY = shortTvViewModel2.y()) != null) {
            liveDataY.o(this.favoriteObserver);
        }
        ShortTvViewModel shortTvViewModel3 = this.mShortTvViewModel;
        if (shortTvViewModel3 != null && (liveDataJ = shortTvViewModel3.J()) != null) {
            liveDataJ.o(this.shareObserver);
        }
        ShortTvViewModel shortTvViewModel4 = this.mShortTvViewModel;
        if (shortTvViewModel4 != null && (liveDataE = shortTvViewModel4.E()) != null) {
            liveDataE.o(this.likeObserver);
        }
        ShortTvViewModel shortTvViewModel5 = this.mShortTvViewModel;
        if (shortTvViewModel5 != null && (liveDataB = shortTvViewModel5.B()) != null) {
            liveDataB.o(this.followObserver);
        }
        this.autoHideRightMenuHandle.removeCallbacksAndMessages(null);
    }

    @Override
    public void onDownloading(int progress, SubtitleDownloadTable stDownloadTable) {
        Intrinsics.h(stDownloadTable, "stDownloadTable");
    }

    @Override
    public void onFail(Exception e10, SubtitleDownloadTable dbBean) {
        Intrinsics.h(e10, "e");
        Intrinsics.h(dbBean, "dbBean");
    }

    @Override
    public void onFocusChange(boolean z10) {
        com.transsion.player.orplayer.e.a.g(this, z10);
    }

    public void onGetDubsInfo() {
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        com.transsion.player.orplayer.e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e mediaSource) {
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.j(cVar, null, 1, null);
        }
        setLoading(true);
    }

    @Override
    public void onLoadingEnd(gn.e mediaSource) {
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.l(cVar, null, 1, null);
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
    }

    @Override
    public void onMediaItemTransition(String str) {
        com.transsion.player.orplayer.e.a.p(this, str);
    }

    public final void onNetConnect() {
        wf.a.C0922a.f(wf.a.f74274a, "ORSubtitle_v", "onNetConnect, 网络恢复，检测字幕", false, 4, null);
    }

    @Override
    public void onPageRelease(int position) {
        onPlayerReset();
    }

    @Override
    public void onPageSelected(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView, ShorttvModel.UGCVideo item) {
        ShortTvViewModel shortTvViewModel;
        this.orPlayer = orPlayer;
        this.orPlayerView = orPlayerView;
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.p(orPlayer);
        }
        xs.c cVar2 = this.dotLayer;
        if (cVar2 != null && orPlayer != null) {
            orPlayer.addPlayerListener(cVar2);
        }
        if (item != null && (shortTvViewModel = this.mShortTvViewModel) != null) {
            shortTvViewModel.c0(item.getEp());
        }
        updateShortTvInfo(orPlayer, orPlayerView, item);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Integer errorCode;
        Intrinsics.h(errorInfo, "errorInfo");
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.r(cVar, errorInfo, null, 2, null);
        }
        wf.a.f74274a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.j() : null) + " --> 短播放失败了", true);
        setLoading(false);
        Integer errorCode2 = errorInfo.getErrorCode();
        if ((errorCode2 != null && errorCode2.intValue() == 2001) || ((errorCode = errorInfo.getErrorCode()) != null && errorCode.intValue() == 2002)) {
            X();
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
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, this.TAG, "player- onPlayerReset data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.P0(false);
        }
        this.isFirstFrame = false;
        this.isPrepare = false;
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.e(true, false);
        }
        AppCompatImageView ivCover = this.viewBinding.f70054i;
        Intrinsics.g(ivCover, "ivCover");
        gs.b.d(ivCover);
        wf.a.C0922a.f(c0922a, this.TAG, "onPlayerReset   visible  " + this, false, 4, null);
        AppCompatImageView ivPlayStatus = this.viewBinding.f70056k;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        gs.b.b(ivPlayStatus);
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.removePlayerListener(this);
        }
        xs.c cVar2 = this.dotLayer;
        if (cVar2 != null && (fVar = this.orPlayer) != null) {
            fVar.removePlayerListener(cVar2);
        }
        this.orPlayer = null;
        this.orPlayerView = null;
        this.pagerLayoutManager = null;
        this.currentSaveProgress = 0L;
        d0(0L);
        e0(100L);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        LiveData liveDataD;
        ShortTvInnerPlayBean shortTvInnerPlayBean;
        ShorttvModel.UGCVideo uGCVideo;
        if (this.isPrepare) {
            return;
        }
        this.isPrepare = true;
        com.transsion.player.orplayer.f fVar = this.orPlayer;
        e0(fVar != null ? fVar.getDuration() : 0L);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null && (liveDataD = shortTvViewModel.D()) != null && (shortTvInnerPlayBean = (ShortTvInnerPlayBean) liveDataD.f()) != null && (uGCVideo = this.data) != null && shortTvInnerPlayBean.getPosition() == uGCVideo.getEp()) {
            long progress = shortTvInnerPlayBean.getProgress();
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPrepare, duration = " + this.viewBinding.f70066u.getProgress() + ", progress = " + progress + "  this = " + this, false, 4, null);
            if (progress > 0) {
                this.currentSaveProgress = progress;
                com.transsion.player.orplayer.f fVar2 = this.orPlayer;
                if (fVar2 != null) {
                    fVar2.seekTo(progress);
                }
            }
            ShortTvViewModel shortTvViewModel2 = this.mShortTvViewModel;
            if (shortTvViewModel2 != null) {
                shortTvViewModel2.m();
            }
        }
        setKeepScreenOn(true);
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        com.transsion.player.orplayer.f fVar;
        com.transsion.player.orplayer.f fVar2;
        if (this.isHorizontalDragging) {
            return;
        }
        long max = this.viewBinding.f70066u.getMax();
        if (max <= 0 || max == 100 || (fVar2 = this.orPlayer) == null || max != fVar2.getDuration()) {
            com.transsion.player.orplayer.f fVar3 = this.orPlayer;
            long duration = fVar3 != null ? fVar3.getDuration() : 0L;
            if (duration <= 0) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onProgress- duration <= 0, return", false, 4, null);
                return;
            }
            e0(duration);
        }
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.z(cVar, progress, null, 2, null);
        }
        d0(progress);
        setLoading(false);
        if (progress > 0) {
            AppCompatImageView ivCover = this.viewBinding.f70054i;
            Intrinsics.g(ivCover, "ivCover");
            if (ivCover.getVisibility() == 0 && (fVar = this.orPlayer) != null && fVar.isPlaying()) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onProgress-progress>= cover gone", false, 4, null);
                AppCompatImageView ivCover2 = this.viewBinding.f70054i;
                Intrinsics.g(ivCover2, "ivCover");
                gs.b.b(ivCover2);
            }
        }
    }

    @Override
    public void onRenderFirstFrame() {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        AppCompatImageView ivCover = this.viewBinding.f70054i;
        Intrinsics.g(ivCover, "ivCover");
        wf.a.C0922a.f(c0922a, str, "player-   viewBinding.ivCover.isVisible:" + (ivCover.getVisibility() == 0) + " onRenderFirstFrame" + this, false, 4, null);
        if (!this.isFirstFrame) {
            this.isFirstFrame = true;
            xs.c cVar = this.dotLayer;
            if (cVar != null) {
                cVar.onRenderFirstFrame();
            }
        }
        setLoading(false);
        AppCompatImageView ivCover2 = this.viewBinding.f70054i;
        Intrinsics.g(ivCover2, "ivCover");
        gs.b.b(ivCover2);
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
        vs.e eVarN;
        ShortTvDetailListFragment shortTvDetailListFragment;
        Lifecycle lifecycle;
        Intrinsics.h(source, "source");
        Intrinsics.h(event, "event");
        int i10 = a.f52360a[event.ordinal()];
        if (i10 == 1) {
            this.isPageHide = true;
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onPause", false, 4, null);
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if ((shortTvViewModel == null || (eVarN = shortTvViewModel.N()) == null || !eVarN.f(this.orPlayer)) && (fVar = this.orPlayer) != null) {
                fVar.pause();
                return;
            }
            return;
        }
        if (i10 == 2) {
            this.isPageHide = false;
            if (!this.isClickPause && (shortTvDetailListFragment = this.fragment) != null && shortTvDetailListFragment.isVisible()) {
                wf.a.C0922a.f(wf.a.f74274a, this.TAG, "ON_RESUME", false, 4, null);
                post(new Runnable() {
                    @Override
                    public final void run() {
                        ShortTvVideoItemView.Q(this.f52421a);
                    }
                });
            }
            U();
            return;
        }
        if (i10 != 5) {
            return;
        }
        ShortTvDetailListFragment shortTvDetailListFragment2 = this.fragment;
        if (shortTvDetailListFragment2 != null && (lifecycle = shortTvDetailListFragment2.getLifecycle()) != null) {
            lifecycle.d(this);
        }
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.i();
        }
        com.transsion.player.orplayer.f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.removePlayerListener(this);
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
    public void onUnGzZip(SubtitleDownloadTable subtitleDownloadTable) {
        com.transsion.subtitle_download.a.C0644a.b(this, subtitleDownloadTable);
    }

    @Override
    public void onVideoPause(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoPause", false, 4, null);
        if (this.isClickPause) {
            AppCompatImageView ivPlayStatus = this.viewBinding.f70056k;
            Intrinsics.g(ivPlayStatus, "ivPlayStatus");
            ivPlayStatus.setVisibility(0);
        }
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.G(cVar, null, 1, null);
        }
        setKeepScreenOn(false);
        Y();
    }

    @Override
    public void onVideoSizeChanged(int width, int height) {
        h0(Integer.valueOf(width), Integer.valueOf(height));
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onVideoSizeChanged " + this, false, 4, null);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "player- onVideoStart", false, 4, null);
        onPrepare(mediaSource);
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            com.transsion.player.orplayer.e.a.J(cVar, null, 1, null);
        }
        AppCompatImageView ivPlayStatus = this.viewBinding.f70056k;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        ivPlayStatus.setVisibility(8);
        setLoading(false);
        setKeepScreenOn(true);
        w();
    }

    public final void reset() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "playNewMedia data: " + this.data, false, 4, null);
        setKeepScreenOn(false);
        this.isClickPause = false;
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        if (shortTvDetailListFragment != null) {
            shortTvDetailListFragment.P0(false);
        }
        this.isFirstFrame = false;
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.e(true, false);
        }
        AppCompatImageView ivPlayStatus = this.viewBinding.f70056k;
        Intrinsics.g(ivPlayStatus, "ivPlayStatus");
        gs.b.b(ivPlayStatus);
        this.currentSaveProgress = 0L;
        d0(0L);
        e0(100L);
    }

    @Override
    public void setData(ShorttvModel.UGCVideo item, ShortTvDetailListFragment fragment, Integer position, boolean videoLoadMore, String basePostId, String baseItemType, boolean isPayloads, boolean fromTrending) {
        WindowInsets rootWindowInsets;
        Insets insets;
        ViewGroup.MarginLayoutParams marginLayoutParams;
        ShorttvModel.UGCVideoCreator creator;
        FragmentActivity activity;
        ShorttvModel.UGCVideoCollection belongToCollection;
        String strI;
        Intrinsics.h(item, "item");
        Intrinsics.h(fragment, "fragment");
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        ShorttvModel.UGCVideoCollection belongToCollection2 = item.getBelongToCollection();
        wf.a.C0922a.f(c0922a, str, "setData position:" + position + "  ep:" + (belongToCollection2 != null ? belongToCollection2.getPosition() : null) + " item:" + item + " " + this, false, 4, null);
        this.data = item;
        this.fragment = fragment;
        this.videoLoadMore = Boolean.valueOf(videoLoadMore);
        this.basePostId = basePostId;
        this.position = position;
        this.viewBinding.f70051f.setReferencedIds(this.viewBinding.f70051f.getReferencedIds());
        FragmentActivity activity2 = fragment.getActivity();
        if (activity2 != null) {
            this.mShortTvViewModel = getViewModel(activity2);
            this.mShortTvSubViewModel = (at.a) new v0(activity2).a(at.a.class);
        }
        fragment.getLifecycle().a(this);
        if (!isPayloads) {
            this.dotLayer = new xs.c(fragment, this.mShortTvViewModel);
        }
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.l(basePostId);
        }
        xs.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.k(baseItemType);
        }
        xs.c cVar3 = this.dotLayer;
        if (cVar3 != null) {
            cVar3.r(fragment.getPageName());
        }
        ShorttvModel.UGCVideo uGCVideo = this.data;
        if (uGCVideo == null || uGCVideo.isDataNotComplete()) {
            int iVideoUGCPosition = item.videoUGCPosition();
            TnTextView tnTextView = this.viewBinding.G;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
            String str2 = String.format("EP%s", Arrays.copyOf(new Object[]{ShortTvExtKt.n(Integer.valueOf(iVideoUGCPosition))}, 1));
            Intrinsics.g(str2, "format(...)");
            tnTextView.setText(str2);
            return;
        }
        xs.c cVar4 = this.dotLayer;
        if (cVar4 != null) {
            cVar4.s(this.data);
        }
        xs.c cVar5 = this.dotLayer;
        if (cVar5 != null) {
            ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
            if (shortTvViewModel == null || (strI = shortTvViewModel.I()) == null) {
                strI = "";
            }
            cVar5.n(strI);
        }
        ShorttvModel.UGCVideo uGCVideo2 = this.data;
        String strN = ShortTvExtKt.n((uGCVideo2 == null || (belongToCollection = uGCVideo2.getBelongToCollection()) == null) ? null : belongToCollection.getPosition());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int i10 = Build.VERSION.SDK_INT;
        spannableStringBuilder.setSpan(i10 >= 29 ? new ImageSpan(getContext(), ShorttvModel.f51715a.a(), 2) : new ImageSpan(getContext(), ShorttvModel.f51715a.a(), 1), 0, 0, 33);
        ShorttvModel.UGCVideo uGCVideo3 = this.data;
        String title = uGCVideo3 != null ? uGCVideo3.getTitle() : null;
        ShorttvModel.UGCVideo uGCVideo4 = this.data;
        spannableStringBuilder.append((CharSequence) ("ShortTV • " + title + " / EP" + (uGCVideo4 != null ? Integer.valueOf(uGCVideo4.videoUGCPosition()) : null)));
        AppCompatTextView appCompatTextView = this.viewBinding.f70070y;
        appCompatTextView.setText(spannableStringBuilder);
        appCompatTextView.setText(spannableStringBuilder);
        ShorttvModel.UGCVideo uGCVideo5 = this.data;
        if (uGCVideo5 != null && (creator = uGCVideo5.getCreator()) != null && (activity = fragment.getActivity()) != null) {
            is.b.a aVar = is.b.f62607a;
            ShapeableImageView ivShortCover = this.viewBinding.f70058m;
            Intrinsics.g(ivShortCover, "ivShortCover");
            String avatar = creator.getAvatar();
            aVar.k(activity, ivShortCover, avatar == null ? "" : avatar, (4064 & 8) != 0 ? aVar.c() : 0, (4064 & 16) != 0 ? aVar.b() : 0, (4064 & 32) != 0, (4064 & 64) != 0, (4064 & 128) != 0, (4064 & 256) != 0 ? false : false, (4064 & 512) != 0 ? false : false, (4064 & 1024) != 0 ? false : false, (4064 & 2048) != 0 ? 25 : 0);
            this.viewBinding.C.setText(creator.getNickname());
        }
        ShorttvModel.UGCVideo uGCVideo6 = this.data;
        Intrinsics.e(uGCVideo6);
        T(strN, uGCVideo6);
        if (i10 >= 30) {
            Context context = getContext();
            Intrinsics.f(context, "null cannot be cast to non-null type android.app.Activity");
            Window window = ((Activity) context).getWindow();
            if (window != null && (rootWindowInsets = window.getDecorView().getRootWindowInsets()) != null && (insets = rootWindowInsets.getInsets(WindowInsets.Type.tappableElement())) != null) {
                boolean z10 = com.blankj.utilcode.util.d.e(window) && com.blankj.utilcode.util.d.a() > 1;
                int iE = com.blankj.utilcode.util.i.e(16.0f);
                if (z10 || insets.top <= 0) {
                    Space progressGuideline = this.viewBinding.f70064s;
                    Intrinsics.g(progressGuideline, "progressGuideline");
                    ViewGroup.LayoutParams layoutParams = progressGuideline.getLayoutParams();
                    if (layoutParams == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    }
                    ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams;
                    ViewGroup.LayoutParams layoutParams2 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
                    int i11 = marginLayoutParams2 != null ? marginLayoutParams2.leftMargin : 0;
                    ViewGroup.LayoutParams layoutParams3 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
                    int i12 = marginLayoutParams3 != null ? marginLayoutParams3.topMargin : 0;
                    ViewGroup.LayoutParams layoutParams4 = getLayoutParams();
                    marginLayoutParams = layoutParams4 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams4 : null;
                    bVar.setMargins(i11, i12, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, iE);
                    progressGuideline.setLayoutParams(bVar);
                } else {
                    Space progressGuideline2 = this.viewBinding.f70064s;
                    Intrinsics.g(progressGuideline2, "progressGuideline");
                    ViewGroup.LayoutParams layoutParams5 = progressGuideline2.getLayoutParams();
                    if (layoutParams5 == null) {
                        throw new NullPointerException("null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                    }
                    ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams5;
                    ViewGroup.LayoutParams layoutParams6 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams4 = layoutParams6 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams6 : null;
                    int i13 = marginLayoutParams4 != null ? marginLayoutParams4.leftMargin : 0;
                    ViewGroup.LayoutParams layoutParams7 = getLayoutParams();
                    ViewGroup.MarginLayoutParams marginLayoutParams5 = layoutParams7 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams7 : null;
                    int i14 = marginLayoutParams5 != null ? marginLayoutParams5.topMargin : 0;
                    ViewGroup.LayoutParams layoutParams8 = getLayoutParams();
                    marginLayoutParams = layoutParams8 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams8 : null;
                    bVar2.setMargins(i13, i14, marginLayoutParams != null ? marginLayoutParams.rightMargin : 0, RangesKt.e(iE, insets.top));
                    progressGuideline2.setLayoutParams(bVar2);
                }
            }
        }
        i0(item);
        f0();
        b0();
        c0();
        a0();
        E();
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
    }

    public final void showEpisodeListDialog() {
        ShortTvDetailListFragment shortTvDetailListFragment = this.fragment;
        Intrinsics.f(shortTvDetailListFragment, "null cannot be cast to non-null type com.transsion.shorttv_pugc.ui.fragment.ShortTvDetailListFragment");
        shortTvDetailListFragment.Q0();
    }

    public void updateLockState(ShorttvModel.UGCVideo item) {
    }

    public void updateShortTvInfo(com.transsion.player.orplayer.f orPlayer, ORPlayerView orPlayerView, ShorttvModel.UGCVideo item) {
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.TAG;
        Integer num = this.position;
        ShorttvModel.UGCVideo uGCVideo = this.data;
        c0922a.u(str, "updateShortTvInfo:" + num + " ugcVideoId:" + (uGCVideo != null ? uGCVideo.getUgcVideoId() : null), true);
        if ((item != null ? item.getPlayUrl() : null) == null) {
            c0922a.c(this.TAG, "onPageSelect position:" + this.position + " item is null ", true);
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
            v(orPlayerView, null);
            wf.a.C0922a.f(c0922a, this.TAG, "addView-----", false, 4, null);
        }
        videoStartPrepare(this.pageFrom);
        String playUrl = item.getPlayUrl();
        if (playUrl != null) {
            wf.a.C0922a.r(c0922a, this.TAG, new String[]{"------seekTo url=" + playUrl + " "}, false, 4, null);
            if (orPlayer != null) {
                orPlayer.seekTo(playUrl, 0L);
            }
            setVideoUrl(playUrl);
        }
        if (orPlayer != null) {
            orPlayer.play();
        }
    }

    public final void videoStartPrepare(String pageFrom) {
        Intrinsics.h(pageFrom, "pageFrom");
        this.isFirstFrame = false;
        this.pageFrom = pageFrom;
        xs.c cVar = this.dotLayer;
        if (cVar != null) {
            cVar.q(pageFrom);
        }
        xs.c cVar2 = this.dotLayer;
        if (cVar2 != null) {
            cVar2.o("immersive_play");
        }
        xs.c cVar3 = this.dotLayer;
        if (cVar3 != null) {
            ShorttvModel.UGCVideo uGCVideo = this.data;
            cVar3.m(String.valueOf(uGCVideo != null ? Integer.valueOf(uGCVideo.getEp()) : null));
        }
        xs.c cVar4 = this.dotLayer;
        if (cVar4 != null) {
            cVar4.g();
        }
        xs.c cVar5 = this.dotLayer;
        if (cVar5 != null) {
            cVar5.a();
        }
        setLoading(true);
        ShortTvViewModel shortTvViewModel = this.mShortTvViewModel;
        if (shortTvViewModel != null) {
            shortTvViewModel.X();
        }
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
