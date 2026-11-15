package com.yandex.mobile.ads.impl;

import android.media.MediaCodec;
import android.media.MediaDrmResetException;
import android.media.ResourceBusyException;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.ExoTimeoutException;
import com.google.android.exoplayer2.IllegalSeekPositionException;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.audio.AudioSink;
import com.google.android.exoplayer2.audio.DefaultAudioSink;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.KeysExpiredException;
import com.google.android.exoplayer2.mediacodec.MediaCodecRenderer;
import com.google.android.exoplayer2.mediacodec.MediaCodecUtil;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.upstream.HttpDataSource$CleartextNotPermittedException;
import com.google.android.exoplayer2.upstream.HttpDataSource$HttpDataSourceException;
import com.google.android.exoplayer2.upstream.HttpDataSource$InvalidResponseCodeException;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheDataSink;
import com.google.android.exoplayer2.video.MediaCodecVideoDecoderException;
import defpackage.y45;
import javax.net.ssl.SSLHandshakeException;

public final class eb {
    private static xc2.a a(Throwable th) {
        xc2.a aVar;
        if (th instanceof ExoPlaybackException) {
            xc2.a aVarB = b(th);
            if (aVarB != null) {
                return aVarB;
            }
            Throwable cause = th.getCause();
            xc2.a aVarA = cause != null ? a(cause) : null;
            if (aVarA != null) {
                return aVarA;
            }
            aVar = xc2.a.D;
        } else if (th instanceof ExoTimeoutException) {
            aVar = xc2.a.i;
        } else if (th instanceof IllegalSeekPositionException) {
            aVar = xc2.a.j;
        } else if (th instanceof MediaCodecUtil.DecoderQueryException) {
            aVar = xc2.a.k;
        } else if (th instanceof MediaCodecRenderer.DecoderInitializationException) {
            aVar = xc2.a.l;
        } else if (th instanceof MediaCodecVideoDecoderException) {
            xc2.a aVarB2 = b(th);
            if (aVarB2 != null) {
                return aVarB2;
            }
            aVar = xc2.a.m;
        } else if (th instanceof BehindLiveWindowException) {
            aVar = xc2.a.n;
        } else if (th instanceof MediaCodec.CryptoException) {
            aVar = xc2.a.o;
        } else if (th instanceof DrmSession.DrmSessionException) {
            Throwable cause2 = ((DrmSession.DrmSessionException) th).getCause();
            if (cause2 == null) {
                aVar = xc2.a.q;
            } else if ((cause2 instanceof MediaDrmResetException) || (cause2 instanceof ResourceBusyException)) {
                aVar = xc2.a.p;
            } else {
                aVar = ((cause2 instanceof MediaCodec.CryptoException) || (cause2 instanceof KeysExpiredException)) ? xc2.a.o : xc2.a.q;
            }
        } else if (th instanceof HttpDataSource$CleartextNotPermittedException) {
            aVar = xc2.a.r;
        } else if (th instanceof HttpDataSource$InvalidResponseCodeException) {
            int i = ((HttpDataSource$InvalidResponseCodeException) th).responseCode;
            if (i == 401) {
                aVar = xc2.a.s;
            } else if (i != 403) {
                aVar = i != 404 ? xc2.a.v : xc2.a.u;
            } else {
                aVar = xc2.a.t;
            }
        } else if (th instanceof HttpDataSource$HttpDataSourceException) {
            aVar = ((HttpDataSource$HttpDataSourceException) th).getCause() instanceof SSLHandshakeException ? xc2.a.w : xc2.a.x;
        } else if (th instanceof ParserException) {
            aVar = xc2.a.y;
        } else if (th instanceof Loader.UnexpectedLoaderException) {
            aVar = xc2.a.z;
        } else if ((th instanceof AudioSink.ConfigurationException) || (th instanceof AudioSink.InitializationException) || (th instanceof DefaultAudioSink.InvalidAudioTrackTimestampException)) {
            aVar = xc2.a.A;
        } else if (th instanceof SubtitleDecoderException) {
            aVar = xc2.a.B;
        } else {
            aVar = ((th instanceof Cache.CacheException) || (th instanceof CacheDataSink.CacheDataSinkException)) ? xc2.a.C : xc2.a.D;
        }
        return aVar;
    }

    private static xc2.a b(Throwable th) {
        Throwable cause = th.getCause();
        if (cause == null) {
            return null;
        }
        boolean z = cause instanceof MediaCodec.CodecException;
        if (!z && !(cause instanceof IllegalStateException) && !(cause instanceof IllegalArgumentException)) {
            return null;
        }
        StackTraceElement[] stackTrace = cause.getStackTrace();
        y45.g(stackTrace);
        if ((stackTrace.length == 0) || !stackTrace[0].isNativeMethod() || !y45.e(stackTrace[0].getClassName(), "android.media.MediaCodec")) {
            return null;
        }
        String methodName = stackTrace[0].getMethodName();
        if (methodName == null) {
            methodName = "";
        }
        if (y45.e(methodName, "native_dequeueOutputBuffer")) {
            return xc2.a.b;
        }
        if (y45.e(methodName, "native_dequeueInputBuffer")) {
            return xc2.a.c;
        }
        if (y45.e(methodName, "native_stop")) {
            return xc2.a.d;
        }
        if (y45.e(methodName, "native_setSurface")) {
            return xc2.a.e;
        }
        if (y45.e(methodName, "releaseOutputBuffer")) {
            return xc2.a.f;
        }
        if (y45.e(methodName, "native_queueSecureInputBuffer")) {
            return xc2.a.g;
        }
        if (z) {
            return xc2.a.h;
        }
        return null;
    }

    public static xc2 c(Throwable th) {
        y45.j(th, "throwable");
        return new xc2(a(th), th);
    }
}
