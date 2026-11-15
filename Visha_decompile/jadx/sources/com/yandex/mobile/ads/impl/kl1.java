package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.source.ads.AdsMediaSource;
import java.io.IOException;

public abstract class kl1 {
    public abstract void handlePrepareComplete(AdsMediaSource adsMediaSource, int i, int i2);

    public abstract void handlePrepareError(AdsMediaSource adsMediaSource, int i, int i2, IOException iOException);

    public abstract void release();

    public abstract void setPlayer(@Nullable com.google.android.exoplayer2.t tVar);

    public abstract void setSupportedContentTypes(int... iArr);

    public abstract void start(AdsMediaSource adsMediaSource, com.google.android.exoplayer2.upstream.b bVar, Object obj, defpackage.a8 a8Var, com.google.android.exoplayer2.source.ads.b bVar2);

    public abstract void stop(AdsMediaSource adsMediaSource, com.google.android.exoplayer2.source.ads.b bVar);
}
