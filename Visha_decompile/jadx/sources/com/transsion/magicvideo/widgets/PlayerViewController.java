package com.transsion.magicvideo.widgets;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import androidx.annotation.Nullable;
import androidx.media3.common.C;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.media.PlayVideoData;
import com.transsion.magicvideo.data.VideoOpStatus;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.magicvideo.utils.GpReviewUtils;
import defpackage.by3;
import defpackage.n16;
import defpackage.p06;
import defpackage.raa;
import defpackage.rtb;
import defpackage.w6c;
import defpackage.zg9;
import org.apache.commons.lang3.time.DateUtils;

public class PlayerViewController extends TouchWindowLayout implements PlayUIDisplayView.c, PlayUIDisplayView.d, VideoPlayerMediaView.e {
    public a c0;
    public boolean d0;
    public boolean e0;
    public boolean f0;
    public VideoPlayManager g0;
    public b h0;
    public d i0;
    public long j0;
    public final Runnable k0;
    public Runnable l0;
    public VideoPlayerMediaView m0;
    public VideoOpStatus mOpStatus;
    public by3 n0;
    public int o0;
    public int p0;

    public interface a {
        void a(boolean z);
    }

    public interface b {
        void a(long j, long j2);
    }

    public interface c {
        void a();
    }

    public interface d {
        void a(boolean z);
    }

    public PlayerViewController(Context context) {
        super(context);
        this.k0 = new Runnable() {
            @Override
            public final void run() {
                this.b.L();
            }
        };
        this.l0 = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.N();
            }
        };
        this.mOpStatus = new VideoOpStatus();
        this.n0 = new by3(0);
        this.o0 = 0;
        this.p0 = 0;
    }

    public void N() throws Throwable {
        R(true);
    }

    public final void F() {
        Log.d("PlayerViewController", "autoPlayPause");
        G(false);
    }

    public final void G(boolean z) {
        rtb.a(this.m0, z);
    }

    public final void H() {
        J();
        G(true);
    }

    public final long I() {
        long j;
        boolean z = this.l.getResources().getConfiguration().orientation == 2;
        long j2 = this.mOpStatus.mDuration;
        if (j2 < 5000) {
            return 5000L;
        }
        if (j2 < 60000) {
            return j2 - 5000;
        }
        if (j2 < 600000) {
            return Math.min(j2, z ? 105000L : 75000L);
        }
        if (j2 < DateUtils.MILLIS_PER_HOUR) {
            j = z ? 225000L : 195000L;
        } else {
            j = z ? 345000L : 315000L;
        }
        return j;
    }

    public final void J() {
        ThreadUtils.o().removeCallbacks(this.k0);
        ThreadUtils.o().postDelayed(this.k0, C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
    }

    public void K(boolean z) {
        if (this.S) {
            Log.w("PlayerViewController", "can't hideDisplayUI inVideoErrorState");
        } else if (z) {
            PlayUIDisplayView.hideDisplayUI(this);
        } else {
            if (raa.i(this.l)) {
                return;
            }
            PlayUIDisplayView.hideDisplayUI(this);
        }
    }

    public void L() {
        if (PlayUIDisplayView.isPlayUIShowing(this)) {
            K(false);
        }
        ThreadUtils.o().removeCallbacks(this.k0);
    }

    public boolean M() {
        VideoPlayManager videoPlayManager = this.g0;
        return videoPlayManager != null && videoPlayManager.g0() == 6;
    }

    public void O(long j, long j2, long j3) {
    }

    public void P() {
        ThreadUtils.o().removeCallbacks(this.l0);
    }

    public void Q() {
        ThreadUtils.o().post(this.l0);
    }

    public void R(boolean z) throws Throwable {
        long jV;
        long jS;
        long j;
        try {
            jV = this.g0.V();
            try {
                jS = this.g0.S();
                try {
                    if (this.a0.d(1)) {
                        jS = this.mOpStatus.mMovePosition;
                    }
                    if (z) {
                        Handler handlerO = ThreadUtils.o();
                        handlerO.removeCallbacks(this.l0);
                        handlerO.postDelayed(this.l0, 200L);
                    }
                    j = 0;
                    if (jV > 0) {
                        Y(this.m0, jS, jV, 0L);
                        return;
                    }
                } catch (Throwable th) {
                    th = th;
                    if (z) {
                        Handler handlerO2 = ThreadUtils.o();
                        handlerO2.removeCallbacks(this.l0);
                        handlerO2.postDelayed(this.l0, 200L);
                    }
                    j = 0;
                    if (jV > 0) {
                        Y(this.m0, jS, jV, 0L);
                        throw th;
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                jS = 0;
            }
        } catch (Throwable th3) {
            th = th3;
            jV = 0;
            jS = 0;
        }
        onProgressUpdateError(jS, jV, j);
    }

    public void S() {
        if (this.T) {
            Log.w("PlayerViewController", "can't showDisplayUI inForceHideUIState");
        } else {
            PlayUIDisplayView.showDisplayUI(this);
            J();
        }
    }

    public void T() {
    }

    public void U() {
        boolean zShouldShowPauseButton = shouldShowPauseButton();
        n16.a.a(zShouldShowPauseButton ? "video_pause" : "video_play", this.g0.T());
        this.g0.p2(true, !zShouldShowPauseButton);
        if (zShouldShowPauseButton) {
            this.n0.e(1);
        }
    }

    public void V() {
    }

    public void W(boolean z) {
    }

    public void X(int i) {
    }

    public final void Y(VideoPlayerMediaView videoPlayerMediaView, long j, long j2, long j3) {
        O((!M() || this.n0.b(4)) ? j : j2, j2, j3);
    }

    public void changeVideoSourcePlay() {
        if (this.n0.b(1)) {
            this.n0.e(1);
        }
    }

    public void destroy() {
        ThreadUtils.o().removeCallbacks(this.k0);
        P();
        this.c0 = null;
    }

    public void doAudioBecomingNoisy() {
        boolean zShouldShowPauseButton = shouldShowPauseButton();
        Log.i("PlayerViewController", "doAudioBecomingNoisy pause video:" + zShouldShowPauseButton);
        if (zShouldShowPauseButton) {
            rtb.r(this.m0, false, true);
        }
    }

    public void doHeadsetsKeyUp(int i, KeyEvent keyEvent) {
        U();
        S();
    }

    public d getShowOrHideHorizontalDurationListener() {
        return this.i0;
    }

    public void handleInnerPlayForwardOrRetreatForMediaPlayer(boolean z, boolean z2, c cVar) {
        boolean zM = M();
        VideoPlayManager videoPlayManager = this.g0;
        if (videoPlayManager != null) {
            if (!zM || z2) {
                if (zM && z2) {
                    videoPlayManager.i1(true);
                }
                long jV = this.g0.V();
                if (jV <= 0) {
                    return;
                }
                long jS = this.g0.S();
                long jMax = z2 ? 10000L : Math.max((long) (jV * 0.15f), 5000L);
                if (!z) {
                    jMax *= -1;
                }
                long jD = rtb.d(jS + jMax, 0L, jV);
                if ((jD == 0 || jD == jV) && cVar != null) {
                    cVar.a();
                }
                this.g0.Q1((int) jD);
                R(false);
            }
        }
    }

    @Override
    public void init(Context context) {
        super.init(context);
        this.g0 = VideoPlayManager.X();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        P();
    }

    public void onPlayStatusEnd() {
        Context context;
        if (w6c.h(this.l) == 0 && (context = this.l) != null && (context instanceof Activity)) {
            if (!this.n) {
                GpReviewUtils.e((Activity) context);
                if (!this.O) {
                    GpReviewUtils.f((Activity) this.l);
                }
            }
            Bundle extras = ((Activity) this.l).getIntent().getExtras();
            if (extras != null) {
                Object obj = extras.get(PlayVideoData.TAG_VIDEO_FROM);
                boolean zE = MMKV.p().e("launcher_icon_added", false);
                Log.i("PlayerViewController", "is icon added:" + zE);
                if (zE || obj == null || !(obj instanceof CharSequence) || !TextUtils.equals("com.gallery20", (CharSequence) obj)) {
                    return;
                }
                zg9.p(this.l);
            }
        }
    }

    @Override
    public void onPlayUIDisplay() {
        J();
    }

    @Override
    public void onPlayUIStatusChange(boolean z) {
        a aVar = this.c0;
        if (aVar != null) {
            aVar.a(z);
        }
    }

    public void onProgressUpdateError(long j, long j2, long j3) {
        Log.w("PlayerViewController", "onProgressUpdateError:" + j + ",duration:" + j2 + ", bufferedPosition:" + j3);
    }

    @Override
    public void onScreenClick(MotionEvent motionEvent) {
        super.onScreenClick(motionEvent);
        TouchWindowLayout.f fVar = this.b;
        if (fVar != null) {
            fVar.a();
        } else if (PlayUIDisplayView.isPlayUIShowing(this)) {
            K(false);
        } else {
            S();
        }
    }

    @Override
    public void onScreenEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    @Override
    public boolean onScreenScale(ScaleGestureDetector scaleGestureDetector) {
        VideoOpStatus videoOpStatus = this.mOpStatus;
        videoOpStatus.mCurrentScale = videoOpStatus.mBeginScale * scaleGestureDetector.getScaleFactor();
        return false;
    }

    @Override
    public boolean onScreenScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        VideoOpStatus videoOpStatus = this.mOpStatus;
        videoOpStatus.mBeginScale = videoOpStatus.mCurrentScale;
        return true;
    }

    @Override
    public void onVideoPlayerStateChange(int i) {
        boolean z = i == 3;
        W(z);
        X(i);
        if (z && getVisibility() == 0) {
            Q();
        } else if (i == 6) {
            onPlayStatusEnd();
        }
    }

    @Override
    public void p(int i, float f) {
        n16.a.b("video_play_gesture_brightness", this.g0.T());
        if (f == 0.0f) {
            p06.g0(null, "video_play_gesture_brightness");
        }
    }

    public void pause() {
        P();
        F();
    }

    @Override
    public void q(int i, float f) throws Throwable {
        String str;
        String str2;
        long jI = (long) (I() * f * (isRtl() ? -1 : 1));
        VideoOpStatus videoOpStatus = this.mOpStatus;
        long jD = rtb.d(videoOpStatus.mTimePosition + jI, 0L, videoOpStatus.mDuration);
        VideoOpStatus videoOpStatus2 = this.mOpStatus;
        long j = videoOpStatus2.mDuration;
        videoOpStatus2.mMovePosition = jD;
        R(false);
        if (jD < this.mOpStatus.mTimePosition) {
            str = "video_play_gesture_retreat";
            str2 = "video_play_gesture_retreat_duration";
        } else {
            str = "video_play_gesture_forward";
            str2 = "video_play_gesture_forward_duration";
        }
        if (i == 8) {
            if (shouldShowPauseButton()) {
                this.n0.a(1);
            }
            this.n0.a(4);
            this.j0 = jD;
            return;
        }
        if (i != 16) {
            return;
        }
        this.n0.e(4);
        if (this.n0.b(1)) {
            this.n0.e(1);
        } else {
            this.n0.a(2);
        }
        this.g0.Q1((int) jD);
        if (M()) {
            this.g0.i1(true);
        }
        n16.a.b(str, this.g0.T());
        this.j0 = (int) Math.abs(jD - this.j0);
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putLong("duration", this.j0 / 1000);
        bundle.putInt("from", this.g0.G());
        trackData.add("duration", this.j0 / 1000);
        trackData.add("from", this.g0.G());
        p06.q0(trackData, bundle, str2, 9324L);
    }

    @Override
    public void r(int i) {
        super.r(i);
        if (i == 0) {
            Log.d("PlayerViewController", "ACTION_DOWN " + this);
            J();
            return;
        }
        if (i != 1) {
            if (i == 2) {
                Log.d("PlayerViewController", "ACTION_DOWN " + this);
                ThreadUtils.o().removeCallbacks(this.k0);
                return;
            }
            if (i != 3) {
                return;
            }
        }
        J();
    }

    public void resume() {
        H();
    }

    @Override
    public void s(int i, float f) {
        n16.a.b("video_play_gesture_volume", this.g0.T());
        if (f == 0.0f) {
            p06.g0(null, "video_play_gesture_volume");
        }
    }

    @Override
    public void setForceShowUIState(boolean z) {
        super.setForceShowUIState(z);
        d dVar = this.i0;
        if (dVar == null || !this.f0) {
            return;
        }
        this.f0 = false;
        dVar.a(false);
    }

    public void setFromInternet(boolean z) {
        this.d0 = z;
    }

    public void setPlayProgressListener(b bVar) {
        this.h0 = bVar;
    }

    public void setPlayViewStatusChangeListener(a aVar) {
        this.c0 = aVar;
    }

    public void setPlayerMediaView(VideoPlayerMediaView videoPlayerMediaView) {
        if (videoPlayerMediaView == null) {
            return;
        }
        this.m0 = videoPlayerMediaView;
        this.n0.e(2);
        this.n0.a(1);
    }

    public void setShowOnlineError(boolean z) {
        this.e0 = z;
    }

    public void setShowOrHideHorizontalDurationListener(d dVar) {
        this.i0 = dVar;
    }

    public boolean shouldShowPauseButton() {
        return this.g0.A0();
    }

    @Override
    public void t() {
        this.M = Settings.Global.getInt(getContext().getContentResolver(), "tranthunderback_enable", 0) == 1;
        rtb.s(getContext(), this.g0.S(), this.g0.V(), this.mOpStatus);
    }

    public void updatePreviousAndNextButton(boolean z, boolean z2) {
    }

    public PlayerViewController(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.k0 = new Runnable() {
            @Override
            public final void run() {
                this.b.L();
            }
        };
        this.l0 = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.N();
            }
        };
        this.mOpStatus = new VideoOpStatus();
        this.n0 = new by3(0);
        this.o0 = 0;
        this.p0 = 0;
    }

    public PlayerViewController(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.k0 = new Runnable() {
            @Override
            public final void run() {
                this.b.L();
            }
        };
        this.l0 = new Runnable() {
            @Override
            public final void run() throws Throwable {
                this.b.N();
            }
        };
        this.mOpStatus = new VideoOpStatus();
        this.n0 = new by3(0);
        this.o0 = 0;
        this.p0 = 0;
    }
}
