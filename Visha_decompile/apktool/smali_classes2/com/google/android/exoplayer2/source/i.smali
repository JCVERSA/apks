.class public interface abstract Lcom/google/android/exoplayer2/source/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/i$b;,
        Lcom/google/android/exoplayer2/source/i$c;,
        Lcom/google/android/exoplayer2/source/i$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/google/android/exoplayer2/source/i$c;)V
.end method

.method public abstract b(Lcom/google/android/exoplayer2/source/j;)V
.end method

.method public abstract c(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;
.end method

.method public abstract d(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/j;)V
.end method

.method public abstract e(Lcom/google/android/exoplayer2/source/h;)V
.end method

.method public abstract f(Lcom/google/android/exoplayer2/source/i$c;)V
.end method

.method public abstract g(Lcom/google/android/exoplayer2/source/i$c;)V
.end method

.method public getInitialTimeline()Lcom/google/android/exoplayer2/a0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getMediaItem()Lcom/google/android/exoplayer2/n;
.end method

.method public abstract i(Landroid/os/Handler;Lcom/google/android/exoplayer2/drm/b;)V
.end method

.method public isSingleWindow()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract j(Lcom/google/android/exoplayer2/drm/b;)V
.end method

.method public abstract k(Lcom/google/android/exoplayer2/source/i$c;Lu5b;Lta8;)V
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
.end method
