.class public interface abstract Lcom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lcom/google/android/exoplayer2/audio/AudioSink$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/p1;)Z
.end method

.method public abstract b(Lcom/google/android/exoplayer2/o2;)V
.end method

.method public abstract c(Ljava/nio/ByteBuffer;JI)Z
.end method

.method public abstract d()V
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract e(Z)V
.end method

.method public abstract f(Lcom/google/android/exoplayer2/audio/e;)V
.end method

.method public abstract flush()V
.end method

.method public abstract g(Lg9/u1;)V
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplayer2/o2;
.end method

.method public abstract h(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract i(Lcom/google/android/exoplayer2/p1;)I
.end method

.method public abstract isEnded()Z
.end method

.method public abstract j()V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/audio/u;)V
.end method

.method public abstract l(Lcom/google/android/exoplayer2/p1;I[I)V
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setVolume(F)V
.end method
