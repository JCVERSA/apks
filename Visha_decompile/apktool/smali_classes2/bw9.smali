.class public final Lbw9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnd6;


# instance fields
.field public final b:Ley0;

.field public c:Z

.field public d:J

.field public e:J

.field public f:Lcom/google/android/exoplayer2/s;


# direct methods
.method public constructor <init>(Ley0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbw9;->b:Ley0;

    sget-object p1, Lcom/google/android/exoplayer2/s;->e:Lcom/google/android/exoplayer2/s;

    iput-object p1, p0, Lbw9;->f:Lcom/google/android/exoplayer2/s;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 0

    iput-wide p1, p0, Lbw9;->d:J

    iget-boolean p1, p0, Lbw9;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lbw9;->b:Ley0;

    invoke-interface {p1}, Ley0;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lbw9;->e:J

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/exoplayer2/s;)V
    .locals 2

    iget-boolean v0, p0, Lbw9;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbw9;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbw9;->a(J)V

    :cond_0
    iput-object p1, p0, Lbw9;->f:Lcom/google/android/exoplayer2/s;

    return-void
.end method

.method public c()V
    .locals 2

    iget-boolean v0, p0, Lbw9;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbw9;->b:Ley0;

    invoke-interface {v0}, Ley0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lbw9;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbw9;->c:Z

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    iget-boolean v0, p0, Lbw9;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbw9;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lbw9;->a(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbw9;->c:Z

    :cond_0
    return-void
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplayer2/s;
    .locals 0

    iget-object p0, p0, Lbw9;->f:Lcom/google/android/exoplayer2/s;

    return-object p0
.end method

.method public getPositionUs()J
    .locals 6

    iget-wide v0, p0, Lbw9;->d:J

    iget-boolean v2, p0, Lbw9;->c:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbw9;->b:Ley0;

    invoke-interface {v2}, Ley0;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lbw9;->e:J

    sub-long/2addr v2, v4

    iget-object p0, p0, Lbw9;->f:Lcom/google/android/exoplayer2/s;

    iget v4, p0, Lcom/google/android/exoplayer2/s;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Lblb;->t0(J)J

    move-result-wide v2

    :goto_0
    add-long/2addr v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/google/android/exoplayer2/s;->b(J)J

    move-result-wide v2

    goto :goto_0

    :cond_1
    :goto_1
    return-wide v0
.end method
