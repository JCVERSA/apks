package com.transsion.moviedetail.music;

import android.app.Activity;
import android.app.Application;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.activity.result.a;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestManager;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.SecondariesSeekBar;
import com.tn.lib.view.s;
import com.transsion.baseui.fragment.PageStatusFragment;
import com.transsion.moviedetail.music.MusicTrailerV2Fragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.mediasession.MediaItem;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.f;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$string;
import com.transsion.postdetail.util.m;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import f.i;
import java.util.LinkedHashMap;
import kotlin.Deprecated;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import lm.j;
import on.e0;
import org.mvel2.ast.ASTNode;
import qn.d;
import yg.l;

@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 ~2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0001MB\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\u0005J\u000f\u0010\b\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\b\u0010\u0005J\u000f\u0010\t\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\t\u0010\u0005J\u000f\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\n\u0010\u0005J\u0019\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0013\u001a\u00020\u0012H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0004\b\u0018\u0010\u0019J\u000f\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001d\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001d\u0010\u0005J\u0019\u0010\u001e\u001a\u00020\u00062\b\b\u0002\u0010\f\u001a\u00020\u000bH\u0002¢\u0006\u0004\b\u001e\u0010\u000eJ\u0017\u0010!\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u001fH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0006H\u0002¢\u0006\u0004\b#\u0010\u0005J\u0017\u0010%\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u001aH\u0002¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u0006¢\u0006\u0004\b'\u0010\u0005J\u000f\u0010(\u001a\u00020\u0006H\u0016¢\u0006\u0004\b(\u0010\u0005J\u0017\u0010+\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)H\u0016¢\u0006\u0004\b+\u0010,J\u000f\u0010-\u001a\u00020\u0012H\u0016¢\u0006\u0004\b-\u0010.J\u000f\u0010/\u001a\u00020\u000bH\u0016¢\u0006\u0004\b/\u00100J\u000f\u00101\u001a\u00020\u0006H\u0016¢\u0006\u0004\b1\u0010\u0005J\u000f\u00102\u001a\u00020\u0006H\u0016¢\u0006\u0004\b2\u0010\u0005J\u000f\u00103\u001a\u00020\u0006H\u0016¢\u0006\u0004\b3\u0010\u0005J\u000f\u00104\u001a\u00020\u0006H\u0016¢\u0006\u0004\b4\u0010\u0005J\u000f\u00105\u001a\u00020\u0006H\u0016¢\u0006\u0004\b5\u0010\u0005J\u000f\u00106\u001a\u00020\u0006H\u0016¢\u0006\u0004\b6\u0010\u0005J\u000f\u00107\u001a\u00020\u0006H\u0016¢\u0006\u0004\b7\u0010\u0005J\u000f\u00108\u001a\u00020\u0006H\u0016¢\u0006\u0004\b8\u0010\u0005J\u000f\u00109\u001a\u00020\u0006H\u0016¢\u0006\u0004\b9\u0010\u0005J\u0019\u0010<\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b<\u0010=J\u0019\u0010>\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b>\u0010=J!\u0010@\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u001f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\b@\u0010AJ\u0019\u0010B\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bB\u0010=J\u000f\u0010C\u001a\u00020\u0006H\u0016¢\u0006\u0004\bC\u0010\u0005J!\u0010D\u001a\u00020\u00062\u0006\u0010?\u001a\u00020\u001f2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bD\u0010AJ\u0019\u0010E\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bE\u0010=J\u0019\u0010F\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bF\u0010=J\u0019\u0010G\u001a\u00020\u00062\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bG\u0010=J!\u0010J\u001a\u00020\u00062\u0006\u0010I\u001a\u00020H2\b\u0010;\u001a\u0004\u0018\u00010:H\u0016¢\u0006\u0004\bJ\u0010KR\u0018\u0010O\u001a\u0004\u0018\u00010L8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010NR\u0016\u0010R\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010U\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010X\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010WR\u0016\u0010Z\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010QR\u0016\u0010\\\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010QR\u0018\u0010I\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010^R\u0018\u0010b\u001a\u0004\u0018\u00010_8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0018\u0010f\u001a\u0004\u0018\u00010c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bd\u0010eR\u001b\u0010l\u001a\u00020g8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bh\u0010i\u001a\u0004\bj\u0010kR\u0014\u0010p\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bn\u0010oR\u001c\u0010t\u001a\b\u0012\u0004\u0012\u00020\u00120q8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\br\u0010sR\u0016\u0010v\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bu\u0010WR\u0014\u0010x\u001a\u00020m8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bw\u0010oR\"\u0010}\u001a\u0010\u0012\f\u0012\n z*\u0004\u0018\u00010\u00120\u00120y8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b{\u0010|¨\u0006\u007f"}, d2 = {"Lcom/transsion/moviedetail/music/MusicTrailerV2Fragment;", "Lcom/transsion/baseui/fragment/PageStatusFragment;", "Llm/j;", "Lcom/transsion/player/orplayer/e;", "<init>", "()V", "", "Q0", "D0", "K0", "H0", "", "isPlay", "I0", "(Z)V", "Lcom/transsion/player/mediasession/MediaItem;", "y0", "()Lcom/transsion/player/mediasession/MediaItem;", "", "pageName", "Landroid/content/Intent;", "w0", "(Ljava/lang/String;)Landroid/content/Intent;", "Landroid/app/PendingIntent;", "z0", "()Landroid/app/PendingIntent;", "", "A0", "()I", "L0", "S0", "", "delay", "O0", "(J)V", "E0", NativeComponentConstants.KEY_COMPONENT_TYPE, "N0", "(I)V", "v0", "receiveArguments", "Landroid/view/LayoutInflater;", "inflater", "B0", "(Landroid/view/LayoutInflater;)Llm/j;", "getPageStateLayoutTitle", "()Ljava/lang/String;", "isShowPageStateLayoutTitle", "()Z", "initViewData", "initViewModel", "initListener", "loadDefaultData", "onDestroy", "onResume", "onStop", "retryLoadData", "onDisconnected", "Lgn/e;", "mediaSource", "onPrepare", "(Lgn/e;)V", "onLoadingBegin", NotificationCompat.CATEGORY_PROGRESS, "onBufferedPosition", "(JLgn/e;)V", "onLoadingEnd", "onRenderFirstFrame", "onProgress", "onVideoStart", "onVideoPause", "onCompletion", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "Lcom/transsion/moviedetailapi/bean/Trailer;", "a", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "J", "duration", "c", "Z", "formUserSeek", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "playState", "e", "bufferPosition", "f", "currentPosition", "g", "Lcom/transsion/player/orplayer/PlayError;", "Landroid/view/View;", "h", "Landroid/view/View;", "errorLayout", "Lcom/transsion/player/orplayer/f;", "i", "Lcom/transsion/player/orplayer/f;", "orPlayer", "Landroid/os/Handler;", "j", "Lkotlin/Lazy;", "x0", "()Landroid/os/Handler;", "loadingHandler", "Ljava/lang/Runnable;", CampaignEx.JSON_KEY_AD_K, "Ljava/lang/Runnable;", "showErrorRunnable", "", "l", "[Ljava/lang/String;", "loadingDot", "m", "loadingDotIndex", "n", "loadingRunnable", "Landroidx/activity/result/b;", "kotlin.jvm.PlatformType", "o", "Landroidx/activity/result/b;", "requestPermissionLauncher", TtmlNode.TAG_P, "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@Deprecated
@SourceDebugExtension
public final class MusicTrailerV2Fragment extends PageStatusFragment<j> implements e {

    private Trailer trailer;

    private long duration;

    private boolean formUserSeek;

    private int playState;

    private long bufferPosition;

    private long currentPosition;

    private PlayError errorInfo;

    private View errorLayout;

    private f orPlayer;

    private int loadingDotIndex;

    private final androidx.activity.result.b requestPermissionLauncher;

    private final Lazy loadingHandler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return MusicTrailerV2Fragment.F0();
        }
    });

    private final Runnable showErrorRunnable = new Runnable() {
        @Override
        public final void run() {
            MusicTrailerV2Fragment.P0(this.f67316a);
        }
    };

    private String[] loadingDot = {".", "..", "..."};

    private final Runnable loadingRunnable = new Runnable() {
        @Override
        public final void run() {
            MusicTrailerV2Fragment.G0(this.f67317a);
        }
    };

    public static final class b implements View.OnClickListener {

        private long f45547a;

        b() {
        }

        @Override
        public void onClick(View view) {
            if (MusicTrailerV2Fragment.this.playState != 10) {
                MusicTrailerV2Fragment.this.K0();
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = this.f45547a;
            if (j10 == 0 || jCurrentTimeMillis - j10 > 500) {
                this.f45547a = jCurrentTimeMillis;
            } else {
                this.f45547a = 0L;
                MusicTrailerV2Fragment.this.H0();
            }
        }
    }

    public static final class c implements s {

        private long f45549a;

        c() {
        }

        @Override
        public void a(SecondariesSeekBar seekBar) {
            Group group;
            Intrinsics.h(seekBar, "seekBar");
            MusicTrailerV2Fragment.this.formUserSeek = false;
            j mViewBinding = MusicTrailerV2Fragment.this.getMViewBinding();
            if (mViewBinding != null && (group = mViewBinding.f65803b) != null) {
                group.setVisibility(0);
            }
            f fVar = MusicTrailerV2Fragment.this.orPlayer;
            if (fVar != null) {
                fVar.seekTo((this.f45549a * MusicTrailerV2Fragment.this.duration) / ((long) 100));
            }
        }

        @Override
        public void b(SecondariesSeekBar seekBar, long j10, boolean z10) {
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                this.f45549a = j10;
            }
        }

        @Override
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            MusicTrailerV2Fragment.this.formUserSeek = true;
        }
    }

    public MusicTrailerV2Fragment() {
        androidx.activity.result.b bVarRegisterForActivityResult = registerForActivityResult(new i(), new a() {
            @Override
            public final void a(Object obj) {
                MusicTrailerV2Fragment.M0((Boolean) obj);
            }
        });
        Intrinsics.g(bVarRegisterForActivityResult, "registerForActivityResult(...)");
        this.requestPermissionLauncher = bVarRegisterForActivityResult;
    }

    private final int A0() {
        if (Build.VERSION.SDK_INT >= 31) {
            return 67108864;
        }
        return ASTNode.NOJIT;
    }

    public static final void C0(MusicTrailerV2Fragment musicTrailerV2Fragment, View view) {
        musicTrailerV2Fragment.K0();
    }

    private final void D0() {
        SecondariesSeekBar secondariesSeekBar;
        j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f65812k) == null) {
            return;
        }
        secondariesSeekBar.setOnSeekBarChangeListener(new c());
    }

    private final void E0() {
        x0().postDelayed(this.loadingRunnable, 1000L);
    }

    public static final Handler F0() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    public static final void G0(MusicTrailerV2Fragment musicTrailerV2Fragment) {
        TextView textView;
        int i10 = musicTrailerV2Fragment.loadingDotIndex;
        if (i10 >= 2) {
            musicTrailerV2Fragment.loadingDotIndex = 0;
        } else {
            musicTrailerV2Fragment.loadingDotIndex = i10 + 1;
        }
        j mViewBinding = musicTrailerV2Fragment.getMViewBinding();
        if (mViewBinding != null && (textView = mViewBinding.f65809h) != null) {
            textView.setText(Utils.a().getString(R$string.play_loading) + musicTrailerV2Fragment.loadingDot[musicTrailerV2Fragment.loadingDotIndex]);
        }
        musicTrailerV2Fragment.E0();
    }

    public final void H0() {
        this.playState = 20;
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.pause();
        }
    }

    private final void I0(boolean isPlay) {
        this.playState = 10;
        S0(isPlay);
    }

    static void J0(MusicTrailerV2Fragment musicTrailerV2Fragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        musicTrailerV2Fragment.I0(z10);
    }

    public final void K0() {
        PreVideoAddress videoAddress;
        String url;
        int i10 = this.playState;
        if (i10 == -1) {
            L0();
            return;
        }
        if (i10 != 0) {
            if (i10 == 10) {
                H0();
                return;
            } else if (i10 == 20 || i10 == 22) {
                J0(this, false, 1, null);
                return;
            } else if (i10 != 30) {
                return;
            }
        }
        f fVar = this.orPlayer;
        if (fVar != null) {
            Trailer trailer = this.trailer;
            if (trailer != null && (videoAddress = trailer.getVideoAddress()) != null && (url = videoAddress.getUrl()) != null) {
                Trailer trailer2 = this.trailer;
                fVar.setDataSource(new gn.e(trailer2 != null ? trailer2.getSubjectId() : null, url, 0, null, y0(), 12, null));
            }
            fVar.prepare();
        }
        I0(false);
    }

    private final void L0() {
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> reloadVideo() --> video error，reload~~", false, 2, null);
        this.bufferPosition = 0L;
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.stop();
            fVar.reset();
            fVar.prepare();
        }
        f fVar2 = this.orPlayer;
        if (fVar2 != null) {
            fVar2.seekTo(this.currentPosition);
        }
        T0(this, false, 1, null);
    }

    public static final void M0(Boolean granted) {
        Intrinsics.h(granted, "granted");
        if (granted.booleanValue()) {
            wf.a.C0922a.g(wf.a.f74274a, "User allow the permission.", false, 2, null);
        } else {
            wf.a.C0922a.g(wf.a.f74274a, "User deny the permission.", false, 2, null);
        }
    }

    private final void N0(int type) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        Group group;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        ViewStub viewStub;
        if (this.errorLayout == null) {
            j mViewBinding = getMViewBinding();
            this.errorLayout = (mViewBinding == null || (viewStub = mViewBinding.f65814m) == null) ? null : viewStub.inflate();
        }
        if (type == 1) {
            Intrinsics.g(Utils.a().getString(R$string.downloading_play_timeout), "getString(...)");
            Intrinsics.g(Utils.a().getString(R$string.downloading_play_timeout_reload), "getString(...)");
            this.playState = -1;
        } else {
            Intrinsics.g(Utils.a().getString(R$string.downloading_play_load_failed), "getString(...)");
            Intrinsics.g(Utils.a().getString(R$string.turn_on_network), "getString(...)");
            this.playState = 22;
        }
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.pause();
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (shapeableImageView2 = mViewBinding2.f65805d) != null) {
            uf.c.k(shapeableImageView2);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (shapeableImageView = mViewBinding3.f65806e) != null) {
            uf.c.g(shapeableImageView);
        }
        j mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (group = mViewBinding4.f65803b) != null) {
            uf.c.g(group);
        }
        View view = this.errorLayout;
        if (view != null) {
            uf.c.k(view);
        }
        View view2 = this.errorLayout;
        if (view2 != null) {
            view2.setTag(Integer.valueOf(type));
        }
        j mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatImageView2 = mViewBinding5.f65811j) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        j mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatImageView = mViewBinding6.f65811j) == null) {
            return;
        }
        appCompatImageView.setKeepScreenOn(false);
    }

    private final void O0(long delay) {
        x0().removeCallbacks(this.showErrorRunnable);
        x0().postDelayed(this.showErrorRunnable, delay);
    }

    public static final void P0(MusicTrailerV2Fragment musicTrailerV2Fragment) {
        musicTrailerV2Fragment.N0(0);
    }

    private final void Q0() {
        ShapeableImageView shapeableImageView;
        String url;
        Cover cover;
        Cover cover2;
        String thumbnail;
        TextView textView;
        PreVideoAddress videoAddress;
        Integer duration;
        SecondariesSeekBar secondariesSeekBar;
        if (!isAdded() || getActivity() == null) {
            return;
        }
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (secondariesSeekBar = mViewBinding.f65812k) != null) {
            secondariesSeekBar.setMax(100L);
        }
        Trailer trailer = this.trailer;
        long jIntValue = (trailer == null || (videoAddress = trailer.getVideoAddress()) == null || (duration = videoAddress.getDuration()) == null) ? 0L : duration.intValue() * 1000;
        this.duration = jIntValue;
        if (jIntValue > 0) {
            String str = "00:00/" + m.d(jIntValue);
            j mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (textView = mViewBinding2.f65813l) != null) {
                textView.setText(str);
            }
        }
        Trailer trailer2 = this.trailer;
        com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f41866a, (trailer2 == null || (cover2 = trailer2.getCover()) == null || (thumbnail = cover2.getThumbnail()) == null) ? "" : thumbnail, 0, 0, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return MusicTrailerV2Fragment.R0(this.f67315a, (BitmapDrawable) obj);
            }
        }, 6, null);
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (shapeableImageView = mViewBinding3.f65806e) == null) {
            return;
        }
        shapeableImageView.setVisibility(0);
        RequestManager requestManagerWith = Glide.with(requireContext());
        ni.f.a aVar = ni.f.f67269a;
        Trailer trailer3 = this.trailer;
        if (trailer3 == null || (cover = trailer3.getCover()) == null || (url = cover.getUrl()) == null) {
            url = "";
        }
        requestManagerWith.load2(ni.f.a.e(aVar, url, com.transsion.core.utils.e.f(), false, false, 12, null)).into(shapeableImageView);
    }

    public static final Unit R0(MusicTrailerV2Fragment musicTrailerV2Fragment, BitmapDrawable it) {
        ShapeableImageView shapeableImageView;
        Intrinsics.h(it, "it");
        j mViewBinding = musicTrailerV2Fragment.getMViewBinding();
        if (mViewBinding != null && (shapeableImageView = mViewBinding.f65805d) != null) {
            shapeableImageView.setImageDrawable(it);
        }
        return Unit.f64096a;
    }

    private final void S0(boolean isPlay) {
        AppCompatImageView appCompatImageView;
        Group group;
        AppCompatImageView appCompatImageView2;
        Group group2;
        f fVar;
        this.playState = 10;
        this.errorInfo = null;
        if (isPlay && (fVar = this.orPlayer) != null) {
            fVar.play();
        }
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group2 = mViewBinding.f65803b) != null) {
            uf.c.k(group2);
        }
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView2 = mViewBinding2.f65807f) != null) {
            uf.c.g(appCompatImageView2);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (group = mViewBinding3.f65804c) != null) {
            uf.c.k(group);
        }
        j mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (appCompatImageView = mViewBinding4.f65811j) != null) {
            appCompatImageView.setImageResource(R$drawable.post_icon_pause);
        }
        x0().removeCallbacks(this.showErrorRunnable);
        Q0();
    }

    static void T0(MusicTrailerV2Fragment musicTrailerV2Fragment, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            z10 = true;
        }
        musicTrailerV2Fragment.S0(z10);
    }

    private final Intent w0(String pageName) {
        to.a aVar = (to.a) TheRouter.d(to.a.class, new Object[0]);
        StringBuilder sb2 = new StringBuilder("oneroom://com.community.oneroom?type=");
        sb2.append("/movie/detail");
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("id");
        sb2.append(UrlUtils.EQUAL_MARK);
        Trailer trailer = this.trailer;
        sb2.append(trailer != null ? trailer.getSubjectId() : null);
        sb2.append(UrlUtils.AND_MARK);
        sb2.append("subject_type");
        sb2.append(UrlUtils.EQUAL_MARK);
        Trailer trailer2 = this.trailer;
        sb2.append(trailer2 != null ? Integer.valueOf(trailer2.getSubjectType()) : null);
        sb2.append("extra_page_from");
        sb2.append(UrlUtils.EQUAL_MARK);
        sb2.append(pageName);
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

    private final Handler x0() {
        return (Handler) this.loadingHandler.getValue();
    }

    private final MediaItem y0() {
        PreVideoAddress videoAddress;
        Cover cover;
        Trailer trailer = this.trailer;
        String url = null;
        String musicName = trailer != null ? trailer.getMusicName() : null;
        Trailer trailer2 = this.trailer;
        String url2 = (trailer2 == null || (cover = trailer2.getCover()) == null) ? null : cover.getUrl();
        Trailer trailer3 = this.trailer;
        if (trailer3 != null && (videoAddress = trailer3.getVideoAddress()) != null) {
            url = videoAddress.getUrl();
        }
        return new MediaItem(musicName, "", url2, null, null, null, z0(), w0("media_music_float_notification"), null, url, Boolean.TRUE, null, null, null, 14648, null);
    }

    private final PendingIntent z0() {
        return PendingIntent.getActivity(Utils.a(), 0, w0("media_notification"), A0());
    }

    @Override
    public j getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        j jVarC = j.c(inflater);
        Intrinsics.g(jVarC, "inflate(...)");
        return jVarC;
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, d dVar) {
        e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public String getPageStateLayoutTitle() {
        return "";
    }

    @Override
    public void initListener() {
        f fVar;
        D0();
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicTrailerV2Fragment.C0(this.f67318a, view);
                }
            };
            mViewBinding.f65807f.setOnClickListener(onClickListener);
            mViewBinding.f65811j.setOnClickListener(onClickListener);
            mViewBinding.f65810i.setOnClickListener(new b());
            if (NetworkType.NETWORK_WIFI != l.f76264a.d() || (fVar = this.orPlayer) == null || fVar.isPlaying()) {
                return;
            }
            K0();
        }
    }

    @Override
    public void initPlayer() {
        e.a.b(this);
    }

    @Override
    public void initViewData() {
        String subjectId;
        v0();
        Trailer trailer = this.trailer;
        if (trailer == null || (subjectId = trailer.getSubjectId()) == null) {
            return;
        }
        e0 e0Var = e0.f67859a;
        f fVarD = e0Var.d(subjectId);
        if (fVarD == null) {
            fVarD = e0Var.m();
        } else if (fVarD.isPlaying()) {
            S0(false);
        }
        fVarD.addPlayerListener(this);
        this.orPlayer = fVarD;
    }

    @Override
    public void initViewModel() {
    }

    @Override
    public boolean isShowPageStateLayoutTitle() {
        return false;
    }

    @Override
    public void loadDefaultData() {
        super.loadDefaultData();
        Q0();
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long progress, gn.e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        e.a.d(this, progress, mediaSource);
        if (this.bufferPosition >= progress || this.duration <= 0) {
            return;
        }
        this.bufferPosition = progress;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put(0, Integer.valueOf((int) ((progress * ((long) 100)) / this.duration)));
        j mViewBinding = getMViewBinding();
        if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f65812k) == null) {
            return;
        }
        secondariesSeekBar.setSecondariesProgress(linkedHashMap);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        e.a.e(this, mediaSource);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onCompletion()", false, 2, null);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            this.currentPosition = 0L;
            this.playState = 30;
            AppCompatImageView ivPlay = mViewBinding.f65807f;
            Intrinsics.g(ivPlay, "ivPlay");
            uf.c.k(ivPlay);
            mViewBinding.f65811j.setImageResource(R$drawable.post_icon_play);
            Group groupProgress = mViewBinding.f65804c;
            Intrinsics.g(groupProgress, "groupProgress");
            uf.c.g(groupProgress);
            ShapeableImageView ivMovieCover = mViewBinding.f65806e;
            Intrinsics.g(ivMovieCover, "ivMovieCover");
            uf.c.k(ivMovieCover);
            ShapeableImageView ivMovieBlurCover = mViewBinding.f65805d;
            Intrinsics.g(ivMovieBlurCover, "ivMovieBlurCover");
            uf.c.k(ivMovieBlurCover);
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.removePlayerListener(this);
        }
    }

    @Override
    public void onDisconnected() {
        f fVar;
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onDisconnected()", false, 2, null);
        if (this.playState != 10 || (fVar = this.orPlayer) == null || fVar.isPlaying()) {
            return;
        }
        O0(500L);
    }

    @Override
    public void onFocusChange(boolean z10) {
        e.a.g(this, z10);
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        e.a.h(this, z10);
    }

    @Override
    public void onLoadingBegin(gn.e mediaSource) {
        Group group;
        e.a.i(this, mediaSource);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onLoadingBegin()", false, 2, null);
        if (!l.f76264a.e()) {
            O0(1000L);
            return;
        }
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f65803b) != null) {
            uf.c.k(group);
        }
        x0().post(this.loadingRunnable);
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
    }

    @Override
    public void onLoadingEnd(gn.e mediaSource) {
        Group group;
        e.a.k(this, mediaSource);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onLoadingEnd()", false, 2, null);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f65803b) != null) {
            uf.c.g(group);
        }
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
        x0().removeCallbacks(this.loadingRunnable);
        x0().removeCallbacks(this.showErrorRunnable);
    }

    @Override
    public void onLoadingProgress(int i10, float f10, gn.e eVar) {
        e.a.m(this, i10, f10, eVar);
    }

    @Override
    public void onLoopingStart() {
        e.a.o(this);
    }

    @Override
    public void onMediaItemTransition(String str) {
        e.a.p(this, str);
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        e.a.q(this, errorInfo, mediaSource);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onPlayError() --> errorInfo.errorCode = " + errorInfo.getErrorCode(), false, 2, null);
        Integer errorCode = errorInfo.getErrorCode();
        if (errorCode != null && errorCode.intValue() == 537067524) {
            if (l.f76264a.e()) {
                N0(1);
            } else {
                O0(500L);
            }
        }
        this.errorInfo = errorInfo;
    }

    @Override
    public void onPlayerRelease(gn.e eVar) {
        e.a.t(this, eVar);
    }

    @Override
    public void onPlayerReset() {
        e.a.v(this);
    }

    @Override
    public void onPrepare(gn.e mediaSource) {
        e.a.w(this, mediaSource);
        f fVar = this.orPlayer;
        if (fVar != null) {
            fVar.play();
        }
    }

    @Override
    public void onProgress(long progress, gn.e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        TextView textView;
        f fVar;
        Group group;
        e.a.y(this, progress, mediaSource);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f65803b) != null) {
            group.setVisibility(8);
        }
        if (this.formUserSeek) {
            return;
        }
        this.currentPosition = progress;
        if (this.duration <= 0 && (fVar = this.orPlayer) != null) {
            this.duration = fVar.getDuration();
        }
        String str = m.d(progress) + "/" + m.d(this.duration);
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (textView = mViewBinding2.f65813l) != null) {
            textView.setText(str);
        }
        j mViewBinding3 = getMViewBinding();
        if (mViewBinding3 == null || (secondariesSeekBar = mViewBinding3.f65812k) == null) {
            return;
        }
        secondariesSeekBar.setProgress((progress * ((long) 100)) / this.duration);
    }

    @Override
    public void onRenderFirstFrame() {
        e.a.A(this);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onRenderFirstFrame()", false, 2, null);
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    @Override
    public void onSetDataSource() {
        e.a.B(this);
    }

    @Override
    public void onStop() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        super.onStop();
        Activity activityB = com.blankj.utilcode.util.a.b();
        wf.a.C0922a.g(wf.a.f74274a, "zxb_lob --> topActivity = " + activityB, false, 2, null);
        if (activityB != null) {
            String simpleName = activityB.getClass().getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            if (StringsKt.c0(simpleName, "LocalVideoDetailActivity", false, 2, null)) {
                this.playState = 0;
                j mViewBinding = getMViewBinding();
                if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f65811j) != null) {
                    appCompatImageView2.setImageResource(R$drawable.post_icon_play);
                }
                j mViewBinding2 = getMViewBinding();
                if (mViewBinding2 == null || (appCompatImageView = mViewBinding2.f65811j) == null) {
                    return;
                }
                appCompatImageView.setKeepScreenOn(false);
            }
        }
    }

    @Override
    public void onTracksAudioBitrateChange(int i10) {
        e.a.C(this, i10);
    }

    @Override
    public void onTracksChange(qn.c cVar) {
        e.a.D(this, cVar);
    }

    @Override
    public void onTracksVideoBitrateChange(int i10) {
        e.a.E(this, i10);
    }

    @Override
    public void onVideoPause(gn.e mediaSource) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        e.a.F(this, mediaSource);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onVideoPause()", false, 2, null);
        this.playState = 20;
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f65811j) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        j mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (appCompatImageView = mViewBinding2.f65811j) == null) {
            return;
        }
        appCompatImageView.setKeepScreenOn(false);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        e.a.I(this, mediaSource);
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> onVideoStart()", false, 2, null);
        j mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            Group groupLoading = mViewBinding.f65803b;
            Intrinsics.g(groupLoading, "groupLoading");
            uf.c.g(groupLoading);
            mViewBinding.f65811j.setImageResource(R$drawable.post_icon_pause);
            mViewBinding.f65811j.setKeepScreenOn(true);
            S0(false);
        }
    }

    @Override
    public void receiveArguments() {
        Bundle arguments = getArguments();
        Trailer trailer = (Trailer) (arguments != null ? arguments.getSerializable("trailer") : null);
        this.trailer = trailer;
        com.transsion.player.mediasession.i.f46432a.a("MusicTrailerV2Fragment --> receiveArguments() --> trailer = " + trailer);
    }

    @Override
    public void retryLoadData() {
        int i10;
        wf.a.C0922a.g(wf.a.f74274a, "MusicTrailerV2Fragment --> retryLoadData()", false, 2, null);
        Q0();
        View view = this.errorLayout;
        if (view == null || view.getVisibility() != 0 || (i10 = this.playState) == 20 || i10 == 21) {
            return;
        }
        T0(this, false, 1, null);
    }

    @Override
    public void setOnSeekCompleteListener() {
        e.a.K(this);
    }

    public final void v0() {
    }
}
