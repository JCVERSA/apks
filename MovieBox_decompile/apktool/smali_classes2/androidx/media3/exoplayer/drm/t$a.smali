.class Landroidx/media3/exoplayer/drm/t$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/t;
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
.method public a(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/DrmSession;
    .locals 2

    .line 1
    iget-object p1, p2, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

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
    new-instance p1, Landroidx/media3/exoplayer/drm/z;

    .line 8
    .line 9
    new-instance p2, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 10
    .line 11
    new-instance v0, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/drm/UnsupportedDrmException;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/16 v1, 0x1771

    .line 18
    .line 19
    invoke-direct {p2, v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/drm/z;-><init>(Landroidx/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    .line 23
    .line 24
    .line 25
    return-object p1
.end method

.method public b(Landroidx/media3/common/r;)I
    .locals 0

    .line 1
    iget-object p1, p1, Landroidx/media3/common/r;->s:Landroidx/media3/common/DrmInitData;

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

.method public synthetic c(Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/t$b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/drm/s;->a(Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;)Landroidx/media3/exoplayer/drm/t$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroid/os/Looper;Lx1/f4;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic prepare()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/s;->b(Landroidx/media3/exoplayer/drm/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic release()V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/media3/exoplayer/drm/s;->c(Landroidx/media3/exoplayer/drm/t;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
