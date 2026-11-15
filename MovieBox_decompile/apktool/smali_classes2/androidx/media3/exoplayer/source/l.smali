.class public final Landroidx/media3/exoplayer/source/l;
.super Landroidx/media3/exoplayer/source/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/l$b;
    }
.end annotation


# instance fields
.field private final h:J

.field private i:Landroidx/media3/common/t;


# direct methods
.method private constructor <init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/a;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/media3/exoplayer/source/l;->i:Landroidx/media3/common/t;

    .line 4
    iput-wide p2, p0, Landroidx/media3/exoplayer/source/l;->h:J

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;Landroidx/media3/exoplayer/source/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/source/l;-><init>(Landroidx/media3/common/t;JLandroidx/media3/exoplayer/source/j;)V

    return-void
.end method


# virtual methods
.method protected B()V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized a()Landroidx/media3/common/t;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/l;->i:Landroidx/media3/common/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l;->a()Landroidx/media3/common/t;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 6
    .line 7
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p2, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 11
    .line 12
    iget-object p2, p2, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 13
    .line 14
    const-string p3, "Externally loaded mediaItems require a MIME type."

    .line 15
    .line 16
    invoke-static {p2, p3}, Landroidx/media3/common/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    new-instance p2, Landroidx/media3/exoplayer/source/k;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 22
    .line 23
    iget-object p3, p1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 24
    .line 25
    iget-object p1, p1, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 26
    .line 27
    const/4 p4, 0x0

    .line 28
    invoke-direct {p2, p3, p1, p4}, Landroidx/media3/exoplayer/source/k;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/exoplayer/source/j;)V

    .line 29
    .line 30
    .line 31
    return-object p2
.end method

.method public k(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/k;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/media3/exoplayer/source/k;->i()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized n(Landroidx/media3/common/t;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Landroidx/media3/exoplayer/source/l;->i:Landroidx/media3/common/t;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public q(Landroidx/media3/common/t;)Z
    .locals 4

    .line 1
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l;->a()Landroidx/media3/common/t;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroidx/media3/common/t$h;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object v1, p1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 18
    .line 19
    iget-object v2, v0, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p1, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v0, v0, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-wide v0, p1, Landroidx/media3/common/t$h;->i:J

    .line 38
    .line 39
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    cmp-long p1, v0, v2

    .line 45
    .line 46
    if-eqz p1, :cond_0

    .line 47
    .line 48
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iget-wide v2, p0, Landroidx/media3/exoplayer/source/l;->h:J

    .line 53
    .line 54
    cmp-long p1, v0, v2

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    :cond_0
    const/4 p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    return p1
.end method

.method protected z(Lw1/n;)V
    .locals 8

    .line 1
    new-instance p1, Lf2/w;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/media3/exoplayer/source/l;->h:J

    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/l;->a()Landroidx/media3/common/t;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    const/4 v3, 0x1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    move-object v0, p1

    .line 14
    invoke-direct/range {v0 .. v7}, Lf2/w;-><init>(JZZZLjava/lang/Object;Landroidx/media3/common/t;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/a;->A(Landroidx/media3/common/e0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
