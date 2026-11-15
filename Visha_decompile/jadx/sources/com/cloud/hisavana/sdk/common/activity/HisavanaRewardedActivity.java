package com.cloud.hisavana.sdk.common.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.app.FrameMetricsAggregator;
import androidx.core.app.NotificationCompat;
import androidx.core.content.ContextCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.webkit.ProxyConfig;
import com.cloud.hisavana.sdk.R;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.api.view.AdBadgeView;
import com.cloud.hisavana.sdk.api.view.AdCloseView;
import com.cloud.hisavana.sdk.api.view.AdDisclaimerView;
import com.cloud.hisavana.sdk.api.view.StoreMarkView;
import com.cloud.hisavana.sdk.common.activity.HisavanaRewardedActivity;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.PslinkInfo;
import com.cloud.hisavana.sdk.common.bean.RewardedState;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.bean.VideoMask;
import com.cloud.hisavana.sdk.common.constant.Constants;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.common.tracking.DownUpPointBean;
import com.cloud.hisavana.sdk.common.tranmeasure.a;
import com.cloud.hisavana.sdk.common.util.HSChronometer;
import com.cloud.hisavana.sdk.common.util.HSCommonUtils;
import com.cloud.hisavana.sdk.common.widget.InteractiveWebView;
import com.cloud.hisavana.sdk.common.widget.video.RewardedVideoView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.NativeBean;
import com.cloud.hisavana.sdk.m;
import com.cloud.hisavana.sdk.p;
import com.cloud.hisavana.sdk.t;
import com.cloud.hisavana.sdk.u;
import com.cloud.hisavana.sdk.v;
import com.cloud.hisavana.sdk.w;
import com.google.android.gms.ads.RequestConfiguration;
import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.cy9;
import defpackage.g1a;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j9d;
import defpackage.kn8;
import defpackage.mrd;
import defpackage.pp4;
import defpackage.rpd;
import defpackage.t6;
import defpackage.tl4;
import defpackage.ul4;
import defpackage.vkd;
import defpackage.y45;
import defpackage.yt4;
import defpackage.zfb;
import defpackage.zl4;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000à\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\f\b\u0016\u0018\u0000 c2\u00020\u00012\u00020\u0002:\u0003TQYB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\u0004J\u000f\u0010\b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\t\u0010\u0004J\u000f\u0010\n\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\n\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u000b\u0010\u0004J\u000f\u0010\f\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\f\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0014\u0010\u0004J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\u0004J\u000f\u0010\u001c\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u0004J\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010#\u001a\u00020\u00052\u0006\u0010\"\u001a\u00020!H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\u00052\u0006\u0010%\u001a\u00020!H\u0002¢\u0006\u0004\b&\u0010$J\u000f\u0010'\u001a\u00020\u0005H\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0005H\u0002¢\u0006\u0004\b(\u0010\u0004J\u000f\u0010)\u001a\u00020\u0005H\u0002¢\u0006\u0004\b)\u0010\u0004J'\u0010-\u001a\u00020\u00052\u0006\u0010*\u001a\u00020\u001d2\u0006\u0010+\u001a\u00020\u001d2\u0006\u0010,\u001a\u00020\u001dH\u0002¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u0005H\u0002¢\u0006\u0004\b/\u0010\u0004J\u000f\u00100\u001a\u00020\u0005H\u0002¢\u0006\u0004\b0\u0010\u0004J\u0017\u00102\u001a\u00020\u00052\u0006\u00101\u001a\u00020\rH\u0002¢\u0006\u0004\b2\u00103J\u0019\u00106\u001a\u00020\u00052\b\u00105\u001a\u0004\u0018\u000104H\u0002¢\u0006\u0004\b6\u00107J!\u0010;\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\b\u0010:\u001a\u0004\u0018\u000109H\u0002¢\u0006\u0004\b;\u0010<J\u0017\u0010>\u001a\u00020\u00052\u0006\u0010=\u001a\u00020\rH\u0002¢\u0006\u0004\b>\u00103J\u0017\u0010@\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001dH\u0002¢\u0006\u0004\b@\u0010 J!\u0010C\u001a\u00020\u00052\u0006\u0010?\u001a\u00020\u001d2\b\u0010B\u001a\u0004\u0018\u00010AH\u0002¢\u0006\u0004\bC\u0010DJ\u0019\u0010G\u001a\u00020\u00052\b\u0010F\u001a\u0004\u0018\u00010EH\u0014¢\u0006\u0004\bG\u0010HJ\u0017\u0010K\u001a\u00020\u00052\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0005H\u0014¢\u0006\u0004\bM\u0010\u0004J\u000f\u0010N\u001a\u00020\u0005H\u0014¢\u0006\u0004\bN\u0010\u0004J\u000f\u0010O\u001a\u00020\u0005H\u0017¢\u0006\u0004\bO\u0010\u0004J\u000f\u0010P\u001a\u00020\u0005H\u0014¢\u0006\u0004\bP\u0010\u0004J!\u0010Q\u001a\u00020\u00052\u0006\u00108\u001a\u00020\r2\b\u0010:\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\bQ\u0010<J\u0017\u0010T\u001a\u00020\u00052\u0006\u0010S\u001a\u00020RH\u0016¢\u0006\u0004\bT\u0010UJ\u0011\u0010W\u001a\u0004\u0018\u00010VH\u0016¢\u0006\u0004\bW\u0010XJ\u000f\u0010Y\u001a\u00020\rH\u0016¢\u0006\u0004\bY\u0010\u000fJ\u0017\u0010T\u001a\u00020\u00052\u0006\u0010Z\u001a\u00020\rH\u0016¢\u0006\u0004\bT\u00103J\u000f\u0010[\u001a\u00020\u0005H\u0016¢\u0006\u0004\b[\u0010\u0004J\u000f\u0010T\u001a\u00020\u0005H\u0016¢\u0006\u0004\bT\u0010\u0004J\u000f\u0010\\\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\\\u0010\u0004J\u0019\u0010T\u001a\u00020\u00052\b\u0010]\u001a\u0004\u0018\u000109H\u0016¢\u0006\u0004\bT\u0010^J\u000f\u0010Q\u001a\u00020\u0005H\u0016¢\u0006\u0004\bQ\u0010\u0004R\u0014\u0010`\u001a\u00020\u001d8\u0002X\u0082D¢\u0006\u0006\n\u0004\bQ\u0010_R\u0014\u0010b\u001a\u00020R8\u0002X\u0082D¢\u0006\u0006\n\u0004\bY\u0010aR\u0016\u0010d\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010cR\u0018\u0010f\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\\\u0010eR\u0016\u0010g\u001a\u00020\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bW\u0010_R\u0016\u0010i\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bh\u0010cR\u0016\u0010j\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010aR\u0018\u0010m\u001a\u0004\u0018\u00010k8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010lR\u0018\u0010p\u001a\u0004\u0018\u00010n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010oR\u0018\u0010s\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010rR\u0018\u0010v\u001a\u0004\u0018\u00010t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010uR\u0018\u0010z\u001a\u0004\u0018\u00010w8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bx\u0010yR\u0018\u0010|\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010rR\u0018\u0010~\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010rR\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010rR\u001c\u0010\u0084\u0001\u001a\u0005\u0018\u00010\u0081\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0082\u0001\u0010\u0083\u0001R\u001c\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0085\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0086\u0001\u0010\u0087\u0001R\u001c\u0010\u008c\u0001\u001a\u0005\u0018\u00010\u0089\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008a\u0001\u0010\u008b\u0001R\u001c\u0010\u0090\u0001\u001a\u0005\u0018\u00010\u008d\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008e\u0001\u0010\u008f\u0001R\u001c\u0010\u0094\u0001\u001a\u0005\u0018\u00010\u0091\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0093\u0001R\u001b\u0010\u0097\u0001\u001a\u0005\u0018\u00010\u0095\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b6\u0010\u0096\u0001R\u001b\u0010\u0098\u0001\u001a\u0005\u0018\u00010\u0095\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u001f\u0010\u0096\u0001R\u0018\u0010\u009a\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bC\u0010\u0099\u0001R\u0018\u0010\u009b\u0001\u001a\u00020\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b-\u0010\u0099\u0001R\u0018\u0010\u009d\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009c\u0001\u0010cR\u0018\u0010\u009f\u0001\u001a\u00020!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u009e\u0001\u0010cR\u0019\u0010¢\u0001\u001a\u00030 \u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b#\u0010¡\u0001R\u0018\u0010¤\u0001\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b£\u0001\u0010aR,\u0010¬\u0001\u001a\u0005\u0018\u00010¥\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b¦\u0001\u0010§\u0001\u001a\u0006\b¨\u0001\u0010©\u0001\"\u0006\bª\u0001\u0010«\u0001R,\u0010´\u0001\u001a\u0005\u0018\u00010\u00ad\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\b®\u0001\u0010¯\u0001\u001a\u0006\b°\u0001\u0010±\u0001\"\u0006\b²\u0001\u0010³\u0001R\u0017\u0010µ\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b@\u0010@R\u0017\u0010¶\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b>\u0010@R\u0017\u0010·\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u0010@R\u0017\u0010¸\u0001\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010@¨\u0006¹\u0001"}, d2 = {"Lcom/cloud/hisavana/sdk/common/activity/HisavanaRewardedActivity;", "Landroid/app/Activity;", "Lmrd;", MethodDecl.initName, "()V", "Lzfb;", "j", "Y", ExifInterface.LATITUDE_SOUTH, "U", "n0", "g0", "p0", "", "q0", "()Z", "c0", "i0", "j0", "t0", "l0", "", "volume", "k", "(F)V", "s0", "a0", "r0", "e0", "", "videoUrl", "w", "(Ljava/lang/String;)V", "", "duration", "B", "(J)V", "remainingDuration", CmcdData.STREAM_TYPE_LIVE, CmcdData.STREAMING_FORMAT_HLS, "w0", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "title", "message", "buttonText", "y", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "u0", "v0", "isShowToast", "L", "(Z)V", "Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;", "adErrorCode", "v", "(Lcom/cloud/hisavana/sdk/common/constant/TaErrorCode;)V", "isClose", "Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;", "downUpPointBean", "H", "(ZLcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V", "isSentEvent", RequestConfiguration.MAX_AD_CONTENT_RATING_G, NotificationCompat.CATEGORY_EVENT, "F", "", "params", "x", "(Ljava/lang/String;Ljava/lang/Object;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "onResume", "onPause", "onBackPressed", "onDestroy", "b", "", "psClickType", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(I)V", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "f", "()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "c", "status", "d", "e", "pointBean", "(Lcom/cloud/hisavana/sdk/common/tracking/DownUpPointBean;)V", "Ljava/lang/String;", Progress.TAG, "I", TypedValues.MotionScene.S_DEFAULT_DURATION, "J", "rewardDuration", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "adBean", "prefix", GslbInterceptor.HEADER_KEY_GSLB, "observerId", "adMediaType", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "adMainLayout", "Landroid/widget/FrameLayout;", "Landroid/widget/FrameLayout;", "adContainer", "Landroid/widget/ImageView;", "Landroid/widget/ImageView;", "adVolume", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;", "Lcom/cloud/hisavana/sdk/common/util/HSChronometer;", "adChronometer", "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/cloud/hisavana/sdk/common/widget/video/RewardedVideoView;", "adVideoView", "n", "adImageView", "o", "adIcon", TtmlNode.TAG_P, "adChoicesView", "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;", "q", "Lcom/cloud/hisavana/sdk/api/view/AdBadgeView;", "adBadgeView", "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;", "r", "Lcom/cloud/hisavana/sdk/api/view/AdCloseView;", "adCloseView", "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;", "s", "Lcom/cloud/hisavana/sdk/api/view/StoreMarkView;", "storeMarkView", "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;", "t", "Lcom/cloud/hisavana/sdk/api/view/AdDisclaimerView;", "adDisclaimerView", "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;", "u", "Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;", "interactiveWebView", "Lzl4;", "Lzl4;", "retainDialog", "ruDialog", "Z", "isLandscape", "isNeedRuMargin", "z", "lastClickTime", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "triggerMillis", "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", "Lcom/cloud/hisavana/sdk/common/bean/RewardedState;", ICode.CALL.CALL_KEY_STATE, "C", "closeDelayTimeDuration", "Lyt4;", "D", "Lyt4;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()Lyt4;", "setRewardStyle", "(Lyt4;)V", "rewardStyle", "Ltl4;", ExifInterface.LONGITUDE_EAST, "Ltl4;", "getHsConfirmPopUpWindow", "()Ltl4;", "setHsConfirmPopUpWindow", "(Ltl4;)V", "hsConfirmPopUpWindow", "downX", "downY", "upX", "upY", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public class HisavanaRewardedActivity extends Activity implements mrd {

    public static final Companion INSTANCE = new Companion(null);
    public static WeakReference K;

    public long triggerMillis;

    public int closeDelayTimeDuration;

    public yt4 rewardStyle;

    public tl4 hsConfirmPopUpWindow;

    public AdsDTO adBean;

    public long observerId;

    public int adMediaType;

    public ConstraintLayout adMainLayout;

    public FrameLayout adContainer;

    public ImageView adVolume;

    public HSChronometer adChronometer;

    public RewardedVideoView adVideoView;

    public ImageView adImageView;

    public ImageView adIcon;

    public ImageView adChoicesView;

    public AdBadgeView adBadgeView;

    public AdCloseView adCloseView;

    public StoreMarkView storeMarkView;

    public AdDisclaimerView adDisclaimerView;

    public InteractiveWebView interactiveWebView;

    public zl4 retainDialog;

    public zl4 ruDialog;

    public boolean isLandscape;

    public boolean isNeedRuMargin;

    public long lastClickTime;

    public final String tag = "Rewarded";

    public final int defaultDuration = 5;

    public long rewardDuration = ((long) 5) * 1000;

    public String prefix = "";

    public RewardedState state = new RewardedState(0, 0.0f, false, false, false, false, false, false, false, FrameMetricsAggregator.EVERY_DURATION, null);

    public float downX = -1.0f;

    public float downY = -1.0f;

    public float upX = -1.0f;

    public float upY = -1.0f;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(WeakReference weakReference) {
            HisavanaRewardedActivity.K = weakReference;
        }

        public Companion() {
        }
    }

    public final class b extends a {
        public WeakReference b;

        public b(HisavanaRewardedActivity hisavanaRewardedActivity) {
            this.b = new WeakReference(hisavanaRewardedActivity);
        }

        @Override
        public void a(AdsDTO adsDTO) {
            super.a(adsDTO);
            if (((HisavanaRewardedActivity) this.b.get()) != null) {
                HisavanaRewardedActivity hisavanaRewardedActivity = HisavanaRewardedActivity.this;
                hisavanaRewardedActivity.u0();
                hisavanaRewardedActivity.v0();
            }
        }
    }

    public final class c implements View.OnTouchListener {
        public final boolean b;

        public c(boolean z) {
            this.b = z;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            y45.j(view, "v");
            y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
            int action = motionEvent.getAction();
            if (action == 0) {
                HisavanaRewardedActivity.this.downX = motionEvent.getX();
                HisavanaRewardedActivity.this.downY = motionEvent.getY();
            } else if (action == 1) {
                HisavanaRewardedActivity.this.upX = motionEvent.getX();
                HisavanaRewardedActivity.this.upY = motionEvent.getY();
                if (Math.hypot(HisavanaRewardedActivity.this.upX - HisavanaRewardedActivity.this.downX, HisavanaRewardedActivity.this.upY - HisavanaRewardedActivity.this.downY) < 50.0d && this.b) {
                    view.performClick();
                    yt4 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
                    if (rewardStyle != null) {
                        rewardStyle.e(false, new DownUpPointBean(HisavanaRewardedActivity.this.downX, HisavanaRewardedActivity.this.downY, HisavanaRewardedActivity.this.upX, HisavanaRewardedActivity.this.upY, view.getMeasuredWidth(), view.getMeasuredHeight()), null);
                    }
                }
            }
            return this.b;
        }
    }

    public static final class d implements InteractiveWebView.c {
        public d() {
        }

        @Override
        public void a(String str) {
            ikd.b().d(HisavanaRewardedActivity.this.tag, "interactiveEvent, eventId is " + str);
            AthenaTracker.B(HisavanaRewardedActivity.this.adBean, str);
        }

        @Override
        public void b() {
            ikd.b().d(HisavanaRewardedActivity.this.tag, "handleClick");
            yt4 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
            if (rewardStyle != null) {
                float f = HisavanaRewardedActivity.this.downX;
                float f2 = HisavanaRewardedActivity.this.downY;
                float f3 = HisavanaRewardedActivity.this.upX;
                float f4 = HisavanaRewardedActivity.this.upY;
                InteractiveWebView interactiveWebView = HisavanaRewardedActivity.this.interactiveWebView;
                int measuredWidth = interactiveWebView != null ? interactiveWebView.getMeasuredWidth() : 0;
                InteractiveWebView interactiveWebView2 = HisavanaRewardedActivity.this.interactiveWebView;
                rewardStyle.e(false, new DownUpPointBean(f, f2, f3, f4, measuredWidth, interactiveWebView2 != null ? interactiveWebView2.getMeasuredHeight() : 0), HisavanaRewardedActivity.this.interactiveWebView);
            }
        }

        @Override
        public void c() {
            ikd.b().d(HisavanaRewardedActivity.this.tag, "timeoutShutdown");
        }
    }

    public static final class e extends vkd {
        public final RewardedVideoView e;
        public final HisavanaRewardedActivity f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(RewardedVideoView rewardedVideoView, HisavanaRewardedActivity hisavanaRewardedActivity, AdsDTO adsDTO) {
            super(adsDTO);
            this.e = rewardedVideoView;
            this.f = hisavanaRewardedActivity;
        }

        @Override
        public void a(p pVar) {
            y45.j(pVar, "error");
            super.a(pVar);
            this.e.showRepeatButton(true);
        }

        @Override
        public void d() {
            if (!this.f.state.isPlayStart()) {
                super.d();
            }
            this.f.state.setPlayStart(true);
        }

        @Override
        public void onComplete() {
            if (!this.f.state.isPlayComplete()) {
                super.onComplete();
            }
            this.f.state.setPlayComplete(true);
        }

        @Override
        public void onIsPlayingChanged(boolean z) {
            super.onIsPlayingChanged(z);
            if (z) {
                this.e.showRepeatButton(false);
            }
        }

        @Override
        public void onVolumeChanged(float f) {
            super.onVolumeChanged(f);
            this.f.state.setVideoVolume(f);
            this.f.k(f);
        }
    }

    public static final class f extends DrawableResponseListener {
        public f() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (taErrorCode != null) {
                HisavanaRewardedActivity.this.v(taErrorCode);
            }
            HisavanaRewardedActivity.this.G(false);
        }

        @Override
        public void g(int i, AdImage adImage) {
            if (adImage != null && adImage.isAdImageRecycled()) {
                HisavanaRewardedActivity.this.v(new TaErrorCode(i, "bitmap is null"));
                HisavanaRewardedActivity.this.G(false);
                return;
            }
            ImageView imageView = HisavanaRewardedActivity.this.adImageView;
            if ((imageView != null ? imageView.getParent() : null) != null) {
                ImageView imageView2 = HisavanaRewardedActivity.this.adImageView;
                ViewParent parent = imageView2 != null ? imageView2.getParent() : null;
                y45.h(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                ((ViewGroup) parent).removeView(HisavanaRewardedActivity.this.adImageView);
            }
            FrameLayout frameLayout = HisavanaRewardedActivity.this.adContainer;
            if (frameLayout != null) {
                frameLayout.addView(HisavanaRewardedActivity.this.adImageView);
            }
        }
    }

    public static final class g implements tl4.a {
        public g() {
        }

        @Override
        public void a() {
            try {
                if (Build.VERSION.SDK_INT <= 29) {
                    HisavanaRewardedActivity.this.U();
                }
            } catch (Throwable unused) {
            }
            HisavanaRewardedActivity.this.h();
        }

        @Override
        public void onClick(View view) {
            HisavanaRewardedActivity.this.a(2);
            HisavanaRewardedActivity.this.d();
            AdsDTO adsDTO = HisavanaRewardedActivity.this.adBean;
            if (adsDTO != null) {
                adsDTO.setAdClickTracking(false);
            }
            HisavanaRewardedActivity.this.b(false, null);
            HisavanaRewardedActivity.this.G(true);
        }
    }

    public static final class h implements zl4.a {
        public h() {
        }

        @Override
        public void a() {
            HSChronometer hSChronometer = HisavanaRewardedActivity.this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.stop();
            }
            zl4 zl4Var = HisavanaRewardedActivity.this.retainDialog;
            if (zl4Var != null) {
                zl4Var.dismiss();
            }
            HisavanaRewardedActivity.this.state.setShowRetainDialog(false);
            HisavanaRewardedActivity.this.H(true, null);
        }

        @Override
        public void b() {
            RewardedVideoView rewardedVideoView;
            zl4 zl4Var = HisavanaRewardedActivity.this.retainDialog;
            if (zl4Var != null) {
                zl4Var.dismiss();
            }
            HSChronometer hSChronometer = HisavanaRewardedActivity.this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.resumeCountdown(HisavanaRewardedActivity.this.state.getCountdownRemainDuration());
            }
            if (!HisavanaRewardedActivity.this.state.isPlayComplete() && (rewardedVideoView = HisavanaRewardedActivity.this.adVideoView) != null) {
                rewardedVideoView.resume();
            }
            HisavanaRewardedActivity.this.state.setShowRetainDialog(false);
        }

        @Override
        public void c() {
            zl4.a.C0464a.a(this);
        }
    }

    public static final class i implements zl4.a {
        public i() {
        }

        @Override
        public void a() {
            zl4.a.C0464a.b(this);
        }

        @Override
        public void b() {
            zl4.a.C0464a.c(this);
        }

        @Override
        public void c() {
            RewardedVideoView rewardedVideoView;
            zl4 zl4Var = HisavanaRewardedActivity.this.ruDialog;
            if (zl4Var != null) {
                zl4Var.dismiss();
            }
            HSChronometer hSChronometer = HisavanaRewardedActivity.this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.resumeCountdown(HisavanaRewardedActivity.this.state.getCountdownRemainDuration());
            }
            if (!HisavanaRewardedActivity.this.state.isPlayComplete() && (rewardedVideoView = HisavanaRewardedActivity.this.adVideoView) != null) {
                rewardedVideoView.resume();
            }
            HisavanaRewardedActivity.this.state.setShowRuDialog(false);
        }
    }

    public static final class j implements HSChronometer.a {
        public j() {
        }

        @Override
        public void a(long j) {
            HisavanaRewardedActivity.this.l(j);
        }

        @Override
        public void onFinish() {
            yt4 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
            if (rewardStyle != null) {
                rewardStyle.j();
            }
            HisavanaRewardedActivity.this.L(false);
        }
    }

    public static final class k implements HSChronometer.a {
        public k() {
        }

        @Override
        public void a(long j) {
            HisavanaRewardedActivity.this.l(j);
        }

        @Override
        public void onFinish() {
            yt4 rewardStyle = HisavanaRewardedActivity.this.getRewardStyle();
            if (rewardStyle != null) {
                rewardStyle.j();
            }
            HisavanaRewardedActivity.this.L(false);
        }
    }

    public static final void D(HisavanaRewardedActivity hisavanaRewardedActivity, View view) {
        y45.j(hisavanaRewardedActivity, "this$0");
        RewardedVideoView rewardedVideoView = hisavanaRewardedActivity.adVideoView;
        if (rewardedVideoView != null) {
            rewardedVideoView.toggleVolume();
        }
    }

    public static final void K(HisavanaRewardedActivity hisavanaRewardedActivity, View view) {
        y45.j(hisavanaRewardedActivity, "this$0");
        HSChronometer hSChronometer = hisavanaRewardedActivity.adChronometer;
        if ((hSChronometer != null && hSChronometer.getIsTimeUp()) || hisavanaRewardedActivity.state.isRewarded()) {
            hisavanaRewardedActivity.G(true);
            return;
        }
        RewardedState rewardedState = hisavanaRewardedActivity.state;
        HSChronometer hSChronometer2 = hisavanaRewardedActivity.adChronometer;
        rewardedState.setCountdownRemainDuration(hSChronometer2 != null ? hSChronometer2.pauseCountdown() : 0L);
        RewardedVideoView rewardedVideoView = hisavanaRewardedActivity.adVideoView;
        if (rewardedVideoView != null) {
            rewardedVideoView.pause();
        }
        hisavanaRewardedActivity.i();
    }

    public static final void m(ConstraintLayout constraintLayout, HisavanaRewardedActivity hisavanaRewardedActivity, AdsDTO adsDTO) {
        y45.j(constraintLayout, "$container");
        y45.j(hisavanaRewardedActivity, "this$0");
        y45.j(adsDTO, "$bean");
        int measuredHeight = constraintLayout.getMeasuredHeight();
        AdDisclaimerView adDisclaimerView = hisavanaRewardedActivity.adDisclaimerView;
        if (adDisclaimerView != null) {
            adDisclaimerView.setDisplayStyle(adsDTO.getDisplayRule(), kn8.f(adsDTO), kn8.e(adsDTO), measuredHeight);
        }
        AdDisclaimerView adDisclaimerView2 = hisavanaRewardedActivity.adDisclaimerView;
        if (adDisclaimerView2 == null) {
            return;
        }
        adDisclaimerView2.setVisibility(0);
    }

    public static final void q(HisavanaRewardedActivity hisavanaRewardedActivity, View view) {
        y45.j(hisavanaRewardedActivity, "this$0");
        U0.k(ul4.a(), hisavanaRewardedActivity.adBean);
    }

    public static final void s(HisavanaRewardedActivity hisavanaRewardedActivity, String str, String str2, String str3) {
        y45.j(hisavanaRewardedActivity, "this$0");
        HSChronometer hSChronometer = hisavanaRewardedActivity.adChronometer;
        if ((hSChronometer == null || !hSChronometer.getIsTimeUp()) && !hisavanaRewardedActivity.state.isRewarded()) {
            RewardedState rewardedState = hisavanaRewardedActivity.state;
            HSChronometer hSChronometer2 = hisavanaRewardedActivity.adChronometer;
            rewardedState.setCountdownRemainDuration(hSChronometer2 != null ? hSChronometer2.pauseCountdown() : 0L);
            RewardedVideoView rewardedVideoView = hisavanaRewardedActivity.adVideoView;
            if (rewardedVideoView != null) {
                rewardedVideoView.pause();
            }
        }
        y45.g(str);
        y45.g(str2);
        y45.g(str3);
        hisavanaRewardedActivity.y(str, str2, str3);
    }

    public final void B(long duration) {
        if (ikd.c()) {
            ikd.b().i(this.tag, "-----------> startCountdown " + this.state);
        }
        yt4 yt4Var = this.rewardStyle;
        if (yt4Var != null) {
            yt4Var.c(this.adChronometer);
        }
        if (this.state.isShowRetainDialog()) {
            i();
        }
        if (this.state.isShowRuDialog()) {
            String string = getResources().getString(R.string.disclaimer);
            y45.i(string, "getString(...)");
            String strF = kn8.f(this.adBean);
            y45.i(strF, "getDisclaimerText(...)");
            String string2 = getResources().getString(R.string.ok);
            y45.i(string2, "getString(...)");
            y(string, strF, string2);
        }
        l(duration);
        boolean z = this.state.isShowRetainDialog() || this.state.isShowRuDialog() || this.state.isPaused();
        if (this.state.isRewarded()) {
            HSChronometer hSChronometer = this.adChronometer;
            if (hSChronometer != null) {
                yt4 yt4Var2 = this.rewardStyle;
                if (yt4Var2 != null) {
                    yt4Var2.j();
                }
                hSChronometer.setText(hSChronometer.getFinishedString());
                return;
            }
            return;
        }
        if (!z) {
            HSChronometer hSChronometer2 = this.adChronometer;
            if (hSChronometer2 != null) {
                hSChronometer2.startCountdown(duration, new j());
                return;
            }
            return;
        }
        HSChronometer hSChronometer3 = this.adChronometer;
        if (hSChronometer3 != null) {
            hSChronometer3.setText(hSChronometer3.countdownText(this.state.getCountdownRemainDuration()));
            hSChronometer3.setTickListener(new k());
        }
    }

    public final void F(String event) {
        x(event, null);
    }

    public final void G(boolean isSentEvent) {
        if (isSentEvent) {
            F("_close");
        }
        if (isFinishing()) {
            return;
        }
        finish();
    }

    public final void H(boolean isClose, DownUpPointBean downUpPointBean) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.lastClickTime < 1000) {
            return;
        }
        this.lastClickTime = jCurrentTimeMillis;
        if (isClose) {
            G(true);
        } else {
            x("_click", new Pair(this.adBean, downUpPointBean));
        }
    }

    public final void L(boolean isShowToast) {
        yt4 yt4Var;
        if (this.state.isRewarded()) {
            return;
        }
        if (isShowToast && (yt4Var = this.rewardStyle) != null) {
            yt4Var.l();
        }
        AdsDTO adsDTO = this.adBean;
        x("_rewarded", adsDTO != null ? Long.valueOf(adsDTO.getTriggerShowSpend()) : null);
        this.state.setRewarded(true);
        this.state.setCountdownRemainDuration(0L);
    }

    public final void S() {
        try {
            try {
                AdsDTO adsDTO = this.adBean;
                String materialStyle = adsDTO != null ? adsDTO.getMaterialStyle() : null;
                if (y45.e(materialStyle, "R02")) {
                    View decorView = getWindow().getDecorView();
                    y45.i(decorView, "getDecorView(...)");
                    this.rewardStyle = new v(this, decorView, this);
                } else if (y45.e(materialStyle, "R01")) {
                    View decorView2 = getWindow().getDecorView();
                    y45.i(decorView2, "getDecorView(...)");
                    this.rewardStyle = new t(this, decorView2, this);
                } else {
                    View decorView3 = getWindow().getDecorView();
                    y45.i(decorView3, "getDecorView(...)");
                    this.rewardStyle = new t(this, decorView3, this);
                }
                yt4 yt4Var = this.rewardStyle;
                if (yt4Var != null) {
                    yt4Var.k();
                }
            } catch (Throwable unused) {
            }
        } catch (Throwable unused2) {
            v(TaErrorCode.ERROR_SHOW_LAYOUT_ERROR);
            finish();
        }
    }

    public final void U() {
        getWindow().getAttributes().layoutInDisplayCutoutMode = 1;
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(getWindow(), getWindow().getDecorView());
        windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
        windowInsetsControllerCompat.setSystemBarsBehavior(2);
    }

    public final yt4 getRewardStyle() {
        return this.rewardStyle;
    }

    public final void Y() {
        this.isLandscape = getResources().getConfiguration().orientation == 2;
        S();
        n0();
    }

    @Override
    public void a(int psClickType) {
        PslinkInfo pslinkInfo;
        AdsDTO adsDTO = this.adBean;
        if ((adsDTO != null ? adsDTO.getPslinkInfo() : null) != null) {
            if (psClickType == 2) {
                AdsDTO adsDTO2 = this.adBean;
                pslinkInfo = adsDTO2 != null ? adsDTO2.getPslinkInfo() : null;
                if (pslinkInfo != null) {
                    pslinkInfo.setClickType(2);
                }
                AdsDTO adsDTO3 = this.adBean;
                if (adsDTO3 != null) {
                    adsDTO3.setTrackUserClickArea(2);
                }
                ikd.b().d(this.tag, "pslink half setClickType, click_install");
                return;
            }
            AdsDTO adsDTO4 = this.adBean;
            pslinkInfo = adsDTO4 != null ? adsDTO4.getPslinkInfo() : null;
            if (pslinkInfo != null) {
                pslinkInfo.setClickType(1);
            }
            AdsDTO adsDTO5 = this.adBean;
            if (adsDTO5 != null) {
                adsDTO5.setTrackUserClickArea(1);
            }
            ikd.b().d(this.tag, "pslink half setClickType, click_img");
        }
    }

    public final void a0() {
        if (this.adImageView == null) {
            ImageView imageView = new ImageView(this);
            imageView.setAdjustViewBounds(true);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            imageView.setLayoutParams(layoutParams);
            this.adImageView = imageView;
        }
    }

    @Override
    public void b() {
        InteractiveWebView interactiveWebView;
        try {
            AdsDTO adsDTO = this.adBean;
            if (adsDTO == null || !adsDTO.isInteractiveAd() || (interactiveWebView = this.interactiveWebView) == null) {
                return;
            }
            interactiveWebView.setOnTouchListener(new c(false));
        } catch (Throwable unused) {
        }
    }

    public final void c0() {
        NativeBean nativeObject;
        ImageView imageView = (ImageView) findViewById(R.id.ad_icon);
        AdsDTO adsDTO = this.adBean;
        String titleTxt = null;
        if (adsDTO != null) {
            if (adsDTO.getSource() == 4) {
                DownLoadRequest.n(adsDTO.getLogoUrl(), adsDTO, null, imageView);
            } else {
                DownLoadRequest.o(adsDTO.getLogoUrl(), this.adBean, 1, null, imageView);
            }
        }
        TextView textView = (TextView) findViewById(R.id.ad_name);
        if (textView != null) {
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 != null && (nativeObject = adsDTO2.getNativeObject()) != null) {
                titleTxt = nativeObject.getTitleTxt();
            }
            textView.setText(titleTxt);
        }
        yt4 yt4Var = this.rewardStyle;
        if (yt4Var != null) {
            yt4Var.d(this.adBean);
        }
    }

    public final void e0() {
        if (this.interactiveWebView == null) {
            InteractiveWebView interactiveWebView = new InteractiveWebView(this);
            interactiveWebView.setWebClientCallback(this.adBean);
            interactiveWebView.setInteractiveListener(new d());
            this.interactiveWebView = interactiveWebView;
        }
    }

    public final void g0() {
        View view;
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.main_layout);
        this.adMainLayout = constraintLayout;
        if (constraintLayout != null) {
            constraintLayout.setOnTouchListener(new c(true));
        }
        this.adContainer = (FrameLayout) findViewById(R.id.ad_container);
        AdsDTO adsDTO = this.adBean;
        boolean z = adsDTO != null && (adsDTO.isVastTypeAd() || (adsDTO.getSource() == 4 && adsDTO.getDefaultMaterialType() == 2));
        AdsDTO adsDTO2 = this.adBean;
        if (adsDTO2 != null && adsDTO2.isInteractiveAd()) {
            r0();
        } else if (z) {
            t0();
        } else {
            AdsDTO adsDTO3 = this.adBean;
            if ((adsDTO3 != null ? adsDTO3.getNativeObject() : null) != null) {
                s0();
            }
        }
        if (this.adBean == null || this.state.isAlreadyMeasure()) {
            return;
        }
        AthenaTracker.D(this.adBean);
        if (z) {
            view = this.adVideoView;
        } else {
            AdsDTO adsDTO4 = this.adBean;
            view = (adsDTO4 == null || !adsDTO4.isInteractiveAd()) ? this.adImageView : this.interactiveWebView;
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().e(this.adBean, view, new b(this));
    }

    public final void h() {
        tl4 tl4Var;
        RewardedVideoView rewardedVideoView;
        if (ikd.c()) {
            ikd.b().i(this.tag, "-----------> onResume " + this.state);
        }
        if (!this.state.isShowRetainDialog() && !this.state.isShowRuDialog()) {
            HSChronometer hSChronometer = this.adChronometer;
            if (hSChronometer != null) {
                hSChronometer.resumeCountdown(this.state.getCountdownRemainDuration());
            }
            if (!this.state.isPlayComplete() && (rewardedVideoView = this.adVideoView) != null) {
                rewardedVideoView.resume();
            }
        }
        this.state.setPaused(false);
        try {
            tl4 tl4Var2 = this.hsConfirmPopUpWindow;
            if (tl4Var2 != null && tl4Var2.isShowing() && (tl4Var = this.hsConfirmPopUpWindow) != null) {
                tl4Var.dismiss();
            }
        } catch (Throwable unused) {
        }
        yt4 yt4Var = this.rewardStyle;
        if (yt4Var != null) {
            yt4Var.i();
        }
    }

    public final void i() {
        if (this.retainDialog == null) {
            zl4 zl4Var = new zl4(this, new h());
            this.retainDialog = zl4Var;
            String string = getResources().getString(R.string.not_reward_title);
            y45.i(string, "getString(...)");
            zl4Var.k(string);
            String string2 = getResources().getString(R.string.not_reward_content);
            y45.i(string2, "getString(...)");
            zl4Var.h(string2);
            String string3 = getResources().getString(R.string.continue_txt);
            y45.i(string3, "getString(...)");
            zl4Var.i(string3);
        }
        try {
            zl4 zl4Var2 = this.retainDialog;
            if (zl4Var2 != null) {
                zl4Var2.show();
            }
            this.state.setShowRetainDialog(true);
        } catch (Exception e2) {
            ikd.b().e(this.tag, "showRetainDialog error: " + e2.getMessage());
        }
    }

    public final void i0() {
        ImageView imageView = (ImageView) findViewById(R.id.ad_choices_view);
        this.adChoicesView = imageView;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    HisavanaRewardedActivity.q(this.b, view);
                }
            });
        }
        AdsDTO adsDTO = this.adBean;
        if (adsDTO != null) {
            if (adsDTO.getSource() == 4) {
                DownLoadRequest.n(adsDTO.getAdChoiceImageUrl(), adsDTO, null, this.adChoicesView);
            } else {
                DownLoadRequest.o(adsDTO.getAdChoiceImageUrl(), this.adBean, 3, null, this.adChoicesView);
            }
        }
        AdBadgeView adBadgeView = (AdBadgeView) findViewById(R.id.ad_badge_view);
        this.adBadgeView = adBadgeView;
        if (adBadgeView != null) {
            AdsDTO adsDTO2 = this.adBean;
            adBadgeView.setDisplayStyle(adsDTO2 != null ? adsDTO2.getDisplayRule() : null, kn8.c(this.adBean));
        }
        AdCloseView adCloseView = (AdCloseView) findViewById(R.id.ad_close_view);
        this.adCloseView = adCloseView;
        if (adCloseView != null) {
            AdsDTO adsDTO3 = this.adBean;
            adCloseView.setDisplayStyle(adsDTO3 != null ? adsDTO3.getDisplayRule() : null, AdCloseView.CloseImageType.EXPAND);
        }
        u.n().d(this, this.adCloseView, this, this.adBean);
        this.storeMarkView = (StoreMarkView) findViewById(R.id.ps_mark_view);
        boolean zA = cy9.a(this.adBean);
        StoreMarkView storeMarkView = this.storeMarkView;
        if (storeMarkView != null) {
            storeMarkView.setVisibility(zA ? 0 : 8);
        }
        StoreMarkView storeMarkView2 = this.storeMarkView;
        if (storeMarkView2 != null) {
            storeMarkView2.setTextSize(6.0f);
        }
        StoreMarkView storeMarkView3 = this.storeMarkView;
        if (storeMarkView3 != null) {
            storeMarkView3.setTextColor(-8882056);
        }
        StoreMarkView storeMarkView4 = this.storeMarkView;
        if (storeMarkView4 != null) {
            storeMarkView4.attachInfo(this.adBean);
        }
    }

    public final void j() {
        Intent intent = getIntent();
        if (intent != null) {
            this.adBean = Build.VERSION.SDK_INT >= 33 ? (AdsDTO) intent.getParcelableExtra("adBean", AdsDTO.class) : (AdsDTO) intent.getParcelableExtra("adBean");
            String stringExtra = intent.getStringExtra("prefix");
            if (stringExtra == null) {
                stringExtra = "";
            } else {
                y45.g(stringExtra);
            }
            this.prefix = stringExtra;
            this.observerId = intent.getLongExtra("observerId", 0L);
            this.triggerMillis = intent.getLongExtra("triggerTs", System.currentTimeMillis());
        }
        AdsDTO adsDTO = this.adBean;
        if (adsDTO == null || adsDTO.getMaterialStyle() == null) {
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 == null) {
                v(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            } else if (adsDTO2.getMaterialStyle() == null) {
                v(TaErrorCode.ERROR_SHOW_MATERIAL_STYLE_NULL);
            }
            G(true);
            return;
        }
        int iB = t6.a.b(this.adBean);
        this.adMediaType = iB;
        if (iB != -1) {
            U();
            Y();
        } else {
            ikd.b().w(this.tag, "adMediaType is INVALID_TYPE");
            v(TaErrorCode.ERROR_SHOW_ADMEDIATYPE_INVALID);
            G(true);
        }
    }

    public final void j0() {
        final AdsDTO adsDTO = this.adBean;
        if (adsDTO != null) {
            if (adsDTO.getDisplayRule() != Constants.AdDisplayRule.RU) {
                adsDTO = null;
            }
            if (adsDTO != null) {
                final ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.main_layout);
                AdDisclaimerView adDisclaimerView = (AdDisclaimerView) findViewById(R.id.ad_disclaimer_view);
                this.adDisclaimerView = adDisclaimerView;
                if (adDisclaimerView != null) {
                    adDisclaimerView.setListener(new AdDisclaimerView.b() {
                        @Override
                        public final void a(String str, String str2, String str3) {
                            HisavanaRewardedActivity.s(this.a, str, str2, str3);
                        }
                    });
                }
                if (constraintLayout != null) {
                    y45.g(constraintLayout);
                    constraintLayout.post(new Runnable() {
                        @Override
                        public final void run() {
                            HisavanaRewardedActivity.m(constraintLayout, this, adsDTO);
                        }
                    });
                }
            }
        }
    }

    public final void k(float volume) {
        yt4 yt4Var = this.rewardStyle;
        if (yt4Var != null) {
            yt4Var.b(this.adVolume, volume);
        }
    }

    public final void l(long remainingDuration) {
        View viewFindViewById = findViewById(R.id.ad_close);
        int i2 = this.closeDelayTimeDuration;
        if (i2 <= 0 || remainingDuration <= 0) {
            if (viewFindViewById == null) {
                return;
            }
            viewFindViewById.setVisibility(0);
        } else {
            if ((this.rewardDuration - remainingDuration) / 1000.0f < i2 || viewFindViewById == null) {
                return;
            }
            viewFindViewById.setVisibility(0);
        }
    }

    public final void l0() {
        if (this.adVideoView != null) {
            return;
        }
        Context applicationContext = getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        RewardedVideoView rewardedVideoView = new RewardedVideoView(applicationContext, null, 0, 6, null);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 17;
        rewardedVideoView.setLayoutParams(layoutParams);
        rewardedVideoView.setAdMediaPlayerListener(new e(rewardedVideoView, this, this.adBean));
        this.adVideoView = rewardedVideoView;
    }

    public final void n0() {
        if (this.adBean == null) {
            ikd.b().w(this.tag, "rewarded adBean is null");
            v(TaErrorCode.ERROR_SHOW_ADBEAN_NULL);
            G(true);
            return;
        }
        g0();
        p0();
        c0();
        i0();
        j0();
        try {
            com.cloud.hisavana.sdk.manager.a aVar = com.cloud.hisavana.sdk.manager.a.a;
            Context applicationContext = getApplicationContext();
            y45.i(applicationContext, "getApplicationContext(...)");
            aVar.s(applicationContext, this.adBean, false);
        } catch (Throwable unused) {
        }
    }

    @Override
    public void onBackPressed() {
    }

    @Override
    public void onConfigurationChanged(Configuration newConfig) {
        zl4 zl4Var;
        zl4 zl4Var2;
        y45.j(newConfig, "newConfig");
        super.onConfigurationChanged(newConfig);
        HSChronometer hSChronometer = this.adChronometer;
        if (hSChronometer != null) {
            this.state.setCountdownRemainDuration(hSChronometer.pauseCountdown());
            hSChronometer.stop();
        }
        FrameLayout frameLayout = this.adContainer;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        Y();
        if (this.state.isShowRuDialog() && (zl4Var2 = this.ruDialog) != null) {
            zl4Var2.l();
        }
        if (!this.state.isShowRetainDialog() || (zl4Var = this.retainDialog) == null) {
            return;
        }
        zl4Var.l();
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        j();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        RewardedVideoView rewardedVideoView = this.adVideoView;
        if (rewardedVideoView != null) {
            rewardedVideoView.release();
        }
        HSChronometer hSChronometer = this.adChronometer;
        if (hSChronometer != null) {
            hSChronometer.stop();
        }
        FrameLayout frameLayout = this.adContainer;
        if (frameLayout != null) {
            frameLayout.removeAllViews();
        }
        zl4 zl4Var = this.retainDialog;
        if (zl4Var != null) {
            zl4Var.dismiss();
        }
        zl4 zl4Var2 = this.ruDialog;
        if (zl4Var2 != null) {
            zl4Var2.dismiss();
        }
        com.cloud.hisavana.sdk.common.tranmeasure.e.c().g(this.adBean);
        pp4.a(this.adImageView);
        pp4.a(this.adIcon);
        pp4.a(this.adChoicesView);
        try {
            tl4 tl4Var = this.hsConfirmPopUpWindow;
            if (tl4Var == null || !tl4Var.isShowing()) {
                return;
            }
            tl4 tl4Var2 = this.hsConfirmPopUpWindow;
            if (tl4Var2 != null) {
                tl4Var2.dismiss();
            }
            this.hsConfirmPopUpWindow = null;
        } catch (Throwable unused) {
        }
    }

    @Override
    public void onPause() {
        super.onPause();
        w0();
    }

    @Override
    public void onResume() {
        super.onResume();
        h();
    }

    public final void p0() {
        VastData videoInfo;
        Integer duration;
        ImageView imageView = (ImageView) findViewById(R.id.ad_volume);
        this.adVolume = imageView;
        if (imageView != null) {
            k(this.state.getVideoVolume());
            AdsDTO adsDTO = this.adBean;
            imageView.setVisibility((adsDTO == null || !adsDTO.isVastTypeAd()) ? 8 : 0);
            imageView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    HisavanaRewardedActivity.D(this.b, view);
                }
            });
        }
        HSChronometer hSChronometer = (HSChronometer) findViewById(R.id.ad_chronometer);
        this.adChronometer = hSChronometer;
        if (hSChronometer != null && this.state.isAlreadyMeasure()) {
            B(this.state.getCountdownRemainDuration());
        }
        View viewFindViewById = findViewById(R.id.ad_close);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    HisavanaRewardedActivity.K(this.b, view);
                }
            });
        }
        AdsDTO adsDTO2 = this.adBean;
        int closeDelayTime = adsDTO2 != null ? adsDTO2.getCloseDelayTime() : 0;
        AdsDTO adsDTO3 = this.adBean;
        if (adsDTO3 != null && adsDTO3.isVastTypeAd()) {
            AdsDTO adsDTO4 = this.adBean;
            closeDelayTime = Math.min(closeDelayTime, (adsDTO4 == null || (videoInfo = adsDTO4.getVideoInfo()) == null || (duration = videoInfo.getDuration()) == null) ? closeDelayTime : duration.intValue());
        }
        ikd.b().d(this.tag, "current close delay time duration is: " + closeDelayTime);
        this.closeDelayTimeDuration = closeDelayTime;
        if (closeDelayTime > 0) {
            try {
                if (!q0()) {
                    if (viewFindViewById != null) {
                        viewFindViewById.setVisibility(8);
                    }
                    if (this.state.isAlreadyMeasure()) {
                        l(this.state.getCountdownRemainDuration());
                        return;
                    }
                    return;
                }
            } catch (Throwable unused) {
                return;
            }
        }
        ikd.b().d(this.tag, "current close delay time is 0 or video or image is null, do not count down.");
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.setVisibility(0);
    }

    public final boolean q0() {
        VastData videoInfo;
        VastMedia mainAd;
        AdsDTO adsDTO = this.adBean;
        String adImgUrl = null;
        if (adsDTO == null || !adsDTO.isVastTypeAd()) {
            AdsDTO adsDTO2 = this.adBean;
            adImgUrl = adsDTO2 != null ? adsDTO2.getAdImgUrl() : null;
            if (adImgUrl == null || adImgUrl.length() == 0) {
                return true;
            }
        } else {
            AdsDTO adsDTO3 = this.adBean;
            if (adsDTO3 != null && (videoInfo = adsDTO3.getVideoInfo()) != null && (mainAd = videoInfo.getMainAd()) != null) {
                adImgUrl = mainAd.getMediaResource();
            }
            if (adImgUrl == null || adImgUrl.length() == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0030  */
    public final void r0() {
        AdsDTO adsDTO;
        String scale;
        List<String> scales;
        try {
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 == null || (scale = adsDTO2.getScale()) == null) {
                adsDTO = this.adBean;
                if (adsDTO != null || (scales = adsDTO.getScales()) == null) {
                    scale = null;
                } else {
                    scale = (String) i81.q0(scales);
                }
                if (scale == null) {
                    scale = "";
                }
            } else {
                if (scale.length() <= 0) {
                    scale = null;
                }
                if (scale == null) {
                    adsDTO = this.adBean;
                    if (adsDTO != null) {
                        scale = null;
                    } else {
                        scale = null;
                    }
                    if (scale == null) {
                        scale = "";
                    }
                }
            }
            FrameLayout frameLayout = this.adContainer;
            if (frameLayout != null) {
                frameLayout.removeAllViews();
            }
            FrameLayout frameLayout2 = this.adContainer;
            ViewGroup.LayoutParams layoutParams = frameLayout2 != null ? frameLayout2.getLayoutParams() : null;
            if ((layoutParams instanceof ConstraintLayout.LayoutParams) && scale.length() > 0) {
                ((ConstraintLayout.LayoutParams) layoutParams).dimensionRatio = scale;
            }
            e0();
            FrameLayout frameLayout3 = this.adContainer;
            if (frameLayout3 != null) {
                frameLayout3.addView(this.interactiveWebView, new FrameLayout.LayoutParams(-1, -1));
            }
            AdsDTO adsDTO3 = this.adBean;
            String indexLocation = adsDTO3 != null ? adsDTO3.getIndexLocation() : null;
            if (this.interactiveWebView != null && indexLocation != null && indexLocation.length() != 0 && new File(indexLocation).exists()) {
                InteractiveWebView interactiveWebView = this.interactiveWebView;
                if (interactiveWebView != null) {
                    interactiveWebView.setVisibility(0);
                }
                InteractiveWebView interactiveWebView2 = this.interactiveWebView;
                if (interactiveWebView2 != null) {
                    interactiveWebView2.loadUrl("file://" + indexLocation);
                    return;
                }
                return;
            }
            G(false);
            v(new TaErrorCode(3005, "interactive file not exists "));
        } catch (Throwable th) {
            G(false);
            v(new TaErrorCode(3005, th.getMessage()));
        }
    }

    public final void s0() {
        zfb zfbVar;
        String adImgUrl;
        a0();
        AdsDTO adsDTO = this.adBean;
        if (adsDTO == null || (adImgUrl = adsDTO.getAdImgUrl()) == null) {
            zfbVar = null;
        } else {
            f fVar = new f();
            AdsDTO adsDTO2 = this.adBean;
            if (adsDTO2 == null || adsDTO2.getSource() != 4) {
                DownLoadRequest.o(adImgUrl, this.adBean, 2, fVar, this.adImageView);
            } else {
                DownLoadRequest.n(adImgUrl, this.adBean, fVar, this.adImageView);
            }
            zfbVar = zfb.a;
        }
        if (zfbVar == null) {
            v(TaErrorCode.NO_MAIN_IMG_DATA_ERROR);
            G(false);
        }
    }

    public final void t0() {
        String strL = w.a.l(this.adBean);
        if (strL != null) {
            if (strL.length() <= 0) {
                strL = null;
            }
            if (strL != null) {
                l0();
                w(strL);
                RewardedVideoView rewardedVideoView = this.adVideoView;
                if ((rewardedVideoView != null ? rewardedVideoView.getParent() : null) != null) {
                    RewardedVideoView rewardedVideoView2 = this.adVideoView;
                    ViewParent parent = rewardedVideoView2 != null ? rewardedVideoView2.getParent() : null;
                    y45.h(parent, "null cannot be cast to non-null type android.view.ViewGroup");
                    ((ViewGroup) parent).removeView(this.adVideoView);
                }
                FrameLayout frameLayout = this.adContainer;
                if (frameLayout != null) {
                    frameLayout.addView(this.adVideoView);
                    return;
                }
                return;
            }
        }
        v(TaErrorCode.NO_MAIN_VIDEO_DATA_ERROR);
        G(false);
    }

    public final void u0() {
        this.state.setAlreadyMeasure(true);
        long jCurrentTimeMillis = System.currentTimeMillis() - this.triggerMillis;
        AdsDTO adsDTO = this.adBean;
        if (adsDTO != null) {
            adsDTO.setTriggerShowSpend(jCurrentTimeMillis);
        }
        F("_show");
        AdsDTO adsDTO2 = this.adBean;
        Integer rewardDuration = adsDTO2 != null ? adsDTO2.getRewardDuration() : null;
        long jMax = ((long) Math.max(rewardDuration == null ? this.defaultDuration : rewardDuration.intValue(), this.defaultDuration)) * 1000;
        this.rewardDuration = jMax;
        this.state.setCountdownRemainDuration(jMax);
        B(jMax);
        HSCommonUtils.a.x(this.adBean);
        View viewFindViewById = findViewById(R.id.ad_close_container);
        if (viewFindViewById == null) {
            return;
        }
        viewFindViewById.setBackground(ContextCompat.getDrawable(ul4.a(), R.drawable.hisavana_hollow_rounded_rect));
    }

    public final void v(TaErrorCode adErrorCode) {
        x("_error", adErrorCode);
    }

    public final void v0() {
        rpd rpdVar;
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.adChoicesView);
        arrayList.add(this.adDisclaimerView);
        arrayList.add(this.adCloseView);
        arrayList.add(this.storeMarkView);
        arrayList.add(this.adChoicesView);
        arrayList.add(this.adChronometer);
        m.a aVar = m.a;
        WeakReference weakReference = K;
        aVar.a((weakReference == null || (rpdVar = (rpd) weakReference.get()) == null) ? null : rpdVar.v(), this.adBean, (ViewGroup) findViewById(R.id.main_layout), arrayList);
    }

    public final void w(String videoUrl) {
        VastData videoInfo;
        VideoMask videoMask;
        String resource;
        RewardedVideoView rewardedVideoView;
        if (this.state.isPlayComplete()) {
            RewardedVideoView rewardedVideoView2 = this.adVideoView;
            if (rewardedVideoView2 != null) {
                rewardedVideoView2.seekTo(rewardedVideoView2.getDuration());
                return;
            }
            return;
        }
        if (this.state.isPlayStart()) {
            return;
        }
        if (ikd.c()) {
            ikd.b().i(this.tag, "-----------> video set media data.");
        }
        boolean zR = g1a.R(videoUrl, ProxyConfig.MATCH_HTTP, false, 2, null);
        RewardedVideoView rewardedVideoView3 = this.adVideoView;
        if (rewardedVideoView3 != null) {
            rewardedVideoView3.setMediaData(videoUrl, this.adBean, this.state.getVideoVolume() == 0.0f, zR);
        }
        AdsDTO adsDTO = this.adBean;
        if (adsDTO == null || (videoInfo = adsDTO.getVideoInfo()) == null || (videoMask = videoInfo.getVideoMask()) == null || (resource = videoMask.getResource()) == null || (rewardedVideoView = this.adVideoView) == null) {
            return;
        }
        rewardedVideoView.setCompanionUrl(resource);
    }

    public final void w0() {
        RewardedVideoView rewardedVideoView;
        if (!this.state.isShowRetainDialog() && !this.state.isShowRuDialog() && !this.state.isPaused()) {
            RewardedState rewardedState = this.state;
            HSChronometer hSChronometer = this.adChronometer;
            rewardedState.setCountdownRemainDuration(hSChronometer != null ? hSChronometer.pauseCountdown() : 0L);
            if (!this.state.isPlayComplete() && (rewardedVideoView = this.adVideoView) != null) {
                rewardedVideoView.pause();
            }
        }
        this.state.setPaused(true);
        if (ikd.c()) {
            ikd.b().i(this.tag, "----------> onPause " + this.state);
        }
        yt4 yt4Var = this.rewardStyle;
        if (yt4Var != null) {
            yt4Var.h();
        }
    }

    public final void x(String event, Object params) {
        j9d.a.d(this.observerId, this.prefix + event, params);
    }

    public final void y(String title, String message, String buttonText) {
        if (this.ruDialog == null) {
            zl4 zl4Var = new zl4(this, new i());
            this.ruDialog = zl4Var;
            zl4Var.k(title);
            zl4Var.h(message);
            zl4Var.g(buttonText);
            zl4Var.j(true);
        }
        try {
            zl4 zl4Var2 = this.ruDialog;
            if (zl4Var2 != null) {
                zl4Var2.show();
            }
            this.state.setShowRuDialog(true);
        } catch (Exception e2) {
            ikd.b().e(this.tag, "showRuDialog error: " + e2.getMessage());
        }
    }

    @Override
    public boolean getIsLandscape() {
        return this.isLandscape;
    }

    @Override
    public void d() {
        L(true);
    }

    @Override
    public void e() {
        G(true);
    }

    @Override
    public AdsDTO getAdBean() {
        return this.adBean;
    }

    @Override
    public void b(boolean isClose, DownUpPointBean downUpPointBean) {
        H(isClose, downUpPointBean);
    }

    @Override
    public void a(boolean status) {
        this.isNeedRuMargin = status;
    }

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
    @Override
    public void a() {
        HSChronometer hSChronometer = this.adChronometer;
        if (hSChronometer != null) {
            hSChronometer.tickComplete(hSChronometer);
        }
        yt4 yt4Var = this.rewardStyle;
        if (yt4Var != null) {
            yt4Var.l();
        }
        G(true);
    }

    @Override
    public void a(DownUpPointBean pointBean) {
        try {
            HSCommonUtils.a.r(this.adBean, pointBean);
        } catch (Throwable unused) {
        }
        try {
            if (this.hsConfirmPopUpWindow == null) {
                tl4 tl4Var = new tl4(this, this.adBean, false, 4, null);
                this.hsConfirmPopUpWindow = tl4Var;
                tl4Var.h(new g());
                tl4 tl4Var2 = this.hsConfirmPopUpWindow;
                if (tl4Var2 != null) {
                    tl4Var2.k(this.adBean);
                }
            }
            tl4 tl4Var3 = this.hsConfirmPopUpWindow;
            if (tl4Var3 != null) {
                AdsDTO adsDTO = this.adBean;
                View decorView = getWindow().getDecorView();
                y45.i(decorView, "getDecorView(...)");
                tl4Var3.j(this, adsDTO, decorView, pointBean != null ? (int) pointBean.getDownX() : 0, pointBean != null ? (int) pointBean.getDownY() : 0);
            }
            w0();
        } catch (Throwable unused2) {
        }
    }
}
