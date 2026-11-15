.class public interface abstract Lcom/google/android/exoplayer2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/u$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/w$a;
    }
.end annotation


# virtual methods
.method public abstract c([Lcom/google/android/exoplayer2/k;Lh19;JJ)V
.end method

.method public abstract d(ILta8;)V
.end method

.method public abstract disable()V
.end method

.method public abstract e(Lls8;[Lcom/google/android/exoplayer2/k;Lh19;JZZJJ)V
.end method

.method public abstract getCapabilities()Lks8;
.end method

.method public abstract getMediaClock()Lnd6;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getReadingPositionUs()J
.end method

.method public abstract getState()I
.end method

.method public abstract getStream()Lh19;
.end method

.method public abstract getTrackType()I
.end method

.method public abstract hasReadStreamToEnd()Z
.end method

.method public abstract isCurrentStreamFinal()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract maybeThrowStreamError()V
.end method

.method public abstract render(JJ)V
.end method

.method public abstract reset()V
.end method

.method public abstract resetPosition(J)V
.end method

.method public abstract setCurrentStreamFinal()V
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0

    return-void
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
