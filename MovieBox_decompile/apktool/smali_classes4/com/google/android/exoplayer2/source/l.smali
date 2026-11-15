.class public final Lcom/google/android/exoplayer2/source/l;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/n;
.implements Lcom/google/android/exoplayer2/source/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/l$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/o$b;

.field private final b:J

.field private final c:Lcom/google/android/exoplayer2/upstream/b;

.field private d:Lcom/google/android/exoplayer2/source/o;

.field private e:Lcom/google/android/exoplayer2/source/n;

.field private f:Lcom/google/android/exoplayer2/source/n$a;

.field private g:Lcom/google/android/exoplayer2/source/l$a;

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/l;->c:Lcom/google/android/exoplayer2/upstream/b;

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    .line 9
    .line 10
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    .line 16
    .line 17
    return-void
.end method

.method private j(J)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->i:J

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
.method public a(Lcom/google/android/exoplayer2/source/o$b;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/l;->j(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    check-cast v2, Lcom/google/android/exoplayer2/source/o;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/l;->c:Lcom/google/android/exoplayer2/upstream/b;

    .line 16
    .line 17
    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/o;->d(Lcom/google/android/exoplayer2/source/o$b;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/n;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/n;->f(Lcom/google/android/exoplayer2/source/n$a;J)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public b(JLcom/google/android/exoplayer2/d3;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->b(JLcom/google/android/exoplayer2/d3;)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public continueLoading(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->continueLoading(J)Z

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

.method public discardBuffer(JZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/n;->discardBuffer(JZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public e([Lna/s;[Z[Lv9/s;[ZJ)J
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/l;->i:J

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
    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/l;->b:J

    .line 14
    .line 15
    cmp-long v5, p5, v5

    .line 16
    .line 17
    if-nez v5, :cond_0

    .line 18
    .line 19
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/l;->i:J

    .line 20
    .line 21
    move-wide v11, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-wide/from16 v11, p5

    .line 24
    .line 25
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v6, v1

    .line 32
    check-cast v6, Lcom/google/android/exoplayer2/source/n;

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
    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/n;->e([Lna/s;[Z[Lv9/s;[ZJ)J

    .line 41
    .line 42
    .line 43
    move-result-wide v1

    .line 44
    return-wide v1
.end method

.method public f(Lcom/google/android/exoplayer2/source/n$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    .line 8
    .line 9
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/l;->j(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p2

    .line 13
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/n;->f(Lcom/google/android/exoplayer2/source/n$a;J)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public bridge synthetic g(Lcom/google/android/exoplayer2/source/b0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/l;->k(Lcom/google/android/exoplayer2/source/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->getBufferedPositionUs()J

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->getNextLoadPositionUs()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public getTrackGroups()Lv9/y;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->getTrackGroups()Lv9/y;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public h(Lcom/google/android/exoplayer2/source/n;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/n$a;->h(Lcom/google/android/exoplayer2/source/n;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->g:Lcom/google/android/exoplayer2/source/l$a;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/l$a;->a(Lcom/google/android/exoplayer2/source/o$b;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/l;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->isLoading()Z

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

.method public k(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/l;->f:Lcom/google/android/exoplayer2/source/n$a;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/source/n$a;

    .line 8
    .line 9
    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/b0$a;->g(Lcom/google/android/exoplayer2/source/b0;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public l(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/l;->i:J

    .line 2
    .line 3
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/android/exoplayer2/source/o;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/o;->i(Lcom/google/android/exoplayer2/source/n;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->maybeThrowPrepareError()V

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/o;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/l;->g:Lcom/google/android/exoplayer2/source/l$a;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/l;->h:Z

    .line 24
    .line 25
    if-nez v2, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/l;->h:Z

    .line 29
    .line 30
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/l;->a:Lcom/google/android/exoplayer2/source/o$b;

    .line 31
    .line 32
    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/l$a;->b(Lcom/google/android/exoplayer2/source/o$b;Ljava/io/IOException;)V

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

.method public n(Lcom/google/android/exoplayer2/source/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/l;->d:Lcom/google/android/exoplayer2/source/o;

    .line 12
    .line 13
    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/n;->readDiscontinuity()J

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->reevaluateBuffer(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/l;->e:Lcom/google/android/exoplayer2/source/n;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/p0;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/exoplayer2/source/n;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/n;->seekToUs(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    return-wide p1
.end method
