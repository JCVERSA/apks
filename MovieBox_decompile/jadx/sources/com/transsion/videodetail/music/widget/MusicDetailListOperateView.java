package com.transsion.videodetail.music.widget;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.content.b;
import androidx.fragment.app.FragmentManager;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$color;
import com.transsion.player.orplayer.PlayError;
import com.transsion.player.orplayer.e;
import com.transsion.player.orplayer.global.TnPlayerType;
import com.transsion.videodetail.R$drawable;
import com.transsion.videodetail.music.bean.MusicStateEnum;
import com.transsion.videodetail.music.ui.MusicDetailLikedFragment;
import com.transsion.videodetail.music.widget.MusicDetailListOperateView;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import qn.d;
import xv.k;
import yv.c;

@Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u00012\u00020\u0002B\u001d\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u000eJ\u0017\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0014\u0010\u000eJ\u000f\u0010\u0015\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0015\u0010\u000eJ\u000f\u0010\u0016\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0016\u0010\u000eJ)\u0010\u001c\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\b\u0010\u001b\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0019\u0010 \u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b \u0010!J\u0019\u0010\"\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\"\u0010!J\u0019\u0010#\u001a\u00020\f2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b#\u0010!Jm\u0010*\u001a\u00020\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\t2\b\u0010$\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192:\u0010)\u001a6\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\f0%¢\u0006\u0004\b*\u0010+J\u0015\u0010.\u001a\u00020\f2\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\u000f\u00101\u001a\u0004\u0018\u000100¢\u0006\u0004\b1\u00102R\u0018\u00105\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b3\u00104RL\u00108\u001a8\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b(\u001b\u0012\u0015\u0012\u0013\u0018\u00010\t¢\u0006\f\b&\u0012\b\b'\u0012\u0004\b\b((\u0012\u0004\u0012\u00020\f\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b6\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0018\u0010>\u001a\u0004\u0018\u00010\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010=R\u0018\u0010A\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@¨\u0006B"}, d2 = {"Lcom/transsion/videodetail/music/widget/MusicDetailListOperateView;", "Landroid/widget/FrameLayout;", "Lcom/transsion/player/orplayer/e;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "getClassTag", "()Ljava/lang/String;", "", "i", "()V", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "isPlaying", "m", "(Z)V", "l", "j", CampaignEx.JSON_KEY_AD_K, "Landroidx/fragment/app/FragmentManager;", "childFragmentManager", "", "flMusicContainer", "subjectId", "g", "(Landroidx/fragment/app/FragmentManager;ILjava/lang/String;)V", "Lgn/e;", "mediaSource", "onVideoPause", "(Lgn/e;)V", "onVideoStart", "onCompletion", "musicContainer", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "path", "onItemCLick", "setContainer", "(Ljava/lang/String;Landroid/widget/FrameLayout;Landroidx/fragment/app/FragmentManager;ILkotlin/jvm/functions/Function2;)V", "Lcom/transsion/videodetail/music/bean/MusicStateEnum;", "state", "setState", "(Lcom/transsion/videodetail/music/bean/MusicStateEnum;)V", "Lcom/transsion/videodetail/music/ui/MusicDetailLikedFragment;", "getMusicDetailLikedFragment", "()Lcom/transsion/videodetail/music/ui/MusicDetailLikedFragment;", "a", "Lcom/transsion/videodetail/music/ui/MusicDetailLikedFragment;", "mMusicDetailLikedFragment", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lkotlin/jvm/functions/Function2;", "mOnItemCLick", "Lxv/k;", "c", "Lxv/k;", "bind", "Landroid/widget/FrameLayout;", "mMusicContainer", "e", "Lcom/transsion/videodetail/music/bean/MusicStateEnum;", "currentMicState", "VideoDetail_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class MusicDetailListOperateView extends FrameLayout implements e {

    private MusicDetailLikedFragment mMusicDetailLikedFragment;

    private Function2 mOnItemCLick;

    private k bind;

    private FrameLayout mMusicContainer;

    private MusicStateEnum currentMicState;

    public class a {

        public static final int[] f55678a;

        static {
            int[] iArr = new int[MusicStateEnum.values().length];
            try {
                iArr[MusicStateEnum.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MusicStateEnum.OPEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MusicStateEnum.NORMAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            f55678a = iArr;
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    @JvmOverloads
    public MusicDetailListOperateView(Context context) {
        this(context, null, 2, 0 == true ? 1 : 0);
        Intrinsics.h(context, "context");
    }

    private final void d() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView2 = kVar.f75969b) != null) {
            appCompatImageView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    MusicDetailListOperateView.e(this.f15450a, view);
                }
            });
        }
        k kVar2 = this.bind;
        if (kVar2 == null || (appCompatImageView = kVar2.f75971d) == null) {
            return;
        }
        appCompatImageView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                MusicDetailListOperateView.f(this.f15451a, view);
            }
        });
    }

    public static final void e(MusicDetailListOperateView musicDetailListOperateView, View view) {
        MusicStateEnum musicStateEnum = musicDetailListOperateView.currentMicState;
        int i10 = musicStateEnum == null ? -1 : a.f55678a[musicStateEnum.ordinal()];
        if (i10 == 1) {
            musicDetailListOperateView.k();
            musicDetailListOperateView.currentMicState = MusicStateEnum.OPEN;
        } else {
            if (i10 != 2) {
                return;
            }
            musicDetailListOperateView.currentMicState = MusicStateEnum.CLOSE;
            musicDetailListOperateView.j();
        }
    }

    public static final void f(MusicDetailListOperateView musicDetailListOperateView, View view) {
        c.f76399a.c();
        musicDetailListOperateView.l();
    }

    private final void g(FragmentManager childFragmentManager, int flMusicContainer, String subjectId) {
        MusicDetailLikedFragment musicDetailLikedFragment = new MusicDetailLikedFragment();
        musicDetailLikedFragment.P0(this);
        musicDetailLikedFragment.N0(this.mOnItemCLick);
        musicDetailLikedFragment.O0(subjectId, new Function2() {
            @Override
            public final Object invoke(Object obj, Object obj2) {
                return MusicDetailListOperateView.h(this.f15452a, ((Integer) obj).intValue(), ((Integer) obj2).intValue());
            }
        });
        this.mMusicDetailLikedFragment = musicDetailLikedFragment;
        childFragmentManager.p().b(flMusicContainer, musicDetailLikedFragment).i();
    }

    private final String getClassTag() {
        String simpleName = MusicDetailListOperateView.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public static final Unit h(MusicDetailListOperateView musicDetailListOperateView, int i10, int i11) {
        String str;
        AppCompatTextView appCompatTextView;
        if (i11 == 0) {
            str = "Now playing";
        } else {
            str = "Now playing " + i10 + "/" + i11;
        }
        k kVar = musicDetailListOperateView.bind;
        if (kVar != null && (appCompatTextView = kVar.f75973f) != null) {
            appCompatTextView.setText(str);
        }
        musicDetailListOperateView.m(true);
        return Unit.f64096a;
    }

    private final void i() {
        AppCompatImageView appCompatImageView;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView = kVar.f75970c) != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                appCompatImageView.setImageResource(R$drawable.video_detail_ic_playing);
                Result.m453constructorimpl(Unit.f64096a);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m453constructorimpl(ResultKt.a(th2));
            }
        }
        m(true);
        l();
    }

    private final void j() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        AppCompatImageView appCompatImageView4;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView4 = kVar.f75969b) != null) {
            appCompatImageView4.setImageResource(R$drawable.music_iv_right);
        }
        k kVar2 = this.bind;
        if (kVar2 != null && (appCompatImageView3 = kVar2.f75972e) != null) {
            appCompatImageView3.setVisibility(8);
        }
        k kVar3 = this.bind;
        if (kVar3 != null && (appCompatImageView2 = kVar3.f75971d) != null) {
            appCompatImageView2.setVisibility(8);
        }
        k kVar4 = this.bind;
        if (kVar4 != null && (appCompatImageView = kVar4.f75970c) != null) {
            appCompatImageView.setVisibility(0);
        }
        FrameLayout frameLayout = this.mMusicContainer;
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    private final void k() {
        AppCompatImageView appCompatImageView;
        AppCompatImageView appCompatImageView2;
        AppCompatImageView appCompatImageView3;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView3 = kVar.f75969b) != null) {
            appCompatImageView3.setImageResource(R$drawable.music_iv_close);
        }
        k kVar2 = this.bind;
        if (kVar2 != null && (appCompatImageView2 = kVar2.f75970c) != null) {
            appCompatImageView2.setVisibility(8);
        }
        FrameLayout frameLayout = this.mMusicContainer;
        if (frameLayout != null) {
            frameLayout.setVisibility(0);
        }
        k kVar3 = this.bind;
        if (kVar3 == null || (appCompatImageView = kVar3.f75971d) == null) {
            return;
        }
        appCompatImageView.setVisibility(0);
    }

    private final void l() {
        AppCompatImageView appCompatImageView;
        k kVar = this.bind;
        if (kVar != null && (appCompatImageView = kVar.f75971d) != null) {
            c cVar = c.f76399a;
            appCompatImageView.setImageDrawable(cVar.a(cVar.b()));
        }
        yv.a.f76396a.a(getClassTag() + " --> showLoopIcon() --> 当前播放模式是 = " + c.f76399a.b());
    }

    private final void m(boolean isPlaying) {
        AppCompatImageView appCompatImageView;
        k kVar = this.bind;
        if (kVar == null || (appCompatImageView = kVar.f75970c) == null) {
            return;
        }
        appCompatImageView.setColorFilter(isPlaying ? new PorterDuffColorFilter(b.getColor(appCompatImageView.getContext(), R$color.brand), PorterDuff.Mode.SRC_ATOP) : new PorterDuffColorFilter(b.getColor(appCompatImageView.getContext(), R$color.line_02), PorterDuff.Mode.SRC_ATOP));
    }

    @Override
    public void canNonSubscriberPlay(boolean z10, int i10, int i11, d dVar) {
        e.a.a(this, z10, i10, i11, dVar);
    }

    public final MusicDetailLikedFragment getMMusicDetailLikedFragment() {
        return this.mMusicDetailLikedFragment;
    }

    @Override
    public void initPlayer() {
        e.a.b(this);
    }

    @Override
    public void onAliyunDecodeErrorChangeSoftwareDecoder(gn.e eVar) {
        e.a.c(this, eVar);
    }

    @Override
    public void onBufferedPosition(long j10, gn.e eVar) {
        e.a.d(this, j10, eVar);
    }

    @Override
    public void onCompletion(gn.e mediaSource) {
        e.a.e(this, mediaSource);
        m(false);
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
    public void onLoadingBegin(gn.e eVar) {
        e.a.i(this, eVar);
    }

    @Override
    public void onLoadingEnd(gn.e eVar) {
        e.a.k(this, eVar);
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
    public void onPlayError(PlayError playError, gn.e eVar) {
        e.a.q(this, playError, eVar);
    }

    public void onPlayErrorChangePayer(TnPlayerType tnPlayerType, gn.e eVar) {
        e.a.s(this, tnPlayerType, eVar);
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
    public void onPrepare(gn.e eVar) {
        e.a.w(this, eVar);
    }

    @Override
    public void onProgress(long j10, gn.e eVar) {
        e.a.y(this, j10, eVar);
    }

    @Override
    public void onRenderFirstFrame() {
        e.a.A(this);
    }

    @Override
    public void onSetDataSource() {
        e.a.B(this);
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
        e.a.F(this, mediaSource);
        m(false);
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
        e.a.H(this, i10, i11);
    }

    @Override
    public void onVideoStart(gn.e mediaSource) {
        e.a.I(this, mediaSource);
        m(true);
    }

    public final void setContainer(String subjectId, FrameLayout musicContainer, FragmentManager childFragmentManager, int flMusicContainer, Function2<? super String, ? super String, Unit> onItemCLick) {
        Intrinsics.h(childFragmentManager, "childFragmentManager");
        Intrinsics.h(onItemCLick, "onItemCLick");
        this.mMusicContainer = musicContainer;
        this.mOnItemCLick = onItemCLick;
        g(childFragmentManager, flMusicContainer, subjectId);
    }

    @Override
    public void setOnSeekCompleteListener() {
        e.a.K(this);
    }

    public final void setState(MusicStateEnum state) {
        Intrinsics.h(state, "state");
        this.currentMicState = state;
        int i10 = a.f55678a[state.ordinal()];
        if (i10 == 1) {
            j();
        } else if (i10 == 2) {
            k();
        } else {
            if (i10 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            setVisibility(8);
        }
    }

    public MusicDetailListOperateView(Context context, AttributeSet attributeSet, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i10 & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public MusicDetailListOperateView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Intrinsics.h(context, "context");
        MusicStateEnum musicStateEnum = MusicStateEnum.CLOSE;
        this.currentMicState = musicStateEnum;
        k kVarC = k.c(LayoutInflater.from(context), this, false);
        this.bind = kVarC;
        addView(kVarC != null ? kVarC.getRoot() : null);
        setState(musicStateEnum);
        i();
        d();
    }
}
