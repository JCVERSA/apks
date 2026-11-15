.class public final Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/f$b;
    }
.end annotation


# instance fields
.field public final a:F

.field public final b:F

.field public final c:J

.field public final d:F

.field public final e:J

.field public final f:J

.field public final g:F

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:F

.field public o:F

.field public p:F

.field public q:J

.field public r:J

.field public s:J


# direct methods
.method public constructor <init>(FFJFJJF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/f;->a:F

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/f;->b:F

    .line 5
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->c:J

    .line 6
    iput p5, p0, Lcom/google/android/exoplayer2/f;->d:F

    .line 7
    iput-wide p6, p0, Lcom/google/android/exoplayer2/f;->e:J

    .line 8
    iput-wide p8, p0, Lcom/google/android/exoplayer2/f;->f:J

    .line 9
    iput p10, p0, Lcom/google/android/exoplayer2/f;->g:F

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->h:J

    .line 11
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->i:J

    .line 12
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->k:J

    .line 13
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->l:J

    .line 14
    iput p1, p0, Lcom/google/android/exoplayer2/f;->o:F

    .line 15
    iput p2, p0, Lcom/google/android/exoplayer2/f;->n:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 16
    iput p1, p0, Lcom/google/android/exoplayer2/f;->p:F

    .line 17
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->q:J

    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->j:J

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->m:J

    .line 20
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->r:J

    .line 21
    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->s:J

    return-void
.end method

.method public synthetic constructor <init>(FFJFJJFLcom/google/android/exoplayer2/f$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplayer2/f;-><init>(FFJFJJF)V

    return-void
.end method

.method public static d(JJF)J
    .locals 0

    long-to-float p0, p0

    mul-float/2addr p0, p4

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p4

    long-to-float p2, p2

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-long p0, p0

    return-wide p0
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/n$g;)V
    .locals 3

    iget-wide v0, p1, Lcom/google/android/exoplayer2/n$g;->b:J

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->h:J

    iget-wide v0, p1, Lcom/google/android/exoplayer2/n$g;->c:J

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->k:J

    iget-wide v0, p1, Lcom/google/android/exoplayer2/n$g;->d:J

    invoke-static {v0, v1}, Lblb;->t0(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->l:J

    iget v0, p1, Lcom/google/android/exoplayer2/n$g;->e:F

    const v1, -0x800001

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/f;->a:F

    :goto_0
    iput v0, p0, Lcom/google/android/exoplayer2/f;->o:F

    iget p1, p1, Lcom/google/android/exoplayer2/n$g;->f:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/f;->b:F

    :goto_1
    iput p1, p0, Lcom/google/android/exoplayer2/f;->n:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    cmpl-float p1, p1, v1

    if-nez p1, :cond_2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->h:J

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->c()V

    return-void
.end method

.method public final b(J)V
    .locals 12

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->r:J

    const-wide/16 v2, 0x3

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->s:J

    mul-long/2addr v4, v2

    add-long v10, v0, v4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    cmp-long v0, v0, v10

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    iget-wide p1, p0, Lcom/google/android/exoplayer2/f;->c:J

    invoke-static {p1, p2}, Lblb;->t0(J)J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->p:F

    sub-float/2addr v0, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-long v2, v0

    iget p2, p0, Lcom/google/android/exoplayer2/f;->n:F

    sub-float/2addr p2, v1

    mul-float/2addr p2, p1

    float-to-long p1, p2

    add-long/2addr v2, p1

    iget-wide p1, p0, Lcom/google/android/exoplayer2/f;->j:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    sub-long/2addr v0, v2

    const/4 v2, 0x3

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide v10, v2, v3

    const/4 v3, 0x1

    aput-wide p1, v2, v3

    const/4 p1, 0x2

    aput-wide v0, v2, p1

    invoke-static {v2}, Lcom/google/common/primitives/Longs;->h([J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->m:J

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/f;->p:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/f;->d:F

    div-float/2addr v0, v1

    float-to-long v0, v0

    sub-long v6, p1, v0

    iget-wide v8, p0, Lcom/google/android/exoplayer2/f;->m:J

    invoke-static/range {v6 .. v11}, Lblb;->q(JJJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->m:J

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->l:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->i:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_0

    move-wide v0, v4

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->k:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    :cond_1
    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v0, v4

    if-lez v6, :cond_3

    move-wide v0, v4

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :cond_3
    :goto_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->j:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_4

    return-void

    :cond_4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->j:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/f;->r:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/f;->s:J

    iput-wide v2, p0, Lcom/google/android/exoplayer2/f;->q:J

    return-void
.end method

.method public final e(JJ)V
    .locals 2

    sub-long/2addr p1, p3

    iget-wide p3, p0, Lcom/google/android/exoplayer2/f;->r:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->r:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->s:J

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/f;->g:F

    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->d(JJF)J

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->r:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p1

    iget-wide p3, p0, Lcom/google/android/exoplayer2/f;->s:J

    iget v0, p0, Lcom/google/android/exoplayer2/f;->g:F

    invoke-static {p3, p4, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->d(JJF)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->s:J

    :goto_0
    return-void
.end method

.method public getAdjustedPlaybackSpeed(JJ)F
    .locals 4

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->h:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/f;->e(JJ)V

    iget-wide p3, p0, Lcom/google/android/exoplayer2/f;->q:J

    cmp-long p3, p3, v2

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f;->q:J

    sub-long/2addr p3, v2

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f;->c:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_1

    iget p0, p0, Lcom/google/android/exoplayer2/f;->p:F

    return p0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/google/android/exoplayer2/f;->q:J

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->b(J)V

    iget-wide p3, p0, Lcom/google/android/exoplayer2/f;->m:J

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p3

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f;->e:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_2

    iput v1, p0, Lcom/google/android/exoplayer2/f;->p:F

    goto :goto_0

    :cond_2
    iget p3, p0, Lcom/google/android/exoplayer2/f;->d:F

    long-to-float p1, p1

    mul-float/2addr p3, p1

    add-float/2addr p3, v1

    iget p1, p0, Lcom/google/android/exoplayer2/f;->o:F

    iget p2, p0, Lcom/google/android/exoplayer2/f;->n:F

    invoke-static {p3, p1, p2}, Lblb;->o(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/f;->p:F

    :goto_0
    iget p0, p0, Lcom/google/android/exoplayer2/f;->p:F

    return p0
.end method

.method public getTargetLiveOffsetUs()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    return-wide v0
.end method

.method public notifyRebuffer()V
    .locals 7

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->f:J

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->m:J

    iget-wide v4, p0, Lcom/google/android/exoplayer2/f;->l:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iput-wide v4, p0, Lcom/google/android/exoplayer2/f;->m:J

    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/f;->q:J

    return-void
.end method

.method public setTargetLiveOffsetOverrideUs(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->i:J

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->c()V

    return-void
.end method
