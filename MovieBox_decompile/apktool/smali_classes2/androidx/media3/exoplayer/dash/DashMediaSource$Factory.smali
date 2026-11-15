.class public final Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Landroidx/media3/exoplayer/dash/a$a;

.field private final b:Landroidx/media3/datasource/a$a;

.field private c:Landroidx/media3/exoplayer/drm/w;

.field private d:Lf2/e;

.field private e:Landroidx/media3/exoplayer/upstream/m;

.field private f:J

.field private g:J

.field private h:Landroidx/media3/exoplayer/upstream/q$a;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/dash/d$a;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/dash/d$a;-><init>(Landroidx/media3/datasource/a$a;)V

    invoke-direct {p0, v0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;-><init>(Landroidx/media3/exoplayer/dash/a$a;Landroidx/media3/datasource/a$a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/dash/a$a;Landroidx/media3/datasource/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/dash/a$a;

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    .line 4
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Landroidx/media3/datasource/a$a;

    .line 5
    new-instance p1, Landroidx/media3/exoplayer/drm/j;

    invoke-direct {p1}, Landroidx/media3/exoplayer/drm/j;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/w;

    .line 6
    new-instance p1, Landroidx/media3/exoplayer/upstream/k;

    invoke-direct {p1}, Landroidx/media3/exoplayer/upstream/k;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:Landroidx/media3/exoplayer/upstream/m;

    const-wide/16 p1, 0x7530

    .line 7
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    const-wide/32 p1, 0x4c4b40

    .line 8
    iput-wide p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    .line 9
    new-instance p1, Lf2/f;

    invoke-direct {p1}, Lf2/f;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:Lf2/e;

    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h(Z)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lh3/s$a;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->l(Lh3/s$a;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->i(I)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h(Z)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic d(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/source/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/dash/DashMediaSource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->j(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->k(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public g(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/dash/DashMediaSource;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    iget-object v1, v2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 6
    .line 7
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->h:Landroidx/media3/exoplayer/upstream/q$a;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Lz1/d;

    .line 15
    .line 16
    invoke-direct {v1}, Lz1/d;-><init>()V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v3, v2, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 20
    .line 21
    iget-object v3, v3, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    new-instance v4, Landroidx/media3/exoplayer/offline/r;

    .line 30
    .line 31
    invoke-direct {v4, v1, v3}, Landroidx/media3/exoplayer/offline/r;-><init>(Landroidx/media3/exoplayer/upstream/q$a;Ljava/util/List;)V

    .line 32
    .line 33
    .line 34
    move-object v5, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v5, v1

    .line 37
    :goto_0
    new-instance v16, Landroidx/media3/exoplayer/dash/DashMediaSource;

    .line 38
    .line 39
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->b:Landroidx/media3/datasource/a$a;

    .line 40
    .line 41
    iget-object v6, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    .line 42
    .line 43
    iget-object v7, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->d:Lf2/e;

    .line 44
    .line 45
    iget-object v1, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/w;

    .line 46
    .line 47
    invoke-interface {v1, v2}, Landroidx/media3/exoplayer/drm/w;->a(Landroidx/media3/common/t;)Landroidx/media3/exoplayer/drm/t;

    .line 48
    .line 49
    .line 50
    move-result-object v9

    .line 51
    iget-object v10, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:Landroidx/media3/exoplayer/upstream/m;

    .line 52
    .line 53
    iget-wide v11, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->f:J

    .line 54
    .line 55
    iget-wide v13, v0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->g:J

    .line 56
    .line 57
    const/4 v15, 0x0

    .line 58
    const/4 v3, 0x0

    .line 59
    const/4 v8, 0x0

    .line 60
    move-object/from16 v1, v16

    .line 61
    .line 62
    move-object/from16 v2, p1

    .line 63
    .line 64
    invoke-direct/range {v1 .. v15}, Landroidx/media3/exoplayer/dash/DashMediaSource;-><init>(Landroidx/media3/common/t;Lz1/c;Landroidx/media3/datasource/a$a;Landroidx/media3/exoplayer/upstream/q$a;Landroidx/media3/exoplayer/dash/a$a;Lf2/e;Landroidx/media3/exoplayer/upstream/f;Landroidx/media3/exoplayer/drm/t;Landroidx/media3/exoplayer/upstream/m;JJLandroidx/media3/exoplayer/dash/DashMediaSource$a;)V

    .line 65
    .line 66
    .line 67
    return-object v16
.end method

.method public h(Z)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/dash/a$a;->c(Z)Landroidx/media3/exoplayer/dash/a$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public i(I)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/dash/a$a;->b(I)Landroidx/media3/exoplayer/dash/a$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public j(Landroidx/media3/exoplayer/drm/w;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/drm/w;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->c:Landroidx/media3/exoplayer/drm/w;

    .line 10
    .line 11
    return-object p0
.end method

.method public k(Landroidx/media3/exoplayer/upstream/m;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/upstream/m;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->e:Landroidx/media3/exoplayer/upstream/m;

    .line 10
    .line 11
    return-object p0
.end method

.method public l(Lh3/s$a;)Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/DashMediaSource$Factory;->a:Landroidx/media3/exoplayer/dash/a$a;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lh3/s$a;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/dash/a$a;->a(Lh3/s$a;)Landroidx/media3/exoplayer/dash/a$a;

    .line 10
    .line 11
    .line 12
    return-object p0
.end method
