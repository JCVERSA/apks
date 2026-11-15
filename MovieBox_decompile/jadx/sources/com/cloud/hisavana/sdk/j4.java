package com.cloud.hisavana.sdk;

import com.google.android.exoplayer2.PlaybackException;

public interface j4 {
    void a();

    void b(long j10, long j11, int i10);

    void c(boolean z10);

    void d();

    void e(boolean z10);

    void onComplete();

    void onIsPlayingChanged(boolean z10);

    void onPlayerError(PlaybackException playbackException);

    void onVideoSizeChanged(int i10, int i11);

    void onVolumeChanged(float f10);
}
