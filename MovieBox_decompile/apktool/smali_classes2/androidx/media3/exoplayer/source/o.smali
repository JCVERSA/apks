.class public final Landroidx/media3/exoplayer/source/o;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/q;
.implements Landroidx/media3/exoplayer/source/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/o$a;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/exoplayer/source/r$b;

.field private final b:J

.field private final c:Landroidx/media3/exoplayer/upstream/b;

.field private d:Landroidx/media3/exoplayer/source/r;

.field private e:Landroidx/media3/exoplayer/source/q;

.field private f:Landroidx/media3/exoplayer/source/q$a;

.field private g:Landroidx/media3/exoplayer/source/o$a;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/source/o;->c:Landroidx/media3/exoplayer/upstream/b;

    .line 7
    .line 8
    iput-wide p3, p0, Landroidx/media3/exoplayer/source/o;->b:J

    .line 9
    .line 10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/o;->i:J

    .line 16
    .line 17
    return-void
.end method

.method private k(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->i:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    move-wide p1, v0

    .line 13
    :cond_0
    return-wide p1
.end method


# virtual methods
.method public a(Landroidx/media3/exoplayer/v2;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/source/q;->a(Landroidx/media3/exoplayer/v2;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method public b(JLandroidx/media3/exoplayer/c4;)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->b(JLandroidx/media3/exoplayer/c4;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public c(Landroidx/media3/exoplayer/source/r$b;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->b:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Landroidx/media3/exoplayer/source/o;->k(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    .line 8
    .line 9
    invoke-static {v2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Landroidx/media3/exoplayer/source/r;

    .line 14
    .line 15
    iget-object v3, p0, Landroidx/media3/exoplayer/source/o;->c:Landroidx/media3/exoplayer/upstream/b;

    .line 16
    .line 17
    invoke-interface {v2, p1, v3, v0, v1}, Landroidx/media3/exoplayer/source/r;->g(Landroidx/media3/exoplayer/source/r$b;Landroidx/media3/exoplayer/upstream/b;J)Landroidx/media3/exoplayer/source/q;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1, p0, v0, v1}, Landroidx/media3/exoplayer/source/q;->f(Landroidx/media3/exoplayer/source/q$a;J)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Landroidx/media3/exoplayer/source/q;->discardBuffer(JZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e([Li2/z;[Z[Lf2/u;[ZJ)J
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-wide v1, v0, Landroidx/media3/exoplayer/source/o;->i:J

    .line 3
    .line 4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    cmp-long v5, v1, v3

    .line 10
    .line 11
    if-eqz v5, :cond_0

    .line 12
    .line 13
    iget-wide v5, v0, Landroidx/media3/exoplayer/source/o;->b:J

    .line 14
    .line 15
    cmp-long v5, p5, v5

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    move-wide v11, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide/from16 v11, p5

    .line 22
    .line 23
    :goto_0
    iput-wide v3, v0, Landroidx/media3/exoplayer/source/o;->i:J

    .line 24
    .line 25
    iget-object v1, v0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v6, v1

    .line 32
    check-cast v6, Landroidx/media3/exoplayer/source/q;

    .line 33
    .line 34
    move-object v7, p1

    .line 35
    move-object v8, p2

    .line 36
    move-object/from16 v9, p3

    .line 37
    .line 38
    move-object/from16 v10, p4

    .line 39
    .line 40
    invoke-interface/range {v6 .. v12}, Landroidx/media3/exoplayer/source/q;->e([Li2/z;[Z[Lf2/u;[ZJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    return-wide v1
.end method

.method public f(Landroidx/media3/exoplayer/source/q$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-wide p2, p0, Landroidx/media3/exoplayer/source/o;->b:J

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Landroidx/media3/exoplayer/source/o;->k(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    invoke-interface {p1, p0, p2, p3}, Landroidx/media3/exoplayer/source/q;->f(Landroidx/media3/exoplayer/source/q$a;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public g(Landroidx/media3/exoplayer/source/q;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/q$a;->g(Landroidx/media3/exoplayer/source/q;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->g:Landroidx/media3/exoplayer/source/o$a;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/o$a;->b(Landroidx/media3/exoplayer/source/r$b;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getBufferedPositionUs()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getNextLoadPositionUs()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getTrackGroups()Lf2/z;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->getTrackGroups()Lf2/z;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic h(Landroidx/media3/exoplayer/source/f0;)V
    .locals 0

    .line 1
    check-cast p1, Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/source/o;->l(Landroidx/media3/exoplayer/source/q;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->isLoading()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/o;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l(Landroidx/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/media3/exoplayer/source/o;->f:Landroidx/media3/exoplayer/source/q$a;

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/media3/exoplayer/source/q$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/f0$a;->h(Landroidx/media3/exoplayer/source/f0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public m(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/o;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->maybeThrowPrepareError()V

    .line 6
    .line 7
    .line 8
    goto :goto_1

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/r;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :goto_0
    iget-object v1, p0, Landroidx/media3/exoplayer/source/o;->g:Landroidx/media3/exoplayer/source/o$a;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v2, p0, Landroidx/media3/exoplayer/source/o;->h:Z

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Landroidx/media3/exoplayer/source/o;->h:Z

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/source/o;->a:Landroidx/media3/exoplayer/source/r$b;

    .line 31
    .line 32
    invoke-interface {v1, v2, v0}, Landroidx/media3/exoplayer/source/o$a;->a(Landroidx/media3/exoplayer/source/r$b;Ljava/io/IOException;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_1
    return-void

    .line 36
    :cond_2
    throw v0
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroidx/media3/exoplayer/source/r;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroidx/media3/exoplayer/source/r;->k(Landroidx/media3/exoplayer/source/q;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public o(Landroidx/media3/exoplayer/source/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Landroidx/media3/exoplayer/source/o;->d:Landroidx/media3/exoplayer/source/r;

    .line 12
    .line 13
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0}, Landroidx/media3/exoplayer/source/q;->readDiscontinuity()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->reevaluateBuffer(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/source/o;->e:Landroidx/media3/exoplayer/source/q;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/util/a1;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/media3/exoplayer/source/q;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Landroidx/media3/exoplayer/source/q;->seekToUs(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method
