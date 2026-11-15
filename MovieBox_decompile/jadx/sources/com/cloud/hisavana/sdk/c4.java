package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.ProgressData;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastTracking;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.google.android.exoplayer2.PlaybackException;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class c4 implements j4 {

    public static final a f21142d = new a(null);

    private boolean f21143a;

    private int f21144b;

    private AdsDTO f21145c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public c4() {
    }

    private final void f() {
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO != null) {
            VastData videoInfo = adsDTO.getVideoInfo();
            ProgressData progressData = videoInfo != null ? videoInfo.getProgressData() : null;
            if (progressData == null) {
                progressData = new ProgressData(null, null, null, false, 15, null);
                if (videoInfo != null) {
                    videoInfo.setProgressData(progressData);
                }
            }
            Integer duration = videoInfo != null ? videoInfo.getDuration() : null;
            if (duration == null) {
                duration = 0;
            }
            progressData.setDuration(duration);
        }
    }

    private final void g(int i10) {
        h(i10, -1);
    }

    private final void h(int i10, int i11) {
        VastData videoInfo;
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() == 4) {
            return;
        }
        AdsDTO adsDTO2 = this.f21145c;
        ProgressData progressData = (adsDTO2 == null || (videoInfo = adsDTO2.getVideoInfo()) == null) ? null : videoInfo.getProgressData();
        if (progressData != null) {
            progressData.setVideoPlayTimeType(Integer.valueOf(i10));
        }
        ProgressData progressDataCopy$default = progressData != null ? ProgressData.copy$default(progressData, null, null, null, false, 15, null) : null;
        if (i11 > 0 && progressDataCopy$default != null) {
            progressDataCopy$default.setProgress(Integer.valueOf(i11));
        }
        AthenaTracker.m0(this.f21145c, progressDataCopy$default);
    }

    @Override
    public void a() {
        VastData videoInfo;
        VastTracking vastTrack;
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            AdsDTO adsDTO2 = this.f21145c;
            Y0.l((adsDTO2 == null || (videoInfo = adsDTO2.getVideoInfo()) == null || (vastTrack = videoInfo.getVastTrack()) == null) ? null : vastTrack.getStartTrack(), this.f21145c);
            g(2);
        }
    }

    @Override
    public void b(long j10, long j11, int i10) {
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() == 4) {
            return;
        }
        AdsDTO adsDTO2 = this.f21145c;
        VastData videoInfo = adsDTO2 != null ? adsDTO2.getVideoInfo() : null;
        if (videoInfo == null) {
            return;
        }
        ProgressData progressData = videoInfo.getProgressData();
        if (progressData == null) {
            f();
        }
        if (progressData != null) {
            progressData.setProgress(Integer.valueOf(i10));
        }
        VastTracking vastTrack = videoInfo.getVastTrack();
        if (vastTrack == null) {
            return;
        }
        b4.b().i("Rewarded", "progress : " + i10);
        if (25 <= i10 && i10 < 50) {
            if (this.f21144b < 25) {
                this.f21144b = 25;
                h(5, 25);
                Y0.l(vastTrack.getQuarter(), this.f21145c);
                return;
            }
            return;
        }
        if (50 <= i10 && i10 < 75) {
            if (this.f21144b < 50) {
                this.f21144b = 50;
                h(5, 50);
                Y0.l(vastTrack.getMidpoint(), this.f21145c);
                return;
            }
            return;
        }
        if (i10 < 75 || this.f21144b >= 75) {
            return;
        }
        this.f21144b = 75;
        h(5, 75);
        Y0.l(vastTrack.getThirdQuarter(), this.f21145c);
    }

    @Override
    public void c(boolean z10) {
        b4.b().d("AdMediaPlayerListener", "onVideoClickToPauseOrPlay isPlay " + z10);
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            f();
            g(4);
        }
    }

    @Override
    public void d() {
        f();
    }

    @Override
    public void e(boolean z10) {
        b4.b().d("AdMediaPlayerListener", "onCompanion ");
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            f();
            if (z10) {
                g(1);
            }
        }
    }

    public final void i() {
        g(6);
    }

    @Override
    public void onComplete() {
        VastData videoInfo;
        VastTracking vastTrack;
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            g(7);
            AdsDTO adsDTO2 = this.f21145c;
            Y0.l((adsDTO2 == null || (videoInfo = adsDTO2.getVideoInfo()) == null || (vastTrack = videoInfo.getVastTrack()) == null) ? null : vastTrack.getComplete(), this.f21145c);
        }
    }

    @Override
    public void onIsPlayingChanged(boolean z10) {
        this.f21143a = z10;
    }

    @Override
    public void onPlayerError(PlaybackException playbackException) {
        String string;
        AdsDTO adsDTO = this.f21145c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            if (playbackException == null || (string = Integer.valueOf(playbackException.errorCode).toString()) == null) {
                string = "";
            }
            AdsDTO adsDTO2 = this.f21145c;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(string);
            sb2.append(playbackException != null ? playbackException.getMessage() : null);
            AthenaTracker.l0(adsDTO2, new TaErrorCode(TaErrorCode.VAST_VIDEO_PLAY_ERROR, sb2.toString()));
        }
    }

    public c4(AdsDTO adsDTO) {
        this();
        this.f21145c = adsDTO;
    }

    @Override
    public void onVolumeChanged(float f10) {
    }

    @Override
    public void onVideoSizeChanged(int i10, int i11) {
    }
}
