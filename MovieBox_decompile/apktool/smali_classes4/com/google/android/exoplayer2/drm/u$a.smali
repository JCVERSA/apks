.class Lcom/google/android/exoplayer2/drm/u$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/drm/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/p1;)I
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    return p1
.end method

.method public b(Landroid/os/Looper;Lg9/u1;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/drm/DrmSession;
    .locals 2

    .line 1
    iget-object p1, p2, Lcom/google/android/exoplayer2/p1;->o:Lcom/google/android/exoplayer2/drm/DrmInitData;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/drm/a0;

    .line 8
    .line 9
    new-instance p2, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    .line 10
    .line 11
    new-instance v0, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/drm/UnsupportedDrmException;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x1771

    .line 18
    .line 19
    invoke-direct {p2, v0, v1}, Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/drm/a0;-><init>(Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public synthetic d(Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/drm/u$b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/drm/t;->a(Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/drm/s$a;Lcom/google/android/exoplayer2/p1;)Lcom/google/android/exoplayer2/drm/u$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public synthetic prepare()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/t;->b(Lcom/google/android/exoplayer2/drm/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic release()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/drm/t;->c(Lcom/google/android/exoplayer2/drm/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
