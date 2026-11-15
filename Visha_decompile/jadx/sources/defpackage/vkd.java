package defpackage;

import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.ProgressData;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastTracking;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.k1;
import com.cloud.hisavana.sdk.p;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class vkd implements xnd {
    public static final a d = new a(null);
    public boolean a;
    public int b;
    public AdsDTO c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public vkd() {
    }

    @Override
    public void a(p pVar) {
        y45.j(pVar, "error");
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            String strValueOf = String.valueOf(pVar.a());
            AthenaTracker.r0(this.c, new TaErrorCode(TaErrorCode.VAST_VIDEO_PLAY_ERROR, strValueOf + pVar.b()));
        }
    }

    @Override
    public void b(long j, long j2, int i) {
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() == 4) {
            return;
        }
        AdsDTO adsDTO2 = this.c;
        VastData videoInfo = adsDTO2 != null ? adsDTO2.getVideoInfo() : null;
        if (videoInfo == null) {
            return;
        }
        ProgressData progressData = videoInfo.getProgressData();
        if (progressData == null) {
            g();
        }
        if (progressData != null) {
            progressData.setProgress(Integer.valueOf(i));
        }
        VastTracking vastTrack = videoInfo.getVastTrack();
        if (vastTrack == null) {
            return;
        }
        ikd.b().i("Rewarded", "progress : " + i);
        if (25 <= i && i < 50) {
            if (this.b < 25) {
                this.b = 25;
                i(5, 25);
                k1.l(vastTrack.getQuarter(), this.c);
                return;
            }
            return;
        }
        if (50 <= i && i < 75) {
            if (this.b < 50) {
                this.b = 50;
                i(5, 50);
                k1.l(vastTrack.getMidpoint(), this.c);
                return;
            }
            return;
        }
        if (i < 75 || this.b >= 75) {
            return;
        }
        this.b = 75;
        i(5, 75);
        k1.l(vastTrack.getThirdQuarter(), this.c);
    }

    @Override
    public void c(boolean z) {
        ikd.b().d("AdMediaPlayerListener", "onVideoClickToPauseOrPlay isPlay " + z);
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            g();
            h(4);
        }
    }

    @Override
    public void d() {
        VastData videoInfo;
        VastTracking vastTrack;
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            AdsDTO adsDTO2 = this.c;
            k1.l((adsDTO2 == null || (videoInfo = adsDTO2.getVideoInfo()) == null || (vastTrack = videoInfo.getVastTrack()) == null) ? null : vastTrack.getStartTrack(), this.c);
            h(2);
        }
    }

    @Override
    public void e() {
        g();
    }

    @Override
    public void f(boolean z) {
        ikd.b().d("AdMediaPlayerListener", "onCompanion ");
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            g();
            if (z) {
                h(1);
            }
        }
    }

    public final void g() {
        AdsDTO adsDTO = this.c;
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

    public final void h(int i) {
        i(i, -1);
    }

    public final void i(int i, int i2) {
        VastData videoInfo;
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() == 4) {
            return;
        }
        AdsDTO adsDTO2 = this.c;
        ProgressData progressData = (adsDTO2 == null || (videoInfo = adsDTO2.getVideoInfo()) == null) ? null : videoInfo.getProgressData();
        if (progressData != null) {
            progressData.setVideoPlayTimeType(Integer.valueOf(i));
        }
        ProgressData progressDataCopy$default = progressData != null ? ProgressData.copy$default(progressData, null, null, null, false, 15, null) : null;
        if (i2 > 0 && progressDataCopy$default != null) {
            progressDataCopy$default.setProgress(Integer.valueOf(i2));
        }
        AthenaTracker.s0(this.c, progressDataCopy$default);
    }

    public final void j() {
        h(6);
    }

    @Override
    public void onComplete() {
        VastData videoInfo;
        VastTracking vastTrack;
        AdsDTO adsDTO = this.c;
        if (adsDTO == null || adsDTO.getSource() != 4) {
            h(7);
            AdsDTO adsDTO2 = this.c;
            k1.l((adsDTO2 == null || (videoInfo = adsDTO2.getVideoInfo()) == null || (vastTrack = videoInfo.getVastTrack()) == null) ? null : vastTrack.getComplete(), this.c);
        }
    }

    @Override
    public void onIsPlayingChanged(boolean z) {
        this.a = z;
    }

    @Override
    public void onVideoSizeChanged(int i, int i2) {
    }

    @Override
    public void onVolumeChanged(float f) {
    }

    public vkd(AdsDTO adsDTO) {
        this();
        this.c = adsDTO;
    }
}
