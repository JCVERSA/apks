.class Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/drm/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private final b:Landroidx/media3/exoplayer/drm/r$a;

.field private c:Landroidx/media3/exoplayer/drm/DrmSession;

.field private d:Z

.field final synthetic e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroidx/media3/exoplayer/drm/r$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->b:Landroidx/media3/exoplayer/drm/r$a;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;Landroidx/media3/common/r;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d(Landroidx/media3/common/r;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic d(Landroidx/media3/common/r;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->p(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->j(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroid/os/Looper;

    .line 25
    .line 26
    iget-object v2, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->b:Landroidx/media3/exoplayer/drm/r$a;

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static {v0, v1, v2, p1, v3}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->k(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Landroidx/media3/exoplayer/drm/r$a;Landroidx/media3/common/r;Z)Landroidx/media3/exoplayer/drm/DrmSession;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iput-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 34
    .line 35
    iget-object p1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 36
    .line 37
    invoke-static {p1}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->i(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->c:Landroidx/media3/exoplayer/drm/DrmSession;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->b:Landroidx/media3/exoplayer/drm/r$a;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/drm/DrmSession;->f(Landroidx/media3/exoplayer/drm/r$a;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 16
    .line 17
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->i(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->d:Z

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public c(Landroidx/media3/common/r;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Landroidx/media3/exoplayer/drm/g;

    .line 14
    .line 15
    invoke-direct {v1, p0, p1}, Landroidx/media3/exoplayer/drm/g;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;Landroidx/media3/common/r;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e:Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;->o(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/Handler;

    .line 12
    .line 13
    new-instance v1, Landroidx/media3/exoplayer/drm/h;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Landroidx/media3/exoplayer/drm/h;-><init>(Landroidx/media3/exoplayer/drm/DefaultDrmSessionManager$e;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->b1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
