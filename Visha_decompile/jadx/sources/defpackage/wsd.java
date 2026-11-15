package defpackage;

import com.cloud.hisavana.sdk.common.widget.video.MediaTextureView;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;

public interface wsd {
    void a();

    void a(MediaTextureView mediaTextureView);

    void a(boolean z);

    void b();

    void b(AdsDTO adsDTO, String str, boolean z, boolean z2);

    void c();

    void c(xnd xndVar);

    void d();

    void e();

    long getCurrentPosition();

    long getDuration();

    boolean getPlayWhenReady();

    boolean isPlaying();

    void pause();

    void play();

    void release();

    void seekTo(long j);

    void setPlayWhenReady(boolean z);
}
