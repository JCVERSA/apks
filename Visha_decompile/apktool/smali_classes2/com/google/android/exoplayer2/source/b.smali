.class public final Lcom/google/android/exoplayer2/source/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/h;
.implements Lcom/google/android/exoplayer2/source/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/b$a;
    }
.end annotation


# instance fields
.field public final b:Lcom/google/android/exoplayer2/source/h;

.field public c:Lcom/google/android/exoplayer2/source/h$a;

.field public d:[Lcom/google/android/exoplayer2/source/b$a;

.field public e:J

.field public f:J

.field public g:J

.field public h:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/h;ZJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    const/4 p1, 0x0

    new-array p1, p1, [Lcom/google/android/exoplayer2/source/b$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    if-eqz p2, :cond_0

    move-wide p1, p3

    goto :goto_0

    :cond_0
    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/b;->e:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    iput-wide p5, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    return-void
.end method

.method public static j(J[Lqi3;)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    array-length p0, p2

    move v0, p1

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p2, v0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lqi3;->getSelectedFormat()Lcom/google/android/exoplayer2/k;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/exoplayer2/k;->m:Ljava/lang/String;

    iget-object v1, v1, Lcom/google/android/exoplayer2/k;->j:Ljava/lang/String;

    invoke-static {v2, v1}, Lqp6;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method public a([Lqi3;[Z[Lh19;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p3

    array-length v2, v1

    new-array v2, v2, [Lcom/google/android/exoplayer2/source/b$a;

    iput-object v2, v0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    array-length v2, v1

    new-array v9, v2, [Lh19;

    const/4 v10, 0x0

    move v2, v10

    :goto_0
    array-length v3, v1

    const/4 v11, 0x0

    if-ge v2, v3, :cond_1

    iget-object v3, v0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    aget-object v4, v1, v2

    check-cast v4, Lcom/google/android/exoplayer2/source/b$a;

    aput-object v4, v3, v2

    if-eqz v4, :cond_0

    iget-object v11, v4, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    :cond_0
    aput-object v11, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object/from16 v6, p4

    move-wide/from16 v7, p5

    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplayer2/source/h;->a([Lqi3;[Z[Lh19;[ZJ)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b;->f()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/b;->f:J

    cmp-long v6, p5, v4

    if-nez v6, :cond_2

    move-object v6, p1

    invoke-static {v4, v5, p1}, Lcom/google/android/exoplayer2/source/b;->j(J[Lqi3;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-wide v4, v2

    goto :goto_1

    :cond_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    :goto_1
    iput-wide v4, v0, Lcom/google/android/exoplayer2/source/b;->e:J

    cmp-long v4, v2, p5

    if-eqz v4, :cond_4

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/b;->f:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    iget-wide v4, v0, Lcom/google/android/exoplayer2/source/b;->g:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v6, v4, v6

    if-eqz v6, :cond_4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v10

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x1

    :goto_3
    invoke-static {v4}, Lzi;->g(Z)V

    :goto_4
    array-length v4, v1

    if-ge v10, v4, :cond_8

    aget-object v4, v9, v10

    if-nez v4, :cond_5

    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    aput-object v11, v4, v10

    goto :goto_5

    :cond_5
    iget-object v5, v0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    aget-object v6, v5, v10

    if-eqz v6, :cond_6

    iget-object v6, v6, Lcom/google/android/exoplayer2/source/b$a;->a:Lh19;

    if-eq v6, v4, :cond_7

    :cond_6
    new-instance v6, Lcom/google/android/exoplayer2/source/b$a;

    invoke-direct {v6, p0, v4}, Lcom/google/android/exoplayer2/source/b$a;-><init>(Lcom/google/android/exoplayer2/source/b;Lh19;)V

    aput-object v6, v5, v10

    :cond_7
    :goto_5
    iget-object v4, v0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    aget-object v4, v4, v10

    aput-object v4, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_8
    return-wide v2
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/source/q;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/b;->h(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public c(JLka9;)J
    .locals 3

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/b;->e(JLka9;)Lka9;

    move-result-object p3

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->c(JLka9;)J

    move-result-wide p0

    return-wide p0
.end method

.method public continueLoading(J)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->continueLoading(J)Z

    move-result p0

    return p0
.end method

.method public d(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->h:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/h$a;->d(Lcom/google/android/exoplayer2/source/h;)V

    return-void
.end method

.method public discardBuffer(JZ)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/h;->discardBuffer(JZ)V

    return-void
.end method

.method public final e(JLka9;)Lka9;
    .locals 8

    iget-wide v0, p3, Lka9;->a:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    sub-long v4, p1, v2

    const-wide/16 v2, 0x0

    invoke-static/range {v0 .. v5}, Lblb;->q(JJJ)J

    move-result-wide v0

    iget-wide v2, p3, Lka9;->b:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long p0, v4, v6

    if-nez p0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    move-wide v6, p0

    goto :goto_0

    :cond_0
    sub-long/2addr v4, p1

    move-wide v6, v4

    :goto_0
    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lblb;->q(JJJ)J

    move-result-wide p0

    iget-wide v2, p3, Lka9;->a:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    iget-wide v2, p3, Lka9;->b:J

    cmp-long p2, p0, v2

    if-nez p2, :cond_1

    return-object p3

    :cond_1
    new-instance p2, Lka9;

    invoke-direct {p2, v0, v1, p0, p1}, Lka9;-><init>(JJ)V

    return-object p2
.end method

.method public f()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g(Lcom/google/android/exoplayer2/source/h$a;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/source/h$a;

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/h;->g(Lcom/google/android/exoplayer2/source/h$a;J)V

    return-void
.end method

.method public getBufferedPositionUs()J
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getNextLoadPositionUs()J
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->getNextLoadPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getTrackGroups()Leva;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->getTrackGroups()Leva;

    move-result-object p0

    return-object p0
.end method

.method public h(Lcom/google/android/exoplayer2/source/h;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/b;->c:Lcom/google/android/exoplayer2/source/h$a;

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/h$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/q;)V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/b;->h:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    return-void
.end method

.method public isLoading()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->isLoading()Z

    move-result p0

    return p0
.end method

.method public k(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->h:Lcom/google/android/exoplayer2/source/ClippingMediaSource$IllegalClippingException;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/source/h;->maybeThrowPrepareError()V

    return-void

    :cond_0
    throw v0
.end method

.method public readDiscontinuity()J
    .locals 9

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b;->f()Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/exoplayer2/source/b;->e:J

    iput-wide v1, p0, Lcom/google/android/exoplayer2/source/b;->e:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/source/b;->readDiscontinuity()J

    move-result-wide v5

    cmp-long p0, v5, v1

    if-eqz p0, :cond_0

    move-wide v3, v5

    :cond_0
    return-wide v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/h;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    return-wide v1

    :cond_2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    cmp-long v0, v3, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-static {v0}, Lzi;->g(Z)V

    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long p0, v5, v7

    if-eqz p0, :cond_4

    cmp-long p0, v3, v5

    if-gtz p0, :cond_5

    :cond_4
    move v1, v2

    :cond_5
    invoke-static {v1}, Lzi;->g(Z)V

    return-wide v3
.end method

.method public reevaluateBuffer(J)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->reevaluateBuffer(J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 5

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/source/b;->e:J

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->d:[Lcom/google/android/exoplayer2/source/b$a;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/source/b$a;->b()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/b;->b:Lcom/google/android/exoplayer2/source/h;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/h;->seekToUs(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_2

    iget-wide p1, p0, Lcom/google/android/exoplayer2/source/b;->f:J

    cmp-long p1, v0, p1

    if-ltz p1, :cond_3

    iget-wide p0, p0, Lcom/google/android/exoplayer2/source/b;->g:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long p2, p0, v3

    if-eqz p2, :cond_2

    cmp-long p0, v0, p0

    if-gtz p0, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-static {v2}, Lzi;->g(Z)V

    return-wide v0
.end method
