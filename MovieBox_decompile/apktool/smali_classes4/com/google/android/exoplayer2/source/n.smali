.class public interface abstract Lcom/google/android/exoplayer2/source/n;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/b0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/n$a;
    }
.end annotation


# virtual methods
.method public abstract b(JLcom/google/android/exoplayer2/d3;)J
.end method

.method public abstract continueLoading(J)Z
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract e([Lna/s;[Z[Lv9/s;[ZJ)J
.end method

.method public abstract f(Lcom/google/android/exoplayer2/source/n$a;J)V
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Lv9/y;
.end method

.method public abstract isLoading()Z
.end method

.method public abstract maybeThrowPrepareError()V
.end method

.method public abstract readDiscontinuity()J
.end method

.method public abstract reevaluateBuffer(J)V
.end method

.method public abstract seekToUs(J)J
.end method
