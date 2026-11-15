.class public interface abstract Landroidx/media3/exoplayer/source/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/q$a;
    }
.end annotation


# virtual methods
.method public abstract a(Landroidx/media3/exoplayer/v2;)Z
.end method

.method public abstract b(JLandroidx/media3/exoplayer/c4;)J
.end method

.method public abstract discardBuffer(JZ)V
.end method

.method public abstract e([Li2/z;[Z[Lf2/u;[ZJ)J
.end method

.method public abstract f(Landroidx/media3/exoplayer/source/q$a;J)V
.end method

.method public abstract getBufferedPositionUs()J
.end method

.method public abstract getNextLoadPositionUs()J
.end method

.method public abstract getTrackGroups()Lf2/z;
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
