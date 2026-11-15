package com.transsion.moviedetail.fragment;

import android.graphics.drawable.BitmapDrawable;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.FragmentActivity;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.therouter.TheRouter;
import com.tn.lib.util.networkinfo.NetworkType;
import com.tn.lib.view.SecondariesSeekBar;
import com.transsion.baseui.fragment.BaseFragment;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PreVideoAddress;
import com.transsion.moviedetailapi.bean.Trailer;
import com.transsion.player.orplayer.PlayError;
import com.transsion.postdetail.R$drawable;
import com.transsion.postdetail.R$string;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000´\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u0000 \u0083\u00012\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004:\u0001IB\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u0006J\u000f\u0010\u000b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\u00072\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0014\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u00072\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u000f\u0010\u001e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001e\u0010\u0006J\u000f\u0010\u001f\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u001f\u0010\u0006J\u000f\u0010 \u001a\u00020\u0007H\u0002¢\u0006\u0004\b \u0010\u0006J\u0017\u0010#\u001a\u00020\u00022\u0006\u0010\"\u001a\u00020!H\u0016¢\u0006\u0004\b#\u0010$J!\u0010)\u001a\u00020\u00072\u0006\u0010&\u001a\u00020%2\b\u0010(\u001a\u0004\u0018\u00010'H\u0016¢\u0006\u0004\b)\u0010*J\u000f\u0010+\u001a\u00020\u0007H\u0016¢\u0006\u0004\b+\u0010\u0006J\u0019\u0010.\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b.\u0010/J\u0019\u00100\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b0\u0010/J\u0019\u00101\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b1\u0010/J\u0019\u00102\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b2\u0010/J!\u00104\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001a2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b4\u00105J\u0019\u00106\u001a\u00020\u00072\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b6\u0010/J\u000f\u00107\u001a\u00020\u0007H\u0016¢\u0006\u0004\b7\u0010\u0006J!\u00108\u001a\u00020\u00072\u0006\u00103\u001a\u00020\u001a2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b8\u00105J\u000f\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\b9\u0010\u0006J\u000f\u0010:\u001a\u00020\u0007H\u0016¢\u0006\u0004\b:\u0010\u0006J\u000f\u0010;\u001a\u00020\u0007H\u0016¢\u0006\u0004\b;\u0010\u0006J!\u0010>\u001a\u00020\u00072\u0006\u0010=\u001a\u00020<2\b\u0010-\u001a\u0004\u0018\u00010,H\u0016¢\u0006\u0004\b>\u0010?J\u000f\u0010@\u001a\u00020\u0007H\u0016¢\u0006\u0004\b@\u0010\u0006J\u001f\u0010E\u001a\u00020\u00072\u0006\u0010B\u001a\u00020A2\u0006\u0010D\u001a\u00020CH\u0016¢\u0006\u0004\bE\u0010FJ\u000f\u0010G\u001a\u00020\u0007H\u0016¢\u0006\u0004\bG\u0010\u0006R\u0018\u0010K\u001a\u0004\u0018\u00010H8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010JR\u0016\u0010N\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0016\u0010R\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010QR\u0016\u0010U\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR\u0016\u0010W\u001a\u00020O8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010QR\u0018\u0010\r\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bX\u0010YR\u0014\u0010]\u001a\u00020Z8\u0002X\u0082D¢\u0006\u0006\n\u0004\b[\u0010\\R\u001d\u0010c\u001a\u0004\u0018\u00010^8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b_\u0010`\u001a\u0004\ba\u0010bR\u001b\u0010h\u001a\u00020d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010`\u001a\u0004\bf\u0010gR\u001b\u0010m\u001a\u00020i8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\bj\u0010`\u001a\u0004\bk\u0010lR\u0016\u0010o\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bn\u0010MR\u0016\u0010q\u001a\u00020\u001a8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bp\u0010MR\u001c\u0010u\u001a\b\u0012\u0004\u0012\u00020Z0r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bs\u0010tR\u0016\u0010w\u001a\u00020\u00158\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bv\u0010TR\u0014\u0010{\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\by\u0010zR\u0018\u0010=\u001a\u0004\u0018\u00010<8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b|\u0010}R\u0019\u0010\u0080\u0001\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b~\u0010\u007fR\u0016\u0010\u0082\u0001\u001a\u00020x8\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010z¨\u0006\u0084\u0001"}, d2 = {"Lcom/transsion/moviedetail/fragment/TrailerFragment;", "Lcom/transsion/baseui/fragment/BaseFragment;", "Llm/u;", "Lcom/transsion/player/orplayer/e;", "Lyg/m;", "<init>", "()V", "", "z0", "x0", "y0", "r0", "Lcom/transsion/moviedetailapi/bean/Trailer;", "trailer", "B0", "(Lcom/transsion/moviedetailapi/bean/Trailer;)V", "Lcom/transsion/moviedetailapi/bean/Cover;", "cover", "D0", "(Lcom/transsion/moviedetailapi/bean/Cover;)V", "t0", "", NativeComponentConstants.KEY_COMPONENT_TYPE, "F0", "(I)V", "A0", "", "delay", "G0", "(J)V", "I0", "n0", "C0", "Landroid/view/LayoutInflater;", "inflater", "q0", "(Landroid/view/LayoutInflater;)Llm/u;", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Landroid/os/Bundle;", "savedInstanceState", "initView", "(Landroid/view/View;Landroid/os/Bundle;)V", "lazyLoadData", "Lgn/e;", "mediaSource", "onCompletion", "(Lgn/e;)V", "onVideoStart", "onVideoPause", "onLoadingBegin", NotificationCompat.CATEGORY_PROGRESS, "onBufferedPosition", "(JLgn/e;)V", "onLoadingEnd", "onRenderFirstFrame", "onProgress", "onPause", "onResume", "onDestroy", "Lcom/transsion/player/orplayer/PlayError;", "errorInfo", "onPlayError", "(Lcom/transsion/player/orplayer/PlayError;Lgn/e;)V", "onDisconnected", "Landroid/net/Network;", "network", "Landroid/net/NetworkCapabilities;", "networkCapabilities", "onConnected", "(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V", TmcConstants.NAVIGATION_ON_START, "Lcom/transsion/moviedetailapi/bean/PreVideoAddress;", "a", "Lcom/transsion/moviedetailapi/bean/PreVideoAddress;", "videoAddress", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "J", "duration", "", "c", "Z", "formUserSeek", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "I", "playState", "e", "isShowFirstFrame", "f", "Lcom/transsion/moviedetailapi/bean/Trailer;", "", "g", "Ljava/lang/String;", "TAG", "Lep/a;", "h", "Lkotlin/Lazy;", "getMAudioApi", "()Lep/a;", "mAudioApi", "Landroid/os/Handler;", "i", "o0", "()Landroid/os/Handler;", "loadingHandler", "Lcom/transsion/player/orplayer/f;", "j", "p0", "()Lcom/transsion/player/orplayer/f;", "mOrPlayer", CampaignEx.JSON_KEY_AD_K, "bufferPosition", "l", "currentPosition", "", "m", "[Ljava/lang/String;", "loadingDot", "n", "loadingDotIndex", "Ljava/lang/Runnable;", "o", "Ljava/lang/Runnable;", "loadingRunnable", TtmlNode.TAG_P, "Lcom/transsion/player/orplayer/PlayError;", CampaignEx.JSON_KEY_AD_Q, "Landroid/view/View;", "errorLayout", CampaignEx.JSON_KEY_AD_R, "showErrorRunnable", "s", "MovieDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class TrailerFragment extends BaseFragment<lm.u> implements com.transsion.player.orplayer.e, yg.m {

    private PreVideoAddress videoAddress;

    private long duration;

    private boolean formUserSeek;

    private int playState;

    private boolean isShowFirstFrame;

    private Trailer trailer;

    private long bufferPosition;

    private long currentPosition;

    private int loadingDotIndex;

    private PlayError errorInfo;

    private View errorLayout;

    private final String TAG = "TrailerFragment";

    private final Lazy mAudioApi = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TrailerFragment.mAudioApi_delegate$lambda$0();
        }
    });

    private final Lazy loadingHandler = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TrailerFragment.u0();
        }
    });

    private final Lazy mOrPlayer = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return TrailerFragment.w0(this.f45518a);
        }
    });

    private String[] loadingDot = {".", "..", "..."};

    private final Runnable loadingRunnable = new Runnable() {
        @Override
        public final void run() {
            TrailerFragment.v0(this.f45522a);
        }
    };

    private final Runnable showErrorRunnable = new Runnable() {
        @Override
        public final void run() {
            TrailerFragment.H0(this.f45526a);
        }
    };

    public static final class b implements com.tn.lib.view.s {

        private long f45411a;

        b() {
        }

        @Override
        public void a(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            TrailerFragment.this.formUserSeek = false;
            TrailerFragment.this.p0().seekTo((this.f45411a * TrailerFragment.this.duration) / ((long) 100));
            if (TrailerFragment.this.p0().isPlaying()) {
                return;
            }
            TrailerFragment.this.p0().play();
        }

        @Override
        public void b(SecondariesSeekBar seekBar, long j10, boolean z10) {
            Intrinsics.h(seekBar, "seekBar");
            if (z10) {
                this.f45411a = j10;
            }
        }

        @Override
        public void c(SecondariesSeekBar seekBar) {
            Intrinsics.h(seekBar, "seekBar");
            TrailerFragment.this.formUserSeek = true;
        }
    }

    public static final class c implements View.OnClickListener {

        private long f45413a;

        c() {
        }

        @Override
        public void onClick(View view) {
            if (TrailerFragment.this.playState != 10) {
                TrailerFragment.this.z0();
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            long j10 = this.f45413a;
            if (j10 == 0 || jCurrentTimeMillis - j10 > 500) {
                this.f45413a = jCurrentTimeMillis;
            } else {
                this.f45413a = 0L;
                TrailerFragment.this.x0();
            }
        }
    }

    private final void A0() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "video error，reload~~", false, 4, null);
        this.bufferPosition = 0L;
        p0().stop();
        p0().reset();
        p0().prepare();
        p0().seekTo(this.currentPosition);
        I0();
    }

    private final void B0(Trailer trailer) {
        String url;
        TextView textView;
        Integer duration;
        SecondariesSeekBar secondariesSeekBar;
        D0(trailer.getCover());
        this.videoAddress = trailer.getVideoAddress();
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (secondariesSeekBar = mViewBinding.f65927l) != null) {
            secondariesSeekBar.setMax(100L);
        }
        PreVideoAddress preVideoAddress = this.videoAddress;
        long jIntValue = (preVideoAddress == null || (duration = preVideoAddress.getDuration()) == null) ? 0L : duration.intValue() * 1000;
        this.duration = jIntValue;
        if (jIntValue > 0) {
            String str = "00:00/" + com.transsion.postdetail.util.m.d(jIntValue);
            lm.u mViewBinding2 = getMViewBinding();
            if (mViewBinding2 != null && (textView = mViewBinding2.f65928m) != null) {
                textView.setText(str);
            }
        }
        PreVideoAddress preVideoAddress2 = this.videoAddress;
        if (preVideoAddress2 == null || (url = preVideoAddress2.getUrl()) == null) {
            return;
        }
        p0().setDataSource(new gn.e(url, url, 0, null, null, 28, null));
    }

    private final void C0() {
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (shapeableImageView2 = mViewBinding.f65920e) != null) {
            uf.c.k(shapeableImageView2);
        }
        lm.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (shapeableImageView = mViewBinding2.f65919d) == null) {
            return;
        }
        uf.c.k(shapeableImageView);
    }

    private final void D0(Cover cover) {
        final lm.u mViewBinding;
        if (cover == null || (mViewBinding = getMViewBinding()) == null) {
            return;
        }
        int iF = com.transsion.core.utils.e.f();
        ni.f.a aVar = ni.f.f67269a;
        String url = cover.getUrl();
        if (url == null) {
            url = "";
        }
        String strE = ni.f.a.e(aVar, url, iF, false, false, 12, null);
        String thumbnail = cover.getThumbnail();
        com.transsion.base.image.blurhash.e.d(com.transsion.base.image.blurhash.e.f41866a, thumbnail == null ? "" : thumbnail, 0, 0, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return TrailerFragment.E0(mViewBinding, (BitmapDrawable) obj);
            }
        }, 6, null);
        Glide.with(requireContext()).load2(strE).into(mViewBinding.f65920e);
    }

    public static final Unit E0(lm.u uVar, BitmapDrawable it) {
        Intrinsics.h(it, "it");
        uVar.f65919d.setImageDrawable(it);
        return Unit.f64096a;
    }

    private final void F0(int type) {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        Group group;
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        ViewStub viewStub;
        if (this.errorLayout == null) {
            lm.u mViewBinding = getMViewBinding();
            this.errorLayout = (mViewBinding == null || (viewStub = mViewBinding.f65929n) == null) ? null : viewStub.inflate();
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
        p0().pause();
        lm.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (shapeableImageView2 = mViewBinding2.f65919d) != null) {
            uf.c.k(shapeableImageView2);
        }
        lm.u mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (shapeableImageView = mViewBinding3.f65920e) != null) {
            uf.c.g(shapeableImageView);
        }
        lm.u mViewBinding4 = getMViewBinding();
        if (mViewBinding4 != null && (group = mViewBinding4.f65917b) != null) {
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
        lm.u mViewBinding5 = getMViewBinding();
        if (mViewBinding5 != null && (appCompatImageView2 = mViewBinding5.f65926k) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        lm.u mViewBinding6 = getMViewBinding();
        if (mViewBinding6 == null || (appCompatImageView = mViewBinding6.f65926k) == null) {
            return;
        }
        appCompatImageView.setKeepScreenOn(false);
    }

    private final void G0(long delay) {
        o0().removeCallbacks(this.showErrorRunnable);
        o0().postDelayed(this.showErrorRunnable, delay);
    }

    public static final void H0(TrailerFragment trailerFragment) {
        trailerFragment.F0(0);
    }

    private final void I0() {
        AppCompatImageView appCompatImageView;
        Group group;
        AppCompatImageView appCompatImageView2;
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.pause();
        }
        this.playState = 10;
        this.errorInfo = null;
        p0().play();
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f65921f) != null) {
            uf.c.g(appCompatImageView2);
        }
        lm.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (group = mViewBinding2.f65918c) != null) {
            uf.c.k(group);
        }
        lm.u mViewBinding3 = getMViewBinding();
        if (mViewBinding3 != null && (appCompatImageView = mViewBinding3.f65926k) != null) {
            appCompatImageView.setImageResource(R$drawable.post_icon_pause);
        }
        o0().removeCallbacks(this.showErrorRunnable);
        Trailer trailer = this.trailer;
        if (trailer == null || trailer.getSubjectType() != SubjectType.MUSIC.getValue()) {
            n0();
        } else {
            C0();
        }
    }

    private final ep.a getMAudioApi() {
        return (ep.a) this.mAudioApi.getValue();
    }

    public static final ep.a mAudioApi_delegate$lambda$0() {
        return (ep.a) TheRouter.d(ep.a.class, new Object[0]);
    }

    private final void n0() {
        ShapeableImageView shapeableImageView;
        ShapeableImageView shapeableImageView2;
        if (this.isShowFirstFrame) {
            Trailer trailer = this.trailer;
            if (trailer == null || trailer.getSubjectType() != SubjectType.MUSIC.getValue()) {
                lm.u mViewBinding = getMViewBinding();
                if (mViewBinding != null && (shapeableImageView2 = mViewBinding.f65920e) != null) {
                    uf.c.g(shapeableImageView2);
                }
                lm.u mViewBinding2 = getMViewBinding();
                if (mViewBinding2 == null || (shapeableImageView = mViewBinding2.f65919d) == null) {
                    return;
                }
                uf.c.g(shapeableImageView);
            }
        }
    }

    private final Handler o0() {
        return (Handler) this.loadingHandler.getValue();
    }

    public final com.transsion.player.orplayer.f p0() {
        return (com.transsion.player.orplayer.f) this.mOrPlayer.getValue();
    }

    private final void r0() {
        SecondariesSeekBar secondariesSeekBar;
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f65927l) == null) {
            return;
        }
        secondariesSeekBar.setOnSeekBarChangeListener(new b());
    }

    public static final void s0(TrailerFragment trailerFragment, View view) {
        trailerFragment.z0();
    }

    private final void t0() {
        o0().postDelayed(this.loadingRunnable, 1000L);
    }

    public static final Handler u0() {
        Looper looperMyLooper = Looper.myLooper();
        Intrinsics.e(looperMyLooper);
        return new Handler(looperMyLooper);
    }

    public static final void v0(TrailerFragment trailerFragment) {
        TextView textView;
        int i10 = trailerFragment.loadingDotIndex;
        if (i10 >= 2) {
            trailerFragment.loadingDotIndex = 0;
        } else {
            trailerFragment.loadingDotIndex = i10 + 1;
        }
        lm.u mViewBinding = trailerFragment.getMViewBinding();
        if (mViewBinding != null && (textView = mViewBinding.f65924i) != null) {
            textView.setText(Utils.a().getString(R$string.play_loading) + trailerFragment.loadingDot[trailerFragment.loadingDotIndex]);
        }
        trailerFragment.t0();
    }

    public static final com.transsion.player.orplayer.f w0(TrailerFragment trailerFragment) {
        com.transsion.player.orplayer.f fVarM = on.e0.f67859a.m();
        fVarM.setPlayerConfig(new hn.d(null, false, 0, 0, 0, 0, 0, 0, 0L, 0, 0, false, false, false, false, false, null, 126975, null));
        lm.u mViewBinding = trailerFragment.getMViewBinding();
        fVarM.setTextureView(mViewBinding != null ? mViewBinding.f65923h : null);
        fVarM.setLooping(false);
        fVarM.setPlayerListener(trailerFragment);
        return fVarM;
    }

    public final void x0() {
        this.playState = 20;
        p0().pause();
    }

    private final void y0() {
        this.playState = 10;
        I0();
    }

    public final void z0() {
        lm.u mViewBinding;
        Group group;
        lm.u mViewBinding2;
        Group group2;
        int i10 = this.playState;
        if (i10 == -1) {
            A0();
            return;
        }
        if (i10 == 0) {
            p0().prepare();
            p0().seekTo(0L);
            y0();
            if (this.playState != 10 || (mViewBinding = getMViewBinding()) == null || (group = mViewBinding.f65917b) == null) {
                return;
            }
            uf.c.k(group);
            return;
        }
        if (i10 == 10) {
            x0();
            return;
        }
        if (i10 == 20 || i10 == 22) {
            y0();
            return;
        }
        if (i10 != 30) {
            return;
        }
        p0().seekTo(0L);
        y0();
        if (this.playState != 10 || (mViewBinding2 = getMViewBinding()) == null || (group2 = mViewBinding2.f65917b) == null) {
            return;
        }
        uf.c.k(group2);
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, qn.d dVar) {
        com.transsion.player.orplayer.e.a.a(this, z10, i10, i11, dVar);
    }

    @Override
    public void initPlayer() {
        com.transsion.player.orplayer.e.a.b(this);
    }

    @Override
    public void initView(View view, Bundle savedInstanceState) {
        Intrinsics.h(view, "view");
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            View.OnClickListener onClickListener = new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    TrailerFragment.s0(this.f45530a, view2);
                }
            };
            mViewBinding.f65921f.setOnClickListener(onClickListener);
            mViewBinding.f65926k.setOnClickListener(onClickListener);
            mViewBinding.f65925j.setOnClickListener(new c());
        }
        r0();
        yg.l.f76264a.l(this);
    }

    @Override
    public void lazyLoadData() {
        Bundle arguments = getArguments();
        Trailer trailer = null;
        Trailer trailer2 = (Trailer) (arguments != null ? arguments.getSerializable("trailer") : null);
        if (trailer2 != null) {
            B0(trailer2);
            if (NetworkType.NETWORK_WIFI == yg.l.f76264a.d() && trailer2.getSubjectType() < SubjectType.AUDIO.getValue()) {
                z0();
            }
            trailer = trailer2;
        }
        this.trailer = trailer;
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        com.transsion.player.orplayer.e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long progress, gn.e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        com.transsion.player.orplayer.e.a.d(this, progress, mediaSource);
        if (this.bufferPosition < progress) {
            this.bufferPosition = progress;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put(0, Integer.valueOf((int) ((progress * ((long) 100)) / this.duration)));
            lm.u mViewBinding = getMViewBinding();
            if (mViewBinding == null || (secondariesSeekBar = mViewBinding.f65927l) == null) {
                return;
            }
            secondariesSeekBar.setSecondariesProgress(linkedHashMap);
        }
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.e(this, mediaSource);
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            this.currentPosition = 0L;
            this.playState = 30;
            AppCompatImageView ivPlay = mViewBinding.f65921f;
            Intrinsics.g(ivPlay, "ivPlay");
            uf.c.k(ivPlay);
            mViewBinding.f65926k.setImageResource(R$drawable.post_icon_play);
            Group groupProgress = mViewBinding.f65918c;
            Intrinsics.g(groupProgress, "groupProgress");
            uf.c.g(groupProgress);
            ShapeableImageView ivMovieCover = mViewBinding.f65920e;
            Intrinsics.g(ivMovieCover, "ivMovieCover");
            uf.c.k(ivMovieCover);
            ShapeableImageView ivMovieBlurCover = mViewBinding.f65919d;
            Intrinsics.g(ivMovieBlurCover, "ivMovieBlurCover");
            uf.c.k(ivMovieBlurCover);
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onCompletion", false, 4, null);
        }
    }

    @Override
    public void onConnected() {
        yg.m.a.a(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        o0().removeCallbacks(this.loadingRunnable);
        yg.l.f76264a.m(this);
    }

    @Override
    public void onDisconnected() {
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onDisconnected~~", false, 4, null);
        if (this.playState != 10 || p0().isPlaying()) {
            return;
        }
        G0(500L);
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
        Group group;
        com.transsion.player.orplayer.e.a.i(this, mediaSource);
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onLoadingBegin", false, 4, null);
        if (!yg.l.f76264a.e()) {
            G0(1000L);
            return;
        }
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f65917b) != null) {
            uf.c.k(group);
        }
        o0().post(this.loadingRunnable);
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
    }

    @Override
    public void onLoadingEnd(gn.e mediaSource) {
        Group group;
        com.transsion.player.orplayer.e.a.k(this, mediaSource);
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (group = mViewBinding.f65917b) != null) {
            uf.c.g(group);
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onLoadingEnd", false, 4, null);
        View view = this.errorLayout;
        if (view != null) {
            uf.c.g(view);
        }
        o0().removeCallbacks(this.loadingRunnable);
        o0().removeCallbacks(this.showErrorRunnable);
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
        FragmentActivity activity = getActivity();
        if (activity != null && activity.isFinishing()) {
            p0().release();
        } else if (this.playState == 10) {
            this.playState = 21;
            p0().pause();
        }
        ep.a mAudioApi = getMAudioApi();
        if (mAudioApi != null) {
            mAudioApi.start();
        }
    }

    @Override
    public void onPlayError(PlayError errorInfo, gn.e mediaSource) {
        Intrinsics.h(errorInfo, "errorInfo");
        com.transsion.player.orplayer.e.a.q(this, errorInfo, mediaSource);
        Integer errorCode = errorInfo.getErrorCode();
        if (errorCode != null && errorCode.intValue() == 537067524) {
            if (yg.l.f76264a.e()) {
                F0(1);
            } else {
                G0(500L);
            }
        }
        this.errorInfo = errorInfo;
        wf.a.f74274a.i("i_media", this.TAG + " --> IPlayerListener --> onPlayError()  errorCode:" + errorInfo.getErrorCode() + " errorMessage:" + errorInfo.getErrorMessage() + " url:" + (mediaSource != null ? mediaSource.j() : null) + " --> 预告片播放失败了", true);
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
    public void onProgress(long progress, gn.e mediaSource) {
        SecondariesSeekBar secondariesSeekBar;
        TextView textView;
        com.transsion.player.orplayer.e.a.y(this, progress, mediaSource);
        if (this.formUserSeek) {
            return;
        }
        this.currentPosition = progress;
        if (this.duration <= 0) {
            this.duration = p0().getDuration();
        }
        String str = com.transsion.postdetail.util.m.d(progress) + "/" + com.transsion.postdetail.util.m.d(this.duration);
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (textView = mViewBinding.f65928m) != null) {
            textView.setText(str);
        }
        lm.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 == null || (secondariesSeekBar = mViewBinding2.f65927l) == null) {
            return;
        }
        secondariesSeekBar.setProgress((progress * ((long) 100)) / this.duration);
    }

    @Override
    public void onRenderFirstFrame() {
        com.transsion.player.orplayer.e.a.A(this);
        this.isShowFirstFrame = true;
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onRenderFirstFrame", false, 4, null);
        n0();
    }

    @Override
    public void onResume() {
        super.onResume();
        PreVideoAddress preVideoAddress = this.videoAddress;
        if ((preVideoAddress != null ? preVideoAddress.getUrl() : null) != null) {
            if (p0().requestForce()) {
                p0().prepare();
                p0().seekTo(this.currentPosition);
            }
            if (this.playState == 21) {
                this.playState = 10;
                p0().play();
                ep.a mAudioApi = getMAudioApi();
                if (mAudioApi != null) {
                    mAudioApi.pause();
                }
            }
        }
    }

    @Override
    public void onSetDataSource() {
        com.transsion.player.orplayer.e.a.B(this);
    }

    @Override
    public void onStart() {
        super.onStart();
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onStart~~", false, 4, null);
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
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        com.transsion.player.orplayer.e.a.F(this, mediaSource);
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null && (appCompatImageView2 = mViewBinding.f65926k) != null) {
            appCompatImageView2.setImageResource(R$drawable.post_icon_play);
        }
        lm.u mViewBinding2 = getMViewBinding();
        if (mViewBinding2 != null && (appCompatImageView = mViewBinding2.f65926k) != null) {
            appCompatImageView.setKeepScreenOn(false);
        }
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onVideoPause", false, 4, null);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        com.transsion.player.orplayer.e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        com.transsion.player.orplayer.e.a.I(this, mediaSource);
        lm.u mViewBinding = getMViewBinding();
        if (mViewBinding != null) {
            Group groupLoading = mViewBinding.f65917b;
            Intrinsics.g(groupLoading, "groupLoading");
            uf.c.g(groupLoading);
            mViewBinding.f65926k.setImageResource(R$drawable.post_icon_pause);
            mViewBinding.f65926k.setKeepScreenOn(true);
            n0();
            wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onVideoStart", false, 4, null);
        }
    }

    @Override
    public lm.u getViewBinding(LayoutInflater inflater) {
        Intrinsics.h(inflater, "inflater");
        lm.u uVarC = lm.u.c(inflater);
        Intrinsics.g(uVarC, "inflate(...)");
        return uVarC;
    }

    @Override
    public void setOnSeekCompleteListener() {
        com.transsion.player.orplayer.e.a.K(this);
    }

    @Override
    public void onConnected(Network network, NetworkCapabilities networkCapabilities) {
        int i10;
        Integer errorCode;
        Intrinsics.h(network, "network");
        Intrinsics.h(networkCapabilities, "networkCapabilities");
        wf.a.C0922a.f(wf.a.f74274a, this.TAG, "onConnected~~", false, 4, null);
        View view = this.errorLayout;
        if (view == null || view.getVisibility() != 0 || (i10 = this.playState) == 20 || i10 == 21) {
            return;
        }
        View view2 = this.errorLayout;
        if (!(view2 != null ? Intrinsics.c(view2.getTag(), 1) : false)) {
            PlayError playError = this.errorInfo;
            if (!((playError == null || (errorCode = playError.getErrorCode()) == null || errorCode.intValue() != 537067524) ? false : true)) {
                I0();
                return;
            }
        }
        A0();
    }
}
