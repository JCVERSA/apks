.class public final Lcom/google/android/exoplayer2/source/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h;
.implements Lcom/google/android/exoplayer2/source/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/f$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/exoplayer2/source/i$b;

.field public final c:J

.field public final d:Lcb;

.field public e:Lcom/google/android/exoplayer2/source/i;

.field public f:Lcom/google/android/exoplayer2/source/h;

.field public g:Lcom/google/android/exoplayer2/source/h$a;

.field public h:Lcom/google/android/exoplayer2/source/f$a;

.field public i:Z

.field public j:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f;->b:Lcom/google/android/exoplayer2/source/i$b;

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/f;->d:Lcb;

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/f;->c:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/f;->j:J

    return-void
.end method


# virtual methods
.method public a([Lqi3;[Z[Lh19;[ZJ)J
    .locals 13

    move-object v0, p0

    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/f;->j:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/f;->c:J

    cmp-long v5, p5, v5

    if-nez v5, :cond_0

    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/f;->j:J

    move-wide v11, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v11, p5

    :goto_0
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {v0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/exoplayer2/source/h;

    move-object v7, p1

    move-object v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    invoke-interface/range {v6 .. v12}, Lcom/google/android/exoplayer2/source/h;->a([Lqi3;[Z[Lh19;[ZJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/source/q;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/f;->j(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public c(JLka9;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->c(JLka9;)J

    move-result-wide p0

    return-wide p0
.end method

.method public continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->continueLoading(J)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/f;->g:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/h$a;->d(Lcom/google/android/exoplayer2/source/h;)V

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/f;->h:Lcom/google/android/exoplayer2/source/f$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/f$a;->b(Lcom/google/android/exoplayer2/source/i$b;)V

    :cond_0
    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->discardBuffer(JZ)V

    return-void
.end method

.method public e(Lcom/google/android/exoplayer2/source/i$b;)V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/f;->c:J

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/source/f;->i(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f;->e:Lcom/google/android/exoplayer2/source/i;

    invoke-static {v2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/i;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/f;->d:Lcb;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/i;->c(Lcom/google/android/exoplayer2/source/i$b;Lcb;J)Lcom/google/android/exoplayer2/source/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/f;->g:Lcom/google/android/exoplayer2/source/h$a;

    if-eqz v2, :cond_0

    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/h;->g(Lcom/google/android/exoplayer2/source/h$a;J)V

    :cond_0
    return-void
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/f;->j:J

    return-wide v0
.end method

.method public g(Lcom/google/android/exoplayer2/source/h$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f;->g:Lcom/google/android/exoplayer2/source/h$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    if-eqz p1, :cond_0

    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/f;->c:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/source/f;->i(J)J

    move-result-wide p2

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/h;->g(Lcom/google/android/exoplayer2/source/h$a;J)V

    :cond_0
    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->getBufferedPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->getNextLoadPositionUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackGroups()Leva;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->getTrackGroups()Leva;

    move-result-object p0

    return-object p0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/f;->c:J

    return-wide v0
.end method

.method public final i(J)J
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/f;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->isLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public j(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/f;->g:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    return-void
.end method

.method public k(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/f;->j:J

    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f;->e:Lcom/google/android/exoplayer2/source/i;

    invoke-static {v0}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/i;

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0, p0}, Lcom/google/android/exoplayer2/source/i;->e(Lcom/google/android/exoplayer2/source/h;)V

    :cond_0
    return-void
.end method

.method public m(Lcom/google/android/exoplayer2/source/i;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f;->e:Lcom/google/android/exoplayer2/source/i;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/f;->e:Lcom/google/android/exoplayer2/source/i;

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->maybeThrowPrepareError()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/f;->e:Lcom/google/android/exoplayer2/source/i;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/i;->maybeThrowSourceInfoRefreshError()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/f;->h:Lcom/google/android/exoplayer2/source/f$a;

    if-eqz v1, :cond_2

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/f;->i:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/f;->i:Z

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->b:Lcom/google/android/exoplayer2/source/i$b;

    invoke-interface {v1, p0, v0}, Lcom/google/android/exoplayer2/source/f$a;->a(Lcom/google/android/exoplayer2/source/i$b;Ljava/io/IOException;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    throw v0
.end method

.method public readDiscontinuity()J
    .locals 2

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->readDiscontinuity()J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/f;->f:Lcom/google/android/exoplayer2/source/h;

    invoke-static {p0}, Lblb;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide p0

    return-wide p0
.end method
