package com.google.android.exoplayer2;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import java.io.IOException;

public final class ExoPlaybackException extends PlaybackException {
    public static final k.a CREATOR = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return ExoPlaybackException.a(bundle);
        }
    };
    private static final int FIELD_IS_RECOVERABLE = 1006;
    private static final int FIELD_RENDERER_FORMAT = 1004;
    private static final int FIELD_RENDERER_FORMAT_SUPPORT = 1005;
    private static final int FIELD_RENDERER_INDEX = 1003;
    private static final int FIELD_RENDERER_NAME = 1002;
    private static final int FIELD_TYPE = 1001;
    public static final int TYPE_REMOTE = 3;
    public static final int TYPE_RENDERER = 1;
    public static final int TYPE_SOURCE = 0;
    public static final int TYPE_UNEXPECTED = 2;
    final boolean isRecoverable;

    @Nullable
    public final v9.j mediaPeriodId;

    @Nullable
    public final p1 rendererFormat;
    public final int rendererFormatSupport;
    public final int rendererIndex;

    @Nullable
    public final String rendererName;
    public final int type;

    private ExoPlaybackException(int i10, Throwable th2, int i11) {
        this(i10, th2, null, i11, null, -1, null, 4, false);
    }

    public static ExoPlaybackException a(Bundle bundle) {
        return new ExoPlaybackException(bundle);
    }

    public static ExoPlaybackException createForRemote(String str) {
        return new ExoPlaybackException(3, null, str, 1001, null, -1, null, 4, false);
    }

    public static ExoPlaybackException createForRenderer(Throwable th2, String str, int i10, @Nullable p1 p1Var, int i11, boolean z10, int i12) {
        return new ExoPlaybackException(1, th2, null, i12, str, i10, p1Var, p1Var == null ? 4 : i11, z10);
    }

    public static ExoPlaybackException createForSource(IOException iOException, int i10) {
        return new ExoPlaybackException(0, iOException, i10);
    }

    @Deprecated
    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException) {
        return createForUnexpected(runtimeException, 1000);
    }

    private static String deriveMessage(int i10, @Nullable String str, @Nullable String str2, int i11, @Nullable p1 p1Var, int i12) {
        String str3;
        if (i10 == 0) {
            str3 = "Source error";
        } else if (i10 != 1) {
            str3 = i10 != 3 ? "Unexpected runtime error" : "Remote error";
        } else {
            str3 = str2 + " error, index=" + i11 + ", format=" + p1Var + ", format_supported=" + com.google.android.exoplayer2.util.p0.X(i12);
        }
        if (TextUtils.isEmpty(str)) {
            return str3;
        }
        return str3 + ": " + str;
    }

    @CheckResult
    ExoPlaybackException copyWithMediaPeriodId(@Nullable v9.j jVar) {
        return new ExoPlaybackException((String) com.google.android.exoplayer2.util.p0.j(getMessage()), getCause(), this.errorCode, this.type, this.rendererName, this.rendererIndex, this.rendererFormat, this.rendererFormatSupport, jVar, this.timestampMs, this.isRecoverable);
    }

    @Override
    public boolean errorInfoEquals(@Nullable PlaybackException playbackException) {
        if (!super.errorInfoEquals(playbackException)) {
            return false;
        }
        ExoPlaybackException exoPlaybackException = (ExoPlaybackException) com.google.android.exoplayer2.util.p0.j(playbackException);
        return this.type == exoPlaybackException.type && com.google.android.exoplayer2.util.p0.c(this.rendererName, exoPlaybackException.rendererName) && this.rendererIndex == exoPlaybackException.rendererIndex && com.google.android.exoplayer2.util.p0.c(this.rendererFormat, exoPlaybackException.rendererFormat) && this.rendererFormatSupport == exoPlaybackException.rendererFormatSupport && com.google.android.exoplayer2.util.p0.c(this.mediaPeriodId, exoPlaybackException.mediaPeriodId) && this.isRecoverable == exoPlaybackException.isRecoverable;
    }

    public Exception getRendererException() {
        com.google.android.exoplayer2.util.a.g(this.type == 1);
        return (Exception) com.google.android.exoplayer2.util.a.e(getCause());
    }

    public IOException getSourceException() {
        com.google.android.exoplayer2.util.a.g(this.type == 0);
        return (IOException) com.google.android.exoplayer2.util.a.e(getCause());
    }

    public RuntimeException getUnexpectedException() {
        com.google.android.exoplayer2.util.a.g(this.type == 2);
        return (RuntimeException) com.google.android.exoplayer2.util.a.e(getCause());
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = super.toBundle();
        bundle.putInt(PlaybackException.keyForField(1001), this.type);
        bundle.putString(PlaybackException.keyForField(1002), this.rendererName);
        bundle.putInt(PlaybackException.keyForField(1003), this.rendererIndex);
        if (this.rendererFormat != null) {
            bundle.putBundle(PlaybackException.keyForField(1004), this.rendererFormat.toBundle());
        }
        bundle.putInt(PlaybackException.keyForField(1005), this.rendererFormatSupport);
        bundle.putBoolean(PlaybackException.keyForField(1006), this.isRecoverable);
        return bundle;
    }

    private ExoPlaybackException(int i10, @Nullable Throwable th2, @Nullable String str, int i11, @Nullable String str2, int i12, @Nullable p1 p1Var, int i13, boolean z10) {
        this(deriveMessage(i10, str, str2, i12, p1Var, i13), th2, i11, i10, str2, i12, p1Var, i13, null, SystemClock.elapsedRealtime(), z10);
    }

    public static ExoPlaybackException createForUnexpected(RuntimeException runtimeException, int i10) {
        return new ExoPlaybackException(2, runtimeException, i10);
    }

    private ExoPlaybackException(Bundle bundle) {
        super(bundle);
        this.type = bundle.getInt(PlaybackException.keyForField(1001), 2);
        this.rendererName = bundle.getString(PlaybackException.keyForField(1002));
        this.rendererIndex = bundle.getInt(PlaybackException.keyForField(1003), -1);
        Bundle bundle2 = bundle.getBundle(PlaybackException.keyForField(1004));
        this.rendererFormat = bundle2 == null ? null : (p1) p1.H.a(bundle2);
        this.rendererFormatSupport = bundle.getInt(PlaybackException.keyForField(1005), 4);
        this.isRecoverable = bundle.getBoolean(PlaybackException.keyForField(1006), false);
        this.mediaPeriodId = null;
    }

    private ExoPlaybackException(String str, @Nullable Throwable th2, int i10, int i11, @Nullable String str2, int i12, @Nullable p1 p1Var, int i13, @Nullable v9.j jVar, long j10, boolean z10) {
        super(str, th2, i10, j10);
        com.google.android.exoplayer2.util.a.a(!z10 || i11 == 1);
        com.google.android.exoplayer2.util.a.a(th2 != null || i11 == 3);
        this.type = i11;
        this.rendererName = str2;
        this.rendererIndex = i12;
        this.rendererFormat = p1Var;
        this.rendererFormatSupport = i13;
        this.mediaPeriodId = jVar;
        this.isRecoverable = z10;
    }
}
